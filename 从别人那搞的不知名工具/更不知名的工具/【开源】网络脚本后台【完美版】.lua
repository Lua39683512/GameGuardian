
wljbht ="http://www.iyuji.cn/iyuji/s/NGE1MmFiMTAreENqcVh2QjY3QWJCdz09/1566099088724818"----讯飞语录
yiyan = gg.makeRequest("https://v1.hitokoto.cn/").content----一言
tianqi = gg.makeRequest("https://m.tianqi.com/").content--天气
BX = gg.makeRequest(wljbht).content

----print(tianqi)


kaiguan = BX:match('【开关】(.-)【开关】')----脚本开关

if kaiguan =="开" then 
qwtjqdcs = BX:match(">阅读：(.-)</span>")----总共被启动次数
banben = BX:match("【版本】(.-)【版本】")----版本
qh = BX:match("【群号】(.-)【群号】")----群号
gonggao = BX:match("【公告】(.-)【公告】")----公告
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

  