shsh="1234"
file=io.open("/storage/emulated/0/Android/"..shsh..".luaby——鹿十七","r")
if file==nil then
key=gg.prompt({"请输入密码"}, 
{[1]=""}, {[1]="text"}) 
if key == nil then 
os.exit() 
while true 
do 
os.exit() 
end 
end
if key[1] ~= shsh then
 gg.alert("密码错误！") 
os.exit()
 while true
  do 
  os.exit() 
  end 
  end 
filer=io.open("/storage/emulated/0/Android/"..shsh..".luaby——鹿十七","w")
filer:write("by——鹿十七，QQ;2787611487")
filer:close()
end
gg.alert("成功")