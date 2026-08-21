

gg.alert("这里可以随便写")
if  LW2 == nil then
mm = gg.prompt({[1]="请输入密码"}, {[1]="0"}, {[1]="txet"})
if mm[1] == "这里输入你的脚本密码" then
gg.toast("密码正确")
else
print(mm[1],"密码错误")
print(sj)
os.exit()
end
end



function DZSH()
menu = gg.multiChoice({
  "💛💙💜1.💜💙💛",
  "💛💙💜2.功能名称💜💙💛",
  "💛💙💜3.功能名称💜💙💛",
  "💛💙💜4.功能名称💜💙💛",
  "💛💙💜5.功能名称💜💙💛",
  "💛💙💜6.功能名称💜💙💛",
  "💛💙💜7.功能名称💜💙💛",
  "💛💙💜8.退出脚本💜💙💛"},1,"这里可以随便写"..sj)
if menu == nil then
else
if menu[1] == true then
  HZ1()
end
if menu[2] == true then
  HZ2()
end
if menu[3] == true then
  HZ3()
end
if menu[4] == true then
  HZ4()
end
if menu[5] == true then
  HZ5()
end
if menu[6] == true then
  HZ6()
end
if menu[7] == true then
  HZ7()
end
if menu[8] == true then
  HZ8()
end
end
LW1 = 0
LW2 = 0
end

function HZ1()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("4.9559592e34;1.4012985e-45;2.7915351e29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.4012985e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("99999999999", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end



function HZ2()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("修改数值", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end



function HZ3()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("修改数值", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end



function HZ4()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("修改数值", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end



function HZ5()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("修改数值", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end



function HZ6()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("搜索数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("改善数值", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("修改数值", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end


function HZ7()
gg.clearResults()
gg.searchNumber("18,000D;256D;120D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("18,000D;120D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("妲己大招 无冷却")
gg.clearResults()
gg.clearResults()
gg.searchNumber("8,000D;256D;80D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8,000D;80D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("妲己一技能无冷却开启成功")
gg.clearResults()
gg.clearResults()
gg.searchNumber("12,000D;256D;90D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("12,000D;90D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("妲己二技能无冷却开启成功")
gg.clearResults()
end



function HZ8()
gg.toast("这里随便写")
print("这里随便写")
print(sj)
os.exit()
end



while true do
sj = os.date("\ %c")
if gg.isVisible(true) then
LW1 = nil
gg.setVisible(false)
end
if LW1 == nil then
DZSH()
end
end








