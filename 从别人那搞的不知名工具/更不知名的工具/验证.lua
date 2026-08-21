menu1 = gg.choice({
  "1",
  "2",
  "3",
  "4"
}, nil, "1.墨辞qq1399434368")
if menu1 ~= 2 then
  os.exit()
end
menu2 = gg.choice({
  "1",
  "2",
  "3",
  "4"
}, nil, "2.墨辞qq1399434368")
if menu2 ~= 4 then
  os.exit()
end

menu2 = gg.choice({
  "1",
  "2",
  "3",
  "4"
}, nil, "3.墨辞qq1399434368")
if menu2 ~= 1 then
  os.exit()
end

menu2 = gg.choice({
  "1",
  "2",
  "3",
  "4"
}, nil, "4.墨辞qq1399434368")
if menu2 ~= 3 then
  os.exit()
end

gg.alert("💝作者：\n墨辞\n\n🍺QQ1399434368🍺\n🎩QQ群513953132🎩")
gg.alert("新增功能：青铜秒开钥匙")
gg.alert("💰使用说明：\n一定不要改内存", "【交流群513953132】")
gg.alert("👉说明👉   功能界面有需要注意的事项⛳")
wuxin = gg.alert("🏆温馨提示：\n墨辞交流群号码：513953132\n 有问题加交流群反馈\n墨辞制作", "进入脚本", "复制群号", "复制作者QQ")
if wuxin == 2 then
  gg.copyText("513953132")
end
if wuxin == 3 then
  gg.copyText("1399434368")
end
jiaqun = gg.alert("加群好不好？", "好", "不好")
if jiaqun == 1 then
  gg.alert("💝欢迎使用1.0脚本💝\n☕恭喜你进入脚本☕\n💣记得加群💣")
end
if jiaqun == 2 then
  print("去玩别的脚本去吧")
  os.exit()
end
gg.toast("破解死🐴")
gg.alert("破解死🐴","✨确定✨")