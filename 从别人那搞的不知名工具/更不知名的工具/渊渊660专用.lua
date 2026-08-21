function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("ʚ♥ɞ"..#data.."条数据.修改成功") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) else gg.toast("搜索0条数据.修改失败", false) return false end else gg.toast("搜索0条数据.修改失败") return false end end

gg.alert("高质量五级小号yyxxx.ectr.cn")
gg.alert("退出脚本自动复制小号链接")
function Main()
  SN = gg.multiChoice({
  "偏移透视💗",
  "人物粉色💙",
  "人物蓝白💖",
  "人物紫绿💚",
  "退出脚本❌"
 }, nil, "训练场或者出生岛开\n\n渊渊制作")
  if SN == nil then
  else
  if SN[1] == true then
   a()
  end
  if SN[2] == true then
   b()
  end
  if SN[3] == true then
   c()
  end
  if SN[4] == true then
  d()
  end
  if SN[5] == true then
   Exit()
  end
end
  XGCK = -1
end



function a()
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-5.569558837351488E-40, 0}, {4.81460301798796E21, 4}, {3.76158192263132E-37, 12}, }
local tb2 = {{5333, 0}, }
SearchWrite(tb1, tb2, dataType)
gg.setRanges(1048576)
local dataType = 16
local tb1 = {{-2.761073652554761E-39, 0}, {5.183551410261033E21, 4}, {8.688050478813866E-44, 8}, }
local tb2 = {{5333, 0}, }
SearchWrite(tb1, tb2, dataType)
end

function b()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("285,409,283", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("285,409,283", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("人物粉白蓝色开启成功")
end

function c()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("285,409,283", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("285,409,283", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9)
gg.editAll("5", gg.TYPE_DWORD)
gg.toast("白色开启成功")
end
function d()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("285,409,283", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("285,409,283", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9)
gg.editAll("1", gg.TYPE_DWORD)
gg.toast("人物上色开启成功")
end

function Exit()
print("使用愉快~🌟")
os.exit()
end
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