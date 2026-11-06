local spec=require('hotas_spec')
local M={}
local stock={}
local prefix='datatable /game/datatables/player/parameter/dt_playerparameter_'
local rowType='ScriptStruct /Script/Live.LivePlayerParameterDataTable'

function M.collect(owner)
    local tables={}
    for _,object in ipairs(FindAllOf('DataTable') or {}) do
        if object:IsValid() then
            local name=object:GetFullName()
            if name:lower():sub(1,#prefix)==prefix then
                local struct=object:GetRowStruct()
                assert(struct:IsValid() and struct:GetFullName()==rowType,'Unexpected aircraft table: '..name)
                owner.hold(object)
                tables[#tables+1]={object=object,name=name}
            end
        end
    end
    assert(#tables>0,'Player reserve ammunition tables unavailable')
    return tables
end

-- Fetch the element again for readback. Only its individual reserve fields are written.
local function levelAdapter(levels,index,slot)
    local function get()
        local level=levels[index]
        if slot then return level[slot] end
        return level
    end
    return setmetatable({},{
        __index=function(_,field) return get()[field] end,
        __newindex=function(_,field,value) get()[field]=value end,
    })
end

function M.prepare(tables,objects,operations)
    local pending={}
    local count=0
    local function add(row,adapter,field,multiplier)
        local key=row..':'..field
        local current=adapter[field]
        assert(type(current)=='number' and current==math.floor(current),'Unreadable reserve ammunition '..key)
        local before=stock[key]
        if not before then
            if current<=0 then return end
            before=current
            pending[key]=before
        end
        local after=math.floor(before*multiplier+0.5)
        objects[row]=adapter
        operations[#operations+1]={row=row,field=field,before=before,after=after}
        count=count+1
    end

    for _,entry in ipairs(tables) do
        local rows=entry.object:GetAllRows()
        assert(type(rows)=='table' and next(rows),'Missing aircraft parameter rows: '..entry.name)
        for rowKey,record in pairs(rows) do
            local data=assert(record.Data,'Missing aircraft parameters: '..entry.name)
            local levels=data.LevelParameter
            local size=levels:GetArrayNum()
            assert(size>=1 and size<=200,'Unexpected aircraft level count: '..entry.name)
            local slots={}
            for slot=1,4 do slots[slot]=spec.specialAmmo[data['SpWeaponID'..slot]] end
            for index=1,size do
                local key=entry.name..':'..tostring(rowKey)..':'..index
                add(key,levelAdapter(levels,index),'GunLoadCount',spec.gunAmmo)
                for slot=1,4 do
                    local multipliers=slots[slot]
                    if multipliers then
                        local name='SPWeaponInfo'..slot
                        local ammo=levelAdapter(levels,index,name)
                        add(key..':'..name,ammo,'SpWeaponLoadCount1',multipliers[1])
                        add(key..':'..name,ammo,'SpWeaponLoadCount2',multipliers[2])
                    end
                end
            end
        end
    end
    assert(count>0,'No eligible reserve ammunition fields')
    return count,pending
end

function M.remember(pending)
    for key,value in pairs(pending) do stock[key]=value end
end

return M
