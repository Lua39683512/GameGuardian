

::F::
A=gg.choice({
"转ASCLL码",
"常用XO拦截器",
"清理lasm工具",
"转换LOADK",
"简单跳过退出",
"反编译之后清理",
"JMP混淆删除",
"二进制编译",
"格式化",
"修复1-0工具",
"char转换",
"英文密码爆破",
"数字密码爆破",
"退出"
},nil,"❤原创 BY——鹿十七 自用小工具❤")
if A==nil then goto YT end
if A==1 then goto Q end
if A==2 then goto Y end
if A==3 then goto TD end
if A==4 then goto G end
if A==5 then goto YY end
if A==6 then goto T end
if A==7 then goto TT end
if A==8 then goto TTT end
if A==9 then goto R end
if A==10 then goto TA end
if A==11 then goto LY end
if A==12 then goto Re end
if A==13 then goto EQ end
if A==14 then goto YT end

::Q::
BB=gg.prompt({'输入'},{''},{"text"})
if BB==nil then goto F end
CC=table.concat({BB[1]:byte(1, -1)}, ",")
gg.copyText(CC)
print("转ascll码为: ".."❤"..CC.."❤")
goto F

::EQ::

TW=gg.prompt({
'❤原创——by鹿十七❤\n\n❤望转载时请保留本行信息谢谢❤\n❤群号:796546632❤\n\n只支持数字密码爆破\n\n长时间未响应则是密码中含有非数字'
},{
gg.getFile()
},{
'file'
})


if TW==nil then 
os.exit()
end


pm,error=loadfile(TW[1])
if pm==nil then 
gg.alert('⚠请选用正规的5.2lua脚本⚠\n\n\n╾╾╾╾╾⚠ 问 题 所 在 ️⚠╾╾╾╾╾\n\n'..error)
os.exit() 
end

pr=print
print=gg.getFile
function gg.toast(...)
return true
end

--判断多选列表
function gg.multiChoice(...)
pm=nil
return os.exit()
end
function gg.alert(...)
arg={...}
return true
end

--判断单选列表
function gg.choice(...)
pm=nil
return os.exit()
end

--将这些数字循环到输入框
for i=1,999999999999999 do
gg.prompt=function (...)
o={tostring(i)}
return o
end

--如果成功打开了脚本则退出
--并输出爆破成功后的密码
if pm then 
pcall(pm) 
else
FF=i-1
pr(TW[1]..'\n\n成功！共循环了:'..FF..'次\n\n'..'爆破结束密码为：'..i-1)
gg.copyText(i-1)
break 
end
end

goto F

::Re::
Q=gg.prompt({
'❤原创——by鹿十七❤\n\n❤望转载时请保留本行信息谢谢❤\n❤群号:796546632❤\n\n目前已支持3~7位英文爆破\n\n长时间未响应 则是长度过长'
},{
gg.getFile()
}, {
'file'
})

if Q == nil then
os.exit()
end


pm, error = loadfile(Q[1])
if pm == nil then
gg.alert('⚠请选用正规的5.2lua脚本⚠\n\n\n╾╾╾╾╾⚠ 问 题 所 在 ️⚠╾╾╾╾╾\n\n' ..error)
os.exit()
end


pr = print
print = gg.getFile
function gg.toast(...)
return true
end


-- 判断多选列表
function gg.multiChoice(...)
pm = nil
return os.exit()
end
alert=gg.alert
function gg.alert(...)
arg = {...}
return true
end



-- 判断单选列表
function gg.choice(...)
pm = nil
return os.exit()
end


num1=0
num2=0
num3=0
num4=0
function PASS(pass,num)
if num>0 and num<27 then
pass=pass..string.char(num+96)
end
return pass or ''
end
for i = 1, 100000 do
gg.prompt = function(...)
pass=''
num4=num4+1
if num4>26 then
num4=1
num3=num3+1
end
if num3>26 then
num3=1
num2=num2+1
end
if num2>26 then
num1=1
num1=num1+1
end
if num1>26 then
gg.alert('我实在是找不到密码了!!')
os.exit()
end
pass=PASS(pass,num1)
pass=PASS(pass,num2)
pass=PASS(pass,num3)
pass=PASS(pass,num4)
return {pass}
end
-- 如果成功打开了脚本则退出
-- 并输出爆破成功后的密码
if pm then
pcall(pm)
else
gg.copyText(pass)
alert('成功获得密码\n\n爆破了'..i..'次\n\n密码为：' .. pass)
pr('成功获得密码\n\n爆破了'..i..'次\n\n密码为：' .. pass)
break
end
end

goto F

::LY::
AY=gg.prompt({
"char转换文件"
},{
gg.getFile()
},{
"file"
})

if not AY then
   return print("")
