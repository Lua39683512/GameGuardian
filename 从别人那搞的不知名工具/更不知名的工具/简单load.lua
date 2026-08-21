local file=io.open("/storage/emulated/0/tencent/.拦截器配置","r")
if file~=nil then
SSXGP=file:read("*a")
else
SSXGP="/sdcard/"
end
CY=gg.prompt({
"选择GGLua文件:",
"print大法",
"Optimize Load",
"防第三方加载脚本跳过"
},{
SSXGP
},{
"file",
"checkbox",
"checkbox",
"checkbox"
})

if CY==nil then
os.exit(print("结束"))
else
io.open("/storage/emulated/0/tencent/.拦截器配置","w"):write(CY[1])
end

file=io.open(CY[1],"r")
if file==nil then
os.exit(print("选择的文件不存在"))
else
Debug=loadfile(CY[1])
if Debug==nil then
os.exit(print("选择的文件语法存在错误"))
end
end
qoaksk=0
if CY[2] then
amg=os.exit
function os.exit(a)
print(kIdZF)
print(n77uK)
print(rZBF5)
print(pHYaS)
print(YffAg)
print(t2YzK)
print(LOobM)
print(oWqW6)
print(drjH1)
print(V77s7)
print(hXVKs)
print(EE8Dc)
print(KoWvu)
print(N0k87)
print(r3Y7s)
print(H62gB)
print(Vq27y)
print(AQ0NS)
print(o6K8m)
print(uy3fK)
print(V8zd8)
print(Yn55a)
print(f3pni)
return amg(a)
end
end
if CY[3] then
o=0
local xgp=load
local ssx=function(...)
local arg={...}
local result=xgp(...)
local data=tostring(arg[1])
if result and string.len(data)>500 and #data<200000 then
if data:match("gg%.") then
gg.alert("=>=>脚本解密成功！<=<=\n内容如下：\n")
end
o=o+1
f=io.open("/storage/emulated/0/LOAD"..o..".lua","w"):write(data)
end
return result
end
load=ssx
end

if CY[4] then
local xgp=loadfile
local ssx=function(...)
return nil
end
loadfile=ssx
end

return Debug()