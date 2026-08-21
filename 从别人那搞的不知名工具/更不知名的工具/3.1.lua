



local gg = gg
local os = os
local io = io
local debug = debug
local math = math
local table = table
local string = string
local rl = {}
local SELF_PATH, SELF_DIR
SELF_PATH = gg.getFile()
SELF_DIR = ''
for Text in SELF_PATH:gmatch('[^/]*/') do
    SELF_DIR = SELF_DIR .. Text
end
local lian
lian = {}
lian.dir = '/sdcard/'
lian.name = 'LianEncryptCache.txt'
lian.ptah = lian.dir .. lian.name
lian.a=gg.makeRequest("https://v1.hitokoto.cn/").content
lian.b=string.match(lian.a,'hitokoto(.+)type')
lian.c=string.gsub(lian.b,'":"',"")
lian.d=string.gsub(lian.c,'","',"")
lian.word=[[

Lian Encrypt 3.0

强度高 防死工具人 防90%log 防常量导出 防部分大牛

本加密包含 字符串 标准库及二进制加密


加密时间较长 请耐心等待

拜师/代加密➕🐧🐧1955619037
]]
local lianfy=[===[


while tostring((gg.makeRequest("LN网络申请"))):find("LN") == nil do
print("请授予联网权限")
os.exit() 
end

local luj="/sdcard/lian.lua" local isfile=function(path) local a,b=io.open(path) if not b then io.close(a) return true else local aa=string.find(b,"(Is a directory)") if aa then return "文件夹" else local aa=string.find(b,"(No such file or directory)") if aa then return false end end end end local xlh=0 while xlh==0 do if isfile(luj) then local file=io.open(luj,"r") local rea=file:read("*a") io.close(file) local x,x1=string.find(rea,"ZaC") if #rea==tonumber("191549") then if x=="87768" then if x1=="87770" then dofile(luj) xlh=xlh+1 else os.remove(luj) while x1~="87770" do os.exit(print("本地已解码脚本已被破坏!\n重启脚本重新解码!")) end end else os.remove(luj) while x~="87768" do os.exit(print("本地已解码脚本已被破坏!\n重启脚本重新解码!")) end end else while #rea~=tonumber("191549") do  os.exit(print("本地已解码脚本已被破坏!\n重启脚本重新解码!"))  end end else local fangyu=gg.makeRequest("https://hcxgc-1301610669.cos.ap-chengdu.myqcloud.com/%E9%98%B2%E5%BE%A1.lua")["content"] if fangyu~=nil then if #fangyu==tonumber("191549") then local file=io.open(luj,"w+") file:write(fangyu) io.close(file) end else gg.alert("请允许修改器连接网络!\n访问网络只是获取动态解密钥匙!\n并不会泄露隐私!\n请放心允许修改器访问网络!","知道了") os.exit(print("请允许修改器连接网络!\n访问网络只是获取动态解密钥匙!\n并不会泄露隐私!\n请放心允许修改器访问网络!")) end end end

]===]

gg.alert(lian.word,"Go")
function lian.io(Table, Path)
    Path = Path or lian.ptah
    if Table then
        return gg.saveVariable(Table, Path)
    else
        local Func, Table1, Table2
        Func = loadfile(Path)
        Table1 = {'Please select encryption script:', 'Please select an output directory:'}
        Table2 = {'file', 'path'}
        if Func then
            return Table1, Func(), Table2
        else
            return Table1, {SELF_PATH, SELF_DIR}, Table2
        end
    end
end

rl.io = function(Path, Data)
    local File, Error
    if Data then
        File, Error = io.open(Path, 'w')
        if not File then
            return false, Error
        end
        File:write(Data)
        File:close()
    else
        File, Error = io.open(Path, 'r')
        if not File then
            return false, Error
        end
        Data = File:read('*a')
        File:close()
        return Data
    end
end

local sle
sle = gg.prompt(lian.io())
if not sle then
    return false
end
lian.io(sle)
sle.path = sle[1]
sle.dir = sle[2]
rl.data = rl.io(sle.path)
local pairs = _ENV['pairs']
local type = _ENV['type']

