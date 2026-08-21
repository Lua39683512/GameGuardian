
A=gg.prompt({
"选择文件",
"是/否开启函数/指令定位"
},{gg.getFile()},{"file","checkbox"})
file = io.open(A[1],'r')
B=file:read('a') 
file:close()


if A[2] then
i=gg.prompt({"设置查看函数/字节/指令"},{""},{"text"})
C=i[1]
D,E=string.find(B,C)
F=string.match(B,C)
G=gg.alert("原设置的函数名为:"..C.."\n\n查找的函数名为:"..F.."\n\n函数名定位于"..D.."\n\n函数名结束于"..E,"是否进行函数替换")
if G==1 then
ii=gg.prompt({"设置替换函数/字节/指令"},{""},{"text"})
H=ii[1]
Y=string.gsub(B,C,H)
file = io.open(A[1]..'.lua','w'):write(Y)
print("原函数名为:"..C.."\n查找的函数名为:"..F.."\n替换之后的函数为:\n"..Y.."\n函数名定位于"..D.."\n函数名结束于"..E)
end
end