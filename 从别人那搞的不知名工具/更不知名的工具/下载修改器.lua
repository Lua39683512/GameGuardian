
   local LsQ = {}
   LsQ["Accept-Language"]="zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7"
   LsQ["Cookie"]="UM_distinctid=1747043cd08217-0d948f1d4d5f25-527a460b-43ad0-1747043cd0abf; CNZZDATA1258381272=818363134-1599609873-https%253A%252F%252Fm.baidu.com%252F%7C1599609873; down_ip=1; CNZZDATA1253610887=1315526113-1606037814-https%253A%252F%252Fm.baidu.com%252F%7C1606037814"
   local pipei=string.gsub("https://lsqnb.lanzous.com/iWc1Skpotjc","com/","com/tp/")
   local lianjie=gg.makeRequest("https://vip.d0.baidupan.com/file/"..gg.makeRequest(pipei).content:match("domianload [+]+ '?(.-)'"),LsQ).content
   
   if not lianjie then
   return print("下载修改器链接发生错误:\n\n请进入作者反馈群聊进行反馈796546632")
   end
   
   local jueze=gg.alert("检测到您使用的不是最新版的修改器 是否选择下载最新版本？","残忍拒绝","立即下载")
   while jueze==1 do
   os.exit()
end

   if jueze==2 then
   io.open("101修改器.apk","w"):write(lianjie)
   end
      