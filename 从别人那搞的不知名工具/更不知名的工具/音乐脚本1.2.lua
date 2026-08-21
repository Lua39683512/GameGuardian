
function Main()
  SN =gg.choice({
  "无病呻吟",
  "🎵️②偏爱DJ版",
  "🎵③惊雷 戏嗓版",
  "🎵④鬼新娘 咕咚版",
  "🎵⑤送给未来的你 咕咚版",
  "🎵⑥可爱否 咕咚版",
  "⭐️退出音界⭐️"
 }, nil,os.date "⭐️作者凉辞:🐧3204289561⭐️\n✨邮箱:3204289561@qq.com有问题反馈✨\n⭐️中国日期:%Y年/️%m月/%d日⭐️\n🌟北京时间:%H:%M:%S🌟\n此脚本必须要在有音乐函数修改器才能出声\n🍁第一次做做的不是很好请见谅🍁\n🎵脚本不加密 可以照着参考🎵")
  if SN == 1 then
    a()
  end
  if SN == 2 then
   b()
  end
  if SN == 3 then
   c()
  end
  if SN == 4 then
   d()
  end
  if SN == 5 then
   e()
  end
  if SN == 6 then
   f()
  end
  if SN==7 then
   Exit()
  end
  XGCK = -1
end



function a()
gg.playMusic("https://res.wx.qq.com/voice/getvoice?mediaid=MzIyNTUyNTE3Nl8yMjQ3NDg4Mjk4.mp3")
end



function b()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1431915853.mp3")
end


function c()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1432225735.mp3")
end



function d()
gg.playMusic(gg.playMusic("http://music.163.com/song/media/outer/url?id=1393638594.mp3"))
end


function e()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1425463866.mp3")
end



function f()
gg.playMusic("http://music.163.com/song/media/outer/url?id=1312932836.mp3")
end



function Exit()
print("✨再见✨")
os.exit()
end
cs = "1517774179"



while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end









