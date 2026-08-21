jb=[[

function Main()
  SN = gg.choice({
  "功能名称1",
  "功能名称2",
  "功能名称3",
  "功能名称4",
  "功能名称5",
  "功能名称6",
  "功能名称7",
  "功能名称8",
  "功能名称9",
  "退出脚本"
 }, nil, "这里可以填写你的QQ")
  if SN == 1 then
    a()
  end
  if SN == 2 then
   b()
  end
  if SN == 3 then
   c()
  end
  if SN == 4 then
   d()
  end
  if SN == 5 then
   e()
  end
  if SN == 6 then
   f()
  end
  if SN == 7 then
   g()
  end
  if SN == 8 then
   h()
  end
  if SN == 9 then
   i()
  end
  if SN == 10 then
   Exit()
  end
  XGCK = -1
end





function a()
gg.clearResults()
gg.setRanges(gg.REGION_BAD1)
gg.searchNumber("搜索数值1",  gg.TYPE_FLOAT1,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值1", gg.TYPE_FLOAT1,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值1",gg.TYPE_FLOAT1)
gg.toast("开启成功1")
end



function b()
gg.clearResults()
gg.setRanges(gg.REGION_BAD2)
gg.searchNumber("搜索数值2", gg.TYPE_FLOAT2,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值2", gg.TYPE_FLOAT2,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值2",gg.TYPE_FLOAT2)
gg.toast("开启成功2")
end



function c()
gg.clearResults()
gg.setRanges(gg.REGION_BAD3)
gg.searchNumber("搜索数值3", gg.TYPE_FLOAT3,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值3", gg.TYPE_FLOAT3,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值3",gg.TYPE_FLOAT3)
gg.toast("开启成功3")
end



function d()
gg.clearResults()
gg.setRanges(gg.REGION_BAD4)
gg.searchNumber("搜索数值4", gg.TYPE_FLOAT4,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值4", gg.TYPE_FLOAT4,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值4",gg.TYPE_FLOAT4)
gg.toast("开启成功4")
end



function e()
gg.clearResults()
gg.setRanges(gg.REGION_BAD5)
gg.searchNumber("搜索数值5", gg.TYPE_FLOAT5,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值5", gg.TYPE_FLOAT5,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值5",gg.TYPE_FLOAT5)
gg.toast("开启成功5")
end



function f()
gg.clearResults()
gg.setRanges(gg.REGION_BAD6)
gg.searchNumber("搜索数值6", gg.TYPE_FLOAT6,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值6", gg.TYPE_FLOAT6,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值6",gg.TYPE_FLOAT6)
gg.toast("开启成功6")
end








function g()
gg.clearResults()
gg.setRanges(gg.REGION_BAD7)
gg.searchNumber("搜索数值7", gg.TYPE_FLOAT7,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值7", gg.TYPE_FLOAT7,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值7",gg.TYPE_FLOAT7)
gg.toast("开启成功7")
end



function h()
gg.clearResults()
gg.setRanges(gg.REGION_BAD8)
gg.searchNumber("搜索数值8", gg.TYPE_FLOAT8,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值8", gg.TYPE_FLOAT8,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值8",gg.TYPE_FLOAT8)
gg.toast("开启成功8")
end



function i()
gg.clearResults()
gg.setRanges(gg.REGION_BAD9)
gg.searchNumber("搜索数值9", gg.TYPE_FLOAT9,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("改善数值9", gg.TYPE_FLOAT9,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("修改数值9",gg.TYPE_FLOAT9)
gg.toast("开启成功9")
end






function Exit()
print("这里是退出脚本后的提示文字")
os.exit()
end
cs = "这里可以改成你的QQ"



while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end



]]



nclx=[[
GG内存代码：
A=gg.REGION_ANONYMOUS
CA=gg.REGION_C_ALLOC
B=gg.REGION_BAD
XS=gg.REGION_CODE_SYS
XA=gg.REGION_CODE_APP
O=gg.REGION_OTHER
CH=gg.REGION_C_HEAP
JH=gg.REGION_JAVA_HEAP
J=gg.REGION_JAVA
CD=gg.REGION_C_DATA
S=gg.REGION_STACK
V=gg.REGION_VIDEO

GG类型代码：
A=gg.TYPE_AUTO
F=gg.TYPE_FLOAT
D=gg.TYPE_DWORD
E=gg.TYPE_DOUBLE
B=gg.TYPE_BYTE
Q=gg.TYPE_QWORD
W=gg.TYPE_WORD
]]

function Main()
y=gg.choice({
"开启前必看",
"单选脚本编写",
"待更新",
"退出脚本"},nil,"鹿十七原创编辑器")
if y==1 then
y=gg.choice({"返回上一页"},nil,"此工具为鹿十七原创\n\n本说明书只提一点\n\n①内存和类型本人已全部转换，你只需要写内存和类型一个字母就行\n下列为转换说明:\n\n"..nclx.."\n\n以上就是了")
if y==1 then Main() end
end
if y==2 then dxgn() end
if y==3 then print("待更新") os.exit() end
if y==4 then os.exit() end
end
function dxgn()
y=gg.choice({
"三功能",
"六功能",
"九功能",
"返回上一页"
},nil,"单选功能页")
if y==1 then cs=3 ks()
end
if y==2 then cs=6 ks()
end
if y==3 then cs=9 ks()
end
if y==4 then Main()
end
end
function ks()
dm=0
cc=0
for i=1,cs do
dm=dm+1
gg.toast("正在编写第"..dm.."个功能")
a=gg.alert("需不需要时间去看代码","需要","不需要")
if a==1 then
y=gg.prompt({
"请输入你需要的看的时间"},{"一秒等于1000"},{"text"})
gg.sleep(y[1])
gg.alert("开始了","好")
end

cc=cc+1
abc={"请输入搜索代码","内存为:","类型为:","改善值为","修改为:","开启后的提示","功能名称"},{"","","","","","开启成功",""},{"text","text","text","text","text","text","text"}
y=gg.prompt(abc)


if y[2]== "A" then y[2]="32" end
if y[2]== "AS" then y[2]="524288" end
if y[2]== "B" then y[2]="131072" end
if y[2]== "XA" then y[2]="16384" end
if y[2]== "XS" then y[2]="32768" end
if y[2]== "CA" then y[2]="4" end
if y[2]== "CB" then y[2]="16" end
if y[2]== "CD" then y[2]="8" end
if y[2]== "CH" then y[2]="1" end
if y[2]== "JH" then y[2]="2" end
if y[2]== "J" then y[2]="65536" end
if y[2]== "O" then y[2]="-2080896" end
if y[2]== "PS" then y[2]="262144" end
if y[2]== "S" then y[2]="64" end
if y[2]== "V" then y[2]="1048576" end
if y[3]=="A" then y[3]="127" end
if y[3]=="B" then y[3]="1" end
if y[3]=="E" then y[3]="64" end
if y[3]=="D" then y[3]="4" end
if y[3]=="F" then y[3]="16" end
if y[3]=="Q" then y[3]="32" end
if y[3]=="W" then y[3]="2" end
if y[3]=="X" then y[3]="8" end
jb=string.gsub(jb,"功能名称"..cc,y[7])
jb=string.gsub(jb,"搜索数值"..cc,y[1])
jb=string.gsub(jb,"改善数值"..cc,y[4])
jb=string.gsub(jb,"修改数值"..cc,y[5])
jb=string.gsub(jb,"gg.REGION_BAD"..cc,y[2])
jb=string.gsub(jb,"gg.TYPE_FLOAT"..cc,y[3])
jb=string.gsub(jb,"开启成功"..cc,y[6])
end
io.open(gg.getFile()..".lua","w"):write(jb)
end


Main()
