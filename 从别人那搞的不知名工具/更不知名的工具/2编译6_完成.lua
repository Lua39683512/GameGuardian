data=[=[





---------功能首页(这里可以写你的主功能代码)-------
function ozjtiifgnboluqdsqcojk()
function Sots_searchNumber(n, type, ft, sign, r, s)
  local waring = "\n" .. "已检测到窥码行为，因此出现此状况！"
  gg.setVisible(false)
  gg.searchNumber(n, type, ft, sign, r, s)
  if gg.isVisible(true) then
    gg.setVisible(false)
    gg.processKill()
    print(waring)
    while true do
      gg.setVisible(false)
      while true do
      end
    end
  end
end


function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast("搜索到"..#data.."条数据") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("已修改"..#t.."条数据") gg.addListItems(t) else gg.toast("not found", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end
function readWrite(Search,Get,Type,Range,Name) gg.clearResults() gg.setRanges(Range) gg.setVisible(false) if Search[1][1]~=false then gg.searchAddress(Search[1][1],0xFFFFFFFF,Search[1][4] or Type,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) end gg.searchNumber(Search[1][2],Search[1][4] or Type,false,gg.SIGN_EQUAL,Search[1][5] or 1,Search[1][6] or -1) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][3] if (count > 0) then for i,v in ipairs(result) do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2] - base local num=Search[k][1] for i,v in ipairs(result) do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=Search[k][3] or Type end tmp=gg.getValues(tmp) for i,v in ipairs(tmp) do if v.flags==16 or v.flags==64 then values=tostring(v.value):sub(1,6) num=tostring(num):sub(1,6) else values=v.value end if tostring(values)~=tostring(num) then result[i].isUseful=false end end end for i,v in ipairs(result) do if (v.isUseful) then data[#data+1]=v.address end end if (#data > 0) then local t,t_={},{} local base=Search[1][3] for i=1,#data do for k,w in ipairs(Get) do offset=w[2] - base if w[1]==false then t_[#t_+1]={} t_[#t_].address=data[i]+offset t_[#t_].flags=Type th_=(th_) and th_+1 or 1 else t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=w[3] or Type t[#t].value=w[1] tg_=(tg_) and tg_+1 or 1 if (w[4]==true) then local item={} item[#item+1]=t[#t] item[#item].freeze=w[4] gg.addListItems(item) end end end end tg=(tg_) and "\n已修改"..tg_.."条数据" or "" th=(th_) and "\n已获取"..th_.."条数据" or "" gg.setValues(t) t_=gg.getValues(t_) gg.loadResults(t_) gg.toast("\n"..Name.."搜索成功！\n偏移到"..#data.."条数据"..tg..th) tg_,th_=nil,nil else gg.toast("\n"..Name.."开启失败",false) return false end else gg.toast(Name.."开启失败") return false end end
 function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function yiyz_yiyz_yiyz_yiyz_yiyz_Main()
  menu = gg.multiChoice({    
      "超级防封☞(大厅)☜",
      "极限帧数☞(泉水)☜",
      "内存透视☞(大厅)☜",
      "单局视角☞(泉水)☜",
      "全局视角☞(大厅)☜",
      "修仙结束☞(离开)☜",
      }, nil, os.date("%Y年%m月%d日%H时%M分%S秒♥♥王者荣耀♥♥,强检也能稳定奔放,无视卡屏随便切"))
if menu == nil then 
else 
  if menu[1] == true then 
    a() 
  end
if menu[2] == true then 
    f() 
  end
  if menu[3] == true then
    b()
  end
  if menu[4] == true then
    c()
  end
  if menu[5] == true then
    d()
  end
  if menu[6] == true then
    Exit()
 end
 end 
  XGCK = -1 
end
--GFS极限帧
function f()
qmnb = {
{["memory"] = 16},
{["name"] = "极限帧数"},
{["value"] = 16384, ["type"] = 4},
{["lv"] = 70012, ["offset"] = 8, ["type"] = 4},
{["lv"] = 65538, ["offset"] = 16, ["type"] = 4},
{["lv"] = 70012, ["offset"] = 28, ["type"] = 4},
{["lv"] = 70012, ["offset"] = 36, ["type"] = 4},
{["lv"] = 65538, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 131072, ["offset"] = 16, ["type"] = 4},
{["value"] = 131072, ["offset"] = 44, ["type"] = 4},
}
xqmnb(qmnb)
end
function a()
qmnb = {
{["memory"] = 16},
{["name"] = "防3月"},
{["value"] = 16384, ["type"] = 4},
{["lv"] = 16384, ["offset"] = 8, ["type"] = 4},
{["lv"] = 16384, ["offset"] = 16, ["type"] = 4},
{["lv"] = 16384, ["offset"] = 28, ["type"] = 4},
{["lv"] = 16384, ["offset"] = 36, ["type"] = 4},
{["lv"] = 16384, ["offset"] = 44, ["type"] = 4},
}
qmxg = {
{["value"] = 70012, ["offset"] = 8, ["type"] = 4},
{["value"] = 70012, ["offset"] = 16, ["type"] = 4},
{["value"] = 70012, ["offset"] = 28, ["type"] = 4},
{["value"] = 70012, ["offset"] = 36, ["type"] = 4},
{["value"] = 70012, ["offset"] = 44, ["type"] = 4},
{["value"] = 70012, ["offset"] = 52, ["type"] = 4},
{["value"] = 70012, ["offset"] = 60, ["type"] = 4},
{["value"] = 70012, ["offset"] = 68, ["type"] = 4},
{["value"] = 70012, ["offset"] = 76, ["type"] = 4},
{["value"] = 70012, ["offset"] = 84, ["type"] = 4},
{["value"] = 70012, ["offset"] = 100, ["type"] = 4},
{["value"] = 70012, ["offset"] = 108, ["type"] = 4},
{["value"] = 70012, ["offset"] = 140, ["type"] = 4},
{["value"] = 70012, ["offset"] = 148, ["type"] = 4},
}
xqmnb(qmnb)
qmnb = {
{["memory"] = 4},
{["name"] = "防封"},
{["value"] = 14387, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 6649536, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 12129424, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 12822800, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 15839808, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 16380548, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 16380576, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 16383316, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 16407064, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 16745092, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 57607348, ["type"] = 4},
{["lv"] = 1900226638, ["offset"] = 67309664, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 76941280, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 77017152, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 77791424, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 77938272, ["type"] = 4},
{["lv"] = 0, ["offset"] = 99461212, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 125114912, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 135716400, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 140836056, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 147715936, ["type"] = 4},
{["lv"] = 14387, ["offset"] = 147985020, ["type"] = 4},
}
qmxg = {
{["value"] = 1, ["offset"] = 0, ["type"] = 4},
{["value"] = 1, ["offset"] = 6649536, ["type"] = 4},
{["value"] = 1, ["offset"] = 12129424, ["type"] = 4},
{["value"] = 1, ["offset"] = 12822800, ["type"] = 4},
{["value"] = 1, ["offset"] = 15839808, ["type"] = 4},
{["value"] = 1, ["offset"] = 16380548, ["type"] = 4},
{["value"] = 1, ["offset"] = 16380576, ["type"] = 4},
{["value"] = 1, ["offset"] = 16383316, ["type"] = 4},
{["value"] = 1, ["offset"] = 16407064, ["type"] = 4},
{["value"] = 1, ["offset"] = 16745092, ["type"] = 4},
{["value"] = 1, ["offset"] = 57607348, ["type"] = 4},
{["value"] = 1, ["offset"] = 67309664, ["type"] = 4},
{["value"] = 1, ["offset"] = 76941280, ["type"] = 4},
{["value"] = 1, ["offset"] = 77017152, ["type"] = 4},
{["value"] = 1, ["offset"] = 77791424, ["type"] = 4},
{["value"] = 1, ["offset"] = 77938272, ["type"] = 4},
{["value"] = 1, ["offset"] = 99461212, ["type"] = 4},
{["value"] = 1, ["offset"] = 125114912, ["type"] = 4},
{["value"] = 1, ["offset"] = 135716400, ["type"] = 4},
{["value"] = 1, ["offset"] = 140836056, ["type"] = 4},
{["value"] = 1, ["offset"] = 147715936, ["type"] = 4},
{["value"] = 1, ["offset"] = 147985020, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("10240;524288", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10240", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("134658;12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("12547", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("65536;65793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("65536;65793", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1179403647", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("1879048193", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
local t = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_DWORD then
		v.value = "1"
		v.freeze = true
	end
end
gg.addListItems(t)
t = nil
gg.toast("GFS已经拿捏检测")
end


function b()
so=gg.getRangesList('libGameCore.so')[1].start
py=0x1605FEC
setvalue(so+py,4,-476028601)
gg.toast("内存透视开启成功")
end
--GFS上帝视角
function c()
qmnb = {
{["memory"] = 32},
{["name"] = "单局视角"},
{["value"] = 14.453222274780273, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -16, ["type"] = 16},
{["lv"] = 1.0, ["offset"] = -12, ["type"] = 16},
}
qmxg = {
{["value"] = 1.5, ["offset"] = -16, ["type"] = 16},
{["value"] = 1.5, ["offset"] = -12, ["type"] = 16},
}
xqmnb(qmnb)
end

function d()
so=gg.getRangesList('libunity.so')[1].start
py=0x316830
setvalue(so+py,4,-1077185000)
gg.toast("全局视角开启成功")
end
 function Exit()
  print('萧离努力学习中～打造全网最强辅助\n萧离收徒')
  gg.clearResults()
  gg.clearList()
  os.exit()
end

cs = '萧离制作:1061793238  请勿二改倒卖'

sj = os.date('\n\n☄️当前运行时间:%X')
while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
gg.clearResults()
if XGCK == 1 then
yiyz_yiyz_yiyz_yiyz_yiyz_Main()
end
end
end


ozjtiifgnboluqdsqcojk()




]=]
gg.setVisible(false)
QQW="(function() (function() (function() (function()  end)() end)() end)() end)() "
QQW=QQW:rep(11)
ios = function(path, data)
    local file
    if data then
        file = io.open(path, 'w')
        if file then
            io.output(file)
            io.write(data)
            io.close(file)
            print('输出一个文件到:\n' .. path)
        end
    else
        file = io.open(path)
        if file then
            -- io.input(file)
            data = file:read('*a')
            file:close()
        end
        return (data or '')
    end
end
fy=[=[
BD={loadfile,gg.alert,load,gg.searchNumber,pcall,table.insert,table.concat,gg.getFile,} if 0>9 then  goto i503  goto i503  goto i503   goto i503   goto i503   goto i503   goto i503 goto i503 goto i503 goto i503 goto i503 goto i503 goto i503 ::i503:: end   __=__  for i,v in pairs(BD) do   if _G["string"]["find"](tostring(_G["debug"]["getinfo"](--[[no]]v).func),"/") then if 0>5 then goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 ::i504:: end __=__ _G["gg"]["alert"]("拦截你妈？") if 3>8 then goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 ::i505:: end __=__ _G["os"]["exit"](--[[no]]) gunduzi() end end for i in pairs(os) do if _G["string"]["find"](tostring(_G["debug"]["getinfo"](--[[no]]os[i]).func),"/") then if 3>8 then goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 ::i506:: end __=__ _G["gg"]["alert"]("ffunc") _G["os"]["exit"](--[[no]]) gunduzi() if 1>8 then goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 ::i507:: end __=__ end end BDtime=_G["os"]["clock"](); function _L3_() _L3_() end goto fist ::endfirst:: print(string.char(table.unpack({34,232,175,183,233,135,141,230,150,176,232,191,144,232,161,140,34}))) _G["os"]["exit"](--[[no]]) _L3_() goto endfirst ::fist:: timeseedmx=_G["os"]["clock"]() throughgg=0 BDnum={} mathnum=2000 kd,kd1=_G["string"]["char"](),1 for i=1,500 do kd1=kd1==255 and 1 or kd1+1 kd=kd.._G["string"]["char"](kd1) end for i=1,12 do kd=kd..kd end for i=1,mathnum do BDnum[i]={address=i,flags=1,value=kd} end time1=_G["os"]["clock"]()+os.time() pcall(function(i) _G["gg"]["searchNumber"](i) end,BDnum) time2=_G["os"]["clock"]()+os.time() xpcall(function(i) _G["gg"]["editAll"](i,4) end, function() Txringt=debug.traceback() end,BDnum) time3=_G["os"]["clock"]()+os.time() BDnum=_G["gg"]["getValues"](BDnum) time4=_G["os"]["clock"]()+os.time() fx=_G["debug"]["getinfo"](--[[no]]gg.getValues) if BDnum[_G["math"]["random"](--[[no]]1,2000)].value==0 and type(fx.func)=="function" and type(fx.func)=="function" then BDnum=nil if not BDnum and time4-time1<3 and time2-time3>-2 and time3-time2<time4-time1 then time1=_G["os"]["clock"]() _G["gg"]["sleep"](_G["math"]["random"](--[[no]]8,15)) time1=_G["os"]["clock"]()-time1 if time1>0.008 and time3>time2 then throughgg=throughgg+1 else goto endfirst end else goto endfirst end else goto endfirst end if throughgg==1 then end if throughgg~=1 then goto endfirst else end local BD2=function(...) do if 1>6 then goto i510 goto i510 goto i510 goto i510 goto i510 goto i510 goto i510 goto i510 goto i510 ::i510:: end __=__ local gsou={...} if 2>7 then goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 ::i511:: end __=__ if gsou[1] then if 0>8 then goto i512 goto i512 goto i512 goto i512 goto i512 goto i512 goto i512 goto i512 goto i512 ::i512:: end __=__ gsou[1]=gsou[1].."" local mixa,mixb=_G["math"]["random"](--[[no]]500,999),_G["math"]["random"](--[[no]]500,999) if 2>7 then goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 ::i513:: end __=__ local xma=_G["string"]["char"](_G["math"]["random"](--[[no]]60,255),_G["math"]["random"](--[[no]]60,255)) if 1>9 then goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 ::i514:: end __=__ gsou[1]=gsou[1]:gsub("[^;]+",function (mm) return string.rep(xma,mixa)..mm..string.rep(xma,mixb) end) if 3>8 then goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 ::i515:: end __=__ _G["gg"]["setVisible"](false) if 3>5 then goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 ::i516:: end __=__ _G["gg"]["searchNumber"](gsou[1],gsou[2],gsou[3],gsou[4],gsou[5],gsou[6]) if 1>9 then goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 ::i517:: end __=__ else local isou={} if 1>6 then goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 ::i518:: end __=__ for i=1,_G["math"]["random"](--[[no]]1,5) do if isou[1] then if 2>6 then goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 ::i519:: end __=__ isou[1]=isou[1]..";".._G["math"]["random"](--[[no]]1,99999999) else if 0>9 then goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 ::i520:: end __=__ isou[1]=_G["math"]["random"](--[[no]]1,99999999) end end if 1>5 then goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 ::i521:: end __=__ local db={1,2,4,8,16,32,64} isou[2]=db[_G["math"]["random"](--[[no]]1,7)] if 3>5 then goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 ::i522:: end __=__ _G["gg"]["searchNumber"](isou[1],isou[2]) for i=1,88 do if 3>6 then goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 ::i523:: end __=__ _G["gg"]["searchNumber"]("QN") end return _G["gg"]["clearResults"]() end if 3>6 then goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 ::i524:: end __=__ end end if 2>9 then goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 ::i525:: end __=__
 ]=]
	function RandomStr(len)
		local str = ""
		str = string.char(math.random(65,90))
		for num = 1,len-1 do
			local number = math.random(1,3)
			if number == 1 then
				str = str..string.char(math.random(65,90))
			elseif number == 2 then
				str = str..string.char(math.random(97,122))
			elseif number == 3 then
				str = str..string.char(math.random(48,57))
			end
		end
		return str
	end


function Table_Rand(t)
  local tRet = {}
  local Total = #t
  while Total > 0 do
    local i = math.random(1,Total)
    table.insert(tRet,t[i])
    t[i] = t[Total]
    Total = Total -1
  end
  return tRet
end

    Rubbish = {'gg.multiChoice({"『国服』刺激战场","『国际』刺激战场","『稳定』王者荣耀","『稳定』QQ飞车","『稳定』香肠派对","退出脚本"},nil,"这里可以填QQ号")','gg.setRanges(32)','gg.clearResults()','gg.searchNumber("10000;8000;100;50;80;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL)','gg.getResults(100)','gg.editAll("-999",gg.TYPE_DWORD)'}

	function RandRubbish()
	 local num = math.random(1,#Rubbish)
	 local str = ""
	 if num == 4 then
	  str = Rubbish[num]:gsub('".-"',function (Str) return '"'..math.random(64,81273)..';'..math.random(64,8273)..';'..math.random(64,813)..'::"' end)
	 elseif num == 5 then
	  str = Rubbish[num]:gsub('%((.-)%)',function (Str) return "("..math.random(1,9).."00)" end)
	 elseif num == 6 then
	  str = Rubbish[num]:gsub('".-"',function (Str) return '"'..math.random(64,81273)..'"' end)
	 else
	  str = Rubbish[num]
	 end
	 return str
	end

function Chou(filein)
  local sprits_1,t="",{}
  local str = RandomStr(math.random(8,22))
  local str_2 = RandomStr(math.random(8,22))
  local files1=io.open(filein)
  repeat
    text=files1:read('*l')
    if text then
      if text~="" and load(text) and not text:find("return") then  
        local sjs = math.random(1,999999999)
        table.insert(t,"if "..str.."=="..sjs.." then "..text.." end ")
        sprits_1 = sprits_1..str_2..'(tonumber("'..sjs..'"))\n'
       else
        sprits_1=sprits_1..text.."\n"
      end
    end
  until text==nil
  for i = 1,#t/2 do
  	table.insert(t,"if "..str.."=="..math.random(1,9999999).." then "..RandRubbish().." end ")
  end
  return "function "..str_2.."("..str..")\n"..table.concat(Table_Rand(t)).."\nend\n"..sprits_1
end

f = io.open("/storage/emulated/0/Android/cs.dll","w+")
f:write(data)
f:close()

--data = Chou("/storage/emulated/0/Android/cs.dll")

LOG=[[

function random() 
bn={"","ÿ"," _","}","["} x=math.random local e,f,g,h,i=x(1,5),x(1,5),x(1,5),x(1,5),x(1,5) a=bn[e]..bn[f]..bn[g]..bn[h]..bn[i] return a,b,c,d,e end

ss=random()
ss=string.rep(ss..random(),999)

function QNsearch(a,b,c,d,e,f)
gg.searchNumber(ss..a..ss,b,c,d,e,f)
end

function QNeditAll(a,b)
gg.editAll(ss..a..ss,b)
end


]]




	function Collect_Boolean(Code)
		local Code_Boolean = {"true","false","nil"}
		local Boolean_Tmp = {}
		local Boolean_ = {}
		for num,str in pairs(Code_Boolean) do
			for str_2 in string.gmatch(Code,str) do
				table.insert(Boolean_Tmp,str_2)
				table.insert(Boolean_,RandomStr(3,7))
			end
			for i = 1,#Boolean_Tmp do
				Code = Code:gsub(Boolean_Tmp[i],"_ENV['"..Boolean_[i].."']",1)
			end
		end
		local str_tmp = ""
		for i = 1,#Boolean_Tmp do
			local number = math.random(1,3)
			for ii = 1,number do
				str_tmp = str_tmp..RandomStr(8,17).."="..Code_Boolean[math.random(1,3)].."\n"
			end
			str_tmp = str_tmp..Boolean_[i].."="..Boolean_Tmp[i].."\n"
		end
		return str_tmp..Code
	end
data = Collect_Boolean(data)
	function Collect_Func(Code)
		for str in string.gmatch(Code,"function%s+(.-)%(%)") do
			local Str = RandomStr(math.random(18,37))
			Code = Code:gsub("function%s+"..str.."%(%)","function "..Str.."()")
			Code = Code:gsub(str.."%(%)","_ENV['"..Str.."']()")
		end
		return Code
	end
data = Collect_Func(data)
data = data:gsub("gg%.searchNumber","QNsearch")
data = data:gsub("gg%.editAll","QNeditAll")
--print(data)
data = data:gsub("QNsearch",'_ENV["QNsearch"]')
data = data:gsub("QNeditAll",'_ENV["QNeditAll"]')
--print(data)
function GG_GO(data)
function Qnsj(a)
lmn={"A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "c", "b", "e", "d", "g", "h", "f", "k", "m", "i", "l", "o", "q", "p", "n", "t", "u", "r", "z", "s", "y", "x", "v"}
local w=""
for i=1,a do
local d=math.random(1,49)
w=w..lmn[d]
end
return w
end
    for i, v in pairs(gg) do
        data=data:gsub("gg."..i, "__________Qn".."["..'"'..i..'"'.."]")
    end
    for i, v in pairs(io) do
        data=data:gsub("io."..i, "________Qn".."["..'"'..i..'"'.."]")
    end
    for i, v in pairs(os) do
        data=data:gsub("os."..i, "______Qn".."["..'"'..i..'"'.."]")
    end
    for i, v in pairs(string) do
        data=data:gsub("string."..i, "____Qn".."["..'"'..i..'"'.."]")
    end
for k,v in pairs(gg) do
data=data:gsub('gg.'..k,'_ENV._G.gg[tostring(tostring(tostring("'..k..'",true),nil),false)]')
end--gg库
for k,v in pairs(string) do
data=data:gsub('string.'..k,'_ENV._G.string[tostring(tostring(tostring("'..k..'",true),nil),false)]')
end--string库
for k,v in pairs(debug) do
data=data:gsub('debug.'..k,'_ENV._G.debug[tostring(tostring(tostring("'..k..'",true),nil),false)]')
end--debug库
for k,v in pairs(io) do
data=data:gsub('io.'..k,'_ENV._G.io[tostring(tostring(tostring("'..k..'",true),nil),false)]')
end--io库
for k,v in pairs(os) do
data=data:gsub('os.'..k,'_ENV._G.os[tostring(tostring(tostring("'..k..'",true),nil),false)]')
end--os库
for k,v in pairs(math) do
data=data:gsub('math.'..k,'_ENV._G.math[tostring(tostring(tostring("'..k..'",true),nil),false)]')
end--math库
for k,v in pairs(table) do
data=data:gsub('table.'..k,'_ENV._G.table[tostring(tostring(tostring("'..k..'",true),nil),false)]')
end--table库
local ALL_GG={'print','tostring','tonumber','assert','collectgarbage','dofile','error','getfenv','getmetatable','loadstring','loadfile','next','pcall','rawget','rawequal','xpcall'}
for k,v in ipairs(ALL_GG) do
data=data:gsub(v,'_ENV._G["'..v..'"]')
end--基本库
return data
end
data=GG_GO(data)
data = LOG.."\n"..data
--ios("/storage/emulated/0/tencent/QQfile_recv/编译_80.bin.lua",data)

function X(T)return(T:gsub('..',function(x)return string.char((tonumber(x,16))%256)end))end 
local by=X('0102030405060708091011121314151617181920808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA1A2A3A4A5A6A7A8A9AAABAC')

function Enc(data)
    return ((data:gsub('.', function(x) 
        local r,by='',x:byte()
        for i=8,1,-1 do r=r..(by%2^i-by%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return by:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

Dec_data = [[
function X(T)return(T:gsub('..',function(x)return string.char((tonumber(x,16))%256)end))end 
local by=X('0102030405060708091011121314151617181920808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA1A2A3A4A5A6A7A8A9AAABAC')

function dec(data)
    local data = string.gsub(data, '[^'..by..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(by:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
    end))
end
]]
data = data:gsub("%[=%[(.-)%]=%]",function(h)
     return "dec([=["..Enc(h).."]=])"
end)
     data=data:gsub("\"(.-)\"",function(h)
     return "dec([=["..Enc(h).."]=])"
end)
     data,error=data:gsub("'(.-)'",function(h)
     return "dec([=["..Enc(h).."]=])"
end)
data = Dec_data..data
function Ffd(ksz,jsz)
    for ir=1,2 do
        ss=""
        for k=1,ir do
            if ir==1 then 
                k=1 
            end
        ss=ss..("if (function ()if nil then else goto Ms end local i ::Ms:: end)then else goto hxffd end  "):rep(k)
        end
    end
    ss="if nil then  "..ss.."::hxffd:: end "
    return ss
end
ik=1
HX=Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+2)..Ffd(ik,ik+2)..Ffd(ik,ik+1)..Ffd(ik,ik+2)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+1)
XH=Ffd(ik,ik+1)..Ffd(ik,ik+2)..Ffd(ik,ik+2)..Ffd(ik,ik+3)..Ffd(ik,ik+2)..Ffd(ik,ik+1)..Ffd(ik,ik+2)..Ffd(ik,ik+1)..Ffd(ik,ik+2)..Ffd(ik,ik+1)
HS=Ffd(ik,ik+1)..Ffd(ik,ik+2)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+2)..Ffd(ik,ik+2)..Ffd(ik,ik+1)
SH=Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+1)..Ffd(ik,ik+2)
HX=HX..XH..HS..SH
hxcode = ' while ""=="RlRlRR" do RlRlRR="RlRlRR" end '
hxcode = string.rep(hxcode, 5)
data = hxcode .. fy ..data
data = ' while ""=="RlRlRR" do RlRlRR=(function()end)("lRlRlR") end '.. data 
hxcode = '(function(...) '
hxcode = string.rep(hxcode, 8)
data = hxcode .. data
hxcode = '  end)()'
hxcode = string.rep(hxcode, 8)
data = HX.. data .. hxcode 
data = '  while ""=="RlRlRR" do RlRlRR=(function(...)end)("lRlRlR")  end ' .. HX .. data
data ='if nil then (function(...)end)("lRlRlR") end local _A_=(function(...)\nlocal Qn={} __________Qn=gg ________Qn=io ______Qn=os ____Qn=string local function _______Qn(code)local data ={} for i=1,#code do data[i]=string.char((code[i][1][1]/code[i][1][2])-code[i][2]) end return table.concat(data,\"\") end \n'.."\n"..data..QQW..'\nend)()'
        Y=string.rep('lsqnb',"3")
				Y=' '..Y..'="'..Y..'" '
				Y=string.rep(Y,10000)
				data = Y..data
path = '/sdcard/lasm.tmp'

ios(path, data)

ios(path,data)
ios(path.."cs", data)

gg.toast("⚙正在混淆编汇指令%⚙")

func, error = loadfile(path)
if not func then
    if gg.alert('加密失败', '查看详细', '取消') == 1 then
        gg.alert('错误提示:\n\n' .. error)
    end
    return false
end

dump = string.dump(func, true, true)
  
gg.internal2(load(dump), path)
-- os.exit()
gg.toast("⚙30%⚙")



ym = ios(path)


rl = {}
rl.ASM = {
    ['LOADK'] = 2,
    ['LOADKX'] = 2,
    ['EXTRAARG'] = 2,

    ['MOVE'] = 2,
    ['UNM'] = 2,
    ['NOT'] = 2,
    ['LEN'] = 2,

    ['ADD'] = 2,
    ['SUB'] = 2,
    ['MUL'] = 2,
    ['DIV'] = 2,
    ['MOD'] = 2,
    ['POW'] = 2,

    ['GETTABLE'] = 2,
    ['SETTABLE'] = 2,
    ['NEWTABLE'] = 2,
    ['SELF'] = 2,
    ['SETLIST'] = 2,

    ['LOADNIL'] = 2,
    ['CONCAT'] = 2,
    ['CALL'] = 2,
    ['VARARG'] = 2,
    ['TAILCALL'] = 2,
    ['TFORCALL'] = 2,

    ['GETUPVAL'] = 2,
    ['SETUPVAL'] = 2,
    ['GETTABUP'] = 2,
    ['SETTABUP'] = 2,

    ['CLOSURE'] = 2
}
rl.jmp1 = 1000000
rl.data2 = {}

gg.toast("正在混淆汇编指令...")
for text in string.gmatch(ym, '[^\n]+') do
    if text ~= '' then
        rl.txt1 = string.match(text, '%S+')
        if rl.ASM[rl.txt1] then
            rl.jmp2 = rl.jmp1 + 1
            rl.jmp3 = rl.jmp2 + 1
            text = 'JMP :goto_' .. rl.jmp1 .. '\n:goto_' .. rl.jmp2 .. '\n' .. text .. '\nJMP :goto_' .. rl.jmp3 .. '\n:goto_' .. rl.jmp1 .. '\nJMP :goto_' .. rl.jmp2 .. '\n:goto_' .. rl.jmp3
            rl.jmp1 = rl.jmp3 + 1
        end
        rl.data2[#rl.data2 + 1] = text
    end
end

rl.data2 = table.concat(rl.data2, '\n')

f = io.open(path,"w+")
f:write(rl.data2)
f:close()
--data = ios(path)

ym = ios(path)

Zhiling = {
    ---区域指令块
    ["MOVE"] = 1,
    ["LOADK"] = 1,
    ["LOADKX"] = 1,
    ["LOADBOOL"] = 1,
    ["LOADNIL"] = 1,
    ["GETUPVAL"] = 1,
    ["GETTABUP"] = 1,
    ["GETTABLE"] = 1,
    ["SETTABUP"] = 1,
    ["SETUPVAL"] = 1,
    ["SETTABLE"] = 1,
    ["NEWTABLE"] = 1,
    ["SELF"] = 1,
    ["ADD"] = 1,
    ["SUB"] = 1,
    ["MUL"] = 1,
    ["DIV"] = 1,
    ["MOD"] = 1,
    ["POW"] = 1,
    ["UNM"] = 1,
    ["NOT"] = 1,
    ["LEN"] = 1,
    ["CONCAT"] = 1,
    ["JMP"] = 1,
    ["EQ"] = 1,
    ["LT"] = 1,
    ["LE"] = 1,
    ["TEST"] = 1,
    ["TESTSET"] = 1,
    ["CALL"] = 1,
    ["TAILCALL"] = 1,
    ["FORLOOP"] = 1,
    ["FORPREP"] = 1,
    ["TFORCALL"] = 1,
    ["TFORLOOP"] = 1,
    ["SETLIST"] = 1,
    ["CLOSURE"] = 1,
    ["VARARG"] = 1,
    ["EXTRAARG"] = 1,
    ["IDIV"] = 1,
    ["BNOT"] = 1,
    ["BAND"] = 1,
    ["BOR"] = 1,
    ["BXOR"] = 1,
    ["SHL"] = 1,
    ["SHR"] = 1,
}
Str = {"🇨🇳", "🇭🇰", "🇨🇦", "🇦🇷", "🇧🇧", "🇵🇬", "🇲🇴", "🇦🇮", "🇵🇰",
       "🇦🇴", "🇦🇪", "🇮🇪", "🇪🇪", "🇭🇰", "🇩🇴", "🇰🇷", "🇨🇳", "🇻🇮",
       "🇲🇼", "🇱🇧", "🇱🇾", "🇨🇨", "🇭🇳", "🇩🇯", "🇰🇭", "🇶🇦", "🇰🇳",
       "🇰🇬", "🇵🇦", "🇧🇿", "🇧🇲", "\f\f\f\f\t\f\f\f\f��������", "\fArea block protection"}
num = 1
data = {}
number = 10086110
function Resver(b)
    local tab = {}
    for k, v in pairs(b) do
        table.insert(tab, 1, string.format("%x", v))
    end
    str = table.concat(tab)
    tab = {}
    str = str:gsub("........", function(x)
        table.insert(tab, 1, "OP[83] 0x" .. x .. " ; garbage\n")
    end)
    number = number + 1
    return "JMP :goto_5" .. number .. "; garbage\nEQ 3 v27 v42\n" .. table.concat(tab) .. "\nLOADK v0 '青柠'; garbage\nGETUPVAL v30 u2\nADD v30 v30 v31\n :goto_5" .. number  ..               "\n\nMOVE v0 v0 ; garbage"
end
for text in string.gmatch(ym, '[^\n]+') do
    if text ~= '' then
        str_1 = string.match(text, '%S+')
        -- 寻找实体
        if Zhiling[str_1] and text:match("JMP") == nil then
            table.insert(data, Resver(gg.bytes(Str[num])) .. "\n" .. text .. "\n")
            if num + 1 > #Str then
                num = 1
            else
                num = num + 1
            end
        else
            table.insert(data, text .. "\n")
        end
    end
end

ios(path, table.concat(data))
--data = ios(path)

ym = ios(path)

local num_xy = 1008
ym = ym:gsub("JMP.-\n",function (str) num_xy = num_xy+1 local Str = "" local Str_2 = "" for i = 1,math.random(1,9) do Str = Str.."\nEQ "..math.random(2,15).." v"..math.random(0,9).." "..math.random(1,9999) end for i = 1,math.random(1,9) do Str_2 = Str_2.."\n TEST v"..math.random(0,9).." "..math.random(1,9999) end return str.."\n"..Str.."\n"..Str_2.."\nJMP :goto_"..num_xy.."\n:goto_"..num_xy.."\n" end)

  function fh()
	  bool=("\nLOADBOOL v40 20\nLOADBOOL v40 20")
	  fhh=bool.."\n\nSETTABUP u0 \"QN TEST\" 1"
	  return fhh
	end

ZL = {"ADD","SUB","DIV"}

  ym=ym:gsub("LOADNIL v(%d+)%.%.v(%d+)\n%s+TEST v(%d+) (%d+)\n%s+JMP :goto_(%d+)  ; %+(%d+) ↓",function (a,b,c,d,e,f) return "LOADNIL v"..a.."..v"..b.."\nTEST v"..c.." "..d.."\nTEST v"..c.." "..d.."\nLT 0 403 331\nLT 0 403 331\nJMP :goto_"..e.."  ; +"..f.." ↓ "..fh().."\n"..ZL[math.random(1,#ZL)].." v"..math.random(1,16).." v"..math.random(1,16).." v"..math.random(1,16).."\n" end)

func, error = loadfile(path)
if not func then
    if gg.alert('混淆失败', '查看详细', '取消') == 1 then
        gg.alert('错误提示:\n\n' .. error)
    end
    return false
end

dump = string.dump(func, true)

gg.internal2(load(dump), path)

gg.toast("⚙80%⚙")

data = ios(path)
os.remove(path)

weizhicuowu=[=[
.upval u54 "" ; u1
.upval u92 "" ; u2
.upval u10 "" ; u3
.upval u0 "" ; u4
.upval v01 "" ; u5
.upval u31 "" ; u6
.upval u12 "" ; u7
.upval u19 "" ; u8
.upval u14 "" ; u9
.upval u74 "" ; u10
.upval u56 "" ; u11
.upval u54 "" ; u19
.upval u92 "" ; u21
.upval u10 "" ; u35
.upval u90 "" ; u4
.upval v01 "" ; u59
.upval u31 "" ; u63
.upval u12 "" ; u72
.upval u19 "" ; u89
.upval u11 "" ; u98
.upval u74 "" ; u10
.upval u56 "" ; u110
]=]
weizhicuowu1=[=[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u7 "" ; u4
.upval u6 "" ; u5
.upval u11 "" ; u6
]=]
data = data:gsub('upval%s*v0*%s*nil%s*;%s*%w*','upval v0 "" ; u0\n'..weizhicuowu,1)
data=data:gsub('upval%s*u0*%s*nil%s*;%s*%w*','upval u0 "" ; u0\n'..weizhicuowu1,1)

data = string.gsub(data, "%s*\n%s*", "\n")
data = string.gsub(data, "linedefined %d+", "linedefined 0")
data = string.gsub(data, "lastlinedefined %d+", "lastlinedefined 0")
data = string.gsub(data, "numparams %d+", "numparams 250")
data = string.gsub(data, "is_vararg %d+", "is_vararg 250")
data = string.gsub(data, "maxstacksize %d+", "maxstacksize 250\n\n")

ios(path,data)

data = loadfile(path)

data = string.dump(data,true)
        local lsqnbb = string.char(0x6C,0x73,0x71,0x6E,0x62)
        local lsqnbb = string.rep(lsqnbb,"5000")
         Y=string.gsub(data,string.char(0x04,0x10,0x00,0x00,0x00,0x6C,0x73,0x71,0x6E,0x62,0x6C,0x73,0x71,0x6E,0x62,0x6C,0x73,0x71,0x6E,0x62,0x00),string.char(0x04,0xA9,0x61,0x00,0x00)..lsqnbb..string.char(0x00))
         data=string.gsub(Y,"lsqnb",string.char(math.random(0,255))..string.char(math.random(0,255))..string.char(math.random(0,255))..string.char(math.random(0,255))..string.char(math.random(0,255)))
data = string.gsub(data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
           string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
data = string.gsub(data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
           string.char(0x00, 0x00, 0x00, 0x00), 1)
data = string.gsub(data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x6C, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x00),
           string.char(0x04, 0x00, 0x00, 0x00, 0x00))
data = string.gsub(data, string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) ..
           string.rep(string.char(0), 32), string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) .. string.rep('\0', 24) ..
               string.char(0x36, 0xB2, 0xBF, 0xFF, 0x83, 0x2B, 0xD8, 0xFF))
               data = string.gsub(data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
              string.char(0x00, 0x00, 0x00, 0x00))
              data = string.gsub(data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
              string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
              data = string.gsub(data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
              string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
data = string.gsub(data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
              string.char(0x00, 0x00, 0x00, 0x00))
              
sj = os.date("%G_%m_%d_")
path = sj .. '[编译].lua'
ios(path, data)

gg.toast("⚙100%⚙")
local newpath = gg.getFile():gsub(gg.getFile():reverse():match("(.-)/"):reverse(), "[编译]新.lua")
os.remove("/storage/emulated/0/lasm.tmp")
os.remove("/storage/emulated/0/lasm.tmpcs")
size = #io.open(path):read("*a")
gg.alert("编译完成！\n输出文件为:\n" .. newpath.."\n\n输出大小为"..size.."KB")