
dir = gg.getFile()
dir = dir:gsub(dir:match("[^/]+$"), "")

path1 = "测试.lua.luac"
path2 = dir .. "test.lasm"
path3="[反]"..path1..".test.lua"

gg.internal2(load(string.dump(loadfile(path1), true, true)), path2)



io.w_r = function(path, data)
    if not path:find("/") then
        path = dir .. path
    end

    if data then
        file = io.open(path, "w")
        io.output(file)
        io.write(data)
        io.close(file)
    else
        file = io.open(path, "r")
        io.input(file)
        data = io.read("*a")
        io.close(file)
        return data
    end
end
_GETTABUP_ = function(zl)
    local v1, v2, v3, zl1, zl2, zl3
    print(zl)
    v1 = string.match(zl, 'GETTABUP (%w+)')
    v2 = string.match(zl, 'GETTABUP %w+ (%w+)')
    v3 = string.match(zl, 'GETTABUP %w+ %w+ (.+)')
    -- print(v1, v2, v3)
    -- zl1 = GET_ZL(v1)
    zl2 = GET_ZL(v2)
    zl3 = GET_ZL(v3)
    zl3 = string.gsub(zl3, '"', '')
    -- print(zl2, zl3)
    if zl2 == '_ENV' then
        zl_tb[v1] = zl3
    else
        zl_tb[v1] = zl2 .. '.' .. zl3
    end
    -- print(zl1)
end

_LOADK_ = function(zl)
    local v1, v2, zl1, zl2
    print(zl)
    v1 = string.match(zl, 'LOADK (%w+)')
    v2 = string.match(zl, 'LOADK %w+ (.+)')
    -- print(v1, v2)
    zl_tb[v1] = v2
end

_CALL_ = function(zl)
    local v1, v2, v3, v4
    print(zl)
    v1 = string.match(zl, 'CALL (%w+)')
    v2 = string.match(zl, 'CALL %w+ (SET_TOP)')
    if not v2 then
        v2 = string.match(zl, 'CALL %w+%.%.(%w+)')
    end
    v3 = string.match(zl, 'CALL %w+%.%.%w+ ([%w_]+)')
    v4 = string.match(zl, 'CALL %w+%.%.%w+ %w+%.%.(%w+)')
    -- print(v1, v2, v3, v4)

    zl1 = GET_ZL(v1) -- zl_tb[v1]
    if v1 and not v2 then
        if string.find(SET_TOP, ',') then
            zl2 = ""
            i = 1
            ii = string.match(v1, "%d+")

            for text in string.gmatch(SET_TOP, ',') do
                print("111211",text)
                if i > ii then
                    zl2 = zl2 .. text .. ","
                end
                i = i + 1
            end
            zl2=zl2..","
            zl2=string.gsub(zl2,',,','')
            SET_TOP=zl2
        end
        code = code .. zl1 .. '(' .. SET_TOP .. ')' .. '\n'
        SET_TOP = false
    else
        zl2 = GET_ZL(v2) -- zl_tb[v2]
        if v2 == "SET_TOP" or v3 == "SET_TOP" then
            if SET_TOP then
                -- print('SET_TOP',SET_TOP)
                SET_TOP = zl1 .. '(' .. SET_TOP .. ')'
            else
                if not zl2 or zl1 == zl2 then
                    SET_TOP = zl1 .. '()'
                else
                    SET_TOP = zl1 .. '(' .. zl2 .. ')'
                end
            end
        else
            if zl1 == zl2 then
                code = code .. zl1 .. '()' .. '\n'
            else
                code = code .. zl1 .. '(' .. zl2 .. ')' .. '\n'
            end
            SET_TOP = false
        end
    end
end

_ADD0_ = function()

end
-- MOVE v3 v1
-- MOVE v0 v1
_MOVE_ = function(zl)
    local v1, v2, zl1, zl2
    print(zl)
    v1 = string.match(zl, 'MOVE (%w+)')
    v2 = string.match(zl, 'MOVE %w+ (%w+)')
    -- print(v1,v2)
    zl2 = GET_ZL(v2)
    -- print(zl2)
    zl_tb[v1] = zl2
end

