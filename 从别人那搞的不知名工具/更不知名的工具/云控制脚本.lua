--By小鳄鱼给我留点版权！
-------讯飞云控制-------
YC="http://www.iyuji.cn/iyuji/s/bGdzanNwY3hDWlE2Z2VDaDlqL2RVZz09/1604752418657345"
local xey=gg.makeRequest(YC).content
local XEY1=xey:match('【关】(.-)【关】')
local XEY2=xey:match('>阅读&nbsp; (.-)</div>')
local XEY3=xey:match('【关提示】(.-)【关提示】')
local XEY4=xey:match('【开提示】(.-)【开提示】')
local XEY5=xey:match('【脚本名称】(.-)【脚本名称】')
local XEY6=xey:match('【脚本版本】(.-)【脚本版本】')
local XEY7=xey:match('【脚本链接】(.-)【脚本链接】')
local XEY8=xey:match('【更新公告】(.-)【更新公告】')
-------脚本开关-------
if XEY1 =='关' then
while true do
os.exit(print(XEY3))
end
end
-------脚本名限制-------
if (gg.getFile():match('[^/]+$') ~= XEY5) then
exit(gg.alert('小鳄鱼：请匆修改脚本名称！\n\n存在网络不良获取名字不对可能！'))
end
-------脚本更新配置-------
SST='1'
if (SST==XEY6) then
else
_YC=gg.alert('发现新版本!\n当前版本号：'..SST..'\n最新版本号：'..XEY6..'\n更新公告:\n'..XEY8,'更新','','退出')
if (_YC==nil) and (_YC==3) or (_YC==2) then exit() end end
if (_YC == 1) then 
local lj=gg.getFile()
ml=lj:gsub('/[^/]+$','')
jb=lj:gsub(ml..'/','')
YC_ = gg.prompt({"小鳄鱼：选择更新脚本位置："},{ml},{"path"})
if (YC_==nil) or (YC_[1]==nil) then 
exit('小鳄鱼：已退出选择\n\n更新失败') 
end
YC_lj=gg.makeRequest(XEY7).content
if (YC_lj==nil) then
exit(print("小鳄鱼：错误代码！"))
else
file = io.open(ml.."/".."["..XEY6.."]"..jb,"w"):write(YC_lj):close()
exit(print('更新成功,请重新启动脚本\n脚本名称:'.."["..XEY6.."]"..jb))
end
end
-------QQ群获取-------
function Activity()
local Time = os.date("*t")
Year = string.sub(Time["year"],-2,-1)
if tonumber(Time["month"]) < 10 then
Month = "0"..Time["month"] else
Month = Time["month"]
end
if tonumber(Time["day"]) < 10 then
Day = "0"..Time["day"] else
Day = Time["day"]
end
if tonumber(Time["hour"]) < 10 then
Hour = "0"..Time["hour"] else
Hour = Time["hour"]
end
Ph = Year.."."..Month.."."..Day.."."..Hour
x1,x2=io.open("/storage/emulated/0/tencent/msflogs/com/tencent/mobileqq/com.tencent.mobileqq."..Ph..".log")
if x2 == nil then
x=x1:read("*a")
end
FINDQQ = string.find(x,"590854164")
if FINDQQ ~= nil then
gg.toast('小鳄鱼：您已加入小鳄鱼QQ群')
return 
else
gg.alert("小鳄鱼：检测到您未加QQ群！\n\nQQ群：590854164")
return 
end
end
print(Activity())
-------QQ获取-------
function userQQ()
local Time = os.date("*t")
Year = string.sub(Time["year"],-2,-1)
if tonumber(Time["month"]) < 10 then
Month = "0"..Time["month"] else
Month = Time["month"]
end
if tonumber(Time["day"]) < 10 then
Day = "0"..Time["day"] else
Day = Time["day"]
end
if tonumber(Time["hour"]) < 10 then
Hour = "0"..Time["hour"] else
Hour = Time["hour"]
end
Ph = Year.."."..Month.."."..Day.."."..Hour
w1,w2=io.open("/storage/emulated/0/tencent/msflogs/com/tencent/mobileqq/com.tencent.mobileqq."..Ph..".log")
if w2 == nil then
g=w1:read("*a")
ff1,ff2 = string.find(g,"encode uin: ")
if ff1 ~= nil then
userQQ=g:match("encode uin: (.-)\n")
 else
