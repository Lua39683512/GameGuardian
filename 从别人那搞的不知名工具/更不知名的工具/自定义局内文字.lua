a=gg.alert("❤关关雎鸠，在河之洲❤\n❤窈窕淑女，君子好求❤\n\n❤不妨加个好友一起共度余生❤\n\n❤嫌弃每次点的话❤\n❤脚本1－11行给他删了❤","拒绝","同意并进入❤")
if a== nil then
print("我就那么的不堪吗...")
os.exit()
end
if a==1 then
print("那么此生便不再相见❤")
os.exit()
else
gg.copyText("2787611487")
end
function Main()
  SN = gg.choice({
  "更改局内文字",
  "退出"
 }, nil, os.date"❤鹿十七提醒您当前时间❤:\n❤%Y年%m月%d日%H时%M分❤")
  if SN == 1 then
    a()
  end
  if SN == 2 then
   Exit()
  end
  XGCK = -1
end
function a()
smz= gg.prompt({"初始字符","想修改的字符"},{"",""},{"text","text"})
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":"..smz[1], gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() >= 100 then
gg.alert("⭕数据太多了不建议修改⭕\n⭕游戏会崩溃⭕\n⭕已自动退出⭕\n❤一共搜索了"..gg.getResultCount().."条数据❤")
print("\n\n搜索出"..gg.getResultCount().."条数据")
os.exit()
else
gg.getResults(100)
QAQ=gg.editAll(":"..smz[2], gg.TYPE_BYTE)
gg.toast("修改了"..QAQ.."条数据")
end
end
function Exit()
print("❤by——鹿十七❤")
os.exit()
end
cs = "这里可以改成你的QQ"



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