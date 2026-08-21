A=os.date("21"..".".."%m"..".".."%d"..".".."%H")--读取本地时间
Q=os.date("%H")-1
T=os.date("21"..".".."%m"..".".."%d".."."..Q)--如果没有读取到新日志则读取老日志
Y=io.open("/storage/emulated/0/tencent/msflogs/com/tencent/mobileqq/com.tencent.mobileqq."..A..".log","r"):read("*a")--读取日志文件

str=gg.prompt({
"❤原创by.鹿十七❤\n❤反馈群聊为:796546632❤\n❤请输入你要过的群号❤\n❤每隔一个小时就要输入一次这是QQ日志刷新的时间 与本脚本无关❤"
},{
""
},{
"number"
})

if not str then
return print("您未做出任何选择")
end

io.open("/storage/emulated/0/tencent/msflogs/com/tencent/mobileqq/com.tencent.mobileqq."..A..".log","w"):write(str[1]..Y)

print("反馈群聊为:796546632 欢迎大家来找我玩")