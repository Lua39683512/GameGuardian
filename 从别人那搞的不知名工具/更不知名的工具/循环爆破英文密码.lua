-- 原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632 
-- 脚本已开源，供大家学习

Q=gg.prompt({
'❤原创——by鹿十七❤\n\n❤望转载时请保留本行信息谢谢❤\n❤群号:796546632❤\n\n目前已支持3~7位英文爆破\n\n长时间未响应 则是长度过长'
},{
gg.getFile()
}, {
'file'
})

if Q == nil then
os.exit()
end


pm, error = loadfile(Q[1])
if pm == nil then
gg.alert('⚠请选用正规的5.2lua脚本⚠\n\n\n╾╾╾╾╾⚠ 问 题 所 在 ️⚠╾╾╾╾╾\n\n' ..error)
os.exit()
end


pr = print
print = gg.getFile
function gg.toast(...)
return true
end


-- 判断多选列表
function gg.multiChoice(...)
pm = nil
return os.exit()
end
alert=gg.alert
function gg.alert(...)
arg = {...}
return true
end



-- 判断单选列表
function gg.choice(...)
pm = nil
return os.exit()
end


num1=0
num2=0
num3=0
num4=0
function PASS(pass,num)
if num>0 and num<27 then
pass=pass..string.char(num+96)
end
return pass or ''
end
for i = 1, 100000 do
gg.prompt = function(...)
pass=''
num4=num4+1
if num4>26 then
num4=1
num3=num3+1
end
if num3>26 then
num3=1
num2=num2+1
end
if num2>26 then
num1=1
num1=num1+1
end
if num1>26 then
gg.alert('我实在是找不到密码了!!')
os.exit()
end
pass=PASS(pass,num1)
pass=PASS(pass,num2)
pass=PASS(pass,num3)
pass=PASS(pass,num4)
return {pass}
end
-- 如果成功打开了脚本则退出
-- 并输出爆破成功后的密码
if pm then
pcall(pm)
else
gg.copyText(pass)
alert('成功获得密码\n\n爆破了'..i..'次\n\n密码为：' .. pass)
pr('成功获得密码\n\n爆破了'..i..'次\n\n密码为：' .. pass)
break
end
end
