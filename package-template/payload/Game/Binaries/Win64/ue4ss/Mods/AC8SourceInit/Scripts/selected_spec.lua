local original=require('source_spec')
local config=require('config')
local mode=config.missile_mode
if mode=='full' and not config.hotas then return original end

local profiles,patches={},{}
if mode~='none' then
    for _,profile in ipairs(original.profiles) do profiles[#profiles+1]=profile end
    for _,patch in ipairs(original.patches) do
        if mode=='full' or patch.field=='HomingForesightAmount' then patches[#patches+1]=patch end
    end
end
local baseFields=#patches
assert(mode~='guidance' or baseFields==32,'Guidance specification changed; validate before installation')

local hotasFields=0
if config.hotas then
    local hotas=require('hotas_spec')
    local byPath,byField={},{}
    for _,profile in ipairs(profiles) do byPath[profile.path:lower()]=profile.row end
    for index,patch in ipairs(patches) do byField[patch.row..':'..patch.field]=index end

    local function overlay(row,fields)
        for _,item in ipairs(fields) do
            local field,before,after=table.unpack(item)
            local key=row..':'..field
            local index=byField[key]
            if index then
                assert(patches[index].before==before,'Conflicting vanilla values for '..key)
            else
                index=#patches+1
                byField[key]=index
            end
            -- Choose one target for each field before any writes.
            patches[index]={row=row,field=field,before=before,after=after}
            hotasFields=hotasFields+1
        end
    end

    for _,group in ipairs(hotas.weapons) do
        for _,path in ipairs(group.paths) do
            local key=path:lower()
            local row=byPath[key]
            if not row then
                row=assert(path:match('%.(BP_plwp_[%w_]+)_C$'),'Invalid HOTAS weapon path '..path)
                profiles[#profiles+1]={row=row,path=path}
                byPath[key]=row
            end
            overlay(row,group.fields)
        end
    end
    for _,group in ipairs(hotas.difficulty) do overlay('table:'..group.row,group.fields) end
end
return {profiles=profiles,tablePath=original.tablePath,patches=patches,baseFields=baseFields,hotasFields=hotasFields}