_VARARG_ = function(zl)
    local v1, v2, v3, zl1, zl2, zl3
    print(zl)
    v1 = string.match(zl, 'VARARG (%w+)')
    zl_tb[v1] = "..."
    SET_TOP = ""
    for i = 1, string.match(v1, "%d+") do
        SET_TOP = SET_TOP .. zl_tb['v' .. i] .. ','
    end
    SET_TOP = SET_TOP .. ","
    SET_TOP = string.gsub(SET_TOP, ',,', '')
end

-- POW v0 v0 12
_ADD_ = function(zl)
    local v1, v2, v3, zl1, zl2, zl3
    print(zl)
    v1 = string.match(zl, 'ADD (%w+)')
    v2 = string.match(zl, 'ADD %w+ (%w+)')
    v3 = string.match(zl, 'ADD %w+ %w+ (%w+)')
    zl2 = GET_ZL(v2)
    zl3 = GET_ZL(v3)
    zl2 = string.gsub(zl2, '"', '')
    zl_tb[v1] = zl2 .. '+' .. zl3
end

_SUB_ = function(zl)
    local v1, v2, v3, zl1, zl2, zl3
    print(zl)
    v1 = string.match(zl, 'SUB (%w+)')
    v2 = string.match(zl, 'SUB %w+ (%w+)')
    v3 = string.match(zl, 'SUB %w+ %w+ (%w+)')
    zl2 = GET_ZL(v2)
    zl3 = GET_ZL(v3)
    zl2 = string.gsub(zl2, '"', '')
    zl_tb[v1] = zl2 .. '-' .. zl3
end

_MUL_ = function(zl)
    local v1, v2, v3, zl1, zl2, zl3
    print(zl)
    v1 = string.match(zl, 'MUL (%w+)')
    v2 = string.match(zl, 'MUL %w+ (%w+)')
    v3 = string.match(zl, 'MUL %w+ %w+ (%w+)')
    zl2 = GET_ZL(v2)
    zl3 = GET_ZL(v3)
    zl2 = string.gsub(zl2, '"', '')
    zl_tb[v1] = zl2 .. '*' .. zl3
end

_DIV_ = function(zl)
    local v1, v2, v3, zl1, zl2, zl3
    print(zl)
    v1 = string.match(zl, 'DIV (%w+)')
    v2 = string.match(zl, 'DIV %w+ (%w+)')
    v3 = string.match(zl, 'DIV %w+ %w+ (%w+)')
    zl2 = GET_ZL(v2)
    zl3 = GET_ZL(v3)
    zl2 = string.gsub(zl2, '"', '')
    zl_tb[v1] = zl2 .. '/' .. zl3
end

_POW_ = function(zl)
    local v1, v2, v3, zl1, zl2, zl3
    print(zl)
    v1 = string.match(zl, 'POW (%w+)')
    v2 = string.match(zl, 'POW %w+ (%w+)')
    v3 = string.match(zl, 'POW %w+ %w+ (%w+)')
    zl2 = GET_ZL(v2)
    zl3 = GET_ZL(v3)
    zl2 = string.gsub(zl2, '"', '')
    zl_tb[v1] = zl2 .. '^' .. zl3
end

-- SETLIST v0..v3 1
_SETLIST_ = function(zl)
    local v1, v2, v3, zl1, zl2, zl3
    print(zl)
    v1 = string.match(zl, 'SETLIST (%w+)')
    v2 = string.match(zl, 'SETLIST %w+%.%.(%w+)')
    v3 = string.match(zl, 'SETLIST %w+%.%.%w+ (%w+)')
    -- print(v1, v2, v3)
    zl1 = '{'
    for i = (string.match(v1, '%d+') + 1), string.match(v2, '%d+') do
        zl1 = zl1 .. zl_tb['v' .. i] .. ','
    end
    zl1 = zl1 .. '}'

    zl1 = string.gsub(zl1, ',}', '}')
    zl_tb[v1] = zl1
end

_SETTABLE_ = function(zl)
    local v1, v2, v3, zl1, zl2, zl3
    print(zl)
    v1 = string.match(zl, 'SETTABLE (%w+)')
    v2 = string.match(zl, 'SETTABLE %w+ (".-")')
    v3 = string.match(zl, 'SETTABLE %w+ ".-" (.+)')
    -- print(v1, v2, v3)
    zl1 = GET_ZL(v1)
    zl2 = GET_ZL(v2)
    zl3 = GET_ZL(v3)
    -- print(zl1, zl2, zl3)
    zl2 = string.gsub(zl2, '"', '')
    if zl1 == "_ENV" then
        code = code .. zl2 .. "=" .. zl3 .. "\n"
    else
        code = code .. zl1 .. '.' .. zl2 .. '=' .. zl3 .. '\n'
    end
