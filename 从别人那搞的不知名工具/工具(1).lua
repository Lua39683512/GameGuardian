function DZSH()
Menu = gg.choice({'转汉字为print','转汉字为load','转搜索过程', 'LUAR'    , '退出'	},3)
if Menu == 1 then ZHUANprint() end
if Menu == 2 then ZHUANload() end
if Menu == 3 then ZHUANsousuo() end
if Menu == 4 then LUAR() end
if Menu == 5 then os.exit() end
end
function ZHUANprint()
LJ = gg.prompt({'请输入汉字'}, {   }, {'text'})
local data = LJ[1]
    local result = ''
for i=1,#data do
local a=string.sub(data, i , i)
b=string.byte(a)
if pd==nil then
pd=1
result = result..tonumber(b)
else
result = result..','..tonumber(b)
end
end--for
local NR='print(string.char('..result..'))'  
print(NR)
end
function ZHUANload()
LJ = gg.prompt({'请输入类似toast的语句'}, {   }, {'text'})
local data = LJ[1]
    local result = ''
for i=1,#data do
local a=string.sub(data, i , i)
b=string.byte(a)
if pd==nil then
pd=1
result = result..tonumber(b)
else
result = result..','..tonumber(b)
end
end--for
local NR='load(string.char('..result..'))()'  
print(NR)
end


function ZHUANsousuo()
LJ = gg.prompt({'选择要转搜索过程文件','无'}, {'/storage/emulated/0/tencent/QQfile_recv' ,false}, {'file','checkbox' })
if LJ==nil then os.exit() end
file = io.open(LJ[1]..'s', 'w')
file:write("")
file:close()
local filel = io.open(LJ[1], "r") assert(filel) 
local data = "666"
repeat
local data = filel:read("*l")
if data~=nil then
--查询字符位置
local baohan = string.find(data, "gg.clearResults")
local bh1 = string.find(data, "gg.setRanges")
local bh2 = string.find(data, "gg.searchNumber")
local bh3 = string.find(data, "gg.getResults")
local bh4 = string.find(data, "gg.editAll")
local bh5 = string.find(data, "gg.toast")
--判断要转的
if type(baohan) =='number' or  type(bh1) =='number'  or  type(bh2) =='number'  or  type(bh3) =='number' or type(bh4) =='number'  or type(bh5) =='number'  then 
--print(data)
pd=nil
local da={}
    local result = ''
for i=1,#data do
local a=string.sub(data, i , i)
b=string.byte(a)
da[i]=tonumber(b)
if pd==nil then
pd=1
result = result..tonumber(b)
else
result = result..','..tonumber(b)
end
end--for
--local NR='load(string.char('..result..'))()'  
local NR='local LUA = load(string.dump(load(string.char('..result..')), true,false))()'  
file = io.open(LJ[1]..'s', 'a+')
file:write(NR)
file:write("\n")
file:close()
else--判断要转的，直接写
file = io.open(LJ[1]..'s', 'a+')
file:write(data)
file:write("\n")
file:close()
end--判断要转的
end
until data == nil
local file = io.open(LJ[1]..'s', "r") assert(file) 
local data = file:read("*a") file:close()
local data= JCDM..'\n'..data
file = io.open(LJ[1]..'s', 'w')
file:write(data)
file:close()

local data=string.dump(loadfile(LJ[1]..'s'), true,true)
os.remove(LJ[1]..'s')		
file = io.open(LJ[1]..'.sR', 'w')
file:write(data)
file:close()
--end
gg.alert("转搜索过程成功")
end--ZHUAN


function LUAR()
LJ = gg.prompt({'选择要二进制加密文件','LuaC'}, {'/storage/emulated/0/tencent/QQfile_recv' ,false}, {'file','checkbox' })
local data=string.dump(loadfile(LJ[1]), true,true)
local data=data:gsub("Lu%a[A-Z_]+",function(s)return "LuaC" end) 
file = io.open(LJ[1]..'.R', 'w')
file:write(data)
file:close()
gg.alert("LuaR成功")
end

DZSH()