end

f=io.open(AY[1],"r")
fl=io.open(AY[1].."转.lua","w")


repeat
    data=f:read("*l")
    if data~=nil then
    if data:find("char") then
    a=string.match(data,"char%((.-)%)")
    local result=""
    for w in a:gmatch("%d+") do
    result=result..string.char(w)
end
   print("源数据:"..data.."\n")
   print("---------")
   print("替换后的数据:"..result.."\n")
   fl:write(result.."\n")
else
   fl:write(data.."\n")
       end
    end
until 
    data==nil
    fl:close()

goto F

::YT::
os.exit()


::Y::
lsq=gg.prompt({"选择文件","load"},{gg.getFile()},{"file","checkbox"})

if lsq ==nil then goto F end

xx=loadfile(lsq[1])
if lsq[2] then
o=0
local xgp=load
local ssx=function(...)
local arg={...}
local result=xgp(...)
local data=tostring(arg[1])
if result and string.len(data)>500 and #data<200000 then
if data:match("gg%.") then
gg.alert("➖>>脚本加载成功<<➖：\n"..data)
end
o=o+1
f=io.open(lsq[1]..o.."解.lua","w"):write(data)
end
return result
end
load=ssx
end
if A==3 then
os.exit()
end
xx()

goto F

::R::
menu=gg.prompt({""},{gg.getFile()},{"file"})
if menu==nil then goto F end
file=io.open(menu[1],"r"):read("*a")
zip=string.gsub(file,"\n%s*","\n\n")
io.open(menu[1]..".lua", 'w+'):write(zip)
--[[
a=io.open(menu[1]..".lua","r"):read("*a")
ip=string.gsub(a,"%-%-[^\n]*","")
io.open(menu[1]..".lua.lua", 'w+'):write(ip)
]]
goto F

::G::
LSQ=gg.prompt({
"❤by——鹿十七❤"
},{
gg.getFile()
},{
"file"
})

if not LSQ then
return print("未选择脚本")
end

file=io.open(LSQ[1],"r")--打开只读文件夹

dump1=""--赋值

for line in file:lines()--返回一个迭代函数,每次调用将获得文件中的一行内容,当到文件尾时，将返回nil,但不关闭文件
do

Q=string.find(line,"LOADK")--查找line返回迭代函数中的LOADK

if Q~=nil then
if not tonumber(dump1) then
dump1=dump1..','..line:match("; (.+)")--捕获他们之间的一切函数
else
end
else
if line~=nil then
else  
break
end
end
end


dump1=string.gsub(dump1,",","",1)
file=io.open(LSQ[1]..".lua","w")
file:write("load(string.char(table.unpack({"..dump1.."})))()")--最后将源码写出来

goto F

::YY::
LSQ=gg.prompt({"选择脚本\n\n--原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632 ","防止退出"},{gg.getFile(),true},{"file","checkbox"})
if LSQ==nil then goto F end

SQ = loadfile(LSQ[1])


if LSQ[2]==true then
local Q = os.exit
local Y = 1
Y = function (...)
F=gg.alert("检测到退出....","退出", "跳过")
local arg = {...}					
if F==1 then
R= Q(...)
else
R=gg.setVisible(true)
end
return R
end
os.exit	 = Y
end
SQ()

goto F

::T::

LYY=gg.prompt({
"❤by——鹿十七❤"
},{
gg.getFile()
},{
"file"
})

if not LYY then
return print("未选择脚本")
end

line=io.open(LYY[1],"r"):read("*a")


--这里填需要删除的东西
Q=line:gsub("%p*%p*function%(%)*","")
Q=Q:gsub("break","")
Q=Q:gusb("if nil then","")
Q=Q:gsub("until true","")
Q=Q:gsub("repeat","")
Q=Q:gsub("do break end","")
Q=Q:gsub("if function%(%)*","")
Q=Q:gsub("[^\n]*end%)*%(*%)*[^\n]*", "")
Q=Q:gsub("elseif not nil or function%(+%)+","")
Q=Q:gsub("if not nil or function%(%)*","")
Q=Q:gsub("elseif not nil or ","")
Q=Q:gsub("local %w*%d*%_*%d*%p* %w*%d+%_*%d+","")
Q=Q:gsub("if not nil or ","")
Q=Q:gsub("function %w*%d*%_*%d*%(*%)*","")
Q=Q:gsub("\n%s*","\n")
--这里填需要删除的东西


file=io.open(LYY[1]..".lua","w")
file:write(Q)

goto F

::TT::
path = gg.getFile()
menu = gg.prompt({"请选择脚本"}, {path}, {"file"})
if not menu then
    return print("未选择脚本")
end

path = menu[1]
path2 = path .. "-修复.lasm"

