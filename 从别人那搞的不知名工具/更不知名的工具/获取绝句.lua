-- 原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632 
-- 脚本已开源，供大家学习

F=gg.prompt({
 "❤请输入内容❤",
 "❤请输入字数[5~8]❤"},{"龙","8"},{"text","text"})
A=gg.makeRequest("https://api.pingping6.com/tools/jjs/?keywords="..F[1].."&len="..F[2]).content
function Y(code)
     if code:find("范围") then
     print("实际生效范围在5~8")
elseif code:find("错误") then
     print("请输入有效的词语")
elseif code:find("中文") then
     print("请输入中文")
elseif code:find("需要为数字") then
,    print("请输入数字")
else
A=A:gsub("%[","——")
A=A:gsub("%]","——")
A=A:gsub(",","——")
A=A:gsub('"',"——\n")
print(A)
end
end
Y(A)