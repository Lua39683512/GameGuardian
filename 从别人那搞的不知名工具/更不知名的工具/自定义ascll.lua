data = [[
gg.alert("卧槽")
gg.alert("牛逼")
gg.alert("牛逼")
print("Rl")
]]

function suiji()
    local data = ''
    for i = 1, 4 do
        if i % 2 == 0 then
            i = 96 + math.random(1, 26)
        else
            i = 64 + math.random(1, 26)
        end
        data = data .. string.char(i)
    end
    return data
end

ascll_tb = {}
ascll_name = suiji() -- '_' .. math.random(1, 9999)
ascll_data = 'local ' .. ascll_name .. '={'
ascll_num = 0

ascll_name2 = suiji() -- '_' .. math.random(1, 9999)
ascll_data2 = 'local ' .. ascll_name2 .. '={'
ascll_num2 = 0

pianyi1 = math.random(256, 3830)
pianyi2 = math.random(256, 3830)

function jia(data)
    if data == '' then
        return '"' .. '"'
    end
    config = '{'
    for k, v in pairs({string.byte(data, 1, -1)}) do
        v = tostring(v)
        index = ascll_tb[v]
        if not index then
            ascll_num = ascll_num + 1
            ascll_data = ascll_data .. (v + pianyi1) .. ','
            ascll_tb[v] = ascll_num
            index = ascll_num
        end
        config = config .. (index + pianyi2) .. ','
    end
    config = string.sub(config, 1, -2) .. '}'
    ascll_data2 = ascll_data2 .. config .. ','
    ascll_num2 = ascll_num2 + 1
    return ascll_name2 .. '[' .. ascll_num2 .. ']'
end

data = data:gsub('"(.-)"', jia)

ascll_data = string.sub(ascll_data, 1, -2) .. '}'
ascll_data2 = string.sub(ascll_data2, 1, -2) .. '}'

jiemiconfig =
    'for kkk,vvv in pairs(' .. ascll_name2 .. ')do for kk,vv in pairs(vvv)do ' .. ascll_name2 .. '[kkk][kk]=' ..
        ascll_name .. '[vv-' .. pianyi2 .. ']-' .. pianyi1 .. ' end end\n'
jiemiconfig = jiemiconfig .. 'for kk,vv in pairs(' .. ascll_name2 .. ')do ' .. ascll_name2 ..
                  '[kk]=string.char(table.unpack(vv)) end\n'

config_data = ascll_data .. '\n' .. ascll_data2 .. '\n' .. jiemiconfig .. '\n'

data = config_data .. data

print(data)
load(data)()
