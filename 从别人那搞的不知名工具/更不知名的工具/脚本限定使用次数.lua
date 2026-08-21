--by——鹿十七
--有任何疑问进入反馈群聊进行反馈
--796546632
a=gg.getFile():match("[^/]*$")
if a~="脚本限定使用次数.lua" then
-------☝🏼这里填你的脚本名----
gg.alert("脚本名已被修改")
os.exit()
while (true) do
end
end
file=io.open('/storage/emulated/0/data.txt','a+') 
----------------☝🏼☝🏼☝🏼☝🏼☝🏼☝🏼☝🏼这上面是这个脚本的核心计数，存放地址
    file:write('1') 
    lsq = file:seek('end')
    if lsq >= 5  then
    ----------☝🏼这上面写脚本使用次数
    gg.alert("脚本使用"..lsq.."次 现已停止使用")
    -------------👇这里填你的脚本名
   file=io.open("脚本限定使用次数.lua","w+"):write("该脚本已停止使用 内容已被全面清空\nby——鹿十七")
end
-----在下面放你的脚本👇