io.wr_r = function(path, data)
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

data = io.wr_r(path)

--if data:find("[^\n]*; garbage[^\n]*") then
--    data = data:gsub("[^\n]*; garbage[^\n]*", "")
--end
data = data:gsub('[^\n]*JMP :goto_%d+  ; %+%d+ ↓',"")
data = data:gsub('[^\n]*:goto_%d+',"")
--data = data:gsub('[^\n]*; %d+ ↑',"")
--data = data:gsub('[^\n]*; %-%d+ ↑',"")
--data = data:gsub('[^\n]*; %+%d+ [^\n]*',"")
--data = data:gsub("%.linedefined %-%d+", ".linedefined 0")
--data = data:gsub("%.lastlinedefined %-%d+", ".lastlinedefined 0")
--data = data:gsub("%.maxstacksize %d+%s+%.end ; F", --function(text)
--    return text:gsub("[^\n]*%.end ; F", "RETURN\n%0")
--end)

io.wr_r(path2, data)

goto F

::TTT::
lsq=gg.prompt({--打开弹窗
""
},{
gg.getFile()--获取当前脚本所在目录
},{
"file"--文件
})

yx=io.open(lsq[1],"r"):read("*a")
yx=load(yx)
file=io.open(lsq[1]..".lua","w"):write(string.dump(yx,true,true))

goto F

::TD::

LSQ=gg.prompt({
"❤by——鹿十七❤\n原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632"
},{
gg.getFile()
},{
"file"
})

if not LSQ then
return print("未选择脚本")
end

line=io.open(LSQ[1],"r"):read("*a")

if string.byte(string.sub(line, 1, 1)) == 59 then 
else
gg.alert("该脚本不是lasm编译的")
os.exit()
end




--Q=line:gsub('[^\n]*LOADNIL %w+..%w+%s+TEST %w+[^\n]*',"")
--Q=Q:gsub("LOADNIL %w+%d+%.%.%w+%d+","")--清理无庸指令
Q=line:gsub("[^\n]*; garbage[^\n]*", "")
--Q=Q:gsub("EQ %d %w%d nil","")
Q=Q:gsub("[^\n]*JMP :goto_[^\n]*; %+0 ↓[^\n]*", "")
io.open(LSQ[1]..".lasm", "w"):write(Q)

goto F

::TA::
ios = function(path, data)
local file
if data then
file = io.open(path, "w")
if file then
io.output(file)
io.write(data)
io.close(file)
end
else
file = io.open(path, "r")
if file then
io.input(file)
data = io.read("*a")
io.close(file)
end
return (data or "")
end
end
APP=gg.getTargetInfo()  
local g = {}
g.last = gg.getFile()
g.info = nil
lsq = gg.multiChoice({
"点我！！！！"
},nil,"❤by—鹿十七 1－0修复工具❤\n\n❤关关雎鸠—在河之洲❤\n\n❤窈窕淑女—君子好求❤\n\n"..os.date('当前时间:%F %X\n').."\n\nGG配置:\n\n包名！！！:"..gg.PACKAGE.."\n\n当前版本！！！:"..gg.VERSION.."\n\n当前版本号！！！:"..gg.BUILD.."\n\n当前进程信息为:"..APP.activities[1].label.."\n\n版本"..APP.versionName.."")
if lsq[1]==true then
prompt = gg.prompt(
{"❤选择脚本❤\n\n原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632"},
{gg.getFile()}, {"file"})
if not prompt then
return os.exit()
end
path = prompt[1]
data = ios(path) -- 读取数据
path2 = path .. '.lasm'
if string.byte(string.sub(data, 1, 1)) == 27 then -- 判断文件是否属于二进制脚本
func = loadfile(path) -- 加载脚本
dump = string.dump(func, true, true) -- 编译脚本
func = load(dump) -- 重新加载脚本
gg.internal2(func, path2) -- 拆卸
data = ios(path2) -- 读取拆卸后的数据
end
data = data:gsub("[^\n]*; garbage[^\n]*", "")
gg.toast("脚本已清除20%.....")
data = data:gsub("%.linedefined %-%d+", ".linedefined 0")
gg.toast("脚本已清除40%.....")
data = data:gsub("%.lastlinedefined %-%d+", ".lastlinedefined 0")
gg.toast("脚本已清除80%.....")
data = data:gsub("%.maxstacksize %d+%s+%.end ; F", function(text)
return text:gsub("[^\n]*%.end ; F", "RETURN\n%0")
end)
func = load(data)
if not data then
gg.alert('清理失败')
return os.exit()
end
gg.toast("清理完毕正在写出脚本！！")
dump = string.dump(func, true, true) -- 编译脚本
ios(path, dump) -- 二进制
ios(path2, data) -- LASM
end

goto F

