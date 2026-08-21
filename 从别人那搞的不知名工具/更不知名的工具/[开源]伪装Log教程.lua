--原创EMMM
--教程
--:加个选择方式列入 if g.info[1] then
-------------------------------------------
if g.info[1] then
local file = outpath..filename..randomName..'.log.txt'
local f = io_open(file, 'w')
ABC=[[
gg.getFile()
gg.bytes(666999)
gg.bytes(111222)
]]
f:write(ABC)
ss=io.open
io.open=function (...)
fh=ss(...)
gg.alert("检测到反拦截,正在跳过".. ...)
return fh
end
local orig = io.open
local hook = 1
hook = function (...)
local arg = {...}
echo('io.open:', arg)
return orig(...)
end
tr[hook] = orig
io.open = hook
hook = function (...)
return nil
end
gg.alert = hook
gg.toast("正在跳过循环弹窗")
local orig = os.exit
local hook = 1
hook = function (...)
em2=em2+1
local arg = {...}
gg.toast("成功"..em2.."次退出")
gg.sleep(70)
return true
end
tr[hook] = orig
em2=0
os.exit = hook
end