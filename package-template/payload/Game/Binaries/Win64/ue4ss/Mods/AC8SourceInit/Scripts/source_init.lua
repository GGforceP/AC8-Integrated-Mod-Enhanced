-- Initialization-only source override candidate. No UObject references survive apply().
local core=require('patch_core')
local spec=require('selected_spec')
local retention=require('source_retention')
local ammo
if (spec.hotasFields or 0)>0 then ammo=require('hotas_ammo') end
local M={}
local function valid(o)return o~=nil and o:IsValid()end
local function resolve()
 local owner=retention.acquire()
 -- Complete potentially allocating asset loads before holding any row/CDO references.
 local canonical={}
 for _,p in ipairs(spec.profiles)do
  local cls=LoadAsset(p.path)
  assert(valid(cls)and cls:IsAnyClass(),'Source class unavailable: '..p.row)
  owner.hold(cls)
  canonical[p.row]=assert(cls:GetFullName():match('^[^ ]+ (.+)$'),'Missing canonical object path')
 end
 local data=LoadAsset(spec.tablePath)
 assert(valid(data),'Player DataTable unavailable')
 owner.hold(data)
 local rowType=data:GetRowStruct()
 assert(valid(rowType)and rowType:GetFullName()=='ScriptStruct /Script/Live.LiveWeaponSettingsDataTable','Unexpected table layout')
 local aircraftTables
 if ammo then aircraftTables=ammo.collect(owner) end
 local objects={}
 for _,p in ipairs(spec.profiles)do
  local cls=StaticFindObject(canonical[p.row])
  assert(valid(cls)and cls:IsAnyClass(),'Canonical source lookup failed: '..canonical[p.row])
  local cdo=cls:GetCDO()
  assert(valid(cdo),'CDO unavailable: '..p.row)
  objects[p.row]=cdo
 end
 for _,name in ipairs({'C.STORY','EASY'})do
  local row=data:FindRow(name);assert(row,'Missing difficulty row: '..name)
  objects['table:'..name]=row
 end
 return data,objects,aircraftTables
end
function M.apply(restore)
 local ok,result=pcall(function()
  local data,objects,aircraftTables=resolve()
  local adapter={IsValid=function()return valid(data)end,FindRow=function(_,name)return objects[name]end}
  local operations=spec.patches
  local ammoFields,pending=0,nil
  if ammo then
   operations={}
   for _,p in ipairs(spec.patches)do operations[#operations+1]=p end
   ammoFields,pending=ammo.prepare(aircraftTables,objects,operations)
  end
  if restore then
   local reverse={}
   for _,p in ipairs(operations)do reverse[#reverse+1]={row=p.row,field=p.field,before=p.after,after=p.before}end
   operations=reverse
  end
  -- The core preflights all configured values before writing; rejects unknown values,
  -- is idempotent, reads back all writes, and rolls back a partial setter failure.
  local result=core.apply(adapter,operations)
  if result.ok then
   if pending then ammo.remember(pending) end
   result.baseVerified=spec.baseFields or #spec.patches
   result.hotasStats=spec.hotasFields or 0
   result.hotasAmmo=ammoFields
  end
  return result
 end)
 if not ok then return {ok=false,error=tostring(result),attempted=0,rollbackErrors={}}end
 return result
end
return M
