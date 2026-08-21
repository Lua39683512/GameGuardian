--本工具是恶魔的解密工具
choe=print cheo=gg.alert choo=gg.toast osso=gg.choice soos=gg.prompt
function Main()--Main入口
Q=osso({--Q面板
"拦截器",--1
"小盒子",--2
"SSTool",--3
"文件生成",--4
"本盒子核心功能",--5
"HEX编译器",--6
"防刷拆卸lasm",
"退出"--7
},nil,
"EMMM\n是最靓的仔\n恶魔QQ:\n3509175514\n本工具作者是恶魔")
if Q == nil then Main() end--nil
if Q == 1 then T() end--1
if Q == 2 then Y() end--2
if Q == 3 then A() end--3
if Q == 4 then K() end--4
if Q == 5 then V() end--6
if Q == 6 then VV() end--7
if Q == 7 then VVO() end--7
if Q == 8 then os.exit() end--出口
end--Main结束
-----------------------分割线------------------
function T()--T入口
gg.alert("这个界面是我自己写的\n如果不幸外传被二改\n请记得作者是我")
D = gg.choice({"{一}拦截器/(打印拦截}","{二}拦截器/(无视防御)"})
if D == 1 then
N = gg.prompt({"选择文件"},{"/storage/emulated/0/Tencent/QQfile_recv/"},{"file"})
awq=gg.setRanges
function gg.setRanges(...)
c = gg.prompt({"使用说明","点击运行","跳过搜索"},{"本工具作者是:EMMM,目前:已退网"},{"text","checkbox","checkbox"})
if c[3] == true then
gg.searchNumber=function (a,b)--这是跳过搜索运行
end
end
if c[2] == true then
print(a,b)
end
-----------
awq(...)
end
loadfile(N[1])()
end
if D == 2 then
N = gg.prompt({"选择文件","反拦截"},{"/storage/emulated/0/Tencent/QQfile_recv/"},{"file","checkbox"})
awq=gg.setRanges
function gg.setRanges(...)
c = gg.prompt({"使用说明","gg.toast-(文字)","gg.searNumber-(数据)","gg.getResults--(脚本值)","gg.editAll-(修改数值)","gg.setRanges-(内存)","gg.alert-(弹窗)"},{"本工具是作者已退网"},{"text","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})

if N[2] == true then
rename = os.rename
function os.rename(path, path1)
if tostring(path) == N[1] then
return rename(N[1].."跳过",path1)
end
return rename(path, path1)
end
end
emjm=io.open("/storage/emulated/0/LOG2.3.lua","w")

if c[2] == true then
fh1=gg.toast
gg.toast=function (a)
emjm:write("gg.toast("..a..")")
return fh1(a)
end
end
---------------
if c[3] == true then
fh2=gg.searchNumber
gg.searchNumber=function (a,b)
gg.alert("gg.searchNumber("..a..", "..b..", false, gg.SIGN_EQUAL, 0, -1)")
return fh2(a,b)
end
end
---------------
if c[4] == true then
fh3=gg.getResults
gg.getResults=function (a)
emjm:write("gg.getResults("..a..")")
return fh3(a)
end
end
---------------
if c[5] == true then
fh4=gg.editAll
gg.editAll=function (a,b)
emjm:write('gg.editAll('..a,b..')')
return fh4(a,b)
end
end
---------------
if c[6] == true then
fh5=gg.setRanges
gg.setRanges=function (a)
emjm:write("gg.setRanges("..a..")")
return fh5(a)
end
end
---------------
if c[7] == true then
fh6=gg.alert
gg.alert=function (a)
emjm:write("gg.alert("..a..")")
return fh6(a)
end
end
-----------
awq(...)
end

loadfile(N[1])()
end
end
--------------------分割线-----------------------
function Y()
print("作者EMMM")
::EM::
EM=gg.prompt({"选择文件","1.Devil-dump","2.Disassemble-dump","3.本工具说明书:","4.LOADK转换","5.DUMP字符串识别","6.虚拟机指令图","7.Saf加密-Log方法","8.调用转换算法","9.拆卸lasm修复","10.常量查看"},{"/storage/emulated/0/","0","0","本工具作者是EMMM-[已退网]版权归@恶魔所有"},{"file","checkbox","checkbox","text","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if EM == nil then
os.exit()
end
local last = EM[1]
local out
local test = loadfile(last)
if EM[2] == true then
local out = last..".dump.txt"
				local res = gg.internal2(test, out)
				if res then      
					gg.alert('dump后脚本已保存到:\n'..out)
--					SSX=io.open(out,"r"):read("*a")
					line=""
     loadk=string.find(io.open(out,"r"):read("*a"),"LOADK")
     if loadk~=nil then
     line=line..","..io.open(out,"r"):read("*a"):match("; (.+)")
     else
     if io.open(out,"r"):read("*a")~=nil then
     else os.exit()
     end
     end
     gg.alert("指令总数:\n\n"..line)
     m1=EM[1]:gsub('/[^/]+$','')
     kpk=m1..'/'.."恶魔LOADK.lua"
     line=string.gsub(line,",","",1)    
     for i in string.gmatch(io.open(out,"r"):read("*a"),"LOADK  %d+ %-%d+  ; (.-)\n") do
     print("脚本LOADK如下:\n\n"..i)
     io.open(kpk,"a+"):write(i):close()
     end
--     print(SSX)
					os.exit()
				else
					gg.alert('dump异常抛出:\n'..res)
				end
			end
if EM[3] == true then
YxS=io.open(EM[1],"r"):read("*a")
io.open(EM[1].."by","w"):write(string.dump(load(YxS),true,true))
gg.internal2(loadfile(EM[1].."by"),EM[1]..".lasm")
file=io.open(EM[1]..".lasm","r")
dump1=""
for line in file:lines() do
re=string.find(line,"LOADK")
if re~=nil then
if not tonumber(dump1) then
dump1=dump1..'\n'..line:match("(.+)")
else
end
else
if line~=nil then
else  break
end
end
end
dump1=string.gsub(dump1,"\n","",1)
GG=gg.choice({"获取的LOADK指令查看"})
if GG == 1 then
a=gg.alert("内容如下:\n\n"..dump1,"写出","复制","退出")
if a==nil then else
if a==1 then
io.open(EM[1].."获取的LAOK指令文件","w"):write(dump1)
gg.alert("脚本写入成功，生成路径为：\nsdcard/Tencent/QQfile_recv/")
end
if a==2 then
gg.copyText(dump1)
end
if a==3 then 
gg.alert("1.💓💗💝💔💘\n2.❤💛💚💙💜\n3.字数分析:LOADK指令\n4.本次拦截:"..#dump1.."指令")
os.exit(print("你选择退出"))
end
end
end
end
----------------------------------------------------EMMMand木酥分界线--------------------------------------------------------
if EM[5] == true then
file=io.open(EM[1],"r")
dump1=""
for line in file:lines() do
re=string.find(line,"LOADK")
if re~=nil then
if not tonumber(dump1) then
dump1=dump1..'","'..line:match("; (.+)")
else
end
else
if line~=nil then
else  break
end
end
end
dump1=string.gsub(dump1,",","",1)
gg.alert("转换成功,一共"..#dump1.."字节")
gg.alert(dump1)
print(dump1)
file=io.open("sdcard/成功.lua","a")
file:write(dump1)
end
if EM[6] == true then
local out = last..".dump.txt"
				local res = gg.internal2(test, out)
				if res then      
			gg.alert('dump后脚本已保存到:\n'..out)
	SSX=io.open(out,"r"):read("*a")
gg.alert("所有指令捕获结果:\n\n"..SSX)
xa=0
for i in string.gmatch(SSX,"%d+ param") do
xa=xa+1
print("次区块"..xa.."的param(参数)数:\n"..i)
end
xb=0
for i in string.gmatch(SSX,"%d+ slot") do
xb=xb+1
print("次区块"..xb.."的slot(狭槽)数:\n"..i)
end
xc=0
for i in string.gmatch(SSX,"%d+ upvalue") do
xc=xc+1
print("次区块"..xc.."的Upvalue(增值)数:\n"..i)
end
xd=0
for i in string.gmatch(SSX,"%d+ local") do
xd=xd+1
print("次区块"..xd.."的local(局部变量)数:\n"..i)
end
xf=0
for i in string.gmatch(SSX,"%d+ constant") do
xf=xf+1
print("次区块"..xf.."的constant(常量)数:\n"..i)
end
xg=0
for i in string.gmatch(SSX,"%d+ function") do
xg=xg+1
print("次区块"..xg.."的function(执行体)数:\n"..i)
end
--	print(SSX)
io.open(EM[1]..".写出","w"):write(SSX)
file=io.open(EM[1]..".写出","r")
dump1=""
for line in file:lines() do
re=string.find(line,"LOADK")
if re~=nil then
if not tonumber(dump1) then
dump1=dump1..'\n'..line:match("; (.+)")
else
end
else
if line~=nil then
else  break
end
end
end
dump1=string.gsub(dump1,"\n","",1)
io.open(EM[1]..".写出","w"):write(dump1)
		else
					gg.alert('dump异常抛出:\n'..res)
				end
			end
if EM[7] == true then
xnj = {
"%main0 MOVE Copy a value between registers 在寄存器间拷贝值",
"%main1 LOADK Load a constant into a register 把一常量载入寄存器",
"%main2 LOADBOOL Load a boolean into a register 把一布尔值载入寄存器",
"%main3 LOADNIL Load nil values into a range of registers 把 nil 载入一系列寄存器",
"%main4 GETUPVAL Read an upvalue into a register 把一 upvalue 读入寄存器",
"%main5 GETGLOBAL Read a global variable into a register 把一全局变量读入寄存器",
"%main6 GETTABLE Read a table element into a register 把一表元素读入寄存器",
"%main7 SETGLOBAL Write a register value into a global variable 把一寄存器值写入全局变量",
"%main8 SETUPVAL Write a register value into an upvalue 把一寄存器值写入 upvalue",
"%main9 SETTABLE Write a register value into a table element 把一寄存器值写入表元素",
"%main10 NEWTABLE Create a new table 创建表",
"%main11 SELF Prepare an object method for calling 为调用对象方法做准备",
"%main12 ADD Addition operator 加法操作",
"%main13 SUB Subtraction operator 减法操作",
"%main14 MUL Multiplication operator 乘法操作",
"%main15 DIV Division operator 除法操作",
"%main16 MOD Modulus (remainder) operator 取模（余数）操作",
"%main17 POW Exponentiation operator 取幂操作",
"%main18 UNM Unary minus operator 一元负操作",
"%main19 NOT Logical NOT operator 逻辑非操作",
"%main20 LEN Length operator 取长度操作",
"%main21 CONCAT Concatenate a range of registers 连接一系列寄存器",
"%main22 JMP Unconditional jump 无条件跳转",
"%main23 EQ Equality test 相等测试",
"%main24 LT Less than test 小于测试",
"%main25 LE Less than or equal to test 小于或等于测试",
"%main26 TEST Boolean test, with conditional jump 布尔测试，带条件跳转",
"%main27 TESTSET Boolean test, with conditional jump and assignment 布尔测试，带条件跳转和赋值",
"%main28 CALL Call a closure 调用闭包",
"%main29 TAILCALL Perform a tail call 执行尾调用",
"%main30 RETURN Return from function call 从函数调用返回",
"%main31 FORLOOP Iterate a numeric for loop 迭代数字 for 循环",
"%main32 FORPREP Initialization for a numeric for loop 初始化数字 for 循环",
"%main33 TFORLOOP Iterate a generic for loop 迭代一般形式的 for 循环",
"%main34 SETLIST Set a range of array elements for a table 设置表的一系列数组元素",
"%main35 CLOSE Close a range of locals being used as upvalues 关闭被用作 upvalue 的一系列局部变量",
"%main36 CLOSURE Create a closure of a function prototype 创建一函数原型的闭包",
"%main37 VARARG Assign vararg function arguments to registers 把可变数量参数赋给寄存器",
NULL
};
print(xnj)
	   end
if EM[8] == true then
b=gg.prompt({"脚本"},{gg.getFile()},{"file"})[1]
gg.setVisible(false)
while true do
a=[===[
toast=gg.toast
exit=os.exit
alert=gg.alert
_file=loadfile
TR={}
gg.REGION_VIDEO='gg.REGION_VIDEO' 
gg.REGION_BAD='gg.REGION_BAD' 
gg.REGION_ANONYMOUS='gg.REGION_ANONYMOUS' 
gg.REGION_C_DATA='gg.REGION_C_DATA' 
gg.REGION_C_ALLOC='gg.REGION_C_ALLOC' 
gg.TYPE_FLOAT='gg.TYPE_FLOAT' 
gg.TYPE_DWORD='gg.TYPE_DWORD' 
f=io.open(]===].."\""..EM[1].."[log]\""..[===[,'r') 
if f==nil then 
  io.open(]===].."\""..EM[1].."[log]\""..[===[,'w'):write('--[[木酥log新思路]]\n') 
else 
end
ggg=gg
function gg.setRanges(memo)  
  toast('[搜索内存]: '..tostring(memo)) 
  io.open(]===].."\""..EM[1].."[log]\""..[===[,'a+'):write('\n[搜索内存]: '..tostring(memo)):close()
end 
function gg.searchNumber(...)
  local conce={...}
  print(conce)
  toast('[搜索数值]: '..conce[1]..'\n[搜索类型]: '..conce[2])
  io.open(]===].."\""..EM[1].."[log]\""..[===[,'a+'):write('\n[搜索数值]: '..conce[1]..' [搜索类型]: '..conce[2]):close()
end
function gg.getResults(...)
  local conce={...}
  print(conce)
  toast('[得到数量]: '..conce[1])
  io.open(]===].."\""..EM[1].."[log]\""..[===[,'a+'):write('\n[得到数量]: '..conce[1]):close()
end
function gg.editAll(text,type) 
  toast('[修改数值]: '..text..'\n   [修改类型]: '..tostring(type))
  io.open(]===].."\""..EM[1].."[log]\""..[===[,'a+'):write('\n[修改数值]: '..text..' [修改类型]: '..tostring(type)):close()
end
function gg.getValues(...)
  local conce={...}
  print(conce)
  toast('[得到table]: '..tostring(conce))
  io.open(]===].."\""..EM[1].."[log]\""..[===[,'a+'):write('\n[得到table]: '..tostring(conce)):close()
end
function gg.setValues(...)
  local conce={...}
  print(conce)
  toast('[修改table]: '..tostring(conce))
  io.open(]===].."\""..EM[1].."[log]\""..[===[,'a+'):write('\n[修改table]: '..tostring(conce)):close()
end
function gg.alert(...)
  local conce={...}
  print(conce)
  toast('[警告内容]: '..tostring(conce))
  io.open(]===].."\""..EM[1].."[log]\""..[===[,'a+'):write('\n[警告内容]: '..tostring(conce)):close()
  return alert(...)
end
function os.exit(...)
  local t=alert("检测到退出,是否退出","是","","否")
  if t==3 then
    gg.setVisible(true)
  else
    exit()
  end
end
function gg.toast(...)
  local conce={...}
  print(conce)
  toast('[提示内容]: '..tostring(conce))
  io.open(]===].."\""..EM[1].."[log]\""..[===[,'a+'):write('\n[提示内容]: '..tostring(conce)):close()
end
function loadfile(...)
  print(...)
  _file(...)
end
]===]
a={a:byte(1,-1)}
a="tab={"..table.concat(a,",").."}\nres=[[]]\nfor i=1,#tab do\n  res=res..string.char(tab[i])\nend\npcall(load(res))\nloadScript(\""..EM[1].."\")"
io.open("/data/user/0/com.xzrmu/files/.SafeGG","w+"):write(a)
if gg.isVisible(true) then break
end
end
end

if EM[9] == true then
file=io.open(EM[1],"r")
line1=""
for line in file:lines() do
re=string.find(line,"LOADK")
if re~=nil then
line1=line1..","..line:match("; (.+)")
else
if line~=nil then
else file:close() break
end
end
end
--print(line1)
m1=EM[1]:gsub('/[^/]+$','')
kpk=m1..'/'.."CCCCCCCC.lua"
line1=string.gsub(line1,",","",1)
zxxx=[[ FGCFYGFDGGD={KIDAAFVGJBG} char={} for i=1,#FGCFYGFDGGD do XEY=FGCFYGFDGGD[i] table.insert(char,string.char(XEY-16)) end local heyuanlll=table.concat(char,"") function DDFXD(h,Text) return (Text:gsub("..", function (h)   return string.char((tonumber(h,16))%256) end)) end local data = DDFXD(FGCFYGFDGGD,heyuanlll) if string.find(data,"function") then print(data) end ]]
zxxx=string.gsub(zxxx,"KIDAAFVGJBG",line1)
io.open(kpk,"w"):write(zxxx):close()
gg.alert("  转换完成\n  脚本生成在:\n  "..kpk)
gg.isVisible(true)
end
----------------------------------------------分割线--------------------------------------------
if EM[10] == true then
X=io.open(EM[1],"r"):read("*a")



to=0
pr=0
al=0
zfcl={}
lx=""
for i in string.gmatch(X,"%a+ %a%d+ (.-)\n") do
if string.find(i,"F%d+") == nil then
if string.find(i,"upvalues") == nil then
for k in string.gmatch(i,'"(.-)"') do


if k == "TYPE_FLOAT" then


table.insert(zfcl,k..",")

elseif k == "TYPE_DOUBLE" then
table.insert(zfcl,k..",")

elseif k == "TYPE_WORD" then

table.insert(zfcl,k..",")

elseif k == "TYPE_BYTE" then
table.insert(zfcl,k..",")

elseif k == "TYPE_QWORD" then
table.insert(zfcl,k..",")


elseif k == "TYPE_XOR" then
table.insert(zfcl,k..",")

elseif k == "TYPE_AUTO" then
table.insert(zfcl,k..",")

elseif k == "TYPE_DWORD" then
table.insert(zfcl,k..",")



else


if al == 1 then

table.insert(zfcl,k..'")\n')
al=0
else

if k == "alert" then
table.insert(zfcl,'alert("')
al=1

else



if k == "editAll" then
table.insert(zfcl,"editAll(")

else


if k == "getResults" then
table.insert(zfcl,"getResults(100)\n")

else


if k == "SIGN_EQUAL" then
table.insert(zfcl,"SIGN_EQUAL, 0, -1)\n")

else






if string.find(k,"%d") ~= nil then


table.insert(zfcl,'"'..k..'",')


else




if k == "searchNumber" then
table.insert(zfcl,"searchNumber(")


else

if k == "exit" then
table.insert(zfcl,"exit()\n")
else

if k == "os" then
table.insert(zfcl,"os.")
else




if pr == 1 then

table.insert(zfcl,k..'")\n')
pr=0
else

if k == "print" then

table.insert(zfcl,'print("')
pr=1
else





if to == 1 then

table.insert(zfcl,k..'")\n')
to=0
else


if k ~= "_ENV" then
if k == "toast" then
table.insert(zfcl,'toast("')
to=1
else
if k == "setRanges" then
table.insert(zfcl,"setRanges(32)\n")
else
if k == "clearResults" then
table.insert(zfcl,"clearResults()\n")
else
if k == "gg" then
table.insert(zfcl,"gg.")
else
table.insert(zfcl,k.."\n")
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
zfclzs=#zfcl




em3menu=gg.choice({"lasm还原"})
if em3menu == 1 then goto EM31 end


::EM31::
alzfcl=gg.alert(table.concat(zfcl),"文件写出","返回")
if alzfcl == 1 then
f=io.open(EM[1].."还原","w+")
f:write(table.concat(zfcl))
f:close()
end
if alzfcl == 2 then goto EM end
end
----------------------------------------------分割线--------------------------------------------
if EM[11] == true then
xx=loadfile(EM[1])
gg.internal2(xx, "/storage/emulated/0/导出的常量")
f=io.open("/storage/emulated/0/导出的常量","r")
hans={}
repeat
data=f:read("*l")
if data~=nil then
if string.find(data,"LOADK") then
if string.find(data,'"') then
table.insert(hans,string.match(data,'(".-")'))
else
table.insert(hans,string.match(data,"  ; (%-?%d+)"))
end
end
end
until data==nil
UFO=gg.alert("字符串常量已导出：\n\n"..table.concat(hans,","),"导出","退出")
if UFO == 1 then
io.open(EM[1]..".常量.lua","w"):write(table.concat(hans,",").."\n--DUMP常量\n"):close()
gg.alert("常量已导出！","")
else
print("退出完毕")
os.exit()
end
end
end
----------------------------------------------分割线--------------------------------------------
function A()
gg.toast("这个功能原创并不是我")
function CY()
BY=""
cy="/storage/emulated/0/Android/配置.lua"
if io.open(cy)~=nil then
BY=io.open(cy):read("*a")
else
BY=gg.getFile()
end
return BY
end
local AG="/storage/emulated/0/tencent/.调用"
::CHUYUE::
ChuYue=gg.prompt({
"选择进行操作的文件："
},{
CY()
},{
"file"
})
if ChuYue==nil then
while true do
CYNB=gg.alert("文件选择退出","YES","","NO")
if CYNB==1 then
gg.setVisible(true)
os.exit()
end
if CYNB==3 then
goto CHUYUE
end
end
end
if ChuYue~=nil then
io.open("/storage/emulated/0/Android/配置.lua","w"):write(ChuYue[1])
end
X=io.open(ChuYue[1],"r"):read("*a")

zlzs={}
for xy in string.gmatch(X,"\n(.-)\n") do
if xy ~= "" or "	" then
table.insert(zlzs,xy)
end
end


vs={}
for xy1 in string.gmatch(X,"; (%d+) upvalues,") do --upvalues个数
table.insert(vs,xy1)
end


vs3={}
for i=1,#vs do
vs2=vs[i]
if vs3[1] == nil then
table.insert(vs3,1,vs2)
else
table.insert(vs3,2,vs2)
table.insert(vs3,1,vs3[1]+vs3[2])
end
end


cl={}
for xy2 in string.gmatch(X,", (%d+) constants,") do --常量
table.insert(cl,xy2)
end


cl3={}
for i=1,#cl do
cl2=cl[i]
if cl3[1] == nil then
table.insert(cl3,1,cl2)
else
table.insert(cl3,2,cl2)
table.insert(cl3,1,cl3[1]+cl3[2])
end
end


dz=X:match(".maxstacksize (%d+)")


XY1=gg.choice({"查看主区块","查看次区块"},nil,'指令总数:'..#zlzs.."\nupvalues个数:"..vs3[1].."\n常量总数:"..cl3[1].."\n最大堆栈大小:"..dz)
if XY1 == 1 then goto CY2 end
if XY1 == 2 then goto CY1 end



::CY2::
zqk={}
zk=X:match("\n(.-)\n.func F0")
for zk1 in string.gmatch(zk,"\n(.-)\n") do
if zk1 ~= "" then
table.insert(zqk,zk1)
end
end
XYU=gg.choice({"查看"})
if XYU == 1 then
XYU1=gg.choice(zqk)
end

::CY1::
CY1={}
for CY in string.gmatch(X,".func %w+") do
table.insert(CY1,CY)
end
CHU=gg.choice(
CY1
,nil,'次区块个数:'..#CY1-1)
if CHU==nil then
goto CY1
end
CHAIXIE=CY1[CHU]
io.open(AG,"w"):write(CHAIXIE)
AL=io.open(AG,"r"):read("*a")
AP=AL:match("%d+")
ZJM11={}
for ZJM1 in string.gmatch(X,""..CHAIXIE..".+%c.end ; F"..AP.."") do
table.insert(ZJM11,ZJM1)
end
io.open(AG,"w"):write(tostring(ZJM11))
CYNB=io.open(AG,"r"):read("*a"):gsub("%c%[.+%].+.upval u%d+ "..".+".." ; u%d+",""):gsub("%c+.line %d+",""):gsub("%c+.end ; %w+',",""):gsub("{.+%)\n",""):gsub("\n}",""):gsub("\n\n","\n")
io.open(AG,"w"):write("\n"..CYNB.."\n")
AL=io.open(AG,"r"):read("*a")
ZJM11={}
tl=1
for ZJM1 in string.gmatch(AL,"\n(.-)\n") do
if tl==1 then tl=tl+1
else
table.insert(ZJM11,ZJM1)
end
end

CHU=gg.choice(
ZJM11
,nil,'次区块列表 '..AP..' 的内容:')
if CHU==nil then
goto CY1
end
end
--------------------分割线-----------------------
function K()
gg.alert("确定使用吗,产生的后果本人不承担")
if FX2 == nil then
  mm = gg.prompt({[1]="进入前,请输入密码"}, {[1]="0"}, {[1]="txet"})
  if mm[1] == "154322" then
    gg.toast("密码正确")
  else
    print(mm[1],"密码错误")
    processKill()
    os.exit()
  end
end
--Thousand Dust(执念)
file = gg.prompt({"请选择执念解密GG解密后文件"},{"/storage/emulated/0/执念.log"},{"file"})[1]

files = io.open(file,"r")
load(files:read("*l"))()

files = io.open(file,"r")
content = files:read("*a")
files:close()
content = ""

frequency = tonumber(frequency)
if type(frequency) == "number" then
files = io.open(file,"r")
while true do
debugging = files:read("*l")
if load(tostring(debugging)) == nil then
content = content.."-- "..tostring(debugging).." 代码异常，请查看脚本手动修复\ngg.toast(\"异常代码，请手动修复\")\n"
else
content = content..debugging.."\n"
end
if debugging == nil then
break
end
end
--[生成脚本开头] [[
generate = "function Main()\ntdzn = gg.multiChoice({\n"
for i=1,frequency do
generate = generate.."\"功能"..i.."\",\n"
end
generate =generate.."},nil,\"执念解密GG专属自动生成可用脚本\")\nif tdzn == nil then else\n"

for i=1,frequency do
generate = generate.."if tdzn["..i.."] == true then\nzn"..i.."()\nend\n"
end
generate = generate.."end XGCK = -1 end\n"
--]]

--[获取并生成功能内容] [[
for i=1,frequency do
storage = content:match("--功能"..i.."开始(.-)--功能"..i.."结束")
if storage ~= nil then
generate = generate.."\nfunction zn"..i.."()"..storage.."end\n"
else
generate = generate.."\nfunction zn"..i.."()\n--此功能为空\nend\n"
end
end
generate = generate.."\nwhile true do\n  if gg.isVisible(true) then\n    XGCK = 1\n    gg.setVisible(false)\n  end\n  gg.clearResults()\n  if XGCK == 1 then\n    Main()\n  end\nend"

--]]
files = io.open(file..".生成","w")
files:write(generate)
files:close()
gg.alert("脚本生成成功，已存放到文件："..file..".生成")
print("脚本生成成功，已存放到文件："..file..".生成")
else
print("数字转换失败")
os.exit()
end
end
----------------------------------------------分割线--------------------------------------------
function V()
OL = gg.prompt({"选择文件"},{"/sdcard/"},{"file"})
xx=loadfile(OL[1])
gg.internal2(xx,"/storage/emulated/0/tencent/QQfile_recv/DUMP的文件")
f=io.open("/storage/emulated/0/tencent/QQfile_recv/DUMP的文件","r")
repeat
data=f:read("*l")
if data~=nil then
if string.find(data,"LOADK") then
print("导出的LOADK："..data)
end
end
until data==nil
os.remove("/storage/emulated/0/DUMP.lua")
end
----------------------------------------------分割线--------------------------------------------
function VV()
::O_main::
file=io.open("/storage/emulated/0/tencent/.龙脉配置","r")
if file~=nil then
Filechoice=file:read("*a")
else
Filechoice="/sdcard/tencent/QQfile_recv"
end
OO=gg.choice({
"选择文件",
"查看文件",
"退出Lua工具"
},nil,"已选择📂的路径:\n"..Filechoice)
if OO==1 then
OOO=gg.prompt({
"请选择你的Lua文件:"
},{
Filechoice
},{
"file"
})
if OOO==nil then
goto O_main
else
test,error=loadfile(OOO[1])
if test==nil then
gg.alert('BUG📂\n------------------------------------------------------------\n'..error)
goto O_main
end
io.open("/storage/emulated/0/tencent/.龙脉配置","w"):write(OOO[1])
SSXGP=io.open(OOO[1],"r"):read("*a")
io.open(OOO[1],"w"):write(string.dump(load(SSXGP),true,true))
gg.toast("🗂️载入成功"..OOO[1])
goto O_main
end
end
if OO==2 then
goto OOtwo
end
if OO==3 then
gg.setVisible(true)
os.exit()
end
while true do
if gg.isVisible() then
gg.setVisible(false)
goto O_main
end
end
------------------------------------------------------------------------
::OOtwo::
test,error=loadfile(Filechoice)
if test==nil then
gg.alert('BUG📂\n------------------------------------------------------------\n'..error)
goto O_main
end
gg.internal2(loadfile(Filechoice),Filechoice..".luac")
SSXGP=io.open(Filechoice..".luac","r"):read("*a")
::OOOO::
OO=gg.choice({
"Sam🗂️",
"重组🗂️"
},nil,"已选择📂的路径:\n"..Filechoice)
if OO==nil then
goto O_main
end
if OO==1 then
SSXGP=SSXGP:gsub("\\x00\\x00","")
for i in string.gmatch(SSXGP,"linedefined (.-)\n") do SSXGP=string.gsub(SSXGP,i,"0") end
for i in string.gmatch(SSXGP,".linedefined (.-)\n") do SSXGP=string.gsub(SSXGP,i,"0") end
io.open(Filechoice..".luac","w"):write(SSXGP)
goto OOOO
end
if OO==2 then
local g={}
g.test=loadfile(Filechoice..".luac")
g.out=Filechoice..".lua"
g.tmp=Filechoice..".luac"
local notify=(function ()
local pos=1
local last=0
return function()
local cl=os.clock()
if cl-last < 2 then return end
last=cl
gg.toast("🗃重组: REVERSE EXCHANGE TIME"..(string.sub("-\\|/",pos,pos)))
if pos < 4 then pos=pos + 1 else pos=1 end
end
end)()
notify()
g.chunk=string.dump(g.test,true,true)
g.len=string.len(g.chunk)
g.chunk=load(g.chunk)
for i=1,2 do
local changed=false
notify()
g.res=gg.internal2(g.chunk,g.out)
if not g.res then
os.remove(g.tmp)
gg.alert('重组📂BUG:\n'..g.res)
os.exit()
end
notify()
local file=io.open(g.tmp,"w")
local lasm=io.open(g.out,'r')
local last=''
while true do
local buf=lasm:read(65536)
if not buf then
file:write(last)
break
end
buf=last..buf
local out,cnt=string.gsub(buf,"[^\n]*; garbage\n",";%0")
if cnt > 0 then changed=true end
out,cnt=string.gsub(out,"[^\n]*JMP :goto_[^\n]*; %+0 ↓\n",";%0")
if cnt > 0 then changed=true end
buf=nil
last=string.match(out,"[^\n]*$")
file:write(string.sub(out,1,-1-string.len(last)))
notify()
end
lasm:close()
file:close()
if not changed then
break
end
notify()
g.chunk=loadfile(g.tmp)
end
notify()
os.remove(g.tmp)
g.file=io.open(g.out,"w")
g.chunk=string.dump(g.chunk,true,true)
g.len2=string.len(g.chunk)
g.file:write(g.chunk)
g.file:close()
gg.alert(''..g.len..'bytes =>'..g.len2..'bytes\n\n重组文件成功\n\n重组文件被保存到文件:\n'..g.out..'中')
goto OOOO
end
end
function VVO()
abc=gg.prompt({"选择文件"},{gg.getFile()},{"file"})
local func = loadfile(abc[1])
func = load(string.dump(func, true, true))
if gg.internal2(func, abc[1] .. ".lasm") then
print("拆卸成功")
end
end
Main()