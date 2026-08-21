--原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632 
--脚本已开源，供大家学习
A=os.date()
B=string.match(A,"%d%d" )--日
C=string.match(A,"%d%d%d%d+")
D=string.match(C,"(%d%d?)")--年
E=string.match(A,"%d%d:")
F=string.match(E,"%d%d?")--小时
G=os.date("%m")
H=F-1
Q=D.."."..G.."."..B.."."..F
LSQ=D.."."..G.."."..B.."."..H
Y=io.open("/storage/emulated/0/tencent/msflogs/com/tencent/mobileqq/com.tencent.mobileqq."..Q..".log","r"):read("*a")
L=string.match(Y,'uin:(%d+) extend_info:33=1')
local Q="http://i.itpk.cn/api.php?question="
local F=gg.prompt
local W
local R="鹿十七"
local AA=L
--调用配置区域




--机器人回复区域
::CC::
W=R..":❤欢迎您的使用❤\n\n❤QQ为"..L.."的用户❤"
while true do
gg.setVisible(false)
local s=gg.alert(W,"回复","清屏","退出")
if s==1 then
local se=F({"❤原创by——鹿十七❤\n\n❤转载时请保留本行信息❤\n\n请输入你想说的话:"},{},{"text"})
if se then
local ser=gg.makeRequest(Q..se[1]).content
if ser then
W=W.."\n\n\n【"..AA.."】:"..se[1]
W=W.."\n\n\n【"..R.."】:"..(ser:gsub("[[]name[]]",AA)):gsub("[[]cqname[]]",R)
end
end
elseif s==2 then
goto CC
elseif s==3 then
return
end
end

