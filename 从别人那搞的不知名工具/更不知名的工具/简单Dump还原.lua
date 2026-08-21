data=io.open(gg.prompt({"选择sstool-dump后的脚本："},{"/sdcard"},{"file"})[1],"r"):read("*a")
zero = {}
function zero.split(sep)
local sep, fields = sep or "\t",{}
local pattern = string.format("([^%s]+)", sep)
self:gsub(pattern, function(c) fields[#fields+1] = c end)
return fields
end
local csl = data:match('常量数: (.-) 局部变量数')
local yl = data:match('Upvalue数: (.-) \n指令总数')
if yl ~= "1" then
print("当前仅支持1 Upvalue\n当前Upvalue数: "..yl)
os.exit()
end
if csl == 0 or csl == nil then
print("没有捕捉到常量")
os.exit()
end
csl=csl+1
csl=csl-1

i=-1
a=1
j="--天刃Dump转换器：\n"
hs=""
while(i<csl) do
i=i+1
cs=data:match('<-'..a..'> "(.-)"')
if not cs then
else
if cs == "gg" then
a = a+1
hs=cs.."."..data:match('<-'..a..'> "(.-)"').."([["
a=a+1
hs=hs..data:match('<-'..a..'> "(.-)"').."]])"
else
j=j.."\n--字符串"..i.."\nL"..i.."=[["..cs.."]]"
end
end
a=a+1
end
j=j.."\n\n--执行体：\n"..hs
j=j
