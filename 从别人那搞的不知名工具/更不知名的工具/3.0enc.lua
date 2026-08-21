lasm = '_ENV["LLXLLX"]=_ENV["LLXLLX"]\n'
lasm = lasm:rep(10000)
weizhicuowu = [=[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u0 "" ; u4
.upval v0 "" ; u5
.upval u11 "" ; u6
.upval u12 "" ; u7
.upval u13 "" ; u8
.upval u14 "" ; u9
.upval u15 "" ; u10
.upval u16 "" ; u11
]=]
weizhicuowu1 = [=[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u7 "" ; u4
.upval u6 "" ; u5
.upval u11 "" ; u6
]=]
function HX(a)
    local ret, rec = '', 'abcdefghijklmnopqrstuvwxyz'
    for i = 1, a do
        local m = math.random(1, 26)
        ret = ret .. string.sub(rec, m, m)
    end
    return ret
end
function yinc(data)
    func = {"table", "io", "os", "gg", "debug", "bit32"}
    for i, v in ipairs(func) do
        for a, b in pairs(_ENV[v]) do
            data = data:gsub(v .. "%." .. a, "_ENV[\"" .. v .. "\"][\"" .. a .. "\"]")
        end
    end
    return data
end
ios = function(path, data)
    local file
    if data then
        file = io.open(path, 'w')
        if file then
            io.output(file)
            io.write(data)
            io.close(file)
            print("✨加密成功啦！输出文件地址为:\n" .. path .. "\n✨")
        end
    else
        file = io.open(path, 'r')
        if file then
            data = file:read('*a')
            file:close()
        end
        return (data or '')
    end
end
prompt = gg.prompt({"✨请选择脚本路径✨:", "✨自定义logo。✨"}, {gg.getFile(), "BY_LLX V3.0"},
    {"file", "text"})
if not prompt then
    return false
end
char = HX(math.random(32, 64))
unpack = HX(math.random(32, 64))
path = prompt[1]
logo = prompt[2]
data = ios(path)
data = yinc(data)
enc = function(txt1)
    txt1 = load('return ' .. txt1)
    assert(txt1, '字符加密失败。')
    txt1 = txt1()
    Table1 = {string.byte(txt1, 1, -1)}
    Concat = table.concat(Table1, ',')
    if #Table1 >= 249 then
        return '' .. char .. '(' .. unpack .. '({' .. Concat .. '}))'
    else
        return '' .. char .. '(' .. Concat .. ')'
    end
end
repeat
    types = string.match(data, '[\034\039]')
    if not types then
        break
    end
    data, num1 = string.gsub(data, types .. '[^\n]-' .. types, enc, 1)
    if num1 == 0 then
        data, num1 = string.gsub(data, types, '\\0' .. string.byte(types), 1)
    end
until types == nil
data = string.gsub(data, '\\034', '\034')
data = string.gsub(data, '\\039', '\039')
data = '' .. char .. '=string.char\n' .. unpack .. '=table.unpack\n' .. data
data = data:gsub("GaiXie", HX(math.random(32, 64)))
data = data:gsub("readWrite", HX(math.random(32, 64)))
data = data:gsub("Gaixie", HX(math.random(32, 64)))
data = data:gsub("gaixie", HX(math.random(32, 64)))
data = data:gsub("dongjie", HX(math.random(32, 64)))
data = data:gsub("pianyi", HX(math.random(32, 64)))
data = data:gsub("FloatToDword", HX(math.random(32, 64)))
data = data:gsub("hqdl", HX(math.random(32, 64)))
data = data:gsub("tiaozhuan", HX(math.random(32, 64)))
data = data:gsub("zidongsouzhi", HX(math.random(32, 64)))
data = data:gsub("jieguo", HX(math.random(32, 64)))
data = data:gsub("Main", HX(math.random(32, 64)))
data = data:gsub("main", HX(math.random(32, 64)))
data = data:gsub("floatToDword", HX(math.random(32, 64)))
data = data:gsub("Orange_GX", HX(math.random(32, 64)))
data = data:gsub("Orange_DJ", HX(math.random(32, 64)))
data = data:gsub("Orange_PY", HX(math.random(32, 64)))
data = data:gsub("GZ", HX(math.random(32, 64)))
data = data:gsub("Orange_TZ", HX(math.random(32, 64)))
data = data:gsub("llx_love_you", HX(math.random(32, 64)))
fangyu = ' while ""=="LLX_V_3" do LLX_V_3=(function()end)("XLL") end '
fangyu = fangyu:rep(100)
data = fangyu .. lasm .. data
data = " (function(...)" .. data .. " end )([=[\n\n" .. logo .. "\n\n]=]\n\n) "
data = string.dump(load(data), true)
path2 = path .. '[Enc_LLX].lua'
data2 = gg.internal2(load(data), path2)
data2 = io.input(path2, "r"):read("*a")
data2 = string.gsub(data2, '\n%s*', "\n")
data2 = data2:gsub("numparams [^\n]*", "numparams 250")
data2 = data2:gsub("is_vararg [^\n]*", "is_vararg 250")
data2 = data2:gsub("maxstacksize [^\n]*", "maxstacksize 250")
data2 = data2:gsub("linedefined [^\n]*", "linedefined 0")
data2 = data2:gsub("lastlinedefined [^\n]*", "lastlinedefined 0")
data2 = data2:gsub("upval%s*v0*%s*nil%s*;%s*%w*", "upval v0 nil ; u0\n" .. weizhicuowu, 1)
data2 = data2:gsub("upval%s*u0*%s*nil%s*;%s*%w*", "upval u0 nil ; u0\n" .. weizhicuowu1, 1)
data2 = string.dump(load(data2), true)
io.open(path2):write(data2)
data2 = string.gsub(data2, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
    string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
data2 = string.gsub(data2, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
    string.char(0x00, 0x00, 0x00, 0x00), 1)
data2 = data2:gsub(string.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x80, 0x01),
    string.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x80, 0xFA))
data2 = data2:gsub(string.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x40, 0x00, 0x80, 0x01),
    string.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x40, 0x00, 0x80, 0x1B))
data2 = data2:gsub(string.char(0x17, 0x80, 0xFE, 0x7F, 0x06), string.char(0x17, 0x80, 0x1B, 0x7F, 0xFF))
data2 = data2:gsub(string.char(0x1F, 0x00, 0x80, 0x00), string.char(0x1F, 0x00, 0x80, 0xAB))
data2 = string.gsub(data2, string.char(0x04, 0x04, 0x00, 0x00, 0x00, 0x58, 0x4C, 0x4C, 0x00),
    string.char(0x04, 0x00, 0x00, 0x00, 0x00))
qukuai = string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) .. string.rep(string.char(0), 32)
data2 = data2:gsub(qukuai,
    string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) .. string.rep(string.char(0), 24) ..
        string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF))
CUK = "LLXLLX"
BIG = string.char(0x00, 0x63, 0x35, 0x83, 0x52, 0x74, 0x42, 0x73, 0x43, 0x35)
BIG = BIG:rep(1000)
data2 = data2:gsub(string.char(4, 7, 0, 0, 0) .. CUK, string.char(4, 17, 39, 0, 0) .. BIG)
ios(path2, data2)
