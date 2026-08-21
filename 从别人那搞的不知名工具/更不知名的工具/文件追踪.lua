function hook()
p=hook
for i=1,500 do
local _,v=debug.getlocal(1,i)
if v~=nil and string.find(tostring(v),'/') and #tostring(v)<100 and type(v)=='string' then gg.alert('违规行为') os.exit() end end end
debug.sethook(hook,'',1)
if p~=hook then os.exit() end
gg.toast('检测中')