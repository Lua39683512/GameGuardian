a=gg.alert
b=print

function lsq()
LSQ=gg.prompt({os.date"❤鹿十七提醒您当前时间:%Y年%m月%d日 星期%w❤\n ❤北京时间为:%I时%M分%S秒❤\n ❤小客服页面❤\n ❤请对应下列序号❤\n ❤1 是我的QQ号❤\n ❤2 是我的微信号❤\n ❤3 是我的群号❤\n ❤4 是一些脚本问题❤\n ❤5 跳转到网抑云脚本❤\n ❤6 当前天气❤\n ❤7 退出❤"},{"我那么多遗憾 那么多期盼 你知道吗"})
if LSQ[1] == nil then
  gg.setVisible(true)
  b("你选择了取消!")
  os.exit()
   end
if LSQ[1]=="我那么多遗憾 那么多期盼 你知道吗" then
b("当前输入为空，已自动退出脚本")
os.exit() 
end
if LSQ[1]=="1" then
    a("❤2787611487❤") end
if LSQ[1]=="2" then
a("❤yangmofan20030823❤") end
if LSQ[1]=="3" then
a("❤暂时还没有❤") end
if LSQ[1]=="4" then
a("爱用不用给爷爬🌚🌚👍") 
end
if LSQ[1]=="5" then
    QAQ()
    end
if LSQ[1]=="6" then
    quq()
    end
if LSQ[1]=="7" then
   b("再见！")
   os.exit()   
   end
  XGCK= -1
    end
 
function QAQ()
  SN = gg.multiChoice({
  "鹿某想对你们说的话🌚",
  "网抑云💔",
  "使用鹿某人加密🌚"
 }, nil, os.date())
 if SN == nil then gg.toast("您选择了取消")
 end
  if SN[1] == true then
    gg.alert("做的不是很好，希望你们能喜欢❤")
  end
  if SN[2] == true then
  gg.alert("因为你吸烟，所以我努力变的和你一样，因为你喝酒，所以就算喝到晕吐，因为你坏坏的，所以我尽力变成所谓的个性，因为你喜欢漂亮的女孩，所以我开始学着化妆,你说，原来你也会吸烟啊！我笑着点头，这样不好么？我们就有共同爱好了。你说，原来你也喝酒啊？我无所谓到，不喝酒来不算英雄。你说，我发现你越来越有个性了，还变得漂亮了。我笑，这样……（你心下如何呢？）后来，我才明白，你抽烟，是为了她而愁帐，你喝酒，是为了她而心痛，你坏坏的，是因为她的一句，男人不坏女人不爱。我这样绕了一大圈子，我为你，你为她……呵……你把烟戒掉了，我却没戒掉你……\n \n \n \n         都在不懂装懂，都在迎合，都在搪塞，都在胡说乱扯，没有哪一个在认真，没有哪一个真正在伤心或开心")
  end
  if SN[3]== true then






end
end

  function quq()
--原创by——鹿十七开源给大家学习，望转载时留下名
  Q=gg.prompt({"输入城市"},{"南平"},{"text"})[1]
   
  local function W(LSQ)
    return LSQ:gsub(".", function(jia)
      return string.format("%%%02X", (string.byte(jia)) % 256)
    end):gsub(" ", "+")
  end
  
  

  function L(s, p)
  local rt = {}
  string.gsub(s,"[^" .. p .. "]+",function(w)
    table.insert(rt, w)
  end)
  return rt
end


  Y=string.match(gg.makeRequest("http://toy1.weather.com.cn/search?Qname="..W(Q).."&callback=success_jsonpCallback&_=1532937966722").content,"ref\":\"(.-)~")


F=gg.makeRequest("http://www.weather.com.cn/weather1d/"..Y..".shtml").content


a=string.gsub(string.gsub(string.gsub(string.gsub(string.match(F,"var hour3data={\"1d\":%[(.-)]"),"\",\"","$$"),"\"",""),",...,",","),",(%d+)%$","")




b=L(a,"$")

gg.alert("当前城市:"..Q.."\n\n"..table.concat(b,"\n\n"))
  end
  
while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    lsq()
  end
  end