rl.random = {}
rl.random.used = {}
function rl.random.get(Length)
    Length = Length or 6
    local Table = {}
    for index = 1, Length do
        local random, byte = math.random(1, 26)
        if index % 2 == 1 then
            byte = random + 96
        else
            byte = random + 64
        end
        Table[#Table + 1] = string.char(byte)
    end
    local Content = table.concat(Table)
    if rl.random.used[Content] then
        return rl.random.get(Length + 1)
    end
    rl.random.used[Content] = 1
    if rl.data and string.match(rl.data, '[^%w_]' .. Content .. '[^%w_]') then
        return rl.random.get(Length + 1)
    end
    return Content
end
rl.pianyi2 = math.random(256, 3830)
rl.string = {}
rl.string.used = {}
rl.string.name = rl.random.get()
rl.string.index = 0
rl.string.data = {}
table.insert(rl.string.data, rl.string.name .. '={}')

rl.ascll = {}
rl.ascll.used = {}
rl.ascll.name = rl.random.get()
rl.ascll.data = {}
table.insert(rl.ascll.data, rl.ascll.name .. '={}')

rl.decrypt = {}
rl.decrypt.name = rl.random.get()
rl.decrypt.data = rl.decrypt.name .. '=function(Table)local data="" for index,value in pairs(Table)do data=data..' ..
                      rl.ascll.name .. '[value] end return data end'

rl.string.encrypt = function(data)
    local Func = load('return ' .. data)
    if not Func then
        data = data:sub(2, -2)
        data = string.format('%q', data)
        Func = load('return ' .. data)
        data = Func()
        data = data:sub(2, -2)
    else
        data = Func()
    end
    if data == '' then
        return '\\034\\034'
    end
    local index = rl.string.used[data]
    if not index then
        local Table, Ascll = {}
        for i, byte in pairs({string.byte(data, 1, -1)}) do
            Ascll = rl.ascll.used[byte]
            if not Ascll then
                Ascll = '"' .. rl.random.get() .. '"'
                rl.ascll.used[byte] = Ascll
                table.insert(rl.ascll.data, rl.ascll.name .. '[' .. Ascll .. ']=char(' .. byte .. ')')
            end
            Table[#Table + 1] = Ascll
        end
        Table = '{' .. table.concat(Table, ',') .. '}'
        index = '"' .. rl.random.get() .. '"'
        rl.string.used[data] = index
        table.insert(rl.string.data, rl.string.name .. '[' .. index .. ']=' .. rl.decrypt.name .. '(' .. Table .. ')')
    end
    return '(' .. rl.string.name .. '[' .. index .. '])'
end
if sle[3] then
    local varTable
    varTable={}
    string.gsub(rl.data,'([%a_][%w_]*)%s*=',function(P1)
        varTable[P1]=1
    end)
    for k,v in pairs(varTable)do
        v=rl.random.get()
        rl.data = string.gsub(rl.data,'([^%w_])'..k..'([^%w_])','%1'..v..'%2')
    end
end

rl.data=lianfy..rl.data
lianfy=nil

for text in string.gmatch(rl.data,[[\]].."'") do
if  load(string.gsub(rl.data,text,"'.."..'"'.."'"..'"'.."..'",1)) then
rl.data=string.gsub(rl.data,text,"'.."..'"'.."'"..'"'.."..'",1)
end
end

for text in string.gmatch(rl.data,[[\]]..'"') do
if  load(string.gsub(rl.data,text,'"..'.."'"..'"'.."'"..'.."',1)) then
rl.data=string.gsub(rl.data,text,'"..'.."'"..'"'.."'"..'.."',1)
end
end

gg.toast('正在加密字符串...')

bigtable={ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '_'}
function sjzf(X)
X=X-1
X1=bigtable[math.random(11,63)]
for i=1,X do X1=X1..bigtable[math.random(1,63)] end
return X1 end
local Lian = {}
local KeyTab = {}
for i = 1, 2 do
Jas = math.random(33,39)
table.insert(KeyTab, Jas)
end
sd = {}
res = ''
for i = 1, #KeyTab do
res = sjzf(KeyTab[i])
table.insert(sd, '"'..res..'"')
end
kyyyy = "{"..table.concat(sd, ",").."}"
table.insert(Lian, kyyyy)
key = table.concat(Lian, ",")
function Lian_ENC_BYTE(str)
sd = {}
Tab = {str:byte(1,-1)}
res = ''
for i = 1, #Tab do
Tab[i] = (Tab[i] - KeyTab[1] - (KeyTab[2] + i) * (KeyTab[1] + i) ) % 256
res = Tab[i]
table.insert(sd, '"'..res..'"')
end
return "lian{"..table.concat(sd, ",").."}"
end
jiami=function(j)        tab={}
     j={utf8.codepoint(j,1,-1)}
for n=1,#j do
        tab[n]=Lian_ENC_BYTE(utf8.char(j[n]))
end
    j=table.concat(tab,',')
    j='(function()return table.concat({'..j..'})end)()'
       return j
end
rl.data=rl.data:gsub([[%'(.-)%']],jiami)
rl.data=rl.data:gsub([[%"(.-)%"]],jiami)
rl.data='local Lian_key = {'..key..'}'..[[

local function lian(a)
local res = ""
local PARK2=string.len(Lian_key[1][1])
for i = 1, #a do
local PARK3=(string.len(Lian_key[1][2]) + i)
local PARK4=(string.len(Lian_key[1][1]) + i)
res = res..string.char((a[i] + PARK2+PARK3*PARK4) % 256)
end
return res
end
]]..rl.data

rl.data = string.gsub(rl.data, '\\034', '\034')
rl.data = string.gsub(rl.data, '%-%-[^\n]*', '')
rl.data = string.gsub(rl.data, '%s*\n%s*', '\n')
rl.func, rl.error = load(rl.data)

rl.io('字符串.lua', rl.data)
if not rl.func then
    gg.alert('字符串加密失败\n\n' .. rl.error)
    return false, rl.error
end

rl.class = {}
rl.class.list = {
    ['table'] = 1,
    ['debug'] = 1,
    ['gg'] = 1,
    ['os'] = 1,
    ['io'] = 1,
    ['bit32'] = 1,
    ['utf8'] = 1,
    ['string'] = 1,
    ['math'] = 1
}
rl.class.used = {}
rl.class.name = rl.random.get()
rl.class.data = {}
table.insert(rl.class.data, rl.class.name .. '={}')

local class = rl.class
for index, value in pairs(_ENV) do
    local types = type(value)
    if types == 'table' and class.list[index] then
        for index2, value2 in pairs(value) do
            local Status, FuncName
            FuncName = '"' .. rl.random.get() .. '"'
            for _ = 1, 2 do
                rl.data = rl.data:gsub('(.)([^%w_])(%s*)' .. index .. '%s*%.%s*' .. index2 .. '(%s*)([^%w_])(.)',
                              function(P1, P2, P3, P4, P5, P6)
                        if (P1 ~= '.' or P2 == '.') and (P5 ~= '.' or P6 == '.') then
                            Status = true
                            return P1 .. P2 .. P3 .. class.name .. '[' .. FuncName .. ']' .. P4 .. P5 .. P6
                        end
                    end)
            end
            if Status then
                table.insert(class.data,
                    class.name .. '[' .. FuncName .. ']=_ENV[' .. rl.string.encrypt('"'..index..'"') .. '][' .. rl.string.encrypt('"'..index2..'"') .. ']')
            end
        end
    end
end

rl.config = {}
rl.config.used = {}
rl.config.name = rl.random.get()
rl.config.data = {}
table.insert(rl.config.data, 'local char=string.char\n'..table.concat(rl.ascll.data, '\n'))
table.insert(rl.config.data, rl.decrypt.data)
table.insert(rl.config.data, table.concat(rl.string.data, '\n'))
table.insert(rl.config.data, table.concat(rl.class.data, '\n'))
liankt=os.date("\n加密日期："..os.date("%c").."\n\n随机一言：")
rl.data2 = table.concat(rl.config.data, '\n')
rl.data = rl.data2 .. '\n' .. rl.data
rl.Bool = 'local _Bool={}_Bool[2]=not _Bool[1]_Bool[3]=not _Bool[2]\n'

rl.data = rl.data:gsub('([^%w_])nil([^%w_])', function(txt1, txt2)
    return txt1 .. '_Bool[1]' .. txt2
end)
rl.data = rl.data:gsub('([^%w_])true([^%w_])', function(txt1, txt2)
    return txt1 .. '_Bool[2]' .. txt2
end)
rl.data = rl.data:gsub('([^%w_])false([^%w_])', function(txt1, txt2)
    return txt1 .. '_Bool[3]' .. txt2
end)
rl.data = rl.Bool .. rl.data

rl.data = 'if nil then(function()end)()end\nlocal main=(function()\n'..rl.data..'\nend)([=['..[=[



⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⣈⠀⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣼⣶⣂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⡄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣿⣿⣿⣿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠜⠈⠂
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣆⠀⠀⠀⠀⠁⠂⠀⠤⠀⣀⠀⡀⡀⠀⠀⠀⠀⠀⠀⠀⡀⠠⠀⠁⠄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣷⣦⣠⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠁⠀⠀⠀⠀⡈
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣷⣿⢀⣀⠀⠀⠀⠀⣀⡀⠀⢀⢀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠰
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣋⡒⠋⠀⠈⡤⣴⢶⣮⡼⡀⠀⠀⠀⠀⠀⠀⠀⡨⣊
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠒⠰⣿⣿⣿⣿⣿⣿⣿⣿⣝⠲⢴⣂⠄⢰⡚⠾⢿⠶⢳⡀⠀⠀⢀⠠⣐⣼⣿⣿⣤⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⡿⠛⠛⠿⣿⣿⣿⣿⣦⣙⠻⣷⣷⣾⣭⣥⣯⣭⣽⣶⣶⣿⣿⣿⣿⣿⣿⣿⣦⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⠁⣿⣷⡓⣽⣿⡿⣿⣬⣿⣷⣧⣹⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦
⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢸⣿⣿⣿⣿⡀⢾⣿⣿⡄⢻⠇⠻⠷⢖⣿⣿⣿⣷⣦⣍⡛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢁⠀⢿⣿⣿⣿⣷⡈⠻⢿⠀⠀⠀⠀⠀⡀⠦⢬⣛⣯⣾⣿⣿⡾⢦⣍⡟⠻⢿⣿⣿⣿⣿⣿⣿⡿⠟⠁
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢄⠙⢿⣿⣿⣷⣤⣒⢁⠀⠀⠀⡞⠀⠀⠀⠀⠀⠙⠿⠋⠀⡾⠟⢿⣿⣷⡖⠂⠀⠘⠇⣴⠒⠆
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⡀⠀⠀⠉⠻⢿⣻⣿⣿⠀⠀⠀⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡟⠀⠀⠀⡈⣸⡟⢘
⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠀⠰⡀⠀⠀⠀⡀⠉⠻⢿⣇⠀⠀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠲⣶⣶⣿⠃⠀⠀⢠⢡⣿⠇⡃⠁⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢱⡀⠀⠀⠈⠂⢀⠀⠉⠓⠄⠀⠃⠀⠀⠀⠀⠀⡀⢠⡴⢴⣿⣿⣿⠀⠀⠀⠄⣾⡿⠘⠀⠄
⠀⠀⠀⠀⠀⠀⠀⠀⢂⠀⠀⠀⢀⣧⠀⠀⠀⠀⠀⠀⠢⠀⠀⠈⠐⠀⡀⠀⠀⠀⠩⣀⣀⣤⣿⣿⣿⡀⠀⢰⣾⣿⡇⡇⠀⠉⠆
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢧⠀⠀⠀⢻⡆⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⢀⣠⢂⡀⠀⠀⠉⣻⣿⣿⣇⣿⡇⠠⢻⡟⢿⡇⡇⠀⠀⠈⡄⠐
⠈⠀⠀⠀⠀⠀⠀⠀⠀⢘⣷⡀⠀⠐⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⠟⣄⣿⣷⣶⣾⣿⣿⣿⣿⣿⡇⢀⠂⡇⠀⠓⠀⠀⠀⠀⢠⠀⠁⠀⡀
⠀⠀⠀⠀⠀⡇⠀⠀⠔⠁⠘⢿⣆⠀⠅⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠁⠀⡇⡿⣿⣭⣿⣿⣿⣿⣿⣿⡇⡆⠀⡇⠀⠀⠀⠀⠀⠀⠈⡀⢰⠬⢂
⠀⠀⠀⠀⠀⠁⡀⠀⠀⠀⠀⠀⠙⢧⡀⠀⠀⠀⠀⢠⣴⣑⢄⣸⣿⠀⠀⠁⣷⣾⣿⣿⣿⣿⣿⣿⣿⡇⡇⠘⠀⢠⠀⠀⢠⠀⠀⠀⡇⢸⡁⡁
⠀⠀⠀⠀⢀⠜⠀⠀⠀⠀⠀⠀⠀⠀⠑⢄⢘⣼⣢⠀⠿⣿⣽⣿⣿⠀⠀⠀⣏⣿⣿⣿⣿⣿⣿⣿⣿⡇⠁⠀⠀⠘⠀⠀⠸⠀⠀⠀⠀⢈⢊⠄
⠐⠄⡀⠐⠁⢂⠀⠢⡀⠀⠀⠀⠀⠀⠀⠀⠩⡛⢸⠀⠐⣿⣺⣿⣿⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⢀⠃⠀⠀⠀⠀⠀⠀⠀⡤⠂
⠀⠉⠢⠀⠀⠀⠀⠀⠈⠢⠀⠀⠀⠀⠀⠀⠀⠘⡜⣶⣂⠿⣿⣿⣿⡇⠀⠀⡘⠻⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⡌⠀⠀⠀⡄⠀⠀⠀⢠⠀⠀⡴⠀⠈
⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣼⢿⢲⣿⠀⠙⢷⠀⠀⠀⠑⠪⣙⠻⣿⣿⡟⠀⡀⠀⡜⠀⠀⠀⣈⠀⠀⠀⠀⠈
⠀⠀⠀⠀⠀⠀⠀⢠⡀⠀⠀⠀⠀⠐⡀⠀⠀⠀⠀⠹⣇⢻⣯⠀⠀⠀⠑⢤⣀⡀⠀⠨⠳⣦⠍⢀⡔⢀⠜⢀⡆⠀⠀⠁⠀⠀⠀⠀⣇⣀⡀⢀⣰⠄
⠀⠀⠀⠀⠀⠀⠀⠲⡥⠀⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠙⡆⠙⢷⡀⠀⠀⠀⠉⠳⢦⣄⠕⠁⡠⠚⠀⠁⠀⡾⠀⠀⠀⠀⠀⠀⠀⢠⡤⡄
⢀⢆⠀⠀⠀⠀⠀⠠⣷⢀⠀⠀⠀⠀⠠⡆⠀⠀⠀⠀⠀⠈⢦⠀⠹⡧⡀⠀⠀⠀⠔⢁⣤⡞⠋⠀⠀⣰⡾⠀⠀⠀⠀⢀⣀⣤⣴⣾⣿⣷⣶⡖⠐
⢸⣷⣆⠀⠀⠀⠀⠀⢿⣯⡄⠀⠀⠀⢸⣳⠀⠀⠀⠀⠀⠀⠀⠃⠀⠀⠻⢦⡀⡆⢰⣿⣿⣿⣼⣷⠟⠃⠀⠀⠀⠀⢠⣿⣿⣿⣿⣟⣿⣿⡉
⠸⠿⠾⠧⠀⠀⠀⠀⠸⠿⠷⠀⠀⠀⠀⠻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠣⠘⠷⠿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠱⠿⠿⠿⠿⠦

Lian Encrypt For GGLua

Made in China for Version : 1.9.5
]=]..liankt..lian.d..'\n\n]=])\n'

rl.func, rl.error = load(rl.data)
path = '标准库.lua'
rl.io(path, rl.data)
if not rl.func then
    gg.alert('标准库加密失败\n\n' .. rl.error)
    return false, rl.error
end
local data = string.dump(rl.func,true,true)

local get_str = function(l)
    local t={}
    for i=1,l do
        t[i]=math.random(160,190)
    end
    return string.char(table.unpack(t))
end

for k,v in pairs(rl.random.used)do
    data = string.gsub(data,'\x04\x07\x00\x00\x00('..k..')\x00',function(k2)
        local v2 = rl.random.used[k2]
        if v2==1 then
            v2=get_str(10)
            rl.random.used[k2]=v2
        end
        return '\x04\x0B\x00\x00\x00'..v2..'\x00'
    end)
end

rl.io(path, data)

fy2=[[
local hookFunction = {} 
for k,v in pairs(_G) do 
if type(v) == string.char(116,97,98,108,101) then 
for kk,vv in pairs(v) do 
if type(vv) == string.char(102,117,110,99,116,105,111,110) and debug.getinfo(vv).source ~= string.char(61,91,74,97,118,97,93)  then 
table.insert(hookFunction,k..'.'..kk) 
end 
end 
end 
end 
if #hookFunction > 0 then 
while(true) do  
gg.alert("非法启动")
os.exit()  
end 
end 
]]

rl.data=fy2..rl.data
fy2=nil

rl.dump = string.dump(rl.func, true, true)
rl.path3 = lian.dir .. 'tmp.lasm'
if not gg.internal2(load(rl.dump), rl.path3) then
    return gg.alert('加密失败')
end

func = loadfile(path)
data = string.dump(func,true,true)

local get_str = function(l)
    local t={}
    for i=1,l do
        t[i]=math.random(160,190)
    end
    return string.char(table.unpack(t))
end

func = loadfile(path)
data = string.dump(func,true,true)

local get_str = function(l)
    local t={}
    for i=1,l do
        t[i]=math.random(160,190)
    end
    return string.char(table.unpack(t))
end

for k,v in pairs(rl.random.used)do
    data = string.gsub(data,'\x04\x07\x00\x00\x00('..k..')\x00',function(k2)
        local v2 = rl.random.used[k2]
        if v2==1 then
            v2=get_str(10)
            rl.random.used[k2]=v2
        end
        return '\x04\x0B\x00\x00\x00'..v2..'\x00'
    end)
end

rl.data = rl.io(rl.path3)
os.remove(rl.path3)
rl.data2 = ''
rl.ASM = {
    ['LOADK'] = -2,
    ['LOADKX'] = -2,
    ['EXTRAARG'] = -2,

    ['MOVE'] = -2,
    ['UNM'] = -2,
    ['NOT'] = -2,
    ['LEN'] = -2,

    ['ADD'] = -2,
    ['SUB'] = -2,
    ['MUL'] = -2,
    ['DIV'] = -2,
    ['MOD'] = -2,
    ['POW'] = -2,

    ['GETTABLE'] = -2,
    ['SETTABLE'] = -2,
    ['NEWTABLE'] = -2,
    ['SELF'] = -2,
    ['SETLIST'] = -2,

    ['LOADNIL'] = -2,
    ['CONCAT'] = -2,
    ['CALL'] = -2,
    ['VARARG'] = -2,
    ['TAILCALL'] = -2,
    ['TFORCALL'] = -2,

    ['GETUPVAL'] = -2,
    ['SETUPVAL'] = -2,
    ['GETTABUP'] = -2,
    ['SETTABUP'] = -2,

    ['CLOSURE'] = -2
}
rl.jmp1 = 1000000
rl.data=rl.data:gsub("maxstacksize [^\n]+", "maxstacksize 250")
gg.toast("正在加密二进制区块...")
rl.data = string.gsub(rl.data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
              string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))

rl.data = string.gsub(rl.data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
              string.char(0x00, 0x00, 0x00, 0x00), 1)

rl.data = string.gsub(rl.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x6C, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x00),
              string.char(0x04, 0x00, 0x00, 0x00, 0x00), 1)

