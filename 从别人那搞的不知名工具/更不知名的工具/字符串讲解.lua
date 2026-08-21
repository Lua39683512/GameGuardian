--设置下划线
n="\n\n"
--建立弹窗
A=gg.prompt({'选择要操作的脚本:'},{gg.getFile()},{'file'})
--读取源码
B=io.open(A[1],"r"):read("*a")
--这么简单你他妈的自行理解
B=n..B..n


--定义一个新方法名为jia
--text属于被jia调用的东西
function jia(text)
    --请看我发给你们table库的理解
    data=10000
    text = table.concat({text:byte(1, -1)},"\n".."+"..data.."-"..data.."/"..data.."*"..data..",")  
    text = "Re_({" .. text .. "})"
    --将结果返回出来
    return text
end
   --将单引号内的一切源码替换
   B=B:gsub("'(.-)'", jia)
   --双引号同上
   B=B:gsub('"(.-)"', jia)
   
   
shuanfa=[[
function Re_(code)
res=''
for i in ipairs(code) do 
res=res..string.char(code[i])
end 
return res 
end
]]
   
   
io.open(A[1]..".lua","w"):write(shuanfa.."\n"..B)