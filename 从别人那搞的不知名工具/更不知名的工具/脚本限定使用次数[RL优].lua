-- by——鹿十七
-- 有任何疑问进入反馈群聊进行反馈
-- 796546632
local path, name, name2, file, lsq, num

path = gg.getFile()

name = path:match("[^/]*$")
name2 = "脚本限定使用次数.lua" -- 指定脚本名称
num = 5 -- 限制次数

while name ~= name2 do
    gg.alert("脚本名已被修改")
    return os.exit()
end

file = io.open('/storage/emulated/0/data.txt', 'a+')
----------------☝🏼☝🏼☝🏼☝🏼☝🏼☝🏼☝🏼这上面是这个脚本的核心计数，存放地址
file:write('1')
lsq = file:seek('end')
while lsq >= num do
    gg.alert("脚本使用" .. lsq .. "次 现已停止使用")
    return io.open(path, "w"):write("该脚本已停止使用 内容已被全面清空\nby——鹿十七"):close()
end

-----在下面放你的脚本👇
