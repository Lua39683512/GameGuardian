【数据已更新2020年08月03号】

数据已更新！
数据已更新2020年8月3号
(1)淘宝优惠券群:276869697
(2)GGlua助手反馈群 讨论群 891950557
(3)有什么不懂的请在群里面讨论 我很少在线
(4)GGlua助手提醒您:
少外出，不聚集。
尽量避免到人群聚集
通风不良的公共场所和人多集中的地方
外出时请佩戴口罩。请大家增强自我防护
维护社会正常秩序，共同度过健康平安的春节。


【使用条例】
1. 不可私自篡改本软件
2:软件代码大部分来自于网络 部分属于开发者原创
3:如果以此软件造成的任何法律责任与开发者无关
4:以此软件为您造成的损失和间接性损失，开发者一概不负责。
5:欢迎加入官方群:欢迎加入二狗子 裸奔反馈群 免费功能，群聊号码：276869697
6:开发者QQ 2462769892
7:如不遵守请退出。



【开关模板】
--半仙唯一QQ2462769892
--半仙软件分享群:318701634
--GG脚本编辑器下载地址:👆👆👆加群即可下载

local Choice = gg.choice
local Toast = gg.toast
local bx = gg.isVisible
local SetVisible = gg.setVisible
local Sleep = gg.sleep

local Toggle = 1  --标识符
local On = "[开启]" 
local Off = "[关闭]"


local SwitchA = On   --开关的起始为开，代表点击即开启功能
local SwitchB = On
local SwitchC = On
local SwitchD = On
local SwitchE = On
local SwitchF = On
local SwitchG = On
local SwitchH = On

if bx(true) then
SetVisible(false)
end



gg.toast("还在不在并不只是上班")
function ToggleMenu()--开关菜单
Menu = Choice({
"功能1 "..SwitchA,--功能1，switchA为开关
"功能2 "..SwitchB,
"功能3 "..SwitchC,
"功能4 "..SwitchD,
"功能5 "..SwitchE,
"功能6 "..SwitchF,
"功能7 "..SwitchG,
"功能8 "..SwitchH,
"退出9[半仙]"
}, nil, "。。。。。。")
if Menu == 1 then
Hack = "A"
if SwitchA == On then
SwitchA = Off
HackFunction(true)--HackFunction方法，为true才能使用方法。
else
SwitchA = On
HackFunction(false)
end

elseif Menu == 2 then
Hack = "B"
if SwitchB == On then
SwitchB = Off
HackFunction(true)
else
SwitchB = On
HackFunction(false)
end

elseif Menu == 3 then
Hack = "C"
if SwitchC == On then
SwitchC = Off
HackFunction(true)
else
SwitchC = On
HackFunction(false)
end

elseif Menu == 4 then
Hack = "D"
if SwitchD == On then
SwitchD = Off
HackFunction(true)
else
SwitchD = On
HackFunction(false)
end

elseif Menu == 5 then
Hack = "E"
if SwitchE == On then
SwitchE = Off
HackFunction(true)
else
SwitchE = On
HackFunction(false)
end

elseif Menu == 6 then
Hack = "F"
if SwitchF == On then
SwitchF = Off
HackFunction(true)
else
SwitchF = On
HackFunction(false)
end

elseif Menu == 7 then
Hack = "G"
if SwitchG == On then
SwitchG = Off
HackFunction(true)
else
SwitchG = On
HackFunction(false)
end

elseif Menu == 8 then
Hack = "H"
if SwitchH == On then
SwitchH = Off
HackFunction(true)
else
SwitchH = On
HackFunction(false)
end

end
if Menu == 9 then os.exit() end
Toggle =-1
end

function HackFunction(ToF)
if Hack == "A" then 
if ToF == true then 
--这里写你的开启功能代码
ToggleMenu()--主页
else
ToggleMenu()--主页
--这里写你的关闭功能代码
end

elseif Hack == "B" then
if ToF == true then
--这里写你的开启功能代码
ToggleMenu()--主页
else
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "C" then
if ToF == true then
  ToggleMenu()--主页
--这里写你的开启功能代码
else
ToggleMenu()--主页
--这里写你的关闭功能代码
end

elseif Hack == "D" then
if ToF == true then
  ToggleMenu()--主页
--这里写你的开启功能代码
else
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "E" then
if ToF == true then
--这里写你的开启功能代码
ToggleMenu()--主页
else
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "F" then
if ToF == true then
--这里写你的开启功能代码
ToggleMenu()--主页
else
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "G" then
if ToF == true then
--这里写你的开启功能代码
ToggleMenu()--主页
else
--这里写你的关闭功能代码
ToggleMenu()--主页
end

elseif Hack == "H" then
if ToF == true then
--这里写你的开启功能代码
ToggleMenu()--主页
else
--这里写你的关闭功能代码
ToggleMenu()--主页
end

else 

end
end

