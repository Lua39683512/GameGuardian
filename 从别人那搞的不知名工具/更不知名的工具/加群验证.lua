A=os.date("21"..".".."%m"..".".."%d"..".".."%H")--读取本地时间
Q=os.date("%H")-1
T=os.date("21"..".".."%m"..".".."%d".."."..Q)--如果没有读取到新日志则读取老日志
Y=io.open("/storage/emulated/0/tencent/msflogs/com/tencent/mobileqq/com.tencent.mobileqq."..A..".log","r"):read("*a")--读取日志文件
Y=string.find(Y,"796546632")--判断里面是否有此群号
if Y then
else
while (true) do
print("您尚未加群")
os.exit()
end
end
if Y==nil then
QQ=io.open("/storage/emulated/0/tencent/msflogs/com/tencent/mobileqq/com.tencent.mobileqq."..T..".log","r"):read("*a")
QQ=string.find(QQ,"796546632")--为确保时间卡在00，进行二次读取
if QQ then
else
while (true) do
print("您尚未加群")
os.exit()
end
end
end