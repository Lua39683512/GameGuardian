
------------------------------------------------------------------------------------------------------------
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器

function search(ss,lx,nc,dz1,dz2) if ss~=nil then if lx~=nil then if nc==nil then nc=32 end gg.setRanges(nc) if dz1==nil then dz1="-1" end if dz2==nil then dz1="0" end gg.searchNumber(ss,lx,false,536870912,dz1,dz2) sl=gg.getResultCount() if sl~=0 then sj=gg.getResults(sl) gg.toast("搜索到 "..sl.." 个结果") gg.clearResults() else gg.toast("未搜索到结果") end else gg.toast("无搜索值类型") end else gg.toast("无需搜索值") end end function py1(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value==value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function py2(value,lx,py) if #sj~=nil then z1={} z2={} for i=1,#sj do z1[i]={} z1[i].address=sj[i].address+py z1[i].flags=lx end z1=gg.getValues(z1) for i=1,#sj do if z1[i].value~=value then z2[#z2+1]={} z2[#z2]=sj[i] end end sj=z2 z1={} z2={} gg.toast("共偏移 "..#sj.." 个数据") else gg.toast("没有搜索数据") end end function xg1(value,lx,py,dj) if #sj~=nil then z={} for i=1,#sj do z[i]={} z[i].address=sj[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function xg2(bz,value,lx,py,dj) if #bz~=nil then z={} for i=1,#bz do z[i]={} z[i].address=bz[i].address+py z[i].flags=lx z[i].value=value if dj==true then z[i].freeze=true end end if dj==true then gg.addListItems(z) else gg.clearList() gg.setValues(z) end gg.toast("共修改 "..#z.." 个数据") else gg.toast("没有搜索数据") end end function bc(bz) if sj~=nil then _ENV[bz]=sj else gg.toast("无数据") end end function BaAdd(add) t=gg.getValues({[1]={address=add,flags=4}}) return t[1].value&0xFFFFFFFF end function set(dz,xg,lx,dj) if dj=="true" then gg.addListItems({{address=dz,flags=lx,value=xg,freeze=true}}) else gg.setValues({{address=dz,flags=lx,value=xg}}) end gg.toast("已修改完成~") end

-------------------------------------------------------------------------------------------------------------
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
local function LongTao(Search, Write)
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
-------------------------------------------------------------------------------------------------------------
DWORD=gg.TYPE_DWORD  DOUBLE=gg.TYPE_DOUBLE  FLOAT=gg.TYPE_FLOAT WORD=gg.TYPE_WORD BYTE=gg.TYPE_BYTE XOR=gg.TYPE_XOR QWORD=gg.TYPE_QWORD
-- 【【 核心代码，不懂勿动 】】
--   JF Script编辑器
-------------------------------------------------------------------------------------------------------------
local Coordinate = {
	["4v1"] = {
		{"逃生出生点", 3.34362125397, 15.13000488281},
		{"追捕出生点", 73.5476547241, 12.87230625153},
		{"左上锁", 23.8237285614, 26.60956954956},
		{"右上锁", 60.52298355103, 25.73680686951},
		{"左下锁", 25.4847278595, 2.29304552078},
		{"右下锁", 54.63586044312, 3.29846453667},
		{"逃生门上", 75.41736602783, 19.74724578857},
		{"逃生门下", 75.35242462158, 10.51966667175},
		{"逃生门内", 75.79698944092, 14.90986442566},
		{"禁闭室", 41.02674102783, 15.1534538269},
	},
	["8v2"] = {
        {"逃生出生点", 4.01427412033, 4.29365110397},
        {"追捕出生点", 69.823619842529, 23.24},
        {"左上角", 8.35671615601, 34.48394012451},
        {"右上角", 46.06547927856, 35.75774002075},
        {"左下角", 37.44395446777, 9.94684028625},
        {"右下角", 74.33776092529, 2.83895134926},
        {"右中锁", 58.02332305908, 19.30354118347},
        {"左中锁", 26.00450325012, 22.61933708191},
        {"禁闭室", 43.67848205566, 20.084192276},
        {"逃生门", 73.23619842529, 19.74},
        {"逃生点", 84.43,38.44},
        {"逃生门右下角草丛", 86.7, 20.4},
	},
    ["大乱斗"] = {
        {"金宝箱", 69.06547927856, 58.75774002075},
    },
    ["BOSS战"] = {
        {"左上锁", 14.42708015442, 27.35429382324},
        {"右上锁", 43.25138092041, 25.47104644775},
        {"左下锁", 17.88104248047, 3.07307004929},
        {"右下锁", 44.83654785156, 3.05864238739},
        {"超级补给箱", 30.05561447144, 14.99376583099},
        {"逃生出生点", 2.58230996132, 15.0183763504},
        {"BOSS出生点", 46.4808883667, 14.44607925415},
  },
}

local function Mswrite(search)
	gg.setVisible(false)
	gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2])
	if gg.getResultsCount() == 0 then
		return gg.toast("搜索失败")
	else
		local result = gg.getResults(gg.getResultsCount())
		gg.clearResults()
		for i = 2,#search do
			local mtp = {}
			for w,r in ipairs(result) do
				mtp[#mtp+1] = {address = r.address + search[i][2], flags = search[i][3]}
			end
			mtp = gg.getValues(mtp)
			local hook = {}
			for w,r in ipairs(mtp) do
				if r.value == search[i][1] then
					hook[#hook + 1] = result[w]
				end
			end
			result = hook
		end
		for i = 1, #result do
			result[i] = result[i].address
		end
		return result
	end
end

local fy, res = "4v1"
local mode = {['4v1'] = '8v2', ['8v2'] = '大乱斗', ['大乱斗'] = 'BOSS战', ['BOSS战'] = '4v1',}

function setcoordinate(x, y)
	if type(res) == 'table' and #res > 0 then
		local sets = {} -- 修改合集
		for i = 1, #res do
			sets[#sets + 1] = {address = res[i] + 0x18, value = x, flags = 16}
			sets[#sets + 1] = {address = res[i] + 0x20, value = y, flags = 16}
		end
		gg.setValues(sets)
	else
		gg.toast("传送失败, 您可能没有进入游戏或者没有开启初始化️")
	end
end
-------------------------------------------------------------------------------------------------------------
function xy0()--传送
::STAR::
	local Tab = {"选择模式[当前:"..fy.."]", '初始化'}
	for i = 1,#Coordinate[fy] do
		Tab[#Tab+1] = i .. " : " .. Coordinate[fy][i][1]
	end
	local GT = gg.choice(Tab, nil, "传 送 功 能\n我会更新更多传送坐标的")
	if GT then
		if GT == 1 then
			fy = mode[fy]
			gg.toast("已切换到" .. fy .. "模式")
			goto STAR
		elseif GT == 2 then
			res = Mswrite({{257, 4, 4}, {16777215, -4, 4}, {49, 0x68, 16}})
			if type(res) ~= "table" or #res <= 1 then
				gg.toast('初始化失败')
				res = {}
			end
		else
			gg.toast("当前模式:" .. fy .. "\n正在为您传送到" .. Coordinate[fy][(GT - 2)][1])
			setcoordinate(Coordinate[fy][(GT - 2)][2], Coordinate[fy][(GT - 2)][3])
		end
	end
end
-------------------------------------------------------------------------------------------------------------
function Main()
  gg.toast("欢迎使用 教主最新版脚本")
  menu = gg.choice({
	 "稳 定 功 能 [逃]",
	 "稳 定 功 能 [追]",
	 "传 送 功 能",
	 "变 态 功 能",
	 "变 态 功 能2",
	 "过 青 铜 功 能",
	 "防 封 功 能",
	 "防 闪 功 能",
	 "️道 具 功 能️",
	 "道 具 皮 肤 美 化",
	 "自 调 功 能",
	 "作 者 q q",
	 "封 号 机 制",
	 "改 天 赋 功 能",
	 "道 具 等 级",
	 "️更 改 道 具️",
	 "角 色 天 赋",
	 "解 封 账 号",
	 "大 乱 斗 功 能",
	 "变 态 功 能3",
	 "人 物 套 装",
	 "身份证(有效一周一更新)",
	 "能量间间隔",
	 "迫击炮间隔",
	 "️退 出 脚 本️️",
}, nil, os.date("逃跑辅助\n当前版本:未知 | 教主牛逼！！\n全新版辅助\n当前时间:%Y年/️%m月/%d日%H:%M:%S"))
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then xy0() end
if menu == 4 then C() end
if menu == 5 then D() end
if menu == 6 then E() end
if menu == 7 then F() end
if menu == 8 then G() end
if menu == 9 then H() end
if menu == 10 then I() end
if menu == 11 then J() end
if menu == 12 then K() end
if menu == 13 then L() end
if menu == 14 then M() end
if menu == 15 then N() end
if menu == 16 then O() end
if menu == 17 then P() end
if menu == 18 then Q() end
if menu == 19 then S() end
if menu == 20 then T() end
if menu == 21 then W() end
if menu == 22 then Z() end
if menu == 23 then Y() end
if menu == 24 then U() end
if menu == 25 then Exit() end
XGCK=-1
end
-------------------------------------------------------------------------------------------------------------
function A()
menu1 = gg.multiChoice({
"🎉3 倍 开 锁🎉",
"🎉2 倍 开 锁🎉",
"🎉3.5 倍 移 速🎉",
"🎉3.2 倍 移 速🎉",
"🎉锁 血🎉",
"🎉高 跳🎉",
"🎉明 透🎉",
"🎉范 围 锁 门 人🎉",
"🎉增 大 视 野 范 围🎉",
"🎉0 概 率 触 发 开 锁🎉",
"🎉完 美 开 锁🎉",
"🎉医 疗 箱 微 范 围🎉",
"🎉1.2 倍 全 局 加 速🎉",
"🎉火 箭 筒 无 后 坐 力 (修复)[大厅开]🎉",
"🎉xa 无 后 坐 力 (失效)[关闭]🎉",
"🎉透 视(修复)🎉",
"🎉️返 回 主 页🎉️",
}, nil, os.date("稳 定 功 能 [逃]\n不一定稳定你要学会演，实体金币开启后,获得金币就关闭,不关闭的话要封号！！！"))
if menu1 == nil then else
if menu1[1] == true then a1() end
if menu1[2] == true then a2() end
if menu1[3] == true then a3() end
if menu1[4] == true then a4() end
if menu1[5] == true then a5() end
if menu1[6] == true then a6() end
if menu1[7] == true then a7() end
if menu1[8] == true then a8() end
if menu1[9] == true then a9() end
if menu1[10] == true then a10() end
if menu1[11] == true then a11() end
if menu1[12] == true then a12() end
if menu1[13] == true then a13() end
if menu1[14] == true then a14() end
if menu1[15] == true then a15() end
if menu1[16] == true then a16() end
if menu1[17] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function a1()--3倍开锁
qmnb = {
{["memory"] = 32},
{["name"] = "3倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function a2()--2倍开锁
qmnb = {
{["memory"] = 32},
{["name"] = "2倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function a3()--3.5倍移速
qmnb = {
{["memory"] = 32},
{["name"] = "3.5倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function a4()--3.2倍移速
qmnb = {
{["memory"] = 32},
{["name"] = "3.2倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.2,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function a5()--锁血
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

function a6()--高跳
qmnb = {
{["memory"] = 32},
{["name"] = "高跳"},
{["value"] = 4.900000095367432, ["type"] = 16},
{["lv"] = 900.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 20.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 6.8,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function a7()--明透
qmnb = {
{["memory"] = 32},
{["name"] = "明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function a8()--范围锁门人
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.29999995232", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("3", FLOAT)
gg.toast("范围锁门人开启成功")
gg.clearResults()
end
end

function a9()--增大视野范围
qmnb = {
{["memory"] = 32},
{["name"] = "增大视野范围"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = 15,["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
end

function a10()--0概率触发开锁
qmnb = {
{["memory"] = 32},
{["name"] = "0概率触发开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 99999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end

function a11()--完美开锁
qmnb = {
{["memory"] = 32},
{["name"] = "完美开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 16.0, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 99999, ["offset"] = 4, ["type"] = 16},
}
xqmnb(qmnb)
end

function a12()--医疗箱微范围
qmnb = {
{["memory"] = 32},
{["name"] = "医疗箱微范围"},
{["value"] = 1.20000004768, ["type"] = 16},
{["lv"] = 3.0,["offset"] =4, ["type"] = 16},
{["lv"] = 200.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function a13()--1.2倍全局加速
qmnb = {
{["memory"] = 4},
{["name"] = "1.2倍全局加速"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.2,["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end

function a14()--xa无后坐力[开启]
gg.alert("只有二级可以")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("100D;56;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("午后开启成功")
gg.clearResults()
end
function a15()--xa无后坐力[关闭]
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("100D;56;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1", gg.TYPE_FLOAT)
gg.toast("午后开启成功")
gg.clearResults()
end
function a16()--透视
	gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.30000001192;128.00001525879", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
end
-------------------------------------------------------------------------------------------------------------
function B()
menu1 = gg.multiChoice({
"🎊明 透🎊",
"🎊3.2 倍 移 速🎊",
"🎊增 大 视 野 范 围🎊",
"🎊1.2 倍 全 局 加 速🎊",
"🎊火 箭 筒 无 后 坐 力(修复) [大厅开]🎊",
"🎊xa 无 后 坐 力(失效) [关闭]🎊",
"🎊透 视(修复)🎊",
"🎊追 捕 定 人🎊",
"️🎊返 回 主 页🎊",
}, nil, os.date("稳 定 功 能 [追]\n这些功能演一演就行了"))
if menu1 == nil then else
if menu1[1] == true then b1() end
if menu1[2] == true then b2() end
if menu1[3] == true then b3() end
if menu1[4] == true then b4() end
if menu1[5] == true then b5() end
if menu1[6] == true then b6() end
if menu1[7] == true then b7() end
if menu1[8] == true then b8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function b1()--明透
qmnb = {
{["memory"] = 32},
{["name"] = "明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function b2()--3.2倍移速
qmnb = {
{["memory"] = 32},
{["name"] = "3.2倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.2,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function b3()--增大视野范围
qmnb = {
{["memory"] = 32},
{["name"] = "增大视野范围"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = 15,["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
end

function b4()--1.2倍全局加速
qmnb = {
{["memory"] = 4},
{["name"] = "1.2倍全局加速"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.2,["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end

function b5()--xa无后坐力[开启]
gg.alert("只有二级可以")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("100D;56;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("午后开启成功")
gg.clearResults()
end

function b6()--xa无后坐力[关闭]
qmnb = {
{["memory"] = 16384},
{["name"] = "xa无后坐力[关闭]"},
{["value"] = 1073741824, ["type"] = 4},
{["lv"] = -382907280,["offset"] =20, ["type"] = 4},
{["lv"] = -494030832,["offset"] =24, ["type"] = 4},
}
qmxg = {
{["value"] = 981668463,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
end

function b7()--透视
	gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.30000001192;128.00001525879", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.30000001192", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
end

function b8()--追捕定人
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2.8;4.9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1003D;6D;1;13D;20D;1D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.toast("追捕定人开启成功")
gg.clearResults()
end
-------------------------------------------------------------------------------------------------------------
function C()
menu1 = gg.multiChoice({
"👑延 迟 [开启]👑",
"👑延 迟 [关闭]👑",
"👑锁 金 币 无 冷 却 [开启]👑",
"👑锁 金 币 无 冷 却 [关闭]👑",
"👑8v2 秒 赢👑",
"👑4v1 秒 赢👑",
"👑增 加 血 量👑",
"👑1 秒 开 箱 夹子👑",
"👑4v1 吸 人👑",
"👑8v2 吸 人👑",
"👑上 帝 视 角👑",
"👑锁 金 币(失效)",
"👑解 锁 全 皮 肤(失效)👑",
"👑火 箭 筒 无 间 隔👑",
"👑火 箭 筒 锁 定 弹 夹()👑",
"👑强 制 开 门(失效)👑",
"👑新 锁 金 币 无 冷 却👑",
"👑飞 爪 无 限 拉 长👑",
"👑追 捕 去 护 盾👑",
"👑火 箭 筒 秒 杀👑",
"👑追 捕 改 无 限 夹 子 第 一 步[大厅开]👑",
"👑追 捕 改 无 限 夹 子 第 二 步[大厅开]👑",
"👑倒 地  复 活[光速]👑",
"👑人 机 代 打(修复)👑",
"👑追 捕 无 限 传 送[冷却好了再开]👑",
"️👑返 回 主 页👑",
}, nil, os.date("变 态 功 能\n这些功能娱乐玩玩可以实战上分必封"))
if menu1 == nil then else
if menu1[1] == true then c1() end
if menu1[2] == true then c2() end
if menu1[3] == true then c3() end
if menu1[4] == true then c4() end
if menu1[5] == true then c5() end
if menu1[6] == true then c6() end
if menu1[7] == true then c7() end
if menu1[8] == true then c8() end
if menu1[9] == true then c9() end
if menu1[10] == true then c10() end
if menu1[11] == true then c11() end
if menu1[12] == true then c12() end
if menu1[13] == true then c13() end
if menu1[14] == true then c14() end
if menu1[15] == true then c15() end
if menu1[16] == true then c16() end
if menu1[17] == true then c17() end
if menu1[18] == true then c18() end
if menu1[19] == true then c19() end
if menu1[20] == true then c20() end
if menu1[21] == true then c21() end
if menu1[22] == true then c22() end
if menu1[23] == true then c23() end
if menu1[24] == true then c24() end
if menu1[25] == true then c25() end
if menu1[26] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function c1()--延迟[开启]
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1000", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("666", FLOAT)
gg.toast("延迟开启成功")
gg.clearResults()
end
end

function c2()--延迟[关闭]
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("666", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("1000", FLOAT)
gg.toast("延迟关闭成功")
gg.clearResults()
end
end

function c3()--锁金币无冷却[开启]
qmnb = {
{["memory"] = 32},
{["name"] = "锁金币无冷却[开启]"},
{["value"] = 89, ["type"] = 4},
{["lv"] = 100,["offset"] =4, ["type"] = 4},
{["lv"] = 102,["offset"] =36, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =36, ["type"] = 4},
}
xqmnb(qmnb)
end

function c4()--锁金币无冷却[关闭]
qmnb = {
{["memory"] = 32},
{["name"] = "锁金币无冷却[关闭]"},
{["value"] = 89, ["type"] = 4},
{["lv"] = 100,["offset"] =4, ["type"] = 4},
{["lv"] = 0,["offset"] =36, ["type"] = 4},
}
qmxg = {
{["value"] = 102,["offset"] =36, ["type"] = 4},
}
xqmnb(qmnb)
end

function c5()--8v2秒赢
gg.alert("温馨提示\n         可能闪退","确定")
gg.timeJump("13:01")
end
function c6()
gg.timeJump("12:00")
end


function c7()--增加血量
qmnb = {
{["memory"] = 32},
{["name"] = "增加血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = 1200,["offset"] =-20, ["type"] = 16},
{["value"] = 1200,["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
end

function c8()--1秒开补给箱夹子
qmnb = {
{["memory"] = 32},
{["name"] = "1秒开补给箱夹子"},
{["value"] = 0.20000000298, ["type"] = 16},
{["lv"] = 5.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 1,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function c9()--4v1吸人
qmnb = {
{["memory"] = 32},
{["name"] = "4v1吸人"},
{["value"] = 80, ["type"] = 4},
{["lv"] = 1.0,["offset"] =8, ["type"] = 16},
{["lv"] = 30,["offset"] =4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =8, ["type"] = 16},
}
xqmnb(qmnb)
end

function c10()--8v2吸人
qmnb = {
{["memory"] = 32},
{["name"] = "8v2吸人"},
{["value"] = 39, ["type"] = 4},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 88,["offset"] =-4, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =4, ["type"] = 16},
}
xqmnb(qmnb)
end

function c11()--上帝视角
qmnb = {
{["memory"] = 32},
{["name"] = "上帝视角"},
{["value"] = 40.0, ["type"] = 16},
{["lv"] = 12.0,["offset"] =0x1C, ["type"] = 16},
}
qmxg = {
{["value"] = 50,["offset"] =0x1C, ["type"] = 16},
}
xqmnb(qmnb)
end

function c12()--锁金币
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9c8398},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9c839c},})
end

function c13()--解锁道具皮肤
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x1279870},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x1279874},})
gg.toast("解锁道具皮肤开启成功")
end

function c14()--武器无间隔
gg.alert("大厅开")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.98;-0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.98", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end

function c15()
gg.alert("购买了火箭筒再开")
gg.setRanges(32)
Name = "火箭筒新锁子弹"
local dataType = 16
local tb1 = {{3.0, 0}, {1.0, -4}, {1.0, -8}, }
local tb2 = {{0,20, true}, {0,24, true}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("火箭筒新锁子弹开启成功️")
end

function c16()--强制开门
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x12a6010},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x12a6014},})
gg.toast("强制开门开启成功")
end

function c17()--新锁金币无冷却
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xB0E31C},})
gg.toast("新锁金币无冷却开启成功")
end

function c18()--飞爪无限拉长
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10;6.69999980927::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6.69999980927", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("100000000", gg.TYPE_FLOAT)
	 gg.toast("飞爪全屏长度开启成功")
	 gg.clearResults()
end

function c19()--追捕去护盾
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("107D;6;0;0;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.01", gg.TYPE_FLOAT)
	 gg.toast("追捕者去除护盾")
	 gg.clearResults()
end

function c20()--火箭筒秒杀
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("56;4D;3;0.8;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("56", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000", gg.TYPE_FLOAT)
	 gg.toast("火箭筒秒杀开启成功")
	 gg.clearResults()
end

function c21()--追捕无限夹子第一步[大厅开]
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("110", gg.TYPE_DWORD)
	 gg.toast("第一步开启成功")
	 gg.clearResults()
end

function c22()--追捕无限夹子第二步[大厅开]
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("180;150;120;60::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("180;150;120;60", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("无限夹子开启成功")
	 gg.clearResults()
end

function c23()--倒地复活[本人亲测有效]
search(200.0,16,32)
py1(100.0,16,-20)
py1(0.30000001192092896,16,-16)
xg1(100,16,-24,false)
end
function c24()--人机代打
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("100F;1::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("挂机模式开启成功可以放下手机了")
	 gg.clearResults()
end

function c25()--追捕无限传送[冷却好了开]
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.5;15;0;15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.5;15;0;15::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 0}})
	 end
	 gg.toast("别你妈说没有效果老子都说了却好了开")
	 gg.clearResults()
end
-------------------------------------------------------------------------------------------------------------
function D()
menu1 = gg.multiChoice({
"✨3 倍 开 锁✨",
"✨2 倍 开 锁✨",
"✨3.5 倍 移 速✨",
"✨3.2 倍 移 速✨",
"✨0 概 率 触 发 开 锁✨",
"✨锁 血✨",
"✨明 透✨",
"✨范 围 锁 门 人✨",
"✨1.2 倍 全 局 加 速✨",
"✨火 箭 筒 无 后 坐 力 (修复)[大厅开]✨",
"✨xa 无 后 坐 力 (失效)[关闭]✨",
"✨穿 墙(还有子弹穿墙)✨",
"✨迫 击 炮 全 屏 伤 害✨",
"✨火 箭 筒 超 远 射 程✨",
"✨人 物 踏 空✨",
"✨追 捕 无 限 护 盾 时 间✨",
"✨传 送 门 无 限 时 间(修复)✨",
"✨传 送 门 全 屏 长 度✨",
"✨迫 击 炮 秒 杀✨",
"✨逃 生 瞬 移[开启](开了逃生门再开否则后果自负)✨",
"✨逃 生 瞬 移[关闭]✨",
"✨能 量 剑 无 间 隔 (修复)✨",
"✨皮 卡 倒 车 改 跳 跃✨",
"️✨返 回 主 页✨",
}, nil, os.date("其 他 功 能\n随便取的名字"))
if menu1 == nil then else
if menu1[1] == true then d1() end
if menu1[2] == true then d2() end
if menu1[3] == true then d3() end
if menu1[4] == true then d4() end
if menu1[5] == true then d5() end
if menu1[6] == true then d6() end
if menu1[7] == true then d7() end
if menu1[8] == true then d8() end
if menu1[9] == true then d9() end
if menu1[10] == true then d10() end
if menu1[11] == true then d11() end
if menu1[12] == true then d12() end
if menu1[13] == true then d13() end
if menu1[14] == true then d14() end
if menu1[15] == true then d15() end
if menu1[16] == true then d16() end
if menu1[17] == true then d17() end
if menu1[18] == true then d18() end
if menu1[19] == true then d19() end
if menu1[20] == true then d20() end
if menu1[21] == true then d21() end
if menu1[22] == true then d22() end
if menu1[23] == true then d23() end
if menu1[24] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function d1()--3倍开锁
qmnb = {
{["memory"] = 32},
{["name"] = "3倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 3,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function d2()--2倍开锁
qmnb = {
{["memory"] = 32},
{["name"] = "2倍开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 2,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function d3()--3.5倍移速
qmnb = {
{["memory"] = 32},
{["name"] = "3.5倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.5,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function d4()--3.2倍移速
qmnb = {
{["memory"] = 32},
{["name"] = "3.2倍移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 3.2,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function d5()--0概率触发开锁
qmnb = {
{["memory"] = 32},
{["name"] = "0概率触发开锁"},
{["value"] = 59.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =20, ["type"] = 16},
}
qmxg = {
{["value"] = 99999,["offset"] =20, ["type"] = 16},
}
xqmnb(qmnb)
end

function d6()--锁血
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

function d7()--明透
qmnb = {
{["memory"] = 32},
{["name"] = "明透"},
{["value"] = 2.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =4, ["type"] = 16},
{["lv"] = 8.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 12.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function d8()--范围锁门人
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.29999995232", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("3", FLOAT)
gg.toast("范围锁门人开启成功")
gg.clearResults()
end
end

function d9()--1.2倍全局加速
qmnb = {
{["memory"] = 4},
{["name"] = "1.2倍全局加速"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 1.2,["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end

function d10()--xa无后坐力[开启]
gg.alert("只有二级可以")
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("100D;56;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("午后开启成功")
gg.clearResults()
end
function d11()--xa无后坐力[关闭]
qmnb = {
{["memory"] = 16384},
{["name"] = "xa无后坐力[关闭]"},
{["value"] = 1073741824, ["type"] = 4},
{["lv"] = -382907280,["offset"] =20, ["type"] = 4},
{["lv"] = -494030832,["offset"] =24, ["type"] = 4},
}
qmxg = {
{["value"] = 981668463,["offset"] =0, ["type"] = 4},
}
xqmnb(qmnb)
end

function d12()--穿墙
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("0.85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(5000)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.toast("丝滑穿墙开启成功")
gg.clearResults()
end

function d13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("追击炮全屏范围开启成功")
	 gg.clearResults()
end

function d14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("7;0.64999997616;0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.64999997616", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("火箭筒射程开启成功")
	 gg.clearResults()
end

function d15()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("6.16297729e-33;0.07999999821:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.07999999821", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("10", gg.TYPE_FLOAT)
	 gg.toast("人物踏空开启成功")
	 gg.clearResults()
end

function d16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("107D;6;0;0;0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("追捕者无限护盾时间")
	 gg.clearResults()
end

function d17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;3;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("无限时间开启成功")
	 gg.clearResults()
end

function d18()
     gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;3;1::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("传送门长度开启成功")
	 gg.clearResults()
end

function d19()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99;3D;0.8::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("99", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_FLOAT)
	 gg.toast("迫击炮秒杀开启成功")
	 gg.clearResults()
end

function d20()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,061,997,773", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1,061,997,773", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-99999", gg.TYPE_DWORD)
gg.toast("逃生瞬移]开启成功")
gg.clearResults()
end

function d21()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-99999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1,061,997,773", gg.TYPE_DWORD)
gg.toast("逃生瞬移关闭成功")
gg.clearResults()
end

function d22()
gg.alert("只有一级的道具，如果手建升了来找我，那个如果卡屏就到大厅开，开了以后升个武器级就行")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end
function d23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;119;-1;8;1;-1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
----------------------------------------------------------------------------------------------------
function E()
menu1 = gg.multiChoice({
"🍔4v1 激 活 逃 生 门 [逃]🍔",
"🍔秒 开 一 切[逃]🍔",
"🍔10 倍 移 速 [逃]🍔",
"🍔2 倍 全 局 加 速[逃]🍔",
"🍔锁 血 [逃]🍔",
"🍔手 雷 全 屏 秒 杀[追]🍔",
"🍔全 图 救 人🍔",
"🍔全 屏 锁 门 人[开启]🍔",
"🍔全 屏 锁 门 人[关闭]🍔",
"🍔️返 回 主 页🍔",
}, nil, os.date("过 青 铜 功 能\n速刷青铜局用的,别用来打青铜以上段位的匹配,不然秒封。到了白银要重启一下游戏不然秒开一切会让你封"))
if menu1 == nil then else
if menu1[1] == true then e1() end
if menu1[2] == true then e2() end
if menu1[3] == true then e3() end
if menu1[4] == true then e4() end
if menu1[5] == true then e5() end
if menu1[6] == true then e6() end
if menu1[7] == true then e7() end
if menu1[8] == true then e8() end
if menu1[9] == true then e9() end
if menu1[10] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function e1()--4v1激活逃生门[逃]
qmnb = {
{["memory"] = 32},
{["name"] = "4v1激活逃生门[逃]"},
{["value"] = 30.0, ["type"] = 16},
{["lv"] = 0.20000000298023224, ["offset"] = 4, ["type"] = 16},
}
qmxg = {
{["value"] = 0, ["offset"] = 0, ["type"] = 16},
}
xqmnb(qmnb)
end

function e2()--秒开一切[逃]
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("0.6875", FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",FLOAT , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("5", FLOAT)
gg.toast("秒开一切[逃]开启成功")
gg.clearResults()
end
end

function e3()--10倍移速[逃]
qmnb = {
{["memory"] = 32},
{["name"] = "10倍移速[逃]"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = 10,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function e4()--2倍全局加速[逃]
qmnb = {
{["memory"] = 4},
{["name"] = "2倍全局加速[逃]"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 2.0,["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end

function e5()--锁血[逃]
qmnb = {
{["memory"] = 32},
{["name"] = "锁血[逃]"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-4, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =-4, ["type"] = 16},
{["value"] = -1,["offset"] =4, ["type"] = 4},
}
xqmnb(qmnb)
end

function e6()--手雷全屏秒杀[追]
qmnb = {
{["memory"] = 32},
{["name"] = "手雷全屏秒杀[追]"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 2.0,["offset"] =-124, ["type"] = 16},
{["lv"] = 2.5,["offset"] =-120, ["type"] = 16},
}
qmxg = {
{["value"] = 9999,["offset"] =0, ["type"] = 16},
{["value"] = 9999,["offset"] =-124, ["type"] = 16},
}
xqmnb(qmnb)
end

function e7()--全屏救人
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.75;0.2;1.3;1.3;1D;100D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999999999", gg.TYPE_FLOAT)
	 gg.toast("全屏救人开启成功")
	 gg.clearResults()
end

function e8()--全屏锁门人[开启]
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.29999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.29999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("150.999995232", gg.TYPE_FLOAT)
gg.toast("全图锁门人开启成功")
gg.clearResults()
end

function e9()--全屏锁门人[关闭]
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("150.999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("150.999995232", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1.29999995232", gg.TYPE_FLOAT)
gg.toast("全图锁门人关闭成功")
gg.clearResults()
end
-------------------------------------------------------------------------------------------------------------
function F()
menu1 = gg.multiChoice({
"🌙so防🌙",
"🌙so防🌙",
"🌙so防🌙",
"🌙so防🌙",
"🌙so防🌙",
"🌙防举报🌙",
"️🌙返 回 主 页🌙",
}, nil, os.date("防 封 功 能\n大厅开启防封"))
if menu1 == nil then else
if menu1[1] == true then f1() end
if menu1[2] == true then f2() end
if menu1[3] == true then f3() end
if menu1[4] == true then f4() end
if menu1[5] == true then f5() end
if menu1[6] == true then f6() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function f1()
gg.setRanges(16384)
	 gg.searchNumber("704,643,107", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("704,643,107", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("成功")
	 gg.clearResults()
end

function f2()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("597,688,321", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("597,688,321", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("成功")
	 gg.clearResults()
end

function f3()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("436,207,636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("436,207,636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("成功")
	 gg.clearResults()
end

function f4()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("2,696,836", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2,696,836", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 jg=gg.getResults(100)
	 sl=gg.getResultCount()
	 if sl>100 then sl=100 end
	 for i = 1, sl do
	 	 dzy=jg[i].address
	 	 gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_DWORD,freeze = true,value = 0}})
	 end
	 gg.toast("成功")
	 gg.clearResults()
end

function f5()
	 gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("60,817,409", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60,817,409", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end
function f6()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber(":seconds", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(99999)
	 gg.editAll("防举报", gg.TYPE_BYTE)
	 gg.toast("防举报开启成功（太猛照样封）")
	 gg.clearResults()
	 end
--------------------------------------------------------------------------------------------
function G()
menu1 = gg.multiChoice({
"🌕防 闪 [登录界面开]🌕",
"🌕防闪[nb]🌕",
"🌕66防闪🌕",
"🌕宏哥防闪[修复]🌕",
"️🌕返 回 主 页🌕",
}, nil, os.date("防 闪 功 能\n登录界面开,永久防闪退"))
if menu1 == nil then else
if menu1[1] == true then g1() end
if menu1[2] == true then g2() end
if menu1[3] == true then g3() end
if menu1[4] == true then g4() end
if menu1[5] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function g1()--逃跑新防闪
qmnb = {
{["memory"] = 8},
{["name"] = "逃跑新防闪"},
{["value"] = 842084353, ["type"] = 4},
{["lv"] = 909456435,["offset"] =4, ["type"] = 4},
{["lv"] = 1094268983,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =8, ["type"] = 4},
}
xqmnb(qmnb)
end

function g2()
qmnb = {
{["memory"] = 8},
{["name"] = "超牛防闪开启成功"},
{["value"] = 909456435, ["type"] = 4},
{["lv"] = 1094268983, ["offset"] = 4, ["type"] = 4},
}
qmxg={
{["value"] = 0, ["offset"] = 4, ["type"] = 4},
}
xqmnb(qmnb)
end
function g3()
gg.clearResults()
gg.clearResults()
	 gg.setRanges(8)
	 gg.searchNumber("1,094,268,983", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1,094,268,983", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_DWORD)
	 gg.toast("防闪开启成功")
	 gg.clearResults()
	 end
function g4()	 
qmnb = {
{["memory"] = 8},
{["name"] = "宏哥防闪『修复』"},
{["value"] = 842084353, ["type"] = 4},
{["lv"] = 842084353, ["offset"] = 0, ["type"] = 4}
}
qmxg = {
{["value"] = 99999999, ["offset"] = 0, ["type"] = 4}
}
xqmnb(qmnb)
end
-------------------------------------------------------------------------------------------------------------
function H()
menu1 = gg.multiChoice({
"☀️火 箭 筒☀️",
"☀️弹 簧 拳 套☀️",
"☀️跳 跳 杆☀️",
"☀️手 榴 弹☀️",
"☀️治 疗 球☀️",
"☀️冲 锋 枪☀️",
"️☀️返 回 主 页☀️️",
}, nil, os.date("道 具 功 能\n"))
if menu1 == nil then else
if menu1[1] == true then hjt() end
if menu1[2] == true then thqt() end
if menu1[3] == true then ttg() end
if menu1[4] == true then sld() end
if menu1[5] == true then zlq() end
if menu1[6] == true then cfq() end
if menu1[7] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function hjt()
menu1 = gg.multiChoice({
"☀️火 箭 筒 新 无 间 隔☀️",
"☀️火 箭 筒 新 锁 子 弹☀️",
"☀️️返 回 主 页☀️️",
}, nil, os.date("火 箭 筒"))
if menu1 == nil then else
if menu1[1] == true then hjt1() end
if menu1[2] == true then hjt2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function hjt1()--火箭筒新无间隔
gg.setRanges(32)
Name = "火箭筒新无间隔"
local dataType = 16
local tb1 = {{3.0, 0}, {1.0, -4}, {1.0, -8}, }
local tb2 = {{0,-12, true}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("火箭筒新无间隔开启成功️")
end

function hjt2()--火箭筒新锁子弹
gg.setRanges(32)
Name = "火箭筒新锁子弹"
local dataType = 16
local tb1 = {{3.0, 0}, {1.0, -4}, {1.0, -8}, }
local tb2 = {{0,20, true}, {0,24, true}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("火箭筒新锁子弹开启成功️")
end
-------------------------------------------------------------------------------------------------------------
function thqt()
menu1 = gg.multiChoice({
"☀️弹 簧 拳 套 定 人☀️",
"☀️弹 簧 拳 套 无 冷 却☀️",
"☀️弹 簧 拳 套 增 大 击 退 距 离☀️",
"️☀️返 回 主 页☀️️",
}, nil, os.date("弹 簧 拳 套"))
if menu1 == nil then else
if menu1[1] == true then thqt1() end
if menu1[2] == true then thqt2() end
if menu1[3] == true then thqt3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function thqt1()--弹簧拳套定人
qmnb = {
{["memory"] = 32},
{["name"] = "弹簧拳套定人"},
{["value"] = 0.23000000417, ["type"] = 16},
{["lv"] = 4.5,["offset"] =-28, ["type"] = 16},
}
qmxg = {
{["value"] = 0,["offset"] =-28, ["type"] = 16},
}
xqmnb(qmnb)
end

function thqt2()--弹簧拳套无冷却
qmnb = {
{["memory"] = 32},
{["name"] = "弹簧拳套无冷却"},
{["value"] = 8.0, ["type"] = 16},
{["lv"] = 13,["offset"] =8, ["type"] = 4},
}
qmxg = {
{["value"] = 0,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function thqt3()--弹簧拳套增大击退距离
qmnb = {
{["memory"] = 32},
{["name"] = "弹簧拳套增大击退距离"},
{["value"] = 0.23000000417, ["type"] = 16},
{["lv"] = 4.5,["offset"] =-32, ["type"] = 16},
}
qmxg = {
{["value"] = 9999,["offset"] =-32, ["type"] = 16},
}
xqmnb(qmnb)
end
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
function ttg()
menu1 = gg.multiChoice({
"☀️跳 跳 杆 远 跳☀️",
"️☀️返 回 主 页️☀️",
}, nil, os.date("跳 跳 杆"))
if menu1 == nil then else
if menu1[1] == true then ttg1() end
if menu1[2] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function ttg1()--跳跳杆远跳
qmnb = {
{["memory"] = 32},
{["name"] = "跳跳杆远跳"},
{["value"] = 3.0, ["type"] = 16},
{["lv"] = 3.0,["offset"] =4, ["type"] = 16},
{["lv"] = 3.0,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = 100,["offset"] =8, ["type"] = 16},
}
xqmnb(qmnb)
end
-------------------------------------------------------------------------------------------------------------
function sld()
menu1 = gg.multiChoice({
"☀️手 榴 弹 微 范 围☀️",
"☀️增 大 手 榴 弹 伤 害☀️",
"️☀️返 回 主 页️☀️",
}, nil, os.date("手 榴 弹"))
if menu1 == nil then else
if menu1[1] == true then sld1() end
if menu1[2] == true then sld2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function sld1()--手榴弹微范围
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹微范围"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 2.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1000.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = 2.3,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function sld2()--增大手榴弹伤害
qmnb = {
{["memory"] = 32},
{["name"] = "增大手榴弹伤害"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 105,["offset"] =8, ["type"] = 4},
{["lv"] = 103,["offset"] =16, ["type"] = 4},
}
qmxg = {
{["value"] = 50,["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end
-------------------------------------------------------------------------------------------------------------
function cfq()
menu1 = gg.multiChoice({
"☀️冲 锋 枪 新 无 间 隔☀️",
"☀️冲 锋 枪 新 锁 子 弹☀️",
"️☀️返 回 主 页☀️️",
}, nil, os.date("冲 锋 枪"))
if menu1 == nil then else
if menu1[1] == true then cfq1() end
if menu1[2] == true then cfq2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function cfq1()--冲锋枪新无间隔
gg.setRanges(32)
Name = "冲锋枪新无间隔"
local dataType = 4
local tb1 = {{1075838976, 0}, {0, -12}, {1065353216, -40}, }
local tb2 = {{0,-12, true}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("冲锋枪新无间隔开启成功️")
end

function cfq2()--冲锋枪新锁子弹
gg.setRanges(32)
Name = "冲锋枪新锁子弹"
local dataType = 4
local tb1 = {{1075838976, 0}, {1065353216, -40}, {0, 20}, {0, 24}, }
local tb2 = {{0,20, true}, {0,24, true}, }
SearchWrite(tb1, tb2, dataType)
gg.toast("冲锋枪新锁子弹开启成功️")
end
-------------------------------------------------------------------------------------------------------------
function zlq()
menu1 = gg.multiChoice({

"️返 回 主 页️",
}, nil, os.date("治 疗 球"))
if menu1 == nil then else
if menu1[1] == true then zlq1() end
if menu1[2] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function I()
menu1 = gg.multiChoice({
"🌈充 气 垫 新 皮 肤🌈",
"🌈追 踪 雷 10 级 皮 肤🌈",
"🌈追 踪 雷 13 级 皮 肤🌈",
"🌈滑 板 新 皮 肤🌈",
"🌈蹦 蹦 枪 新 皮 肤 ①🌈",
"🌈蹦 蹦 枪 新 皮 肤 ②🌈",
"🌈蹦 蹦 枪 新 皮 肤 ③🌈",
"🌈引 力 场 新 皮 肤🌈",
"🌈传 送 门 新 皮 肤 🌈",
"🌈巡 逻 犬 新 皮 肤🌈",
"🌈蹦 蹦 枪 新 皮 肤 [风格] ①🌈",
"🌈蹦 蹦 枪 新 皮 肤 [风格] ②🌈",
"🌈蹦 蹦 枪 新 皮 肤 [风格] ③🌈",
"🌈引 力 场 新 皮 肤 [风格]🌈",
"🌈传 送 门 新 皮 肤 [风格]🌈",
"🌈巡 逻 犬 新 皮 肤 [风格]🌈",
"🌈初始针改13级皮肤🌈",
"🌈初始酒桶改超能水🌈",
"🌈初始迫击炮改虎纹鲨🌈",
"🌈皮卡初始皮肤改DMM-R超跑🌈",
"🌈皮卡初始皮肤改星猪骑士🌈",
"🌈跳高初始皮肤改完美空翻🌈",
"🌈医疗箱初始皮肤改圣光之箱🌈",
"🌈肾上腺素初始皮肤改冰淇淋🌈",
"🌈迫击炮初始皮肤改糖果大炮🌈",
"🌈火箭筒初始皮肤改鲤鱼王🌈",
"🌈飞爪初始皮肤改神龙金爪🌈",
"🌈巡逻犬初始皮肤改祭典柴犬[黑柴]🌈",
"🌈滑板初始皮肤改鲤鱼浪板[乌焰]🌈",
"🌈迫击炮初始皮肤改糖果大炮[蓝莓]🌈",
"🌈魔法墙初始皮肤改圣殿之门[冰晶]🌈",
"🌈滑板初始皮肤改麒麟传说[熔岩]🌈",
"🌈滑板初始皮肤改电竞派对[橙金]🌈",
"🌈飞爪改量子飞爪[彩金]🌈",
"🌈传送门改电音舞台[甜心]🌈",
"🌈毒液改闪耀的灯球[耀闪]🌈",
"🌈皮卡初始皮肤改皇家马车🌈",
"🌈自走球初始皮肤改风火轮🌈",
"🌈肾上腺素初始皮肤改香蕉萌萌🌈",
"🌈飞爪初始皮肤改猫爪冰棒🌈",
"🌈火箭筒初始皮肤改无限新能🌈",
"🌈自走球初始皮肤改星耀皮肤🌈",
"🌈皮卡初始皮肤改三周年皮肤🌈",
"🌈能量建初始皮肤改像素剑🌈",
"🌈能量剑初始皮肤改斩星🌈",
"🌈阻挡箱初始皮肤改聚能魔方🌈",
"🌈二级火箭筒初始皮肤改无限新能🌈",
"🌈三级火箭筒初始皮肤改无限新能🌈",
"🌈二级能量剑初始皮肤改斩星🌈",
"🌈三级能量剑初始皮肤改斩星🌈",
"🌈返 回 主 页🌈️",
}, nil, os.date("道 具 皮 肤 美 化\n在游戏中开可以实战,在外面开就不能实战如果你不想这么麻烦就去其他功能里面开启解锁全道具皮肤。"))
if menu1 == nil then else
if menu1[1] == true then i1() end
if menu1[2] == true then i2() end
if menu1[3] == true then i3() end
if menu1[4] == true then i4() end
if menu1[5] == true then i5() end
if menu1[6] == true then i6() end
if menu1[7] == true then i7() end
if menu1[8] == true then i8() end
if menu1[9] == true then i9() end
if menu1[10] == true then i10() end
if menu1[11] == true then i11() end
if menu1[12] == true then i12() end
if menu1[13] == true then i13() end
if menu1[14] == true then i14() end
if menu1[15] == true then i15() end
if menu1[16] == true then i16() end
if menu1[17] == true then i17() end
if menu1[18] == true then i18() end
if menu1[19] == true then i19() end
if menu1[20] == true then i20() end
if menu1[21] == true then i21() end
if menu1[22] == true then i22() end
if menu1[23] == true then i23() end
if menu1[24] == true then i24() end
if menu1[25] == true then i25() end
if menu1[26] == true then i26() end
if menu1[27] == true then i27() end
if menu1[28] == true then i27() end
if menu1[29] == true then i29() end
if menu1[30] == true then i30() end
if menu1[31] == true then i31() end
if menu1[32] == true then i32() end
if menu1[33] == true then i33() end
if menu1[34] == true then i34() end
if menu1[35] == true then i35() end
if menu1[36] == true then i36() end
if menu1[37] == true then i37() end
if menu1[38] == true then i38() end
if menu1[39] == true then i39() end
if menu1[40] == true then i40() end
if menu1[41] == true then i41() end
if menu1[42] == true then i42() end
if menu1[43] == true then i43() end
if menu1[44] == true then i44() end
if menu1[45] == true then i45() end
if menu1[46] == true then i46() end
if menu1[47] == true then i47() end
if menu1[48] == true then i48() end
if menu1[49] == true then i49() end
if menu1[50] == true then i50() end
if menu1[51] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function i1()--充气垫新皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501300", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601596", DWORD)
gg.toast("充气垫新皮肤美化成功")
gg.clearResults()
end
end

function i2()--追踪雷10级皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501500", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601601", DWORD)
gg.toast("追踪雷10级皮肤美化成功")
gg.clearResults()
end
end

function i3()--追踪雷13级皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501500", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601606", DWORD)
gg.toast("追踪雷13级皮肤美化成功")
gg.clearResults()
end
end

function i4()--滑板新皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500900", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601621", DWORD)
gg.toast("滑板新皮肤美化成功")
gg.clearResults()
end
end

function i5()--蹦蹦枪新皮肤①
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500050", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601626", DWORD)
gg.toast("蹦蹦枪新皮肤①美化成功")
gg.clearResults()
end
end

function i6()--蹦蹦枪新皮肤②
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500051", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601626", DWORD)
gg.toast("蹦蹦枪新皮肤②美化成功")
gg.clearResults()
end
end

function i7()--蹦蹦枪新皮肤③
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500052", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601626", DWORD)
gg.toast("蹦蹦枪新皮肤③美化成功")
gg.clearResults()
end
end

function i8()--引力场新皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501100", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601631", DWORD)
gg.toast("引力场新皮肤美化成功")
gg.clearResults()
end
end

function i9()--传送门新皮肤 
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500600", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601636", DWORD)
gg.toast("传送门新皮肤美化成功")
gg.clearResults()
end
end

function i10()--巡逻犬新皮肤
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500200", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("601641", DWORD)
gg.toast("巡逻犬新皮肤美化成功")
gg.clearResults()
end
end

function i11()--蹦蹦枪新皮肤[风格]①
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500050", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650616", DWORD)
gg.toast("蹦蹦枪新皮肤[风格]①美化成功")
gg.clearResults()
end
end

function i12()--蹦蹦枪新皮肤[风格]②
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500051", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650616", DWORD)
gg.toast("蹦蹦枪新皮肤[风格]②美化成功")
gg.clearResults()
end
end

function i13()--蹦蹦枪新皮肤[风格]③
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500052", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650616", DWORD)
gg.toast("蹦蹦枪新皮肤[风格]③美化成功")
gg.clearResults()
end
end

function i14()--引力场新皮肤[风格]
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501100", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650621", DWORD)
gg.toast("引力场新皮肤[风格]美化成功")
gg.clearResults()
end
end

function i15()--传送门新皮肤[风格]
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500600", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650626", DWORD)
gg.toast("传送门新皮肤[风格]美化成功")
gg.clearResults()
end
end

function i16()--巡逻犬新皮肤[风格]
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500200", DWORD, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("开启失败")
else
gg.searchNumber("",DWORD , false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)--设置修改前200个代码
gg.editAll("650631", DWORD)
gg.toast("巡逻犬新皮肤[风格]美化成功")
gg.clearResults()
end
end

function i17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600181", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function i18()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600371", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function i19()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600241", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function i20()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600231", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function i21()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600266", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function i22()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500006", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600116", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function i23()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600271", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end

function i24()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600651", gg.TYPE_DWORD)
gg.toast("肾上腺素冰淇淋皮肤开启成功")
gg.clearResults()
end

function i25()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4~99;500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600641", gg.TYPE_DWORD)
gg.toast("追击炮糖果大炮皮肤开启成功")
gg.clearResults()
end

function i26()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4~99;500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600441", gg.TYPE_DWORD)
gg.toast("火箭同鲤鱼王皮肤开启成功")
gg.clearResults()
end

function i27()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("600276", gg.TYPE_DWORD)
gg.toast("飞爪改神龙金爪开启成功")
gg.clearResults()
end

function i28()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("650151", gg.TYPE_DWORD)
gg.toast("巡逻犬祭典柴犬[风格]开启成功")
gg.clearResults()
end

function i29()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("650171", gg.TYPE_DWORD)
gg.toast(" 滑板鲤鱼浪板[乌焰]开启成功")
gg.clearResults()
end

function i30()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500020", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("650181", gg.TYPE_DWORD)
gg.toast("迫击炮糖果大炮[蓝莓]开启成功")
gg.clearResults()
end

function i31()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("501000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("501000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("650141", gg.TYPE_DWORD)
gg.toast("魔法墙圣殿之门[冰晶]开启成功")
gg.clearResults()
end

function i32()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("650131", gg.TYPE_DWORD)
gg.toast("滑板麒麟传说[熔岩]开启成功")
gg.clearResults()
end

function i33()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("650011", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function i34()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("650021", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function i35()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("650031", gg.TYPE_DWORD)
gg.toast("玄羽")
gg.clearResults()
end

function i36()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("650041", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function i37()
	 gg.clearResults()
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600466", gg.TYPE_DWORD)
	 gg.toast("去装逼吧！")
end

function i38()
	 gg.clearResults()
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600476", gg.TYPE_DWORD)
	 gg.toast("去装逼吧！")
end

function i39()
	 gg.clearResults()
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500300", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600421", gg.TYPE_DWORD)
	 gg.toast("去装逼吧！")
end

function i40()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600446", gg.TYPE_DWORD)
	 gg.toast("每吃一根冰棒，就有猫咪失去一只脚爪，没有买卖，就没有伤害！")
	 gg.clearResults()
end

function i41()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500010", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600816", gg.TYPE_DWORD)
	 gg.toast("修改已成功，赶紧试试吧！")
	 gg.clearResults()
end

function i42()
	 gg.clearResults()
	 gg.setRanges(262207)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500700", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600811", gg.TYPE_DWORD)
	 gg.toast("哈哈成功了！")
	 gg.clearResults()
end

function i43()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("601286", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function i44()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("601281", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function i45()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500040", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("601076", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function i46()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500008", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("601,366", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function i47()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500011", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600816", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function i48()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500012", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500012", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("600816", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function i49()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500041", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500041", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("601076", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end

function i50()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("500042", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("500042", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("601076", gg.TYPE_DWORD)
gg.toast("开启成功")
gg.clearResults()
end
-------------------------------------------------------------------------------------------------------------
function J()
menu1 = gg.multiChoice({
"🪐开 锁 [自调]🪐",
"🪐移 速 [自调]🪐",
"🪐高 跳 [自调]🪐",
"视 野 范 围 [自调]🪐",
"🪐全 局 加 速 [自调]🪐",
"🪐自 身 血 量 [自调]🪐",
"🪐部 分 武 器 连 发 [自调]🪐",
"🪐医 疗 箱 范 围[自调]🪐",
"🪐手 榴 弹 伤 害[自调]🪐",
"🪐手 榴 弹 范 围[自调]🪐",
"🪐️返 回 主 页️🪐",
}, nil, os.date("自 调 功 能\n要上分的话尽量调小一点"))
if menu1 == nil then else
if menu1[1] == true then j1() end
if menu1[2] == true then j2() end
if menu1[3] == true then j3() end
if menu1[4] == true then j4() end
if menu1[5] == true then j5() end
if menu1[6] == true then j6() end
if menu1[7] == true then j7() end
if menu1[8] == true then j8() end
if menu1[9] == true then j9() end
if menu1[10] == true then j10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function j1()--开锁[自调]
local fy=gg.prompt({"开锁[自调]"}, {[1] = 3}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "开锁"},
{["value"] = 1.5, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-4, ["type"] = 16},
{["lv"] = 2.0,["offset"] =4, ["type"] = 16},
{["lv"] = 2.5,["offset"] =8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-4, ["type"] = 16},
}
xqmnb(qmnb)
end

function j2()--移速[自调]
local fy=gg.prompt({"移速[自调]"}, {[1] = 3.5}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "移速"},
{["value"] = 2.79999995232, ["type"] = 16},
{["lv"] = 20.0,["offset"] =4, ["type"] = 16},
{["lv"] = 900.0,["offset"] =12, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function j3()--高跳[自调]
local fy=gg.prompt({"高跳[自调]"}, {[1] = 6.8}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
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
end

function j4()--视野范围[自调]
local fy=gg.prompt({"视野范围[自调]"}, {[1] = 15}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "视野范围"},
{["value"] = 12.0, ["type"] = 16},
{["lv"] = 10.0,["offset"] =-0x20, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function j5()--全局加速[自调]
local fy=gg.prompt({"全局加速[自调]"}, {[1] = 1.2}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 4},
{["name"] = "全局加速[✔]"},
{["value"] = 0.02500000037, ["type"] = 16},
{["lv"] = 1.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-8, ["type"] = 16},
}
xqmnb(qmnb)
end

function j6()--自身血量[自调]
local fy=gg.prompt({"自身血量[自调]"}, {[1] = 1200}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "自身血量"},
{["value"] = 200.0, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-20, ["type"] = 16},
{["lv"] = 100.0,["offset"] =-24, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =-20, ["type"] = 16},
{["value"] = fy[1],["offset"] =-24, ["type"] = 16},
}
xqmnb(qmnb)
end

function j7()--部分武器连发[自调]
local fy=gg.prompt({"部分武器连发[自调]"}, {[1] = 100}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "部分武器连发[✔]"},
{["value"] = 1.100000023841858, ["type"] = 16},
{["lv"] = 1, ["offset"] = -4, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1], ["offset"] = -4, ["type"] = 4},
}
xqmnb(qmnb)
end

function j8()--医疗箱范围[自调]
local fy=gg.prompt({"医疗箱范围[自调]"}, {[1] = 1.5}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
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

function j9()--手榴弹伤害[自调]
local fy=gg.prompt({"手榴弹伤害[自调]"}, {[1] = 50}, {[1] = "text"})
if fy==nil then os.exit(print("亲～你点击了取消哦")) end
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹伤害"},
{["value"] = 33.0, ["type"] = 16},
{["lv"] = 105,["offset"] =8, ["type"] = 4},
{["lv"] = 103,["offset"] =16, ["type"] = 4},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end

function j10()--手榴弹范围[自调]
local fy=gg.prompt({"手榴弹范围[自调]"}, {[1] = 2.3}, {[1] = "text"})
if fy==nil then os.exit(print("你点击了取消")) end
qmnb = {
{["memory"] = 32},
{["name"] = "手榴弹范围"},
{["value"] = 2.0, ["type"] = 16},
{["lv"] = 2.5,["offset"] =4, ["type"] = 16},
{["lv"] = 1000.0,["offset"] =-8, ["type"] = 16},
}
qmxg = {
{["value"] = fy[1],["offset"] =0, ["type"] = 16},
}
xqmnb(qmnb)
end
-------------------------------------------------------------------------------------------------------------
function K()
menu1 = gg.multiChoice({
"⚡复 制 辅 助 作 者 qq⚡",
"⚡复 制 部 分 源 码 者⚡",
"⚡️返 回 主 页⚡️",
}, nil, os.date("辅助作者qq:195522090"))
if menu1 == nil then else
if menu1[1] == true then k1() end
if menu1[2] == true then k2() end
if menu1[3] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function k1()
gg.copyText("辅助作者qq:195522090")
gg.alert("辅助作者qq已复制成功")
end

function k2()
gg.copyText("部分源码者qq:1363646009")
gg.alert("部分源码者qq已复制成功")
end
-------------------------------------------------------------------------------------------------------------
function L()
gg.alert("封 号 机 制\n一局开挂次数≥3个，系统检测异常直接封(单局开挂次数多很容易被封)\n一局被5人举报，系统检测一次\n单局有人观战举报，超过5次，系统自动检测数据变化核时后直接封\n队友观战举报，超过2次，系统检测后记录一次\n一分钟内通关，系统自动检测一次", "知道了，我会小心")
end
-------------------------------------------------------------------------------------------------------------
function M()
menu1 = gg.multiChoice({
"🌝逃生者天赋改魔术师天赋【大厅开】🌝",
"🌝逃生者天赋改小学妹天赋【大厅开】🌝",
"🌝逃生者天赋改追捕者天赋【大厅开】🌝",
"🌝逃生者天赋改机器人天赋【大厅开】🌝",
"🌝逃生者天赋改女特工天赋【大厅开】🌝",
"🌝追捕者天赋改机器人天赋【大厅开】🌝",
"🌝追捕者天赋改女特工天赋【大厅开】🌝",
"🌝追捕者天赋改逃生者天赋【大厅开】🌝",	
"🌝追捕者天赋改魔术师天赋【大厅开】🌝",
"🌝追捕者天赋改小学妹天赋【大厅开】🌝",
"🌝返 回 主 页🌝",
}, nil, os.date("改 天 赋 功 能\n仅限娱乐"))
if menu1 == nil then else
if menu1[1] == true then m1() end
if menu1[2] == true then m2() end
if menu1[3] == true then m3() end
if menu1[4] == true then m4() end
if menu1[5] == true then m5() end
if menu1[6] == true then m6() end
if menu1[7] == true then m6() end
if menu1[8] == true then m6() end
if menu1[9] == true then m6() end
if menu1[10] == true then m6() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function m1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("101;102;100::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("101;102;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("112;113;114", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function m2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("101;102;100::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("101;102;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("106;107;108", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function m3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("101;102;100::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("101;102;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("103;104;105", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function m4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("101;102;100::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("101;102;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("116;115;117", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function m5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("101;102;100::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("101;102;100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("109;110;111", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function m6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("116;115;117", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function m7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("109;110;111", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function m8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("101;102;100", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function m9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("112;113;114", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function m10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;103;104;105::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103;104;105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("106;107;108", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
-------------------------------------------------------------------------------------------------------------
function N()
menu1 = gg.multiChoice({
"🌚1 级 改 9 9 9 9级🌚",
"🌚2 级 改 9 9 9 9级🌚",
"🌚3 级 改 9 9 9 9级🌚",
"🌚4 级 改 9 9 9 9级🌚",
"🌚5 级 改 9 9 9 9级🌚",
"🌚6 级 改 9 9 9 9级🌚",
"🌚7 级 改 9 9 9 9级🌚",
"🌚8 级 改 9 9 9 9级🌚",
"🌚9 级 改 9 9 9 9级🌚",
"🌚10 级 改 9 9 9 9级🌚",
"🌚11 级 改 9 9 9 9级🌚",
"🌚12 级 改 9 9 9 9级🌚",
"🌚13 级 改 9 9 9 9级🌚",
"🌚返 回 主 页🌚",
}, nil, os.date("道 具 等 级\n这个只能玩自建或者训练营"))
if menu1 == nil then else
if menu1[1] == true then n1() end
if menu1[2] == true then n2() end
if menu1[3] == true then n3() end
if menu1[4] == true then n4() end
if menu1[5] == true then n5() end
if menu1[6] == true then n6() end
if menu1[7] == true then n7() end
if menu1[8] == true then n8() end
if menu1[9] == true then n9() end
if menu1[10] == true then n10() end
if menu1[11] == true then n11() end
if menu1[12] == true then n12() end
if menu1[13] == true then n13() end
if menu1[14] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function n1()--1级改9999级
gg.alert("所有道具必须是初始皮肤")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1;500010;500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function n2()--2级改9999级
gg.alert("所有道具必须是初始皮肤")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;500010;500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function n3()--3级改9999级
gg.alert("所有道具必须是初始皮肤")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;500010;500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function n4()--4级改9999级
gg.alert("所有道具必须是初始皮肤")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4;500010;500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function n5()--5级改9999级
gg.alert("所有道具必须是初始皮肤")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;500010;500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function n6()--6级改9999级
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6;500010;500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function n7()--7级改9999级
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("7;500010;500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("7", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function n8()--8级改9999级
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("8;500010;500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("8", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function n9()--9级改9999级
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("9;500010;500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function n10()--10级改9999级
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("10;500010;500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function n11()--11级改9999级
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("11;500010;500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("11", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function n12()--12级改9999级
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("12;500010;500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("12", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function n13()--13级改9999级
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("13;500010;500005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("9999", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end
-------------------------------------------------------------------------------------------------------------
function O()
menu1 = gg.multiChoice({
"🏜️手 雷 改 泉 水 第 一 步【游戏开】🏜️",
"🏜️手 雷 改 泉 水第 二 步【游戏开】🏜️",
"🏜️手 雷 改 泉 水 第 三 步【游戏开】🏜️",
"🏜️医 疗 箱 改 肾 上 腺 素🏜️",
"🏜️手 雷 改 飞 爪🏜️",
"🏜️医 疗 箱 改 生 命 护 盾🏜️",
"🏜️医 疗 箱 改 巡 逻 犬🏜️",
"🏜️医 疗 箱 改 酒 桶🏜️",
"🏜️医 疗 箱 改 飞 爪🏜️",
"🏜️医 疗 箱 改 传 送 门🏜️",
"🏜️医 疗 箱 改 自 走 球🏜️",
"🏜️医 疗 箱 改 毒 液🏜️",
"🏜️医 疗 箱 改 滑 板🏜️",
"🏜️医 疗 箱 改 魔 法 墙🏜️",
"🏜️医 疗 箱 改 治 疗 球🏜️",
"🏜️返 回 主 页🏜️",
}, nil, os.date("更 改 道 具\n玩玩就行了，别太飘"))
if menu1 == nil then else
if menu1[1] == true then o1() end
if menu1[2] == true then o2() end
if menu1[3] == true then o3() end
if menu1[4] == true then o4() end
if menu1[5] == true then o5() end
if menu1[6] == true then o6() end
if menu1[7] == true then o7() end
if menu1[8] == true then o8() end
if menu1[9] == true then o9() end
if menu1[10] == true then o10() end
if menu1[11] == true then o11() end
if menu1[12] == true then o12() end
if menu1[13] == true then o13() end
if menu1[14] == true then o14() end
if menu1[15] == true then o15() end
if menu1[16] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function o1()--手雷改泉水第一步【游戏开】
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004;103;400;1002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("103", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("110", gg.TYPE_DWORD)
	 gg.toast("第一步开启成功")
	 gg.clearResults()
end

function o2()--手雷改泉水第二步【游戏开】
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004;110;401;1002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500300", gg.TYPE_DWORD)
	 gg.toast("第二步开启成功")
	 gg.clearResults()
end

function o3()--手雷改泉水第三步【游戏开】
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500300;110;400;1002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1011", gg.TYPE_DWORD)
	 gg.toast("手雷改泉水开启成功")
	 gg.clearResults()
end

function o4()--医疗箱改肾上腺素
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005;-50;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("701", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function o5()--手雷改飞爪
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("500004", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500500", gg.TYPE_DWORD)
	 gg.toast("飞爪开启成功")
	 gg.clearResults()
end

function o6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005;-50;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("500", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function o7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005;-50;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("700", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function o8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005;-50;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("800", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function o9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005;-50;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("801", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function o10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005;-50;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("900", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function o11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005;-50;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("901", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function o12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005;-50;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function o13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005;-50;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1001", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function o14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005;-50;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1002", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function o15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("500005;-50;401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("401", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1004", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
-------------------------------------------------------------------------------------------------------------
function P()
menu1 = gg.multiChoice({
"🗼艾 可 技 能 秒 杀[大厅开]🗼",
"🗼艾 可 技 能 全 图区大厅开]🗼",
"🗼艾 可 无 限 技 能[大厅开]🗼",
"🗼魔 术 师 变 羊100%[大厅开]🗼",
"🗼小 梦 魇 无 限 无 敌 时 间[大厅开]🗼",
"🗼小 梦 魇 泡 泡 伤 害 秒 杀[大厅开]🗼",
"🗼魔 术 师 替 身 木 偶9999秒[大厅开]🗼",
"🗼女 特 工 无 限 隐 身[大厅开]🗼",
"🗼小 学 妹 兔 子 变 身 免 费[大厅开]🗼",
"🗼失忆者购买2道具必出免费[大厅开]🗼",
"🗼黎 明 吨 位 盾 墙 无 冷 却[大厅开]🗼",
"🗼水 之 刃 者 无 限 技 能[大厅开]🗼",
"🗼水 之 忍 者 技 能 无 限 时 间[大厅开]🗼",
"🗼命 石 者 无 限 技 能[大厅开]🗼",
"🗼小 骇 客 无 限 技 能[大厅开]🗼",
"🗼水 之 忍 者 护 身 标 无 限 护 盾[大厅开]🗼",
"🗼小 梦 魇 泡 泡 免 费[大厅开]🗼",
"🗼发 明 家 火 力 压 制 无 冷 却[大厅开]🗼",
"🗼小 狐 狸 链 子 无 冷 却[大厅开]🗼",
"🗼星 辰 圣 女 时 光 快 进 999[大厅开]🗼",
"🗼星 辰 圣 女 主 动 技 能 免 费[大厅开]🗼",
"🗼水 之 忍 者 技 能 免 费[游戏开]🗼",
"🗼返 回 主 页🗼",
}, nil, os.date("角 色 天 赋\n随便你怎么玩反正封了不关我的事"))
if menu1 == nil then else
if menu1[1] == true then p1() end
if menu1[2] == true then p2() end
if menu1[3] == true then p3() end
if menu1[4] == true then p4() end
if menu1[5] == true then p5() end
if menu1[6] == true then p6() end
if menu1[7] == true then p7() end
if menu1[8] == true then p8() end
if menu1[9] == true then p9() end
if menu1[10] == true then p10() end
if menu1[11] == true then p11() end
if menu1[12] == true then p12() end
if menu1[13] == true then p13() end
if menu1[14] == true then p14() end
if menu1[15] == true then p15() end
if menu1[16] == true then p16() end
if menu1[17] == true then p17() end
if menu1[18] == true then p18() end
if menu1[19] == true then p19() end
if menu1[20] == true then p20() end
if menu1[21] == true then p21() end
if menu1[22] == true then p22() end
if menu1[23] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function p1()--艾可技能秒杀
gg.setRanges(32)
gg.searchNumber("2.5;50", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("50", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("999999", 16)
gg.toast("技能秒杀开启成功")
end

function p2()--艾可技能全屏
gg.setRanges(32)
gg.searchNumber("2.5;50", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2.5", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("10000", 16)
gg.toast("技能全屏开启成功技能指示范围不会显示但你看地图可以打到追捕")
end
function p3()--艾可无限技能[大厅开]
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;50;40;20::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60;50;40;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("天降之吻开启成功")
	 gg.clearResults()
end

function p4()--魔术师变羊100%[大厅开](天赋两级以上)
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.1;0.15;0.2::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.1;0.15;0.2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_FLOAT)
	 gg.toast("变羊术开启成功")
	 gg.clearResults()
end

function p5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;4;5;7::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3;4;5;7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function p6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;10;15;20::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5;10;15;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function p7()--魔术师替身木偶9999秒[大厅开]
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("55;65;75;100::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("55;65;75;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("替身木偶9999秒开启成功")
	 gg.clearResults()
end

function p8()--女特工无限隐身[大厅开]
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("18;16;14;10::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("18;16;14;10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("无限隐身开启成功")
	 gg.clearResults()
end

function p9()--小学妹兔子变身免费[大厅开]
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("80;60;40;1::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("80;60;40;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("免费开启成功")
	 gg.clearResults()
end

function p10()--失忆者购买2道具必出免费[大厅开](天赋两级以上)
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.05;0.075;0.125::9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.05;0.075;0.125", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1000", gg.TYPE_FLOAT)
	 gg.toast("购物达人开启成功")
	 gg.clearResults()
end

function p12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;52;44;36::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60;52;44;36;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function p11()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("28;26;24;20::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("28;26;24;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function p13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("3;3.5;4;5::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("3;3.5;4;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function p14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("20;18;16;14::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("20;18;16;14;", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function p15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;55;50;45::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60;55;50;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function p16()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("33;38;43;48::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("33;38;43;48", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end 

function p17()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("150;135;120;100::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("150;135;120;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function p18()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("60;50;45;40::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("60;50;45;40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function p19()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("35;30;25;20::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("35;30;25;20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function p20()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2;3;4;5::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2;3;4;5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("99999", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function p21()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("130;120;110;100::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("130;120;110;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function p22()
gg.setRanges(32)
local ad1={ 
{["类型"] =  4 ,["主特征码"] =  60 } , 
{["类型"]=  4  ,["偏移"]=  -0x4  ,["副特征码"]=  1056964608},
}
 local ad2={ 
 {["类型"] =  4 ,["偏移"] =  0 , ["冻结"] =  false  , ["修改"] =  0  } , 
} LongTao (ad1,ad2)
gg.clearResults()
end
-------------------------------------------------------------------------------------------------------------  
function Q()
menu1 = gg.multiChoice({
"九游解封设备[修复]",
"4399解封(桌面开)",
"应用宝解封(桌面开)",
"其他版本解封(游戏运行的时候开)",
"返 回 主 页",
}, nil, os.date("解 封 账 号\n能不能用我不知道，反正是我一个朋友说能用的"))
if menu1 == nil then else
if menu1[1] == true then q1() end
if menu1[2] == true then q2() end
if menu1[3] == true then q3() end
if menu1[4] == true then q4() end
if menu1[5] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function q2()--解封账号
WJ="/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.m4399/files/VirtualUniqueDeviceID.txt"
ID = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID == nil then gg.toast("您选择了取消") else
if ID[1] == "" then gg.alert("不能输入为空") end
io.open(WJ,"w"):write(ID[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end
function q1()
WJ1="/storage/emulated/0/Android/data/com.bairimeng.dmmdzz.uc/files/VirtualUniqueDeviceID.txt"
ID1 = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID1 == nil then gg.alert("您选择了取消") else
if ID1[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ1,"w"):write(ID1[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end

function q3()
WJ2="/storage/emulated/0/Android/data/com.tencent.tmgp.bairimeng.dmmdzz/files/VirtualUniqueDeviceID.txt"
ID2 = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID2 == nil then gg.alert("您选择了取消") else
if ID2[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ2,"w"):write(ID2[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end

function q4()
BW = gg.getTargetPackage()
BM = gg.prompt({[1]="请输入应用包名"},{[1]=BW},{[1]="text"})
if BM == nil then gg.toast("您选择了取消") else
WJ9 = "/storage/emulated/0/Android/data/"..BM[1].."/files/VirtualUniqueDeviceID.txt"
lqc = io.open(WJ9,"r")
if lqc == nil then
gg.alert("解封失败\n目标文件不存在")
else
ID3 = gg.prompt({[1]="请随机输入一串数字"},{[1]=""},{[1]="text"})
if ID3 == nil then gg.toast("您选择了取消") os.exit() end
if ID3[1] == "" then gg.alert("不能输入为空") os.exit() end
io.open(WJ9,"w"):write(ID3[1]):close()
gg.alert("解封成功\n请登录游客账号或其他账号")
end
end
end

-------------------------------------------------------------------------------------------------------------
function S()
menu1 = gg.multiChoice({
"🤩超级上帝视角[开启]🤩",
"🤩超级上帝视角[关闭]🤩",
"🤩能 量 间 无 间 隔🤩",
"🤩返 回 主 页🤩"
}, nil, os.date("大乱斗功能\n后面持续更新"))
if menu1 == nil then else
if menu1[1] == true then s1() end
if menu1[2] == true then s2() end
if menu1[3] == true then s3() end
if menu1[4] == true then HOME() end
end
GLWW=-1
end
------------------------------------------------------------------------------------------------------------
function s2()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;100;1;1D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("12", gg.TYPE_FLOAT)
gg.toast("超级上帝视角关闭成功")
gg.clearResults()
end

function s1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;12;1;1D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("12", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100", gg.TYPE_FLOAT)
gg.toast("超级上帝视角开启成功")
gg.clearResults()
end

function s3()
gg.alert("有能量剑的时后开然后再换一个武器再换回来就行")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end
--------------------------------------------------------------------------------------********
function T()
menu1 = gg.multiChoice({
"🎈针 无 限 时 间🎈",
"🎈皮 卡 无 限 时 间[一个一开]🎈",
"🎈跳 高 无 限 时 间🎈",
"🎈隐 身[没有用]🎈",
"🎈炸 锁 立 马 加 满 血🎈",
"🎈全 图 瞬 间 回 满 血🎈",
"🎈肾 上 腺 素 杀 队 友🎈",
"🎈肾上腺素杀队友恢复🎈",
"🎈医疗箱无冷却🎈",
"🎈肾上腺素无冷却🎈",
"🎈迫机炮无间隔🎈",
"🎈道具卡无冷却(失效)🎈",
"🎈道具卡免费(失效)🎈",
"🎈解锁全角色(失效)🎈",
"🎈杀队友🎈",
"🎈道具卡全屏自动瞄准🎈",
"🎈道具卡全屏释放范围🎈",
"🎈火箭筒999子弹🎈",
"🎈返 回 主 页🎈",
}, nil, os.date("变 态 功 能3\n比较稳不易封号"))
if menu1 == nil then else
if menu1[1] == true then t1() end
if menu1[2] == true then t2() end
if menu1[3] == true then t3() end
if menu1[4] == true then t4() end
if menu1[5] == true then t5() end
if menu1[6] == true then t6() end
if menu1[7] == true then t7() end
if menu1[8] == true then t8() end
if menu1[9] == true then t9() end
if menu1[10] == true then t10() end
if menu1[11] == true then t11() end
if menu1[12] == true then t12() end
if menu1[13] == true then t13() end
if menu1[14] == true then t14() end
if menu1[15] == true then t15() end
if menu1[16] == true then t16() end
if menu1[17] == true then t17() end
if menu1[18] == true then t18() end
if menu1[19] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function t1()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("5;0.4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("无限时间开启成功")
	 gg.clearResults()
end

function t2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1011D;16F;101D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("皮卡无限时间开启成功")
	 gg.clearResults()
end

function t3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1017D;4.3;13D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999999", gg.TYPE_FLOAT)
	 gg.toast("跳高无限时间开启成功")
	 gg.clearResults()
end

function t4()
gg.clearResults()
	 gg.setRanges(16384)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1", gg.TYPE_FLOAT)
	 gg.toast("隐身开启成功")
	 gg.clearResults()
end

function t5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.3;3;10;1D;1.4012985e-45;2D;2.8025969e-45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("-1000", gg.TYPE_FLOAT)
	 gg.toast("炸机瞬间加血开启成功")
	 gg.clearResults()
end

function t6()
   gg.clearResults()
   gg.setRanges(32)
   gg.searchNumber("2;1.5;10::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.searchNumber("2;10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
   gg.getResults(100)
   gg.editAll("20000", gg.TYPE_FLOAT)
   gg.toast("全图回血开启成功")
   gg.clearResults()
end

function t7()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("108D;100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("100", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-9999999", gg.TYPE_FLOAT)
gg.toast("肾上腺素秒杀开启成功")
gg.clearResults()
end

function t8()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("108D;-9999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-9999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
end

function t9()
gg.alert("必须一级")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3F;1007D;500005D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("医疗箱无冷却开启成功")
gg.clearResults()
end

function t10()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;5;50;10;0.5::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("15", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("开启成功")
end

function t11()
gg.alert("道具等级一级才行，如果手贱把道具等级升了来找我，无间隔武器上升一级开一次")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.10;-0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end

function t12()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0xec9aa0},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0xec9aa4},})
end

function t13()
nc_offset(getso("libil2cpp.so"),{{-476053504,4,0x9d0674},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x9d0678},})
end

function t14()
nc_offset(getso("libil2cpp.so"),{{-476053503,4,0x11e48b8},})
nc_offset(getso("libil2cpp.so"),{{-516948194,4,0x11e48bc},})
end
function t15()
gg.alert("这个有bug群文件用那个载入有教程")
end

function t16()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("6;6:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("6;6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("50", gg.TYPE_FLOAT)
gg.toast("道具全屏自动瞄准开启成功")
gg.clearResults()
end
function t17()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("6;6:5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("6;6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("50", gg.TYPE_FLOAT)
gg.toast("道具全屏释放范围开启成功")
gg.clearResults()
end

function t18()
gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4D;3F;0.8F::30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_DWORD)
	 gg.toast("火箭筒无限子弹开启成功")
	 gg.clearResults()
end
------------------------------------------------------------------------------------------------------------
function W()
menu1 = gg.multiChoice({
"🌊失忆者🌊",
"🌊小学妹🌊",
"🌊魔术师🌊",
"🌊追捕者🌊",
"🌊返回主页🌊",
}, nil, os.date("必须使用新手套装\n比较稳不易封号"))
if menu1[1] == true then x() end
if menu1[2] == true then ty() end
if menu1[3] == true then ad() end
if menu1[4] == true then wc() end
if menu1[5] == true then HOME() end
end
GLWW=-1
------------------------------------------------------------------------------------------------------------
function x()
menu1 = gg.multiChoice({
"🌊夜行套装🌊",
"🌊幻影套装🌊",
"🌊绝版史诗夜行套装🌊",
"🌊绝版传说夜行套装🌊",
"🌊疾风套装🌊",
"🌊传说拳击大师套装🌊",
"🌊假面套装🌊",
"🌊传说未来套装🌊",
"🌊绝版新年套装🌊",
"🌊绝版菠萝套装🌊",
"🌊绝版夏日派对套装🌊",
"🌊绝版兔先生套路🌊",
"🌊篮球少年套装🌊",
"🌊DMM校园套装🌊",
"🌊蓝皮鼠头套🌊",
"🌊白马王子🌊",
"🌊冰王子🌊",
"星期愿失忆者新皮肤(孤影大哥给的)",
"🌊返回上页🌊",
}, nil, os.date("必须使用新手套装\n真不错"))
if menu1 == nil then else
if menu1[1] == true then x1() end
if menu1[2] == true then x2() end
if menu1[3] == true then x3() end
if menu1[4] == true then x4() end
if menu1[5] == true then x5() end
if menu1[6] == true then x6() end
if menu1[7] == true then x7() end
if menu1[8] == true then x8() end
if menu1[9] == true then x9() end
if menu1[10] == true then x10() end
if menu1[11] == true then x11() end
if menu1[12] == true then x12() end
if menu1[13] == true then x13() end
if menu1[14] == true then x14() end
if menu1[15] == true then x15() end
if menu1[16] == true then x16() end
if menu1[17] == true then x17() end
if menu1[18] == true then x18() end
if menu1[19] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function x1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2011;2012;2013;2014;2015", gg.TYPE_DWORD)
	 gg.toast("夜行套装开启成功")
	 gg.clearResults()
end

function x2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2021;2022;2023;2024;2025", gg.TYPE_DWORD)
	 gg.toast("幻影套装开启成功")
	 gg.clearResults()
end

function x3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2031;2032;2033;2034;2035", gg.TYPE_DWORD)
	 gg.toast("绝版史诗夜行套装开启成功")
	 gg.clearResults()
end

function x4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2041;2042;2043;2044;2045", gg.TYPE_DWORD)
	 gg.toast("绝版传说夜行套装开启成功")
	 gg.clearResults()
end

function x5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2051;2052;2053;2054;2055", gg.TYPE_DWORD)
	 gg.toast("疾风套装开启成功")
	 gg.clearResults()
end

function x6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2061;2062;2063;2064;2065", gg.TYPE_DWORD)
	 gg.toast("传说拳击大师套装开启成功")
	 gg.clearResults()
end

function x7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2071;2072;2073;2074;2075", gg.TYPE_DWORD)
	 gg.toast("假面套装开启成功")
	 gg.clearResults()
end

function x8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2076;2077;2078;2079;2080", gg.TYPE_DWORD)
	 gg.toast("传说未来套装开启成功")
	 gg.clearResults()
end

function x9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2081;2082;2083;2084;2085", gg.TYPE_DWORD)
	 gg.toast("绝版新年套装开启成功")
	 gg.clearResults()
end

function x10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2091;2092;2093;2094;2095", gg.TYPE_DWORD)
	 gg.toast("绝版菠萝套装开启成功")
	 gg.clearResults()
end

function x11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2096;2097;2098;2099;2100", gg.TYPE_DWORD)
	 gg.toast("夏日派对皮肤开启成功")
	 gg.clearResults()
end

function x12()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2101;2102;2103;2104;2105", gg.TYPE_DWORD)
	 gg.toast("绝版兔先生皮肤开启成功")
	 gg.clearResults()
end

function x13()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2106;2107;2108;2109;2110", gg.TYPE_DWORD)
	 gg.toast("鸡你太美哟！")
	 gg.clearResults()
end

function x14()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2086;2087;2088;2089;2090", gg.TYPE_DWORD)
	 gg.toast("跟小学妹同款哟！")
	 gg.clearResults()
end

function x15()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2016", gg.TYPE_DWORD)
	 gg.toast("让你皮,啊！")
	 gg.clearResults()
end

function x16()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2121;2122;2123;2124;2125", gg.TYPE_DWORD)
	 gg.toast("成功")
	 gg.clearResults()
end

function x17()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005:17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2111;2112;2113;2114;2115", gg.TYPE_FLOAT)
	 gg.toast("我是冰王子,你们都要听我的,我是冰雪世界的王者")
	 gg.clearResults()
end
function x18()
     gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("2001;2002;2003;2004;2005::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2001;2002;2003;2004;2005::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("2206;2207;2208;2209;2210", gg.TYPE_DWORD)
	 gg.toast("开启成功")
	 gg.clearResults()
end
-------------------------------------------------------------------------------------------------------------
function ty()
menu1 = gg.multiChoice({
"🌊夏日清凉套装🌊",
"🌊传说炫彩幻音套装🌊",
"🌊DMM学院套装🌊",
"🌊绝版爱丽丝套装🌊",
"🌊绝版魔法茶会套装🌊",
"🌊仓鼠头盔🌊",
"🌊绝版泡沫之夏套装🌊",
"🌊绝版金狮绣绫套装🌊",
"🌊毛绒兔兔套装🌊",
"🌊传说超能喵喵套装🌊",
"🌊返回上页🌊",
}, nil, os.date("必须使用新手套装\n真不错"))
if menu1 == nil then else
if menu1[1] == true then ty1() end
if menu1[2] == true then ty2() end
if menu1[3] == true then ty3() end
if menu1[4] == true then ty4() end
if menu1[5] == true then ty5() end
if menu1[6] == true then ty6() end
if menu1[7] == true then ty7() end
if menu1[8] == true then ty8() end
if menu1[9] == true then ty9() end
if menu1[10] == true then ty10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function ty1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4011;4012;4013;4014;4015", gg.TYPE_DWORD)
	 gg.toast("夏日清凉皮肤开启成功")
	 gg.clearResults()
end

function ty2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4021;4022;4023;4024;4025", gg.TYPE_DWORD)
	 gg.toast("炫彩幻音皮肤开启成功")
	 gg.clearResults()
end

function ty3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4031;4032;4033;4034;4035", gg.TYPE_DWORD)
	 gg.toast("学院皮肤开启成功")
	 gg.clearResults()
end

function ty4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4041;4042;4043;4044;4045", gg.TYPE_DWORD)
	 gg.toast("爱丽丝皮肤开启成功")
	 gg.clearResults()
end

function ty5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4051;4052;4053;4054;4055", gg.TYPE_DWORD)
	 gg.toast("来喝杯茶嘛")
	 gg.clearResults()
end

function ty6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4046", gg.TYPE_DWORD)
	 gg.toast("仓鼠头盔开启成功")
	 gg.clearResults()
end

function ty7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4036;4037;4038;4039;4040", gg.TYPE_DWORD)
	 gg.toast("泡沫之夏皮肤开启成功")
	 gg.clearResults()
end

function ty8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4026;4027;4028;4029;4030", gg.TYPE_DWORD)
	 gg.toast("金狮绣绫皮肤开启成功")
	 gg.clearResults()
end

function ty9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4006;4007;4008;4009;4010", gg.TYPE_DWORD)
	 gg.toast("毛绒兔兔皮肤开启成功")
	 gg.clearResults()
end

function ty10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("4001;4002;4003;4004;4005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("4016;4017;4018;4019;4020", gg.TYPE_DWORD)
	 gg.toast("传说超能喵喵皮肤开启成功")
	 gg.clearResults()
end
-------------------------------------------------------------------------------------------------------------
function ad()
menu1 = gg.multiChoice({
"🌊西域套装🌊",
"🌊工匠套装🌊",
"🌊恶魔小丑套装🌊",
"🌊软萌绵羊套装🌊",
"🌊绝版金猪送福套装🌊",
"🌊传说时空法师套装🌊",
"🌊传说吸血鬼伯爵套装🌊",
"🌊蓝皮鼠头套🌊",
"🌊返回上页🌊",
}, nil, os.date("必须使用新手套装\n真不错"))
if menu1 == nil then else
if menu1[1] == true then ad1() end
if menu1[2] == true then af2() end
if menu1[3] == true then ad3() end
if menu1[4] == true then ad4() end
if menu1[5] == true then ad5() end
if menu1[6] == true then ad6() end
if menu1[7] == true then ad7() end
if menu1[8] == true then ad8() end
if menu1[9] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function ad1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6011;6012;6013;6014;6015", gg.TYPE_DWORD)
	 gg.toast("西域皮肤开启成功")
	 gg.clearResults()
end

function ad2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6006;6007;6008;6009;6010", gg.TYPE_DWORD)
	 gg.toast("快点去给我干活，奖金0块")
	 gg.clearResults()
end

function ad3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6016;6017;6018;6019;6020", gg.TYPE_DWORD)
	 gg.toast("你为什么是个恶魔？咋不做个丑八怪？")
	 gg.clearResults()
end

function ad4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6021;6022;6023;6024;6025", gg.TYPE_DWORD)
	 gg.toast("你真的很萌")
	 gg.clearResults()
end

function ad5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6026;6027;6028;6029;6030", gg.TYPE_DWORD)
	 gg.toast("金猪到你家送福了")
	 gg.clearResults()
end

function ad6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6031;6032;6033;6034;6035", gg.TYPE_DWORD)
	 gg.toast("你确定要穿越时空当英雄吗？")
	 gg.clearResults()
end

function ad7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001;6002;6003;6004;6005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6036;6037;6038;6039;6040", gg.TYPE_DWORD)
	 gg.toast("你真的会吸血吗？")
	 gg.clearResults()
end

function ad8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("6001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("6001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("6041", gg.TYPE_DWORD)
	 gg.toast("你真可爱")
	 gg.clearResults()
end
-------------------------------------------------------------------------------------------------------------
function wc()
menu1 = gg.multiChoice({
"🌊绝版追逐套装🌊",
"🌊征服套装🌊",
"🌊绝版史诗追逐套装🌊",
"🌊传说追逐套装🌊",
"🌊不羁套装🌊",
"🌊传说牛仔套装🌊",
"🌊超人套装🌊",
"🌊教父套装🌊",
"🌊绝版云纹锦衣套装🌊",
"🌊绝版冲浪达人套装🌊",
"🌊黑猫头盔🌊",
"🌊返回上页🌊",
}, nil, os.date("必须使用新手套装\n真不错"))
if menu1 == nil then else
if menu1[1] == true then wc1() end
if menu1[2] == true then wc2() end
if menu1[3] == true then wc3() end
if menu1[4] == true then wc4() end
if menu1[5] == true then wc5() end
if menu1[6] == true then wc6() end
if menu1[7] == true then wc7() end
if menu1[8] == true then wc8() end
if menu1[9] == true then wc9() end
if menu1[10] == true then wc10() end
if menu1[11] == true then wc11() end
if menu1[12] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function wc1()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1011;1012;1013;1014;1015", gg.TYPE_DWORD)
	 gg.toast("绝版追逐套装开启成功")
	 gg.clearResults()
end

function wc2()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1021;1022;1023;1024;1025", gg.TYPE_DWORD)
	 gg.toast("征服套装开启成功")
	 gg.clearResults()
end

function wc3()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1031;1032;1033;1034;1035", gg.TYPE_DWORD)
	 gg.toast("绝版史诗追逐套装开启成功")
	 gg.clearResults()
end

function wc4()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1041;1042;1043;1044;1045", gg.TYPE_DWORD)
	 gg.toast("传说追逐套装开启成功")
	 gg.clearResults()
end

function wc5()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1051;1052;1053;1054;1055", gg.TYPE_DWORD)
	 gg.toast("不羁套装开启成功")
	 gg.clearResults()
end

function wc6()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1061;1062;1063;1064;1065", gg.TYPE_DWORD)
	 gg.toast("传说牛仔套装开启成功")
	 gg.clearResults()
end

function wc7()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1071;1072;1073;1074;1075", gg.TYPE_DWORD)
	 gg.toast("超人套装开启成功")
	 gg.clearResults()
end

function wc8()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1081;1082;1083;1084;1085", gg.TYPE_DWORD)
	 gg.toast("教父套装开启成功")
	 gg.clearResults()
end

function wc9()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1086;1087;1088;1089;1090", gg.TYPE_DWORD)
	 gg.toast("锦衣皮肤开启成功")
	 gg.clearResults()
end

function wc10()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001;1002;1003;1004;1005:17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1091;1092;1093;1094;1095", gg.TYPE_DWORD)
	 gg.toast("快去冲浪")
	 gg.clearResults()
end

function wc11()
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("1096", gg.TYPE_DWORD)
	 gg.toast("黑猫警长好")
	 gg.clearResults()
end
-------------------------------------------------------------------------------------------------------------
function Z()
menu1 = gg.multiChoice({
"🤤身 份 证 复 制1🤤",
"🤤身 份 证 复 制2🤤",
"🤤身 份 证 复 制3🤤",
"🤤身 份 证 复 制4🤤",
"🤤身 份 证 复 制5🤤",
"🤤身 份 证 复 制6🤤",
"🤤身 份 证 复 制7🤤",
"🤤身 份 证 复 制8🤤",
"🤤身 份 证 复 制9🤤",
"🤤身 份 证 复 制10🤤",
"🤤返 回 主 页🤤",
}, nil, os.date("身 份 证\n用于实名认证！"))
if menu1 == nil then else
if menu1[1] == true then z1() end
if menu1[2] == true then z2() end
if menu1[3] == true then z3() end
if menu1[4] == true then z4() end
if menu1[5] == true then z5() end
if menu1[6] == true then z6() end
if menu1[7] == true then z7() end
if menu1[8] == true then z8() end
if menu1[9] == true then z9() end
if menu1[10] == true then z10() end
if menu1[11] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function z1()
gg.copyText("蔡岳权----330222196403154454")
gg.alert("复制成功")
end

function z2()
gg.copyText("张晓宇----131002199108034629")
gg.alert("复制成功")
end

function z3()
gg.copyText("郝杨梅----120222198905157823")
gg.alert("复制成功")
end

function z4()
gg.copyText("罗蓉----510602197111154780")
gg.alert("复制成功")
end

function z5()
gg.copyText("邓朴香----432901196202200022")
gg.alert("复制成功")
end

function z6()
gg.copyTe("张永军----320923199006124514")
gg.alert("复制成功")
end

function z7()
gg.copyText("王国胜----210623195710295253")
gg.alert("复制成功")
end

function z8()
gg.copyText("尹楠----210202197901080728")
gg.alert("复制成功")
end

function z9()
gg.copyText("王于忠----320923196904302112")
gg.alert("复制成功")
end

function z10()
gg.copyText("刘兰华----510113197501117135")
gg.alert("复制成功")
end


function Y()
menu1 = gg.multiChoice({
     "能量剑间隔(1)",
	 "能量剑间隔(2)",
	 "能量剑间隔(3)",
	 "能量剑间隔(4)",
	 "能量剑间隔(5)",
	 "能量剑间隔(6)",
	 "能量剑间隔(7)",
	 "能量剑间隔(8)",
	 "能量剑间隔(9)",
	 "能量剑间隔(10)",
	 "能量剑间隔(11)",
	 "能量剑间隔(12)",
	 "能量剑间隔(13)",
	 "返回主页",
}, nil, os.date("能 量 剑 间 隔\n别手贱，点错了点错了没有伤害"))
if menu1 == nil then else
if menu1[1] == true then y1() end
if menu1[2] == true then y2() end
if menu1[3] == true then y3() end
if menu1[4] == true then y4() end
if menu1[5] == true then y5() end
if menu1[6] == true then y6() end
if menu1[7] == true then y7() end
if menu1[8] == true then y8() end
if menu1[9] == true then y9() end
if menu1[10] == true then y10() end
if menu1[11] == true then y11() end
if menu1[12] == true then y12() end
if menu1[13] == true then y13() end
if menu1[14] == true then HOME() end
end
GLWW=-1
end
-------------------------------------------------------------------------------------------------------------
function y1()
gg.alert("不要手贱点歪歪了就没伤害这个是1级")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function y2()
gg.alert("不要手贱点歪歪了就没伤害这个是2级")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.015", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function y3()
gg.alert("不要手贱点歪歪了就没伤害这个是3级")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.03", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function y4()
gg.alert("不要手贱点歪歪了就没伤害这个是4级")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.045", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function y5()
gg.alert("不要手贱点歪歪了就没伤害这个是5级")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.06", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function y6()
gg.alert("不要手贱点歪歪了就没伤害这个是6级")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.075", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function y7()
gg.alert("不要手贱点歪歪了就没伤害这个是7级")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.09", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function y8()
gg.alert("不要手贱点歪歪了就没伤害这个是8级")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.105", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function y9()
gg.alert("不要手贱点歪歪了就没伤害这个是9级")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.12", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function y10()
gg.alert("不要手贱点歪歪了就没伤害这个是10级")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.135", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function y11()
gg.alert("不要手贱点歪歪了就没伤害这个11级")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.15", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function y12()
gg.alert("不要手贱点歪歪了就没伤害这个是12级")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.165", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function y13()
gg.alert("不要手贱点歪歪了就没伤害这个是13级")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.8;-0.015", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0.18", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function U()
menu1 = gg.multiChoice({
     "迫击炮间隔(1)",
	 "迫击炮间隔(2)",
	 "迫击炮间隔(3)",
	 "迫击炮间隔(4)",
	 "迫击炮间隔(5)",
	 "迫击炮间隔(6)",
	 "迫击炮间隔(7)",
	 "迫击炮间隔(8)",
	 "迫击炮间隔(9)",
	 "迫击炮间隔(10)",
	 "迫击炮间隔(11)",
	 "迫击炮一级无限子弹",
	 "返回主页",
}, nil, os.date("迫 击 炮 间 隔\n要点就要点一样等级的买了再开别逼逼什么没用"))
if menu1 == nil then else
if menu1[1] == true then u1() end
if menu1[2] == true then u2() end
if menu1[3] == true then u3() end
if menu1[4] == true then u4() end
if menu1[5] == true then u5() end
if menu1[6] == true then u6() end
if menu1[7] == true then u7() end
if menu1[8] == true then u8() end
if menu1[9] == true then u9() end
if menu1[10] == true then u10() end
if menu1[11] == true then u11() end
if menu1[12] == true then u12() end
if menu1[13] == true then HOME() end
end
GLWW=-1
end

function u1()
gg.alert("买了武器直接开")
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.10;-0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("开启成功")
gg.clearResults()
end

function u2()
gg.alert("买了武器直接开")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.06;-0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.06", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function u3()
gg.alert("买了武器直接开")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("1.02;-0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("1.02", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function u4()
gg.alert("买了武器直接开")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.98;-0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.98", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function u5()
gg.alert("买了武器直接开")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.94;-0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.94", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function u6()
gg.alert("买了武器直接开")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.9;-0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function u7()
gg.alert("买了武器直接开")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.86;-0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.86", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function u8()
gg.alert("买了武器直接开")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.82;-0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.82", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end
function u8()
gg.alert("买了武器直接开")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.78;-0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.78", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function u8()
gg.alert("买了武器直接开")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.74;-0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.74", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function u9()
gg.alert("买了武器直接开")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.7;-0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function u10()
gg.alert("买了武器直接开")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.66;-0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.66", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end

function u11()
gg.alert("买了武器直接开")
	 gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("0.62;-0.04", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("0.62", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("0", gg.TYPE_FLOAT)
	 gg.toast("开启成功")
	 gg.clearResults()
end


function u12()
gg.alert("只有武器一级可以")
gg.clearResults()
     gg.clearResults()
	 gg.setRanges(32)
	 gg.searchNumber("99F;2D;1F;0.8F;0.5F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.searchNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(100)
	 gg.editAll("999", gg.TYPE_DWORD)
	 gg.toast("迫击炮999子弹开启成功")
	 gg.clearResults()
end

-------------------------------------------------------------------------------------------------------------
function Exit()
print("教主逃跑辅助已结束\n感谢你使用本辅助\n作者qq:2513367034")
os.exit()
end
-------------------------------------------------------------------------------------------------------------
function HOME()
lw=1
Main()
end
-------------------------------------------------------------------------------------------------------------
cs = ''
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end