--加载页面
ToggleMenu()

--GG隐藏或者可见
while true do
if bx(true) then
SetVisible(false)
Toggle = 1
end
Sleep(100)
if Toggle == 1 then
ToggleMenu()
end
end







【花里胡哨写法】
local bx=os.date("%Y%m%d%H%M%S")

print(bx)

--[[此代码加到结束脚本里面
local time=os.clock()
print(time)

gg.toast("验证耗时:"..os.clock()-time.."s")
]]
bqt={"🍬","🐷","🍓","🐴","🐮","🐶","🐥","✡","💟","😍","😂","💛","⭐","🍺","🍀","😎","💯","🏀","👹","😈","🤖","💙","💜","🖤",",💓","💖","🍀","🌹","☑️",}--表情
sy=1


local sjbq=bqt[math.random(1,#bqt)]
print(sjbq)
 
function mian() 
  local sjbq=bqt[math.random(1,#bqt)]
  sy=gg.choice({
    [1] = sjbq.."功能"..sjbq,
    [2] = sjbq.."功能"..sjbq,
    [3] = sjbq.."功能"..sjbq,
    [4] = sjbq.."功能"..sjbq,
    [5] = sjbq.."功能"..sjbq,
    [6] = sjbq.."功能"..sjbq,
    [7] = sjbq.."功能"..sjbq,
    [8] = sjbq.."功能"..sjbq,
    [9] = sjbq.."退出"..sjbq, 
  },sy,os.date("本次脚本开启时间为:%Y年%m月%d日%H时%M分%S秒"))
  if sy == nil then gg.toast("你取消了首页")end
  if sy == 1 then gn1() end
  if sy == 2 then gn2() end
  if sy == 3 then gn3() end
  if sy == 4 then gn4() end
  if sy == 5 then gn5() end
  if sy == 6 then gn6() end
  if sy == 7 then gn7() end
  if sy == 8 then gn8() end
  if sy == 9 then  sj= os.date("%Y%m%d%H%M%S")-bx    gg.alert("本次脚本使用了"..sj.."秒") os.exit() end
  XGCK=-1
end

function gn1()
  mian()
end

function gn2()
  mian()
end

function gn3()
  mian()
end

function gn4()
  mian()
end

function gn5()
  mian()
end

function gn6()
  mian()
end

function gn7()
  mian()
end

function gn8()
  mian()
end


function gn1()
  mian()
end


while(true)do
  if gg.isVisible(true) then
    XGCK=1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK==1 then
    mian()
  end
end


--欢迎加入半仙软件分享群:318701634
--无聊的我，表示很无奈，
--当我在放屁😂😂


【执行脚本到结束时间】
--此代码加到结束脚本里面
local time=os.clock()
gg.toast("验证耗时:"..os.clock()-time.."s")


【获取手机信息】
vpn=gg.makeRequest("https://weather.mp.qq.com/?_nav_alpha=0&_nav_txtclr=ffffff&_nav_titleclr=ffffff&_nav_anim=true&asyncMode=1&adtag=h5page.ark_expose&city=%E4%B8%AD%E5%B1%B1-%E4%B8%AD%E5%B1%B1&adcode=2462769892").content
--gg.toast("调用QQ官网代码")
xh,bb=vpn:match("%(Linux; U; (.-); (.-)%)")
gg.toast("调用库")
--print(gg.makeRequest("http://myip.ipip.net").content)
--gg.toast("正在调用，因为访问的人太多了，所以感觉很慢")
print("滋味(｡･ω･｡)ﾉ♡：\n您当前的手机为："..bb.."\n(♡˙︶˙♡)\n手机版本："..xh.."\n(´∀｀)♡")
--gg.toast("获取云端代码")


【防抓包代码】
ffvpn= "https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F"
x=(tostring(gg.makeRequest(ffvpn)))
if not x  or not x:sub(1,20) then 
gg.alert("GG无法访问网络请查看相应限权","")
else
while  #(x)<100  or x:find( "SSL" ) or x:find("I/O") or x:find("javax") do 
gg.alert("❗️❗️❗️请关闭抓包软件")
print("脚本结束运行，请查看以下原因:1.请打开网络在进入网络脚本的时候选是✅，2.请不要尝试抓包或者是打开VPN，3.0如果以上都没有说明脸丑😂———————！！！分割线———————❤️")
os.exit()
end
end



【随机表情】
bqt={"🍬","🐷","🍓","🐴","🐮","🐶","🐥","✡","💟","😍",}--表情

local sjbq=bqt[math.random(1,#bqt)]
print(sjbq)




【gg循环写文件杀进程删除自身脚本】
--原作者zzer
gg.setVisible(false) 
while true do 
for z=1,10 do --最好不要超过50
sjs=math.random(0, 10000) 
file=io.open("/storage/emulated/0/密码错误"..sjs.."错误！","w")
file:write("可以写你要写的内容")
 file:close() 
 os.remove(gg.getFile(),"@","")--删除自身脚本
 end 
 gg.setVisible(false) 
 gg.processKill() 
 gg.setVisible(true) 
 end


【网络云脚本】

wljbht ="http://www.iyuji.cn/iyuji/s/NGE1MmFiMTAreENqcVh2QjY3QWJCdz09/1566099088724818"----讯飞语录
yiyan = gg.makeRequest("https://v1.hitokoto.cn/").content----一言
tianqi = gg.makeRequest("https://m.tianqi.com/").content--天气
BX = gg.makeRequest(wljbht).content

----print(tianqi)


kaiguan = BX:match('开关(.-)开关')----脚本开关

if kaiguan =="开" then 
qwtjqdcs = BX:match(">阅读：(.-)</span>")----总共被启动次数
banben = BX:match("版本(.-)版本")----版本
qh = BX:match("群号(.-)群号")----群号
gonggao = BX:match("公告(.-)公告")----公告
content=yiyan:match("hitokoto\": \"(.-)\"")----每日一言
from=yiyan:match("from\": \"(.-)\"")----每日一言


dingwei = tianqi:match('<text>(.-)</text>') ----定位   
shijian = tianqi:match("<text id=\"nowHour\">(.-)</text>")----更新时间
dqtq = tianqi:match("<dd class=\"now\">(.-)<i>°C</i></dd>")--当前天气
jrtq = tianqi:match("<div class=\"date\">(.-)</div>")----今日天气
tqsk = tianqi:match("<dd class=\"txt\">(.-)</dd>")----时间实况
--kqzl = tianqi:match("<div class=\"info\"><a href=\"/air/ziyangqu/\" class=\"b1\"><i></i>(.-)</a>")----空气质量
shidu = tianqi:match("<span class=\"b2\"><i></i>(.-)</span>")----湿度
fx = tianqi:match("<span class=\"b3\"><i></i>(.-)</span>")----风向

gg.alert("该脚本总共被启动："..qwtjqdcs.." 次了\n\n当前版本为："..banben.." 版本\n\n"..os.date("本次脚本开启时间为:%Y年%m月%d日%H时%M分%S秒").."\n\n\n\n         👇👇👇👇每日一言👇👇👇👇👇\n\n          \n\n"..content.."\n\n\n  作者                                 ----"..from.."\n\n\n\n所在地："..dingwei.."\n\n当前时间："..jrtq.."\n\n天气实况："..tqsk.."\n\n湿度："..shidu.."\n\n风向："..fx.."\n\n当前温度："..dqtq.."°C  \n\n更新时间："..shijian.."分")


----有空气质量版本gg.alert("该脚本总共被启动："..qwtjqdcs.." 次了\n\n当前版本为："..banben.." 版本\n\n"..os.date("本次脚本开启时间为:%Y年%m月%d日%H时%M分%S秒").."\n\n\n\n         👇👇👇👇每日一言👇👇👇👇👇\n\n          \n\n"..content.."\n\n\n  作者                                 ----"..from.."\n\n\n\n所在地："..dingwei.."\n\n当前时间："..jrtq.."\n\n天气实况："..tqsk.."\n\n空气质量："..kqzl.."\n\n湿度："..shidu.."\n\n风向："..fx.."\n\n当前温度："..dqtq.."°C  \n\n更新时间："..shijian.."分")

gg.alert("公告\n\n"..gonggao)
----gg.alert(content.."\n\n\n  作者                                 ----"..from)----一言

else
if kaiguan =="关" then 
gg.toast("脚本以关闭")
os.exit()
else
gg.toast("脚本更新中")
os.exit()
end
end


 
--[[ 
 
dingwei = tianqi:match('<text>(.-)</text>') ----定位   
shijian = tianqi:match("<text id=\"nowHour\">(.-)</text>")----更新时间
dqtq = tianqi:match("<dd class=\"now\">(.-)<i>°C</i></dd>")--当前天气
jrtq = tianqi:match("<div class=\"date\">(.-)</div>")----今日天气
tqsk = tianqi:match("<dd class=\"txt\">(.-)</dd>")----时间实况
kqzl = tianqi:match("<div class=\"info\"><a href=\"/air/ziyangqu/\" class=\"b1\"><i></i>(.-)</a>")----空气质量
shidu = tianqi:match("<span class=\"b2\"><i></i>(.-)</span>")----湿度
fx = tianqi:match("<span class=\"b3\"><i></i>(.-)</span>")----风向

--gg.alert("当前天气："..dqtq)

gg.alert("当前时间："..shijian)
gg.alert("当前位置："..dingwei)
gg.alert("今天天气："..jrtq)
gg.alert("天气实况："..tqsk)
gg.alert("空气质量："..kqzl)
gg.alert("湿度："..shidu)
gg.alert("风向："..fx)

gg.alert("\n\n所在地："..dingwei.."\n\n当前时间："..jrtq.."\n\n天气实况："..tqsk.."\n\n空气质量："..kqzl.."\n\n湿度："..shidu.."\n\n风向："..fx.."\n\n当前温度："..dqtq.."°C  \n\n更新时间："..shijian.."分")    

]]




Banxian= {"Banxian","BXS","gt"}

if y_gtl ~= 1 then gt_wl=3 end


--终端  自己放一个收藏链接进去
local a= gg.makeRequest(wljbht).content


if a == nil then   gt_wl =1 else  gt_wl = 2 end -- 1 未连接  2已连接 3错误服务器   4连接成功

--判断 服务器
if gt_wl == 2 then 
 -- 此处使用遍历数字方式
  for rw_i=1,#Banxian do
      if string.find(a, Banxian[rw_i]) ~= nil then 
        gt_wl = 4 
       else
       gt_wl=3
      end
  end
else
gt_wl = 1
end

if gt_wl == 4 then 
   gt1 = a:match("<title>(.-)</title>")--名字 
      gt2= a:match('<meta name="description" itemprop="description" content="(.-)" />')--内容
  end


qk1 = "    当前网络情况： "
if gt_wl ~= 4 then BX1,BX2,BX3,BX4,BX5,BX6,BX7,BX8,BX9,BX10,BX11,BX12,BX13,BX14,BX15,BX16,BX17,BX18,BX19=qk,qk
end
BX20="退出"
i_io = 0
function home()
if gt_wl == 4 then if gt2 ~= nil then pcall(load(gt2))  else gg.alert("未知错误") os.exit()  end end
if i_io == 0 then
i_io = i_io + 1
if BX_nb == nil then gg.toast("更新检测错误")
else
 if BX_nb ~= "1" then gg.toast("当前是最新版本!") else
  
 if BX_tx ~= nil then
 gg.toast("新的版本已经出来，建议更新！")
   pcall(load(BX_tx)) 
   else 
   gg.toast("更新检测错误")
 end
 end
end
end
gn = gg.choice({BX1,BX2,BX3,BX4,BX5,BX6,BX7,BX8,BX9,BX10,BX11,BX12,BX13,BX14,BX15,BX16,BX17,BX18,BX19,BX20},nil,"")
if gt_wl ~= 4 then
  if gn == 1 or gn == 2 then gg.toast(qk)
  end
   if gn == 20 then
     print(qk)
     gn_cw = math.random(101,305)
     print("错误："..gn_cw)
   end
else

if gn == 1 then if BXa1 ~= nil then pcall(load(BXa1)) else bxdlc = 1 end end
if gn == 2 then if BXa2 ~= nil then pcall(load(BXa2)) else bxdlc = 1 end end
if gn == 3 then if BXa3 ~= nil then pcall(load(BXa3)) else bxdlc = 1 end end
if gn == 4 then if BXa4 ~= nil then pcall(load(BXa4)) else bxdlc = 1 end end
if gn == 5 then if BXa5 ~= nil then pcall(load(BXa5)) else bxdlc = 1 end end
if gn == 6 then if BXa6 ~= nil then pcall(load(BXa6)) else bxdlc = 1 end end
if gn == 7 then if BXa7 ~= nil then pcall(load(BXa7)) else bxdlc = 1 end end
if gn == 8 then if BXa8 ~= nil then pcall(load(BXa8)) else bxdlc = 1 end end
if gn == 9 then if BXa9 ~= nil then pcall(load(BXa9)) else bxdlc = 1 end end
if gn == 10 then if BXa10 ~= nil then pcall(load(BXa10)) else bxdlc = 1 end end
if gn == 11 then if BXa11 ~= nil then pcall(load(BXa11)) else bxdlc = 1 end end
if gn == 12 then if BXa12 ~= nil then pcall(load(BXa12)) else bxdlc = 1 end end
if gn == 13 then if BXa13 ~= nil then pcall(load(BXa13)) else bxdlc = 1 end end
if gn == 14 then if BXa14 ~= nil then pcall(load(BXa14)) else bxdlc = 1 end end
if gn == 15 then if BXa15 ~= nil then pcall(load(BXa15)) else bxdlc = 1 end end
if gn == 16 then if BXa16 ~= nil then pcall(load(BXa16)) else bxdlc = 1 end end
if gn == 17 then if BXa17 ~= nil then pcall(load(BXa17)) else bxdlc = 1 end end
if gn == 18 then if BXa18 ~= nil then pcall(load(BXa18)) else bxdlc = 1 end end
if gn == 19 then if BXa19 ~= nil then pcall(load(BXa19)) else bxdlc = 1 end end
if bxdlc == 1 then 
  bxdlc1 = gg.alert("该功能错误，请通知开发者修复！","确定","复制群号") 
  if bxdlc1 == 2 then
   gg.copyText(qh)
  gg.toast("复制成功")
  end
 end
end
BXyc=2
end

while(true) do
bxdlc = 0
  if gn == 20 then  break end
  if gg.isVisible(true) then
    BXyc = 1   
    gg.setVisible(false)
    end
     if BXyc == 1 then
     home()
     end
  end

  




【用户统计启动次数】
url="http://s5861222.m.awhost.cn"




rstj=gg.makeRequest(url.."/api/yhsl.php").content
qdcs=gg.makeRequest(url.."/api/qdcs.php").content

 rs=rstj:match("用户(.-)个")
 qd=qdcs:match("启动(.-)次")

gg.alert("总用户"..rs.."个\n\n全网总共启动"..qd.."次")



--php源码在群文件里面

【网络脚本普通卡密系统】
url="http://s5861222.m.awhost.cn/"

km=gg.prompt({"请输入卡密"},{""},{"text"})

if km == nil then 
  gg.alert("请输入卡密")
  end

bx=gg.makeRequest(url.."api/ptkmuse.php?km="..km[1]).content


print(bx)


--php源码在群文件里面


【网络脚本用户查询系统】

url="http://s5861222.m.awhost.cn"

yh=gg.prompt({"请输入你要查询的账号"},{""},{"text"})

  XGCK = -1
  if yh == nil then
    gg.alert("结束")
  end

cx=gg.makeRequest(url.."/api/yhcx.php?&user="..yh[1]).content
gg.alert(cx)

print(cx)

--php源码在群文件里面
【网络脚本用户登录系统】

url ="http://s5861222.m.awhost.cn/"
mc=2462769892
file="yiyz"..mc..".xml"
files="/sdcard/"..file
--print(files)


  
  u=io.open(files,"rb")
  if u==nil then
  user=""
  pass=""
  else 
  u=io.open(files):read("*a")
  user=u:match("<账号>(.-)</账号>")
  pass=u:match("<密码>(.-)</密码>")
  print(user)
  print(pass)
  if u=="" then
  user=""
  pass=""
  end
  end


dl = gg.prompt({
    "输入账号",
    "输入密码"
  }, {
    user,
    pass,
--    "",
--    ""
  }, {"text", "text"})
if dl == nil then
 gg.alert("结束") os.exit()
  else
userinfo = gg.makeRequest(url.."api/dl.php?user=" .. dl[1] .. "&pass=" .. dl[2]).content
jc=userinfo:match("<(.-)>")
print(jc)
end

if jc =="登录成功" then

user=dl[1]
pass=dl[2]

print(user)
print(pass)
io.open(files, 'w')
io.open(files,"w"):write("<账号>"..user.."</账号>\n<密码>"..pass.."</密码>"):close()  
gg.alert(jc) 
else


gg.alert(jc)
end

--php源码在群文件里面
【网络脚本用户注册系统】
 user="http://s5861222.m.awhost.cn"
 
 
  reg = gg.prompt({
    "注册登录账号(必填)",
    "设置你的昵称(必填)",
    "设置账号密码(必填)",
    "设置QQ号(必填)"
  }, {
    "",
    "",
    "",
    ""
  }, {
    "text",
    "text",
    "text",
    "text"
  })
  XGCK = -1
  if reg == nil then
    gg.alert("结束")
  end


  userreg = gg.makeRequest(user.."/api/zc.php?&user=" .. reg[1] .. "&name=" .. reg[2] .. "&pass=".. reg[3] .. "&qq=" .. reg[4]).content
print(userreg)

pd=userreg:match("<(.-)>")

  if pd == "注册成功" then
    gg.alert(pd)
else
gg.alert(pd)
os.exit()
end


--php源码在群文件里面

【网络脚本金币卡密系统】
url="http://s5861222.m.awhost.cn/"

mc=2462769892
file="yiyz"..mc..".xml"
files="/sdcard/"..file



  u=io.open(files,"rb")
  if u==nil then
  user=""
  pass=""
  else 
  u=io.open(files):read("*a")
  user=u:match("<账号>(.-)</账号>")
--  pass=u:match("<密码>(.-)</密码>")
  print(user)
--  print(pass)
  if u=="" then
  user=""
--  pass=""
  end
  end


km=gg.prompt({"请输入账号","请输入卡密"},{user,""},{"text","text"})

print(km)

if km[2]=="" then 
   gg.alert("请输入卡密")
   end


print("账号:"..km[1].."\n卡密:"..km[2])
bx=gg.makeRequest(url.."api/jbkmuse.php?user="..km[1].."&km="..km[2]).content


print(bx)

--[[
脚本已结束：:
2462769892
{ -- table(661d00b)
	[1] = '2462769892',
	[2] = '',
}
账号:2462769892
卡密:
[失败]<请填写卡密>]]

--php源码在群文件里面




【GG函数列表】
GG函数
ddListItems()-----------添加项目到列表中
alert()-----------警告框
BUILD-----------建立
bytes()-----------字节
CACHE_DIR-----------缓存_显示文件列表
choice()-----------选择、选定
clearList()-----------清除列表
clearResults()-----------清除结果
copyMemory()-----------复制数据、内存
copyText()-----------将文本复制到剪贴板
dumpMemory()-----------丢、转到内存
editAll()-----------编辑所有
EXT_CACHE_DIR-----------缓存目录
EXT_FILES_DIR-----------文件目录
FILES_DIR-----------文件夹目录
FREEZE_IN_RANGE-----------冻结在这个范围里
FREEZE_MAY_DECREASE-----------冻结可以减少的值
FREEZE_MAY_INCREASE-----------冻结可以增加的值
FREEZE_NORMAL-----------冻结正常、常态的值
getFile()-----------获取文件名
getLine()-----------获取行数
getListItems()-----------获取列表项目
getLocale()-----------获取地点~~~
getRanges()-----------获取内存区域内的
getRangesList()-----------获取内存区域列表
getResultCount()-----------获取结果计数
getResults()-----------获取结果并加载
getSpeed()-----------获取加速
getTargetInfo()-----------获取目标信息
getTargetPackage()-----------获取进程包名
getValues()-----------获取值
getValuesRange()-----------获取值的范围
gotoAddress()-----------转到内存地址
isPackageInstalled()-----------检查包名安装
isProcessPaused()-----------进程是否暂停
isVisible()-----------UI是否可见
LOAD_APPEND-----------加载附加
LOAD_VALUES-----------加载值
LOAD_VALUES_FREEZE-----------加载值冻结
loadList()-----------加载列表
multiChoice()-----------多种选择
PACKAGE-----------包名
processKill()-----------杀死、结束进程
processPause()-----------暂停进程
processResume()-----------恢复进程
processToggle()-----------切换进程
prompt()-----------提示
REGION_ANONYMOUS-----------gg[以下是内存范围]
REGION_ASHMEM-----------gg        
REGION_BAD-----------gg                  
REGION_C_ALLOC-----------gg        
REGION_C_BSS-----------gg
REGION_C_DATA-----------gg
REGION_C_HEAP-----------gg
REGION_CODE_APP-----------gg
REGION_CODE_SYS-----------gg
REGION_JAVA-----------gg
REGION_JAVA_HEAP-----------gg
REGION_OTHER-----------gg
REGION_PPSSPP-----------gg
REGION_STACK-----------gg[到这里是内存范围]
removeListItems()-----------删除列表中的项目
removeResults()-----------移除列表中的结果
require()-----------gg
SAVE_AS_TEXT-----------保存as？文件
saveList()-----------保存列表
searchAddress()-----------搜索地址
searchFuzzy()-----------未知搜索
searchNumber()-----------指定数值搜索
setRanges()-----------设置范围
setSpeed()-----------设置速度
setValues()-----------设置值
setVisible()-----------设置可见
SIGN_EQUAL-----------标志、标记相同
SIGN_FUZZY_EQUAL-----------标记_未知_相同
SIGN_FUZZY_GREATER-----------更大
SIGN_FUZZY_LESS-----------更小
SIGN_FUZZY_NOT_EQUAL-----------标记_未知_不_相同
SIGN_GREATER_OR_EQUAL-----------标记_更大_或_相同
SIGN_LESS_OR_EQUAL-----------标记_未知_更小_或_相同
SIGN_NOT_EQUAL-----------标记_不_相同
skipRestoreState()-----------跳跃恢复状态
sleep()-----------休眠
startFuzzy()-----------开始模糊搜索
timeJump()-----------时间跳跃
toast()-----------显示弹窗消息(自动消失)
TYPE_AUTO-----------类型全部
TYPE_BYTE-----------类型字节
TYPE_DOUBLE-----------类型双浮点
TYPE_DWORD-----------类型四字节
TYPE_FLOAT-----------类型浮点数
TYPE_QWORD-----------类型
TYPE_WORD-----------类型单字
TYPE_XOR-----------类型
VERSION-----------版本
VERSION_INT-----------国际版本


【普通密码验证】
-----------------普通密码-------------------------------------
function pass()
--这里放密码正确要执行的东西
gg.alert("密码正确")
end
function nopass()
--这里放密码错误要执行的东西
gg.alert("密码错误")
os.exit()
end
input = gg.prompt({"请输入密码"}, {[1] = 0}, {[1] = "text"})
if input[1]=="only66666" then pass() else nopass() end
-----------------普通密码-------------------------------------




【脚本限时代码】
--------------------脚本限时代码------------------------------
endtime=load("return os.time{year=2018, month=1, day=2, hour=1,min=2, sec=3}")()
--year是年,month是月,day是日,hour是时,min是分,sec是秒
--所以上面这个为2018年1月2日1时2分3秒
if(os.time()>endtime) then
gg.alert("脚本已过期")
os.exit()
end
--------------------脚本限时代码------------------------------




【时间计算密码】

------------------时间计算密码-------------------------------
function pass()
--这里放密码正确要执行的东西
gg.alert("密码正确")
end
function nopass()
--这里放密码错误要执行的东西
gg.alert("密码错误")
os.exit()
end
y=os.date("*t").year
--y为年
m=os.date("*t").month
--m为月
d=os.date("*t").day
--d为日
h=os.date("*t").hour
--h为时
mi=os.date("*t").min
--min为分
s=os.date("*t").sec
--s为秒
wd=os.date("*t").wday
--wd为星期
--下面可以使用上面的变量进行密码计算
password=tostring(y+m+d+h)
--上面是密码计算,我这里使用的是年+月+日+小时,可以根据自己的需要自行修改
--这里使用了tostring是因为密码的计算只涉及了四则运算而没有字符串的连接,所以返回的结果是数字类型的,需要用这个函数转换一下.
input = gg.prompt({"请输入密码"}, {[1] = 0}, {[1] = "text"})
if input[1]==password then pass() else nopass() end
------------------时间计算密码-------------------------------





【内部QQ号验证 简化版】

------------------内部qq号验证,简化版-------------------------------
function pass()
--这里放验证通过要执行的东西
gg.alert("验证通过")
end
function nopass()
--这里放验证失败要执行的东西
gg.alert("验证失败")
os.exit()
end

--下面是qq账号列表,请自行添加修改.
qqaccounts = {
'123456',
'654321',
'987654'
}
local passflag=false for i, v in ipairs(qqaccounts) do file = io.open( "/storage/emulated/0/tencent/MobileQQ/artfilter/" .. v .. "artfilter.config", "rb") if file  then passflag=true file:close() break end end if passflag then pass() else nopass() end
------------------内部qq号验证,简化版-------------------------------


【脚本体验验证】
yz = gg.alert('提示🔊：您可以体验此脚本QQ2462769892次，体验次数用完无法再次使用！','➽开始体验','➽加入内部',' ➽退出脚本') 
 if yz == 2 then gg.alert('提示🔊：群号545488484 免费更新！','➽知道了') os.exit() end 
 if yz == 3 then gg.alert('退出成功 群号545488484免费脚本群','➽退出') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') print('♥♥♥♥全网最强♥半仙辅助♥♥♥♥') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') os.exit() end 
 file=io.open('/storage/emulated/0/tencent/QQfile_recv/.thumbnails/半仙验证文件','a+') 
 file:write('1') 
 cs = file:seek('end')  
 ss =QQ2462769892 
 if cs < ss then  
   gg.alert('提示：您当前使用次数为'..cs..'次！剩余可用次数为'..ss-cs..'次！') 
 else  
   gg.alert('提示：您当前可用次数已用完！获取最新脚本请加群！') 
   os.exit() 
 end  
 tg = gg.alert('提示：验证通过！欢迎使用！','➽开始奔放','➽体验次数',' ➽退出脚本') 
 if tg == 1 then gg.alert('试用开始') end 
 if tg == 2 then   gg.alert(BxCv,'➽知道了') end 
 if tg == 3 then   gg.alert(BxCn,'➽退出') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') print('♥♥♥♥在你的世界♥半仙就是王♥♥♥♥') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') os.exit() end 
 
 
【防窥码】 
function Fan_searchNumber(n, type, ft, sign, r, s)
  local waring = "\n" .. "已检测到窥码行为，因此出现此状况！"
  gg.setVisible(false)
  gg.searchNumber(n, type, ft, sign, r, s)
  if gg.isVisible(true) then
    gg.setVisible(false)
    gg.processKill()--结束进程
    print(waring)
    while true do
      gg.setVisible(false)
      while true do
gg.alert("    运行功能中..\n\n⚠请勿点击修改器⚠")
end
    end
  end
end
 
 【为卡密网络验证】
 
 
function Bx() 
 BxSJ = math.random(2019025,9999999) 
 Bxc=io.open('/storage/emulated/0/tencent/MobileQQ/.mmcctvbxzsmwt.ini','r') 
 if Bxc == nil then 
 Bxc=io.open('/storage/emulated/0/tencent/MobileQQ/.mmcctvbxzsmwt.ini','w') 
 Bxc:write(BxSJ) 
 Bxd = io.open('/storage/emulated/0/tencent/MobileQQ/.mmcctvbxzsmwt.ini','r') 
     Bxdm = Bxd:read('*a') 
     Bxd:close() 
     
   else 
     Bxd = io.open('/storage/emulated/0/tencent/MobileQQ/.mmcctvbxzsmwt.ini','r') 
     Bxdm = Bxd:read('*a') 
     Bxd:close() 
   end 
   Bxs = io.open('/storage/emulated/0/tencent/MobileQQ/.ttcvbxrnmbsglz.dll','r') 
   if Bxs == nil then 
     Bxsa=gg.alert('请选择激活卡密,如果否定请退出','激活卡密','退出') 
     if Bxsa ~= 1 then print('激活失败') os.exit()  
     else 
       Bxv = gg.prompt({'请输入您的激活码:','您的专属机器码:'},{[1]='',[2]= Bxdm },{[1] = 'text',[2] = 'text'}) 
       if Bxv == nil then print('运行失败') os.exit() end 
       if Bxv[1] == nil then print('卡密不能为空') os.exit() end      local BxB = Bxv[1] 
       local BxC = Bxv[2] 
       BxD = (BxB - 201902)/BxC 
       BxA = BxD 
       if BxA == 1 then gg.alert('激活码情况:恭喜激活天卡 谢谢使用','确定') 
       else 
         if BxA == 7 then gg.alert('激活码情况:恭喜激活周卡 谢谢使用','确定') 
         else 
           if BxA == 30 then gg.alert('激活码情况:恭喜激活月卡 谢谢使用','确定') 
           else 
             gg.alert('激活码错误 建议作者购买激活码') os.exit()  
           end 
         end 
       end 
     end 
     Yz = os.date('%Y%m%d') + BxA..'' 
     Yza = Yz 
     Yzs = os.date('%H%M%S')  
     Yzb =io.open('/storage/emulated/0/tencent/MobileQQ/.ttcvbxrnmbsglz.dll','w') 
     Yzb:write(Yza) 
     Yzb:close() 
     Yzc =io.open('/storage/emulated/0/tencent/MobileQQ/.ttcvbxrnmbsglz.dlll','w') 
      
     Yzc:write(Yzs) 
     Yzc:close() 
   else 
     gg.alert('您激活卡密') 
     Yzd=io.open('/storage/emulated/0/tencent/MobileQQ/.ttcvbxrnmbsglz.dll','r') 
     Yzda=Yzd:read('*a') 
     Yze=io.open('/storage/emulated/0/tencent/MobileQQ/.ttcvbxrnmbsglz.dlll','r') 
     Yzea=Yze:read('*a') 
     Yzf = os.date('%Y%m%d')..'' 
     Yzg = os.date('%H%M%S') 
     if Yzda > Yzf then gg.alert('登录成功 当前余额:'..Yzda - Yzf..'Day') 
     else 
       if Yzea > Yzg then gg.alert('您好,您的余额不足，请尽快缴费，缴费请联系作者') 
       else 
         gg.alert('不好意思,您的余额已欠费,请缴费后使用') 
          
         os.exit() 
       end 
     end 
   end 
 end  Bx()
 
 
--------------↓---------卡密发卡机------

Bx = gg.prompt({     '时间周期[1♥7♥30]','输入机器码'   }, {      [1]='30',   [2]=''      }, {'text','tex'})       if Bx == nil then    gg.alert('再见.结束成功! ') os.exit()     end           Bxz=Bx[1]*Bx[2]+201902      print(Bxz)



----------------↓卡密重置机-----
Bx = gg.alert("确定要更新机器码吗？一切都会重置","确定重新","取消重置") 
 if Bx == 1 then 
 os.remove("/storage/emulated/0/tencent/MobileQQ/.ttcvbxrnmbsglz.dlll") 
 os.remove("/storage/emulated/0/tencent/MobileQQ/.ttcvbxrnmbsglz.dll") 
 os.remove("/storage/emulated/0/tencent/MobileQQ/.mmcctvbxzsmwt.ini") 
 gg.alert("重置完成") 
 os.exit() 
 else 
 print("取消重置") 
 os.exit() 
 end
 
 
 
 
 【本地文件验证】
 
BxCa =io.open('/sdcard/tencent/QQfile_recv/文件地址','r') 
 if BxCa == nil then gg.alert('如果没有文件提示') os.exit() else gg.alert('如果有文件提示') end 
 
 
 【账号密码登录验证】
 
asd = gg.alert('账号验证开启','开始登陆','退出脚本')  
 if asd == 1 then  
   aaa='请输入账号'  
   bbb=''  
   b = gg.prompt({  
     '      请输入账号：',  
     '     请输入密码：',  
     '专属登陆系统 '}, {[1] = aaa,[2] = bbb,[3] = true}, {[1] = 'text',[2] = 'text',[3] = 'checkbox'})  
   if b[1] == '这里是账号' then  
     if b[2] =='这里是密码' then  
       gg.alert('登陆成功 感谢使用','➽OjbK')  
     else  
       print('账号密码错误') os.exit()  
     end  
   else  
     print('账号密码错误') os.exit()  
   end  
 end  
 if asd == 2 then gg.alert('退出选择','➽退出') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') print('♥♥♥♥全网最强♥我就是神♥♥♥♥') print('♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥') os.exit() end 
 