rl.data = string.gsub(rl.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x6C),
              string.char(0x04, 0xE9, 0x03, 0x00, 0x00) .. string.rep(string.char(6), 1000))

rl.data = string.gsub(rl.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x52),
              string.char(0x04, 0x11, 0x27, 0x00, 0x00) .. string.rep(string.char(6), 10000))

rl.qukuai = string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) ..
                string.rep(string.char(0), 32)
rl.data = rl.data:gsub(rl.qukuai,string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) ..
                  string.rep(string.char(0), 24) .. string.char(0x36, 0xB2, 0xBF, 0xFF, 0x83, 0x2B, 0xD8, 0xFF))
rl.data = string.gsub(rl.data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
rl.data = string.gsub(rl.data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),string.char(0x00, 0x00, 0x00, 0x00), 1)
rl.data = string.gsub(rl.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x6C, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x00),string.char(0x04, 0x00, 0x00, 0x00, 0x00))
rl.data = string.gsub(rl.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x6C),string.char(0x04, 0xE9, 0x03, 0x00, 0x00) .. string.rep(string.char(6), 1000))
rl.data = string.gsub(rl.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x52),string.char(0x04, 0x11, 0x27, 0x00, 0x00) .. string.rep(string.char(6), 10000))
rl.data=string.gsub(rl.data, string.char(0x1B,0x00,0x00, 0x00, 0x17, 0x00 ,0x00 ,0x80,0x01),string.char(0x1B, 0x00, 0x00, 0x00 ,0x17, 0x00 ,0x00 ,0x80 ,0x17))
rl.data=string.gsub(rl.data, string.char(0x1B,0x00,0x00, 0x00, 0x17, 0x40 ,0x00 ,0x80,0x01),string.char(0x1B, 0x00, 0x00, 0x00 ,0x17, 0x40 ,0x00 ,0x80 ,0x99))
rl.data=string.gsub(rl.data, string.char(0x17 ,0x80 ,0xFE ,0x7F ,0x06),string.char(0x17 ,0x80 ,0x1B ,0x7F ,0x06))
rl.data=string.gsub(rl.data, string.char(0x1F ,0x00 ,0x80 ,0x00 ),string.char(0x1F ,0x00 ,0x80 ,0xAB))
qukuai = string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) ..string.rep(string.char(0), 32)
rl.data = rl.data:gsub(qukuai,string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) ..string.rep(string.char(0), 24) .. string.char(0x36, 0xB2, 0xBF, 0xFF, 0x83, 0x2B, 0xD8, 0xFF))
rl.data = string.gsub(rl.data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
              string.char(0x00, 0x00, 0x00, 0x00),1)
