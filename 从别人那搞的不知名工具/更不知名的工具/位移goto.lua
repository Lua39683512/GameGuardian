local data, ii, data_tb, total, num

data = [[
print(1)
print(2)
print(3)
print(4)
print(5)
print(6)
print(7)
print(8)
print(9)
print(10)
print(11)
print(12)
print(13)
print(14)
print(15)
print(16)
print(17)
print(18)
print(19)
print(20)
]]

io.w_r = function(path, data)
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

-- data = data:gsub("%s*\n%s*", "\n")

ii = 1
data_tb = {}

for text in data:gmatch("[^\n]+") do
    if ii == 1 then
        text = "::_0_::\n" .. text .. "\ngoto _" .. ii .. "_"
    else
        text = "::_" .. (ii - 1) .. "_::\n" .. text .. "\ngoto _" .. ii .. "_\n"
    end
    data_tb[ii] = text
    ii = ii + 1
end

total = #data_tb
data = ""

local function get_data()
    num = math.random(1, total)
    data = data_tb[num]
    if not data then
        data = get_data()
    end
    data_tb[num] = false
    return data
end

for i = 1, total do
    data = data .. get_data() .. "\n"
end
data = "goto _0_\n" .. data .. "::_" .. (ii - 1) .. "_::"
-- print(data)
io.w_r("goto.lua", data)
print(load(data)())
