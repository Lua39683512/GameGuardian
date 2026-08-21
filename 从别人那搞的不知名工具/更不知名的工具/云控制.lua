YY='你的讯笔记链接'
local yy = gg.makeRequest(YY).content
local yya = yy:match('【状态】(.-)【状态】')
local yye = yy:match('【关闭后的公告】(.-)【关闭后的公告】')
if yya=="开"then
gg.toast("脚本加载中........")
end
if yya=="关"then
gg.alert(yye)
os.exit() 
end
--↑↑↑放在脚本开头即可

--[[
↓↓↓这些放在笔记的内容里面

【状态】开【状态】
【关闭后的公告】该脚本已关闭！【关闭后的公告】

]]