y1,y2=io.open("/storage/emulated/0/tencent/msflogs/com/tencent/mobileqq/com.tencent.mobileqq_MSF."..Ph..".log")
if y2 == nil then
g=y1:read("*a")
ff1,ff2 = string.find(g,"login uin:")
if ff1 ~= nil then
userQQ=g:match("login uin:(.-), timeEnd:")
 else
z1,z2=io.open("/storage/emulated/0/tencent/msflogs/com/tencent/mobileqq/com.tencent.mobileqq_qzone."..Ph..".log")
if z2 == nil then
g=z1:read("*a")
ff1,ff2 = string.find(g,"lifeCycle setUin ")
if ff1 ~= nil then
userQQ=g:match("lifeCycle setUin (.-)")
 else
z1,z2=io.open("/storage/emulated/0/tencent/msflogs/com/tencent/mobileqq/com.tencent.mobileqq_mini."..Ph..".log")
if z2 == nil then
g=z1:read("*a")
ff1,ff2 = string.find(g,"VerifyPlugin traceId=")
if ff1 ~= nil then
userQQ=g:match("VerifyPlugin traceId=(.-)_")
end
end
end
end
end
end
end
end
return userQQ
end
-------手机IP信息-------
td=200
qh=10
zy=200
yanshi=0
weather="https://weather.mp.qq.com/?_nav_alpha=0&_nav_txtclr=ffffff&_nav_titleclr=ffffff&_nav_anim=true&asyncMode=1&adtag=h5page.ark_expose&city=%E4%B8%AD%E5%B1%B1-%E4%B8%AD%E5%B1%B1&adcode=101281701"
wer=gg.makeRequest(weather).content
if wer == nil then
gg.alert("小鳄鱼：\n\n本脚本需要链接网络！\n\n请保持网络良好并可用","")
while true do
end
end
hxx=wer:match("Linux; U; (.-)level")
sjxh=string.len(hxx) 
xh=sjxh-17
sj=string.sub(hxx,1,xh)
function IP()
local HcXNP = "http://mip.chinaz.com/"
local HcX = gg.makeRequest(HcXNP).content
IPA=HcX:match("您的IP地址(.-)来自")
IPB=IPA:match(">(.-)<")
end
IP()
-------获取文案-------鹿十七原创
Y=gg.makeRequest("https://v1.hitokoto.cn/").content
local Q=string.match(Y,'hitokoto(.+)type')
local F=string.gsub(Q,'":"',"")
KTV=string.gsub(F,'","',"")
-------本地脚本启动次-------
file=io.open('/storage/emulated/0/.小鳄鱼配置','a+') 
file:write('1') 
SSTYC = file:seek('end')
-------自动查IP-------鹿十七原创
C=IPB
B=gg.makeRequest("https://m.ip138.com/iplookup.asp?ip="..C).content
YC=string.match(B,"<caption>(.+)</tbody>")
SST=YC:match('</td><td>(.-)</td></tr>')
SSTNB=SST:gsub('数据中心','')

gg.alert("小鳄鱼：\n\n本脚本已被全网启动：["..XEY2.."]次\n\n您手机目前IP：["..IPB.."]\n\n已查到您IP信息："..SSTNB.."\n\n您手机信息：\n"..sj..os.date("\n\n现在是%Y年-%m月-%d日 %H时:%M分").."\n\n您目前登陆的QQ：["..userQQ().."]\n\n您执行了本脚本：["..SSTYC.."]次，感谢支持！\n\n随机文案："..KTV)
gg.isVisible(true)--显示脚本

--[[
【关】【关】

【关提示】小鳄鱼：脚本已关【关提示】

【开提示】欢迎使用本工具，工具完全免费【开提示】

【脚本名称】云控制脚本.lua【脚本名称】

【脚本版本】1【脚本版本】

【脚本链接】 【脚本链接】

【更新公告】更新版本1.0【更新公告】
]]