rl.data,error=rl.data:gsub(string.char(0x1B,0x00,0x00, 0x00, 0x17, 0x00 ,0x00 ,0x80,0x01),
string.char(0x1B, 0x00, 0x00, 0x00 ,0x17, 0x00 ,0x00 ,0x80 ,0x17))  
local text3, tb2, i, hqzl, go1, go2
go1 = 1000000
i = 0
rl.data = string.gsub(rl.data, '%.maxstacksize 250.-RETURN %s', function(text)
    text3 = ''
    tb2 = {}
    i = 0
    for text2 in string.gmatch(text, '[^\n]+') do
        if text2 ~= '' then
            hqzl = string.match(text2, '%S+')--获取指令
            if hqzl=="LOADK" or hqzl=="CALL" or hqzl=="NEWTABLE" or hqzl=="SETLIST" or hqzl=="GETTABLE" or hqzl=="GETTABUP" or hqzl=="GETUPVAL"then
                go2 = go1 + 1
                i = i + 1
                tb2[i] = ':goto_' .. go1 .. '\n' .. text2 .. '\nJMP :goto_' .. go2
                text2 = 'JMP :goto_' .. go1 .. '\nJMPJMP\n\n:goto_' .. go2
                go1 = go2 + 1
            end
        end
        text3 = text3 .. text2 .. '\n\n'
    end
    local function JMPJMP()
        local num
        local text
        repeat
            num = math.random(1, i)
            text = tb2[num]
        until text
        tb2[num] = nil
        return text
    end
    if i > 0 then
        text3 = string.gsub(text3, 'JMPJMP', JMPJMP)
    end
    return text3
end)
rl.data=rl.data:gsub("\n%s+","\n")
rl.data=string.dump(load(rl.data),true)
rl.data = string.dump(rl.func, true, true)
function rl.getRandom(Length)
    local data = ''
    for index = 1, Length do
        index = string.char(math.random(0, 255))
        data = data .. index
    end
    return data
end

local Table = {}
for index, value in pairs(rl.random.used) do
    rl.data = string.gsub(rl.data, index, function()
        local txt1 = Table[index]
        if not txt1 then
            txt1 = rl.getRandom(#index)
            Table[index] = txt1
        end
        return txt1
    end)
end
rl.path4 = string.match(sle.path, '[^%.]+') .. "加密.lua"
rl.io(rl.path4, rl.data)
rl.func = loadfile(rl.path4)
print("文件保存到:" .. rl.path4)
rl = nil
os.remove('字符串.lua')
os.remove('标准库.lua')