a=gg.getFile():match("[^/]*$")
if a~="1.lua" then
-------☝🏼这里填你的脚本名----
gg.alert("脚本名已被修改\n请将脚本更改回原来的样子")
-------------👇这里还是放你的脚本名 否则无法全面清空
file=io.open("1.lua","w"):write("因为您擅自更改脚本名\n该脚本已停止使用 内容已被全面清空\nby——鹿十七")
os.exit()
while (true) do
end
end
----------------------这里面放你云笔记的链接
A=gg.makeRequest('http://www.iyuji.cn/iyuji/s/Y3RuRW4xaDhvU0hTYytOY3d6dUE3UT09/1605413891903770').content
local B=A:match('>阅读&nbsp; (.-)</div>')
C='5'
if B>C then
gg.alert("使用次数已达上限\n\n内容即将全面清空")
--------------这里放👇你的脚本名
Q=io.open("脚本限定使用次数.lua","w+"):write("使用次数已达上限\n\n该脚本已停止使用 内容已被全面清空\nby——鹿十七")
else
gg.alert("使用次数还剩下"..C-B.."次")
end