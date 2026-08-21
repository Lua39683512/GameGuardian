zcj=[=[
f=io.open('/storage/emulated/0/.for_yours','r')
if f~=nil then user=f:read('*l') pwrd=f:read('*l') else end
function STart()
DLZHZz
end
function denlu()
DL=gg.prompt({
[[            <XXXX>
本脚本登录系统由木酥开发研制


请输入您要登录的用户名和密码
<--------------------------------------------->
]],
  "1⃣  用户账户  ",
  "2⃣  用户密码  "
},
{
[1]=true,
[2]=user,
[3]=pwrd
},
{ 
  "checkbox",
  "text",
  "text"
})
if DL==nil then os.exit() else end
if DL[2]~=nil and DL[3]~=nil then 
else 
 gg.setVisible(true) print('请勿留空') 
 os.exit()
end
--print(#ZC[2],#ZC[3])
if (#DL[2]<=12 and #DL[2]>=6) and (#DL[3]<=12 and #DL[3]>=6) then else gg.alert('请输入正确的用户名和密码') os.exit() end
  panduan=string.byte(DL[2]:sub(1,1))
  panduan2=string.byte(DL[3]:sub(1,1))
--print(panduan,panduan2)
 if ((panduan>=65 and panduan<=90) or (panduan>=97 and panduan<=122)) and ((panduan2>=65 and panduan2<=90) or (panduan2>=97 and panduan2<=122)) then
   io.open("/storage/emulated/0/.for_yours","w+"):write(DL[2].."\n"..DL[3]):close()
   jc3=io.open("/storage/emulated/0/.pop_mine","r"):read("*a")
   jc4=io.open("/storage/emulated/0/.for_yours","r"):read("*a")
   if jc3==jc4 then
   zxc=1
   gg.alert('登录成功')
   STart()
   end
 else
   gg.alert('账户和密码首字母应为英文字母') 
   os.exit()  
 end
end

function zhuce()
ZC=gg.prompt({
[[          📚 脚 本 注 册 📚
本脚本登录系统由木酥开发研制

用户名及密码为字母+数字6-12位
字符，例：]],
  "1⃣  用户账户  ",
  "2⃣  用户密码  "
},
{
[1]="a12345",
[2]="请输入注册账户",
[3]="请输入注册密码"
},
{ 
  "text",
  "text",
  "text"
})
if ZC==nil then os.exit() else end
if ZC[2]~=nil and ZC[3]~=nil then 
else 
 gg.setVisible(true) print('未输入完整信息') 
 os.exit()
end
--print(#ZC[2],#ZC[3])
if (#ZC[2]<=12 and #ZC[2]>=6) and (#ZC[3]<=12 and #ZC[3]>=6) then else gg.alert('请按标准注册') os.exit() end
  panduan=string.byte(ZC[2]:sub(1,1))
  panduan2=string.byte(ZC[3]:sub(1,1))
--print(panduan,panduan2)
 if ((panduan>=65 and panduan<=90) or (panduan>=97 and panduan<=122)) and ((panduan2>=65 and panduan2<=90) or (panduan2>=97 and panduan2<=122)) then
   io.open("/storage/emulated/0/.pop_mine","w+"):write(ZC[2].."\n"..ZC[3]):close()
   gg.alert('注册成功')
 else
   gg.alert('账户和密码首字母应为英文字母') 
   os.exit()  
 end
end
jc=io.open("/storage/emulated/0/.pop_mine","r")
jc2=io.open("/storage/emulated/0/.for_yours","r")
if jc==nil then
if gg.alert("未注册,是否前往注册","是")==1 then XXX=1 else os.exit() end end
if jc2~=nil then denlu() else XXX=1 end
::kk::
local start=gg.alert("XXXX","用户注册","用户登录","by----木酥")
if start==nil or start==3 then else
 if start==1 then 
   zhuce() 
 end
 if start==2 then
 fg=io.open("/storage/emulated/0/.pop_mine","r")
   if fg~=nil then
   denlu()
   else os.exit(print("未注册")) end 
 end
end
while XXX == 1 do
    goto kk
end
]=]

ms=gg.prompt({
"选择添加登录脚本","脚本标题"
},
{
[1]="/sdcard/tencent/QQfile_recv/1.lua",[2]=" 欢迎使用XXXX辅助！"
},
{
"file","text"
})
zcj=zcj:gsub("DLZHZz",(io.open(ms[1],"r"):read("*a")))
zcj=zcj:gsub("XXXX",ms[2])
io.open(ms[1]..".lua","w"):write(zcj):close()
print("脚本添加到"..ms[1]..".lua")