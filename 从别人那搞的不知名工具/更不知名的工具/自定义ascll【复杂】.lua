data = [[
gg.alert("11112222")
gg.alert("123456789")
]]

ascll_tb = {}
ascll_name = '_' .. math.random(1, 9999)
ascll_data = 'local ' .. ascll_name .. '={'
ascll_num = 0

ascll_name2 = '_' .. math.random(1, 9999)
ascll_data2 = 'local ' .. ascll_name2 .. '={'
ascll_num2 = 0


function jia(data)
    config = '{'
    for k, v in pairs({string.byte(data, 1, -1)}) do
        v = tostring(v)
        index = ascll_tb[v]
        if not index then
            ascll_num = ascll_num + 1
            ascll_data = ascll_data .. v .. ','
            ascll_tb[v] = ascll_num
            index = ascll_num
        end
        config = config .. ascll_name .. '[' .. index .. '],'
    end
    config = string.sub(config, 1, -2) .. '}'
    ascll_data2=ascll_data2..'string.char(table.unpack(' .. config .. ')),'
    ascll_num2=ascll_num2+1
    return ascll_name2..'['..ascll_num2..']'
    --'string.char(table.unpack(' .. config .. '))'
end

data = data:gsub('"(.-)"', jia)

ascll_data = string.sub(ascll_data, 1, -2) .. '}'
ascll_data2 = string.sub(ascll_data2, 1, -2) .. '}'

config_data=ascll_data..'\n'..ascll_data2..'\n'


data = config_data .. data

print(data)
load(data)()
