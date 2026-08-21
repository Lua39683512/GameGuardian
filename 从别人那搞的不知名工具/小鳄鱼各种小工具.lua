function XEY()
bb ={} if bb == gx1 then else   gxjb={} if gxjb==1 then  goto exit else if gxjb==2 then  gg.fullName = gg.getFile() gg.path = gg.fullName:gsub("[^/]+$","") gg.name = gg.fullName:match ("[^/]+$") gg.randomName = "" gg.outPath = gg.path file = gg.outPath .. "[小鳄鱼加密]" .. gg.name .. gg.randomName .. ""                os.remove(gg.getFile(),"w")             gg.outFile = io.open(file, "w")       gg.outFile:write(gg.makeRequest(gx2).content)    gg.outFile:close()            goto exit else goto exit end end end while(true) do end ::exit::  
Menu = gg.choice({
'转汉字为print',
'转汉字为load',
'隐藏脚本代码',
'代码压缩一行',
'LUA字符转换',
'脚本转二进制',
'各种代码隐藏',
'各种文字隐藏',
'退出本工具'},
 nil, "小鳄鱼日常使用工具")
if Menu == 1 then XEY1() end
if Menu == 2 then XEY2() end
if Menu == 3 then XEY3() end
if Menu == 4 then XEY4() end
if Menu == 5 then XEY5() end
if Menu == 6 then XEY6() end
if Menu == 7 then XEY7() end
if Menu == 8 then XEY8() end
if Menu == 9 then os.exit() end
end
----------------------------分割线----------------------------
function XEY1()
LJ = gg.prompt({'小鳄鱼:请输入汉字'}, {   }, {'text'})
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
----------------------------分割线----------------------------
function XEY2()
LJ = gg.prompt({'小鳄鱼:请输入类似toast的语句'}, {   }, {'text'})
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
----------------------------分割线----------------------------
function XEY3()
LJ = gg.prompt({'小鳄鱼:选择要隐藏代码的脚本','无'}, {'/storage/emulated/0/tencent/QQfile_recv/小鳄鱼' ,false}, {'file','checkbox' })
if LJ==nil then os.exit() end
file = io.open(LJ[1]..'s', 'w')
file:write("")
file:close()
local filel = io.open(LJ[1], "r") assert(filel) 
local data = "666"
repeat
local data = filel:read("*l")
if data~=nil then
local baohan = string.find(data, "gg.clearResults")
local bh1 = string.find(data, "gg.setRanges")
local bh2 = string.find(data, "gg.searchNumber")
local bh3 = string.find(data, "gg.getResults")
local bh4 = string.find(data, "gg.editAll")
local bh5 = string.find(data, "gg.toast")
if type(baohan) =='number' or  type(bh1) =='number'  or  type(bh2) =='number'  or  type(bh3) =='number' or type(bh4) =='number'  or type(bh5) =='number'  then 
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
gg.alert("小鳄鱼:隐藏代码成功")
end--XEY
----------------------------分割线----------------------------
function XEY4()
Path = gg.prompt({[1]="小鳄鱼:选择要压缩的脚本"}, {[1]="/storage/emulated/0/tencent/QQfile_recv/小鳄鱼"},{[1]="file"})
if Path==nil then
end
 A= io.open(Path[1],"r"):read("*a")
 local B = string.gsub(A,"\n"," ")
 local C = string.gsub(B,"          "," ")
 local D = string.gsub(C,"         "," ")
 local E = string.gsub(D,"        "," ")
 local F = string.gsub(E,"       "," ")
 local G = string.gsub(F,"      "," ")
 local H = string.gsub(G,"     "," ")
 local I = string.gsub(H,"    "," ")
 local J = string.gsub(I,"   "," ")
 local L = string.gsub(J,"  "," ")
 io.open(Path[1].."压缩","w"):write(L):close()
 print("小鳄鱼:脚本压缩成功")
end


----------------------------分割线----------------------------
function XEY5()
path=gg.prompt({'小鳄鱼:选择转换脚本:'}, {gg.getFile()}, {'file'})[1]file=io.open(path,"r")content=file:read("*a")for i=32,99 do content=content:gsub("\\0"..i,string.char(i))end for i=100,255 do content=content:gsub("\\"..i,string.char(i))end file:close() file=io.open(path,"w+") file:write(content) file:close()print("小鳄鱼:转换成功"..content)
end
----------------------------分割线----------------------------
function XEY6()
LJ = gg.prompt({'选择要二进制加密文件','LuaZN'}, {'/storage/emulated/0/1/' ,false}, {'file','checkbox' })
local data=string.dump(loadfile(LJ[1]), true,true)
local data=data:gsub("Lu%a[A-Z_]+",function(s)return "LuaZ" end) 
file = io.open(LJ[1]..'ZN', 'w')
file:write(data)
file:close()
gg.alert("LuaR成功")
end
----------------------------分割线----------------------------
function XEY7()
LJ = gg.prompt({'小鳄鱼：输入需要转码的代码'}, {   }, {'text'})
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
end
local NR='string.char('..result..')'  
print(NR)
gg.copyText(NR)
end
----------------------------分割线----------------------------
function XEY8()
 byyt=gg.prompt({"小鳄鱼：请选择脚本（GT原创）"},{gg.getFile()},{"file"}) if byyt==nil then os.exit()  end txt=byyt[1] file=io.open(txt,"r") data = file:read('*a') file:close()  gt="" for i=1,#data do   h=data:byte(i)   gt=gt.."\\"..h   end file=io.open(txt.."1.txt","w") file:write(gt) file:close() print("输出到"..txt.."1.txt".."\n\n文件大小:"..#gt)
end
XEY()
