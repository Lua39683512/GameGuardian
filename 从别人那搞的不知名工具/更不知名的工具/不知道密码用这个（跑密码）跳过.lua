abc=gg.prompt({'选择文件','随机模式','密码开始'},{'/sdcard/0','true','0'},{'file','checkbox','text','text'})
if abc==nil then os.exit() end
pm=loadfile(abc[1])
if pm==nil then gg.alert('脚本有误') os.exit() end
pr=print
alr=gg.alert
print=gg.getFile
function gg.addListItems()
return true
end
function gg.toast()
return true
end
function gg.multiChoice()
pm=nil
return os.exit()
end
function io.open()
pm=nil
return os.exit()
end
function gg.alert()
return true
end
function gg.choice()
pm=nil
return os.exit()
end
i=abc[3]
while(true) do
gg.prompt=function ()
if abc[2] then
i=math.random(math.random(0,9999),math.random(10000,99999999)) end
o={tostring(i)}
i=i+1
if not g then g=alr('解密中')  end
return o
end
if pm then load(pm) else gg.setVisible(true) pr(i) pr(o[1]) break end
end