--原创应该是九尺
function Main()
  SN = gg.choice({
    "功能名称",
    "退出脚本"
  }, 2018, "这里可以填写你的QQ")
  if SN == 1 then
    a()
  end
  if SN == 2 then
    Exit()
  end
  XGCK = -1
end


function a()
local time=os.clock()---就是这要加代码，差不多意思就是开始计时
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(10)
gg.editAll("1",gg.TYPE_FLOAT)
gg.toast(" 耗时"..os.clock()-time.."s")--这里要变成这样，差不多就是结束计时
end



function Exit()
  os.exit()
end
function jiuchi()
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
end
local time=os.clock()
if gg.alert("time","go","exit")==1 then
gg.toast("耗时"..os.clock()-time.."s")
jiuchi()
end