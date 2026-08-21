-- 原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632 
-- 脚本已开源，供大家学习

A=gg.prompt({
"❤请输入内容❤",
"❤请输入字数❤"},{"",""},{"text","text"})
B=gg.makeRequest("https://api.pingping6.com/tools/bullshit/index.php?title="..A[1].."&num="..A[2]).content
--错误区
function P(code)
if code:find("num参数不能大于99999") then
print("num参数不能大于99999")
elseif
code:find("num参数非法") then
print("num参数非法")
elseif
code:find("请输入标题") then
print("请输入标题♂")
else

--运行区
C=B:match('article":"(.-)$')
D=C:gsub("%p+","\n")
F=D:gsub("%s+","\n\n")
print(F)
end
end
P(B)