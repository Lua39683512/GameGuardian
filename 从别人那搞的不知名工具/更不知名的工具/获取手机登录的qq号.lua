--原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632 密码十七
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
if L~=nil then
gg.alert("❤当前您手机登陆的qq为❤\n\n".."❤"..L.."❤")
else
QQ=io.open("/storage/emulated/0/tencent/msflogs/com/tencent/mobileqq/com.tencent.mobileqq."..LSQ..".log","r"):read("*a")
SQ=string.match(QQ,'uin:(%d+) extend_info:33=1')
gg.alert("❤当前您手机登陆的qq为❤\n\n".."❤"..SQ.."❤")
end