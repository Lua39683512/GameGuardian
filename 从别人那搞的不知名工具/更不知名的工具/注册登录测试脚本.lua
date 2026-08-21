file=io.open("/storage/emulated/0/1.txt","r")
if file~=nil then
gg.alert("检测到您已拥有账号和密码，正在为您进入......")

 file=io.open("/storage/emulated/0/1.txt","r")
zh=file:read("*a")

 file=io.open("/storage/emulated/0/2.txt","r")
mm=file:read("*a")



----判断配件
 v=gg.prompt({
 "❤请输入账号❤",
 "❤请输入密码❤"},{zh,mm},{"number","number"})
 if v[1]==zh then  else
print("账号不存在") os.exit() end  
if  v[2]==mm then  else
print("密码错误")
 os.exit() 
 end
 
 
 
 
--这里放你的脚本
 aa=gg.choice({
    "菜单"
},nil,"测试")
if aa==1 then
 gg.alert("账号"..zh.."密码"..mm)
end
---这里放你的脚本




--生成配置
else
gg.alert("检测到您第一次使用脚本....正在为您前往注册请耐心等候.....")
a=gg.prompt({"生成账号","生成密码"},{""},{"number","number"})
if a[1]~=nil then
file=io.open("/storage/emulated/0/1.txt","w"):write(a[1])
end
if a[2] ~=nil then 
file=io.open("/storage/emulated/0/2.txt","w"):write(a[2])
end
print("\n\n账号为"..a[1].."\n\n密码为"..a[2].."")
end









