--原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632 
--脚本已开源，供大家学习

Q=gg.prompt({
'❤原创——by鹿十七❤\n\n❤望转载时请保留本行信息谢谢❤\n❤群号:796546632❤\n\n只支持数字密码爆破\n\n长时间未响应则是密码中含有非数字'
},{
gg.getFile()
},{
'file'
})


if Q==nil then 
os.exit()
end


pm,error=loadfile(Q[1])
if pm==nil then 
gg.alert('⚠请选用正规的5.2lua脚本⚠\n\n\n╾╾╾╾╾⚠ 问 题 所 在 ️⚠╾╾╾╾╾\n\n'..error)
os.exit() 
end

pr=print
print=gg.getFile
function gg.toast(...)
return true
end

--判断多选列表
function gg.multiChoice(...)
pm=nil
return os.exit()
end
function gg.alert(...)
arg={...}
return true
end

--判断单选列表
function gg.choice(...)
pm=nil
return os.exit()
end

--将这些数字循环到输入框
for i=1,999999999999999 do
gg.prompt=function (...)
o={tostring(i)}
return o
end

--如果成功打开了脚本则退出
--并输出爆破成功后的密码
if pm then 
pcall(pm) 
else
FF=i-1
pr(Q[1]..'\n\n成功！共循环了:'..FF..'次\n\n'..'爆破结束密码为：'..i-1)
gg.copyText(i-1)
break 
end
end