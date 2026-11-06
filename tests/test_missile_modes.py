from pathlib import Path
from lupa import LuaRuntime

scripts=Path(__file__).resolve().parents[1]/'package-template/payload/Game/Binaries/Win64/ue4ss/Mods/AC8SourceInit/Scripts'
for mode,hotas in (('guidance',False),('full',False),('none',True),('guidance',True),('full',True)):
    lua=LuaRuntime()
    for name in ('source_spec','selected_spec','config','patch_core','source_init','hotas_spec','hotas_ammo'):
        lua.execute("local name,source=...;package.preload[name]=assert(load(source,'@'..name))",name,(scripts/(name+'.lua')).read_text())
    lua.globals().test_mode=mode
    lua.globals().test_hotas=hotas
    lua.execute(r'''
package.preload.installation_mode=function()
    if test_hotas then return {mode=test_mode,hotas=true} end
    return test_mode
end
local original=require('source_spec')
local config=require('config')
local spec=require('selected_spec')
assert(config.msl_visuals==(test_mode=='full'))
assert(config.hotas==test_hotas and config.acceptance_recording==(test_mode~='none'))
local baseCount=({none=0,guidance=32,full=375})[test_mode]
assert((spec.baseFields or #spec.patches)==baseCount)
assert((spec.hotasFields or 0)==(test_hotas and 130 or 0))
local values,rows,classes={}, {}, {}
local writes={}
local failRow,failField,failValue
local function put(p)
    if not values[p.row]then
        values[p.row]={};local key=p.row
        rows[key]=setmetatable({IsValid=function()return true end},{__index=values[key],__newindex=function(_,field,v)
            writes[#writes+1]={row=key,field=field};values[key][field]=v
            if key==failRow and field==failField and v==failValue then failRow=nil;error("injected setter failure after mutation")end
        end})
    end
    assert(values[p.row][p.field]==nil or values[p.row][p.field]==p.before)
    values[p.row][p.field]=p.before
end
for _,p in ipairs(original.patches)do put(p) end
local expected={}
for _,p in ipairs(spec.patches)do
    put(p)
    local key=p.row..':'..p.field
    assert(expected[key]==nil,'Duplicate write '..key)
    expected[key]=p.after
end
local function addClass(p)
    local key,path=p.row,p.path
    assert(path:lower():find('/player/',1,true))
    classes[path]={IsValid=function()return true end,IsAnyClass=function()return true end,
        GetFullName=function()return 'BlueprintGeneratedClass '..path end,GetCDO=function()return rows[key]end}
end
for _,p in ipairs(original.profiles)do addClass(p) end
for _,p in ipairs(spec.profiles)do addClass(p) end
local tableObject={IsValid=function()return true end,
 GetRowStruct=function()return {IsValid=function()return true end,GetFullName=function()return 'ScriptStruct /Script/Live.LiveWeaponSettingsDataTable'end}end,
 FindRow=function(_,name)return rows['table:'..name]end}
assert(original.tablePath:find('/Player/',1,true))
function LoadAsset(path)if path==original.tablePath then return tableObject end;return assert(classes[path],path)end
function StaticFindObject(path)return assert(classes[path],path)end
package.preload.source_retention=function()return {acquire=function()return {hold=function()end}end}end
local gpb={SpWeaponLoadCount1=4,SpWeaponLoadCount2=3,UpgradeCost=77}
local six={SpWeaponLoadCount1=12,SpWeaponLoadCount2=6}
local two={SpWeaponLoadCount1=8,SpWeaponLoadCount2=4}
local level={GunLoadCount=100,MainWeaponLoadCount=60,SPWeaponInfo1=gpb,SPWeaponInfo2=six,SPWeaponInfo3=two}
local data={SpWeaponID1=11,SpWeaponID2=6,SpWeaponID3=3,LevelParameter={level,GetArrayNum=function()return 1 end}}
local aircraft={
 IsValid=function()return true end,
 GetFullName=function()return 'DataTable /Game/Datatables/Player/Parameter/DT_PlayerParameter_Test.DT_PlayerParameter_Test' end,
 GetRowStruct=function()return {IsValid=function()return true end,GetFullName=function()return 'ScriptStruct /Script/Live.LivePlayerParameterDataTable' end} end,
 GetAllRows=function()return {Default={Data=data}} end,
}
function FindAllOf(kind)
    assert(test_hotas and kind=='DataTable','Ammo scanned when disabled')
    return {aircraft,{IsValid=function()return true end,GetFullName=function()return 'DataTable /Game/Enemy' end}}
end
function verifyAmmo(applied)
    assert(level.GunLoadCount==(applied and 200 or 100) and level.MainWeaponLoadCount==60)
    assert(gpb.SpWeaponLoadCount1==(applied and 8 or 4) and gpb.SpWeaponLoadCount2==(applied and 9 or 3))
    assert(six.SpWeaponLoadCount1==(applied and 24 or 12) and six.SpWeaponLoadCount2==(applied and 12 or 6))
    assert(two.SpWeaponLoadCount1==8 and two.SpWeaponLoadCount2==4 and gpb.UpgradeCost==77)
end
function resetGunAmmo() level.GunLoadCount=100 end
local source=require('source_init')
local result=source.apply(false)
assert(result.ok,result.error)
assert(result.verified==#spec.patches+(test_hotas and 5 or 0))
for _,p in ipairs(original.patches)do
 local desired=expected[p.row..':'..p.field]
 if desired==nil then desired=p.before end
 assert(values[p.row][p.field]==desired,p.row..'.'..p.field)
 if not test_hotas then
    assert(desired==((test_mode=='full' or p.field=='HomingForesightAmount')and p.after or p.before))
 end
end
verifyAmmo(test_hotas)
if test_hotas then
    assert(values.BP_plwp_msl_a0.LockonRange==500000 and values.BP_plwp_msl_a0.damage==100)
    assert(values.BP_plwp_msl_a0.AreaOfEffectDamage==(test_mode=='full' and 30 or 0))
    assert(values['table:EASY'].LockonRangeInMeters==5000 and values['table:EASY'].damage==100)
    local allowed={LockonRange=true,LockonRangeInMeters=true,damage=true,AreaOfEffectDamage=true,AntiShipDamageRate=true,SlipDamage=true}
    for _,w in ipairs(writes) do
        if test_mode=='none' then assert(allowed[w.field]) end
        if test_mode=='guidance' then assert(allowed[w.field] or w.field=='HomingForesightAmount') end
    end
    level.GunLoadCount=201;writes={}
    assert(not source.apply(false).ok and #writes==0)
    level.GunLoadCount=200
elseif test_mode=='guidance'then
    for _,w in ipairs(writes)do assert(w.field=='HomingForesightAmount')end
end
assert(source.apply(false).written==0)
assert(source.apply(true).ok)
for _,p in ipairs(spec.patches)do assert(values[p.row][p.field]==p.before)end
verifyAmmo(false)
local first=spec.patches[1]
values[first.row][first.field]='unsupported';writes={}
assert(not source.apply(false).ok and #writes==0)
values[first.row][first.field]=first.before
failRow,failField,failValue=first.row,first.field,first.after
local failed=source.apply(false)
assert(not failed.ok and #failed.rollbackErrors==0)
for _,p in ipairs(spec.patches)do assert(values[p.row][p.field]==p.before)end
verifyAmmo(false)

-- Execute the actual initialization entry point. Guidance must not even load
-- the visual replacement module, including later mission/checkpoint events.
visual_loads=0
package.preload.msl_visuals=function()visual_loads=visual_loads+1;return {start=function()end,prepare=function()end}end
package.preload.acceptance_observer=function()return {start=function()end,installBlueprintHook=function()end}end
function RegisterInitGameStatePreHook(fn)mission_hook=fn end
function ExecuteInGameThreadAfterFrames(n,fn)assert(n==2);bootstrap=fn end
function print()end
''')
    lua.execute((scripts/'main.lua').read_text())
    lua.execute(r'''
bootstrap()
if test_hotas then resetGunAmmo() end
mission_hook({get=function()return {IsValid=function()return true end,GetFullName=function()return 'Mode /Game/Maps/Ingame/Test'end}end})
assert(visual_loads==(test_mode=='full'and 1 or 0))
verifyAmmo(test_hotas)
''')
    print(f'PASS {mode}, HOTAS={hotas}: merged writes, mode isolation, reserve ammo/readback, safe retry, rollback and visual-module gate.')
lua=LuaRuntime()
lua.execute("package.preload.config=assert(load(...))",(scripts/'config.lua').read_text())
lua.execute("package.preload.installation_mode=function()return 'invalid' end; assert(not pcall(require,'config'))")
print('PASS invalid runtime mode rejected.')