end

_CLOSURE_ = function(zl)
    local v1, v2, zl1, zl2
    print(zl)
    v1 = string.match(zl, 'CLOSURE (%w+)')
    v2 = string.match(zl, 'CLOSURE %w+ (%w+)')
    -- print(v1, v2)
    zl_tb[v1] = v2
end

_SETTABUP_ = function(zl)
    local v1, v2, v3, zl1, zl2, zl3
    print(zl)
    v1 = string.match(zl, 'SETTABUP (%w+)')
    v2 = string.match(zl, 'SETTABUP %w+ (".-")')
    v3 = string.match(zl, 'SETTABUP %w+ ".-" (.+)')
    -- print(v1, v2, v3)
    zl1 = GET_ZL(v1)
    zl2 = GET_ZL(v2)
    zl3 = GET_ZL(v3)
    -- print(zl1, zl2, zl3)
    zl2 = string.gsub(zl2, '"', '')
    if zl1 == "_ENV" then
        code = code .. zl2 .. "=" .. zl3 .. "\n"
    else
        code = code .. zl1 .. '.' .. zl2 .. '=' .. zl3 .. '\n'
    end
end

_GETTABLE_ = function(zl)
    local v1, v2, v3, zl1, zl2
    print(zl)
    v1 = string.match(zl, 'GETTABLE (%w+)')
    v2 = string.match(zl, 'GETTABLE %w+ (%w+)')
    v3 = string.match(zl, 'GETTABLE %w+ %w+ (.+)')
    -- print(v1, v2, v3)
    -- zl1 = GET_ZL(v1)
    zl2 = GET_ZL(v2)
    zl3 = GET_ZL(v3)
    zl3 = string.gsub(zl3, '"', '')
    -- print(zl1, zl2, zl3)
    zl_tb[v1] = zl2 .. '.' .. zl3
end

_NEWTABLE_ = function(zl)
    local v1, v2, v3, zl1, zl2
    print(zl)
    v1 = string.match(zl, 'NEWTABLE (%w+)')
    zl_tb[v1] = '{}'
end

GET_ZL = function(zl1)
    local zl2 = zl_tb[zl1]
    if zl2 then
        return zl2
    else
        return zl1
    end
end

function fanbianyi_a(data)

    --[[
	GETTABUP v0 u0 "a"

	SETTABLE v0 "a" 1
    ]]
    zl_tb = {}
    zl_tb['u0'] = '_ENV'

    code = ""

    for text in data:gmatch("[^\n]+") do
        zl1 = string.sub(text, 1, 1)
        if string.find(zl1, "%u") then
            zl2 = string.match(text, "%u+")
            text = string.match(text, "%u+[^\n]+")
            func = load("_" .. zl2 .. "_([==[" .. text .. "]==])")
            pcall(func)
        end
    end
    return code
end

file = io.open(path2)
io.input(file)

DATA = io.read("*a")
DAAT2 = fanbianyi_a(DATA)

function fanbianyi_b(FUNC)
    -- print(FUNC)
    local data = string.match(DATA, '%.func ' .. FUNC .. ' ;.-%.end ; ' .. FUNC)
    -- print(data)
    data = string.gsub(data, "%s*\n%s*", "\n")
    data = fanbianyi_a(data)
    print(FUNC, data)
    if not data or data == "" then
        return "function()end"
    end
    -- print(FUNC,data)
    data = 'function()\n' .. data
    data = string.gsub(data, "\n", "\n    ")
    data = data .. "end\n\n"
    data = string.gsub(data, "    end\n\n", "end\n")
    return data
end

for qukuai in DAAT2:gmatch('=(F%d+)\n') do
    -- print(qukuai)
    DAAT2 = string.gsub(DAAT2, qukuai, fanbianyi_b)
end

 --print("\n反编译结果:\n" .. DAAT2)
io.w_r(path3,DAAT2)
--[[

]]
