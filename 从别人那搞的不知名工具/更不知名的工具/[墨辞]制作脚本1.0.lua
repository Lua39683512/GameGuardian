
 function SearchWrite(tb1, tb2, dataType, Name) local lt1={} local lt2={} local mm1={["主特征码"] = tb1[1][1],["类型"] = dataType } table.insert(lt1,1,mm1)
  for i=2 , #tb1 do
    local mm2={["副特征码"] = tb1[i][1],["偏移"] = tb1[i][2]}
    table.insert(lt1,i,mm2)
  end
  for i=1 , #tb2 do
    if tb2[i][2]~=nil then
      local mm3={["修改"] = tb2[i][1],["偏移"] = tb2[i][2]}
      table.insert(lt2,i,mm3)
     else
      local mm3={["修改"] = false,["偏移"] = tb2[i][1]}
      table.insert(lt2,i,mm3)
    end
  end
  LongTao(lt1, lt2 )
end

function LongTao(Search, Write)
  gg.clearResults()
  gg.setVisible(false)
  lx=Search[1]["类型"]
  gg.searchNumber(Search[1]["主特征码"], lx)
  local count = gg.getResultCount()
  local result = gg.getResults(count)
  gg.clearResults()
  local data = {}
  if (count > 0) then
    gg.toast("共搜索 "..count.." 条数据")
    for i, v in ipairs(result) do
      v.isUseful = true
    end
    for k=2, #Search do
      local tmp = {}
      local num = Search[k]["副特征码"]
      if Search[k]["类型"]~= nil then
           lx =Search[k]["类型"]
         else
           lx = Search[1]["类型"]
        end
      for i, v in ipairs(result) do
        tmp[#tmp+1] = {}
        tmp[#tmp].address = v.address + Search[k]["偏移"]
        tmp[#tmp].flags = lx
      end
      tmp = gg.getValues(tmp)
      for i, v in ipairs(tmp) do
        if ( tostring(v.value) ~= tostring(num) ) then
          result[i].isUseful = false
        end
      end
    end
    for i, v in ipairs(result) do
      if (v.isUseful) then
        data[#data+1] = v.address
      end
    end
    if (#data > 0) then
      local t = {}
      for i=1, #data do
        for k, w in ipairs(Write) do
          if w["类型"] ~= nil then
             lx = w["类型"]
           else
             lx = Search[1]["类型"]
          end
          t[#t+1] = {}
          t[#t].address = data[i] + w["偏移"]
          t[#t].flags = lx
          if (w["修改"]~=nil) and (w["修改"]~=false) then
            t[#t].value = w["修改"]
            gg.setValues(t)
            if (w["冻结"] == true) then
              local item = {}
              item[#item+1] = t[#t]
              item[#item].freeze = w["冻结"]
              gg.addListItems(item)
            end
          end
        end
      end
      gg.loadResults(t)
      gg.toast("共偏移 "..#t.." 条数据")
     else
      gg.toast("未搜到数据！")
      return false
    end
   else
    gg.toast("未搜到数据！")
    return false
  end
end
--------------------------------
function nc_offset(addr,tablex,tt) for i,v in ipairs(tablex) do if v[4]==true then gg.addListItems({{address=addr+v[3],flags=v[2],value=v[1],freeze=v[4]}})else gg.setValues({{address=addr+v[3],flags=v[2],value=v[1]}}) end end gg.toast((tt or "").."开启成功") end
function getso(So_name) return gg.getRangesList(So_name)[1].start end

function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end
function readPointer(Add,Item) for i=1,(#Item-1) do Add=BaAdd(Add+Item[i]) end return Add+Item[#Item] end
function setvalue(add,value,falgs,dj) local WY={} WY[1]={} WY[1].address=add WY[1].value=value WY[1].flags=falgs if dj==true then WY[1].freeze=true gg.addListItems(WY) else gg.setValues(WY) end end
function getnc(Name,nc) local t=gg.getRangesList(Name) for i, v in ipairs(t) do if v.state==nc then return v.start end end end

function SearchWrite(Search, Write, Type)
    gg.clearResults()
    gg.setVisible(false)
    gg.searchNumber(Search[1][1], Type)
    local count = gg.getResultCount()
    local result = gg.getResults(count)
    gg.clearResults()
    local data = {} 
    local base = Search[1][2] 
    
   if (count > 0) then
        for i, v in ipairs(result) do
            v.isUseful = true 
        end
        
        for k=2, #Search do
            local tmp = {}
            local offset = Search[k][2] - base 
            local num = Search[k][1] 
            
            for i, v in ipairs(result) do
                tmp[#tmp+1] = {} 
                tmp[#tmp].address = v.address + offset  
                tmp[#tmp].flags = v.flags  
            end
            
            tmp = gg.getValues(tmp) 
            
            for i, v in ipairs(tmp) do
                if ( tostring(v.value) ~= tostring(num) ) then 
                    result[i].isUseful = false 
                end
            end
        end
          for i, v in ipairs(result) do
            if (v.isUseful) then 
                data[#data+1] = v.address
            end
        end
        
        if (#data > 0) then
           gg.toast("\n共修改"..#data.."条数据")
           local t = {}
           local base = Search[1][2]
           for i=1, #data do
               for k, w in ipairs(Write) do
                   offset = w[2] - base
                   t[#t+1] = {}
                   t[#t].address = data[i] + offset
                   t[#t].flags = Type
                   t[#t].value = w[1]
                   
                   if (w[3] == true) then
                       local item = {}
                       item[#item+1] = t[#t]
                       item[#item].freeze = true
                       gg.addListItems(item)
                   end
                   
               end
           end
           gg.setValues(t)
        else
            gg.toast("\n开启失败", false)
            return false
        end
    else
        gg.toast("\n开启失败")
        return false
    end
end
-------------------------------------------------------------------------------------------------------------
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "\n开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "\n开启成功\n共修改" .. xgsl .. "\n条数据") else gg.toast(qmnb[2]["name"] .. "\n开启失败") end end end end
-------------------------------------------------------------------------------------------------------------
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD


BYBL = {
[1] = "😡'墨辞制作\n支持全版本\n部分来源孤影宏哥\n墨辞脚本\n建议多选功能😡"
}
SJ = os.date("%Y年%m月%d日%H时%M分%S秒")
function MCNB()
MCNB = gg.prompt({
"✨墨辞✨ 使用时间:" .. SJ,
'🌹防闪[登录界面]🌹',
'🌹锁金无冷[进游戏开]🌹',
'🌹火箭筒无间隔[进游戏开]🌹',
'🌹火箭筒无限子弹[进游戏开]🌹',
'🌹锁血[进游戏开]🌹',
'🌹跳高和加速[进游戏开]🌹',
'🌹全皮肤解锁[大厅开启]🌹',
'🌹子弹远程[进游戏开]🌹',
'🌹逃生者星耀皮肤[大厅开启]🌹',
'🌹手雷改飞爪[大厅开启]🌹',
'🌹午后[进游戏开]🌹',
'🌹伪装钻石[大厅开启]🌹',
'🌹急救包范围[进游戏开]🌹',
'🌹火箭筒连发[进游戏开]🌹',
'🌹美化:疾跑梦想输入600066[大厅开启]🌹',
'🌹退出脚本🌹',
}, BYBL, {
"text",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
})
if MCNB ~= nil then

if MCNB[2] then
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber('842,084,353',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('842,084,353',gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('99,999,999',gg.TYPE_DWORD)
gg.toast("墨辞防闪开启")
end

if MCNB[3] then
gg.toast("锁金币无冷却")
    F = gg.alert("稳定奔放", "开启", "关闭", "")
  if F == 1 then
qmnb = {
{["memory"] = 32},
{["name"] = "锁金币无冷却"},
{["value"] = 89, ["type"] = 4},
{["lv"] = 100,["offset"] =4, ["type"] = 4},
{["lv"] = 102,["offset"] =36, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =36, ["type"] = 4},
}
xqmnb(qmnb)
  elseif F == 2 then
qmnb = {
{["memory"] = 32},
{["name"] = "关闭锁金币无冷却"},
{["value"] = 89, ["type"] = 4},
{["lv"] = 100,["offset"] =4, ["type"] = 4},
{["lv"] = 0,["offset"] =36, ["type"] = 4},
}
qmxg = {
{["value"] = 102,["offset"] =36, ["type"] = 4},
}
xqmnb(qmnb)
end
end

if MCNB[4] then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.98;-0.05',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.searchNumber('0.98',gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0, -1)
gg.getResults(100)
gg.editAll('-99999',gg.TYPE_FLOAT)
gg.toast("火箭筒新无间隔开启成功️")
end


if MCNB[5] then
gg.setRanges(32)
Name = "火箭筒新锁子弹"
local dataType = 16
local tb1 = {{3.0, 0}, {1.0, -4}, {1.0, -8}, }
local tb2 = {{0,20, true}, {0,24, true}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("火箭筒新锁子弹开启成功️")
end


if MCNB[6] then
qmnb = {
{["memory"] = 32},
{["name"] = "锁血"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-4, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
{["value"] = -1,["offset"] =4, ["type"] = 4},
}
xqmnb(qmnb)
end

if MCNB[7] then
gg.toast("选啥都可以")
    F = gg.alert("稳定奔放", "跳高", "加速", "退回")
  if F == 1 then
local fy=gg.prompt({"高跳[自调]"}, {[1] = 40}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
  elseif F == 2 then
local fy=gg.prompt({"加速[自调]"}, {[1] = 99999}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "加速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
  elseif F == 3 then
qq2()
end
end

if MCNB[8] then
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
so = gg.getRangesList('libil2cpp.so')[1].start
py = 0xbf2264
setvalue(so + py, 4, -476053504)
so = gg.getRangesList('libil2cpp.so')[1].start
py = 0xbf2268
setvalue(so + py, 4, -516948194)
end

if MCNB[9] then
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("7;0.64999997616;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.64999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

if MCNB[10] then
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2001;2002;2003;2004;2005::17",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("2001;2002;2003;2004;2005::17",gg.TYPE_DWORD,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("2206;2207;2208;2209;2210",gg.TYPE_DWORD)
gg.toast("逃生星耀皮肤")
gg.clearResults()
end

if MCNB[11] then
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500,004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500,004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500,500", gg.TYPE_DWORD)
gg.toast("手雷改飞爪")
gg.clearResults()
end

if MCNB[12] then
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("100D;56;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("午后开启成功")
gg.clearResults()
end

if MCNB[13] then
mx=  gg.prompt({[1]="请输入您当前的钻石（如果有数量相同的东西可能会都改到）"}, {[1]="0"}, {[1]="txet"})--输入框
if mx == nil then else--取消返回
--以下是搜索
  gg.clearResults()
  gg.setRanges(32)
  gg.searchNumber("0D~10000D;1D;900,001D;910,001D;0D~500D;"..mx[1]..";0D~10000::60", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber( mx[1] , gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultCount() >= 300 then gg.alert("修改不了了.你账号有风险")os.exit()end
  gg.getResults(100)
  gg.editAll("999999999",gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.toast("修改成功")
  gg.clearResults()
end
end

if MCNB[14] then
local fy=gg.prompt({"医疗箱范围[自调]"}, {[1] = 99999}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "医疗箱范围"},
{["value"] = 1.20000004768, ["type"] = 16},
{["lv"] = 3.0,["offset"] =4, ["type"] = 16},
{["lv"] = 200.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

if MCNB[15] then
e = gg.prompt({"连发多少自己选(墨辞定制)"}
,{[1]=5},{[1]="number"})[1]
qmnb = {
{["memory"] = 32},
{["name"] = "连发"},
{["value"] = 1.100000023841858, ["type"] = 16},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = e, ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end

if MCNB[16] then
gg.clearResults()
  gg.setRanges(262207)
  gg.searchNumber("500001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("600066", gg.TYPE_DWORD)
  gg.toast("美化成功")
  gg.clearResults()
end



if MCNB[17] then
gg.toast("墨辞定制")
os.exit()
end


end
NX = -1
end
while true do
if gg.isVisible(true) then
NX = 1
gg.setVisible(false)
end
if NX == 1 then
MCNB()
end
end