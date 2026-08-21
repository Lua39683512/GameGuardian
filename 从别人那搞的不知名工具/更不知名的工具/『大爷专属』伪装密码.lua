abc=gg.prompt({'3066814296   选择文件'},{'/sdcard/0'},{'file'})
if abc==nil then os.exit() end
pm=loadfile(abc[1])
if pm==nil then gg.alert('脚本有误') os.exit() end
pr=print
print=gg.getFile
function gg.toast(...)
return true
end
function gg.multiChoice(...)
pm=nil
return os.exit()
end
function gg.alert(...)
arg={...}
return true
end
function gg.choice(...)
pm=nil
return os.exit()
end
for i=1,99999999 do
gg.prompt=function (...)
o={tostring(i)}

return o
end
if pm then pcall(pm) else pr(abc[1]..'的key：'..i-1) break end
end
