jj=gg.alert(os.date("⏰:%Y年/️%m月/%d日%H:%M:%S\n欢迎使用洛神-终_加密服务\n因为2改🐶太多了这里就不给原码了\n此系列已停更\n羽洛q：1807824406\n\n是否进入洛神_终加密系统"),"","✅使用洛神_终✅","❎️退出洛神_终❎️")
if jj==3 then print("️你选择退出️")os.exit()end if jj==4 then Main0()end
Numto16=function(num)
	if type(num)~="number" or num>255 or num<0 then
   return num
else
	local sp=string.format("%x",num)
	if #sp==1 then
	sp="0"..sp
  end
  return "\\x"..sp
  end
end
toLuaHex=function(str)
return(string.gsub(str,".",function(x)
return(Numto16(string.byte(x)))
end))
end
FY=[=[
print("╾╾╾╾╾💮❌-退出-💢🌸╾╾╾╾╾\n🗯️ps.广告\n💦代加密免费\n需要联系qq1807824406\n╾╾╾╾╾☄️By.羽洛🌠️╾╾╾╾╾\n💞by.樱花酒💕")
local GG={"art","ByXEY","ART","Art","dec","Dec","DEC","hook","Hook","HooK","HOOK","log","Log","LOG","YkTool","laallkxhtrnqncw","aero.ss","Art.Tool.seatch","lua.gg","QQXEY","vnqhuwyknsvc","qr.log","XYNB2","njxxremmlczfik","laallkxhtrnq","CitMau","me.Art.Tool"}
local _gg={gg.CACHE_DIR,gg.EXT_FILES_DIR,gg.EXT_CACHE_DIR,gg.FILES_DIR,gg.PACKAGE}
for i,v in pairs(GG) do
if string.find(tostring(_gg),v) or(not string.find(tostring(_gg),"com"))then
Error(true)
end
end

gg.setVisible(false)
function fy()
function test1()
up=debug.setupvalue(test1,2)
dy=debug.getinfo(print)
to=debug.getinfo(tostring)
art=debug.getinfo(gg["alert"])
sethk=debug.getinfo(debug['sethook'])
if dy.short_src~="print" 
or to.short_src~="tostring" 
or sethk.short_src~="wrap" 
or art.short_src~="alert" 
or tostring(dy.func):find("print")==nil 
or tostring(to.func):find("tostring")==nil
or tostring(sethk.func):find("sethook")==nil
or tostring(art.func):find("alert")==nil
then
while true do 
os.exit(111) end end
    c = nil
	a = 1
	b = a + 3
end
function test2()
	c = {}
	table.insert(c,1)
if not #c or #c==false or #c==nil 
then while true do
    os.exit() end end
end
function hook()
if tostring(debug.traceback()):find("print") then
while true do
os.exit() end end 
test2()
if tostring(debug.traceback()):find("print") then
while true do
os.exit() end end 
end
debug.sethook(hook,"crl")
   local function setfc(func,war,run)
debug.sethook(func,war)
hookfunc(readOnly(func()))
if run then run () end
while not debug.gethook() do  AFerror("not gk in ") end
debug.sethook()
end
end



local TonumbEr =_ENV["tonumber"]



local _g = {}
for i, v in _ENV["pairs"](_ENV["gg"]) do
    _g[i] = v
end
for i,v in _ENV["pairs"](_g) do
    if _ENV["type"](v)=="function" then
        local Zt,Return_str=_ENV["pcall"](_ENV["gg"]["toast"],{v})
        while not Return_str or _ENV["string"]["find"](Return_str,"%[Java%]%:%-1") do
            _ENV["print"]("Detection LOG or Hook")
            _ENV["os"]["exit"]()
        end
    end
end
local To_str=_ENV["tostring"]
function _Gsub(str)
local tbSpecialWorld ={
 ["("] = "%(", [")"] = "%)", ["."] = "%.", ["%"] = "%%",
 ["+"] = "%+", ["-"] = "%-", ["*"] = "%*", ["?"] = "%?",
 ["["] = "%[", ["]"] = "%]", ["^"] = "%^", ["$"] = "%$",
}
local str=_ENV["string"]["gsub"](str,".", function(s) return tbSpecialWorld[s] or s end)
 return str
end
_ENV["路径"]=function()
do
local package_config=package.config
package.config=nil
local gg_EXT_STORAGE=gg.EXT_STORAGE
gg.EXT_STORAGE=nil
local X=(To_str(_ENV))
for k,v in _ENV["string"]["gmatch"](X,"/(.-),") do
k="/"..k
if not _ENV["string"]["find"](k,_Gsub(_ENV["gg"]["PACKAGE"])) then
if not _ENV["string"]["find"](k,_Gsub(_ENV["gg"]["getFile"]())) then
NZF_Exit(TonumbEr("3"))
end
end
end
end

package.config=package.config
gg.EXT_STORAGE=gg_EXT_STORAGE
end
_ENV["路径"]()



local dZvT=_ENV["string"]["rep"]("恋色成空",TonumbEr("1048576"))
local sOaJ={}
for cInW=TonumbEr("1"),TonumbEr("1024") do
sOaJ[cInW]=dZvT
end 
dZvT=nil
for dLrV, wNjO in _ENV["pairs"]({
_ENV["gg"]["alert"],
_ENV["gg"]["bytes"],
_ENV["gg"]["copyText"],
_ENV["gg"]["searchAddress"],
_ENV["gg"]["searchNumber"],
_ENV["gg"]["toast"]
}) do
_ENV["pcall"](wNjO,sOaJ)
end


if ("a"):rep("1")~="a" then 
while (true) do
_ENV["os"]["exit"](_ENV["print"]("别调用这个LOG函数了，禁用了。"))
Main6466464()
end
end

	 gg.toast(" by 洛神 1.65 ")
	 print(" by 洛神 1.65 ")

local getinfo = debug["getinfo"]
local tables = {}
local strings = {}
local tI = table["insert"]
for i, v in _ENV["pairs"](_ENV) do
i = _ENV[i]
if type(i) == "table" then
for m, n in _ENV["pairs"](i) do
if type(i[m]) == "function" then
tI(tables, getinfo(i[m]))
end
end
elseif type(i) == "function" then
tI(tables, getinfo(i))
elseif type(i) == "string" then
tI(strings, i)
end
end
for i = 1, 100 do
(function()
return (function()
if _ENV["math"]["random"](0, 1) == 1 then
repeat
until _ENV["debug"]["getinfo"](2).istailcall and _ENV["math"]["random"](0, 1)==0
else
while _ENV["debug"]["getinfo"](3).istailcall do
end
end
end)()
end)()
end

Len=_ENV["string"]["len"]
suB=_ENV["string"]["sub"]
gmatchs=_ENV["string"]["gmatch"]
concats=_ENV["table"]["concat"]
TabInsert=_ENV["table"]["insert"]
pari=_ENV["pairs"]
char=string.char
ToNumber=tonumber
setRanges=_ENV["gg"]["setRanges"]
getResults=_ENV["gg"]["getResults"]
searchNumber=_ENV["gg"]["searchNumber"]
editAll=_ENV["gg"]["editAll"]
local getResultsCount, getValues, loadResults, clearResults, setValues = _ENV["gg"]["getResultsCount"], _ENV["gg"]["getValues"], _ENV["gg"]["loadResults"], _ENV["gg"]["clearResults"], _ENV["gg"]["setValues"]
local AddRess, Flag, VALUE, plug = "address", "flags", "value", getResultsCount
local Ran_dom = _ENV["math"]["random"]
local Rep = _ENV["string"]["rep"]
local Clock = _ENV["os"]["clock"]
local zero = Rep("0","25")
local Ten_Thousand = ToNumber("10000")
local Zero = ToNumber("0")
local Nine = ToNumber("9")
local Ei_Thousand = ToNumber("8000")
local Two = ToNumber("2")
local function numBrush()
	local re = {}
	for i=1,Ten_Thousand do
		re[#re+1] = Ran_dom(Zero,Nine)
	end
	re = concats(re)
	return zero..Rep(re,"10")
end
local Brush__ = numBrush()
local Brush = function(num)
	num = string.gsub(num,"%.0",char())
	return num.."."..Brush__
end
local getValue=function(Tab)
	local clock = Clock()
	for i = #Tab+1, #Tab+Ei_Thousand do
		Tab[i] = {[AddRess] = Tab[1][AddRess], [Flag] = Tab[1][Flag]}
	end
	local jg = getValues(Tab)
	while Clock()-clock > Two do
	print("爱上这个女孩[郑思敏]")
    os.exit()
    print("爱上这个女孩[郑思敏]")
    YLNB()
	end
	return jg
end
local SetValue=function(Tab)
	local clock = Clock()
	for i = #Tab+1, #Tab+Ei_Thousand do
		Tab[i] = {[AddRess] = Tab[1][AddRess], [Flag] = Tab[1][Flag], [VALUE] = Tab[1][VALUE]}
	end
	setValues(Tab)
	while Clock()-clock > Two do
		print("爱上这个女孩[郑思敏]")
        os.exit()
        print("爱上这个女孩[郑思敏]")
        YLNB()
	end
end
local loadResult=function(Tab, Star)
	local clock = Clock()
	for i = 1, Ei_Thousand do
		Tab[#Tab+1] = {[AddRess] = Tab[1][AddRess], [Flag] = Tab[1][Flag]}
	end
	local jg = loadResults(Tab)
	while Clock()-clock > Two do
		print("爱上这个女孩[郑思敏]")
        os.exit()
        print("爱上这个女孩[郑思敏]")
        YLNB()
	end
	return jg
end
_ENV["gg"]["getResults"]=function(Value)
	Value=Value.."."..Rep(Zero,"9999999")
	plug = Value
	return getResults(Value)
end
_ENV["gg"]["clearResults"]=function(Value)
	clearResults(Value)
	plug = getResultsCount
end
_ENV["gg"]["setRanges"]=function(Value)
	Value=Value.."."..Rep(Zero,"9999999")
	return setRanges(Value)
end
local convert_num = function(Ty)
	local tab = {
		["D"] = ToNumber("4"),
		["d"] = ToNumber("4"),
		["F"] = ToNumber("16"),
		["f"] = ToNumber("16"),
		["E"] = ToNumber("64"),
		["e"] = ToNumber("64"),
		["B"] = 1,
		["b"] = 1,
		["A"] = ToNumber("127"),
		["a"] = ToNumber("127"),
		["Q"] = ToNumber("32"),
		["q"] = ToNumber("32"),
		["X"] = ToNumber("8"),
		["x"] = ToNumber("8"),
		["W"] = Two,
		["w"] = Two,
	}
	return tab[Ty]
end
local function split(str, reps)
	local resultStrList = {}
	string.gsub(str, "[^" .. reps .. "]+", function(w)
		if string.find(suB(w,-1,-1),"[ABDEFQWXabdefqwx]") then
			TabInsert(resultStrList, {suB(w,Zero,-Two), convert_num(suB(w,-1,-1))})
		else
			TabInsert(resultStrList, {w})
		end
	end)
	return resultStrList
end
_ENV["gg"]["searchNumber"]=function(a,b,c,d,e,f,g)
	local Convert_Type = function(value, ty)
		local conf = {
			[ToNumber("4")] = "i4",
			[ToNumber("16")] = "f",
			[ToNumber("64")] = "d",
			[1] = "i1",
			[Two] = "i2",
			[ToNumber("32")] = "i8",
		}
		local fmt = conf[ty]
		local data = string.pack(fmt, value)
		data = {string.byte(data,1, #data)}
		local search = {}
		for i, k in pari(data) do
			search[i] = char(k)
		end
		return data, concats(search), #data
	end
	local check = function(num)
		if num<ToNumber("0") then
			num = num + ToNumber("256")
		end
		return char(num)
	end
	d=d or _ENV["gg"]["SIGN_EQUAL"]
	   e=e or Zero f=f or -1
		g=g or Zero
	local rp=Rep(Zero,ToNumber("1024")^Two)
	b=Brush(b) d=d.."."..rp
	   e=e.."."..rp f=f.."."..rp
		 g=g.."."..rp
	if not ToNumber(a) then
		return searchNumber(a,b,c,d,e,f,g)
	end
	if getResultsCount() == Zero and ToNumber(a) ~= Zero and ToNumber(b) ~= 1 and ToNumber(b) ~= Two and ToNumber(b) ~= ToNumber("8") then
		local x1, x2, x3 = Convert_Type(ToNumber(a), ToNumber(b))
		gg.setVisible(false)
		gg.internal1(x2)
		gg.setVisible(false)
		local rr=gg.getResults(getResultsCount())
		local n1, n2 = ToNumber("4"), Zero
		local Star
		local Raep={}
		for i = 1, #rr, x3 do
			if rr[i][AddRess]%n1==n2 then
				Raep[#Raep+1]={[AddRess] = rr[i][AddRess], [Flag] = b}
			else
				rr[i]=nil
			end
			for ii = 1, x3 - 1 do
				rr[i+ii] = nil
			end
		end
		if Raep[1] then
		    gg.setVisible(false)
			loadResult(Raep)
			gg.setVisible(false)
		end
	else
		searchNumber(a,b,c,d,e,f,g)
	end
end
_ENV["gg"]["editAll"]=function(a,b)
	local m2, m3, m4 = 1, Zero, Two
	if type(plug) == "function" then
		plug = plug()
	end
	gg.setVisible(false)
	local sear=gg.getResults(plug)
	if sear[1]==nil then
		return gg.toast("爱上这个女孩[郑思敏]")
	end
	if string.find(a,";") then
		a = split(a, ";")
		local Try, _Nt = m3, m3
		while _Nt < #sear do
			Try, _Nt = Try + m2, _Nt + m2
			if Try > #a then
				Try = m2
			end
			sear[_Nt][VALUE] = a[Try][m2]
			if a[Try][m4] then
				sear[_Nt][Flag] = Brush(a[Try][m4])
			else
				sear[_Nt][Flag] = Brush(b)
			end
		end
	else
		for i, k in pairs(sear) do
			sear[i][VALUE] = a
			sear[i][Flag] = Brush(b)
		end
	end
	return SetValue(sear)
end
if true then
    local org = _ENV["gg"]["searchNumber"]
     hook = function(...)
        _ENV["gg"]["setVisible"](false)
         ret = org(...)
        if _ENV["gg"]["isVisible"](true) then
        _ENV["gg"]["clearResults"]()
        _ENV["gg"]["clearList"]()
_ENV["gg"]["alert"]("请不要在脚本搜值时打开修改器")
            while true do 
            print("爱上这个女孩[郑思敏]")
            os.exit()
            print("爱上这个女孩[郑思敏]")
            YLNB() 
            end
        end
        return ret
    end
    _ENV["gg"]["searchNumber"] = _ENV["hook"]
end
do
    local string_rep = string.rep
    string.rep = function(str, n, sep)
        local str2 = string_rep(str, n, sep)
        local num = #str * n + (sep and #sep * (n - 1) or 0)
        while #str2 ~= num do      
            print("爱上这个女孩[郑思敏]")
            os.exit()
            print("爱上这个女孩[郑思敏]")
            YLNB()
        end
        return str2
    end
end


local Tab_FY={}
for k=1,100 do
Tab_FY[k]=string.rep("挽月","10000")
end
for kk=1,#Tab_FY do
pcall(debug.getinfo,Tab_FY[kk])
end
--防拦截器

print("by 洛神1.65")
--御
a="a"
aa=a:rep(5)
if aa == "aaaaa" then
else
os.exit()
print("by W洛神.26")
WYNB()
end
tostring=nil






]=]

local function JSHX(t)
local tRet={}
local Total=#t
while Total>0 do
local i=math.random(1,Total)
table.insert(tRet,t[i])
t[i]=t[Total]
Total=Total-1
end
return tRet
end
local JMP={['EXTRAARG']=2,['MOVE']=2,['UNM']=2,['NOT']=2,['LEN']=2,['ADD']=2,['SUB']=2,['MUL']=2,['DIV']=2,['MOD']=2,['POW']=2,['GETTABLE']=2,['SETTABLE']=2,['NEWTABLE']=2,['SELF']=2,['SETLIST']=2,['LOADNIL']=2,['CONCAT']=2,['CALL']=2,['VARARG']=2,['TAILCALL']=2,['TFORCALL']=2,['GETUPVAL']=2,['SETUPVAL']=2,['GETTABUP']=2,['SETTABUP']=2,['CLOSURE']=2,['RETURN']=2,}
function JMPHX(JMP1,JMP2)
  local BQ = {"🚀","✈️","🛸","✈️","🛰","🚀","🛸","🛰","✈️","🚀","✈️","🛸"}
local SF=2171410025
CF=function()
local GT={"RETURN\nRETURN\nRETURN\nRETURN"}
        return GT[math.random(1,#GT)]
end
local PZ
function PZ()
SF=SF+1
if SF>#BQ then
SF=1
end
local TAB={}
local b=gg.bytes(BQ[SF])
local tab={}
for k,v in pairs(b)do
table.insert(tab,1,string.format("%x",v))
end
tab=table.concat(tab)
tab=tab:gsub("........",function (x)
table.insert(TAB,1,"OP[48] 0x"..x.."\n")
end,1)
return "\n"..table.concat(TAB)
end
if not JMP2 then
PZ=function()
return ""
end
end
JMP1=JMP1:gsub("(; .local v[^\n]+)\n",function(x)
return x
end):gsub("\n%s*(; .end local v[^\n]+)",function(x)
return x
end):gsub("\n%s+","\n")
JMP1=JMP1:gsub("maxstacksize (%d+)(.-RETURN[^\nv]+)\n",function(MAX,STR)
local JMP3={}
local JMP4=9999999
local JMP5={}
local JMP6={}
STR=STR:gsub("[^\n]+",function(s)
THZL=s:match("%S+")
local JMP7,JMP8,JMP9=nil,nil,nil
if THZL==".upval" or THZL==".line"then
JMP3[#JMP3+1]=s
JMP8=true
end
if THZL=="LOADK" and HX==nil then
JMP4=JMP4+1
JMP6[#JMP6+1]=":goto_"..JMP4.."\n"..s.."\nTFORLOOP v229 :goto_"..(JMP4+1).."\n"..PZ().."\n"..CF()
JMP4=JMP4+1
JMP7=true
end
if JMP[THZL] then
JMP4=JMP4+1
if THZL=="RETURN" and s:find("v")==nil then
JMP5[#JMP5+1]=":goto_"..JMP4.."\n"..s
JMP9=true
else
JMP5[#JMP5+1]=":goto_"..JMP4.."\n"..s.."\nTFORLOOP v229 :goto_"..(JMP4+1).."\n"..PZ().."\n"..CF()
JMP4=JMP4+1
JMP7=true
end
end
if JMP7 then
return "TFORLOOP v229 :goto_"..(JMP4-1).."\n:goto_"..JMP4
elseif JMP8 then
return ""
elseif JMP9 then
return "TFORLOOP v229 :goto_"..JMP4.."\n"..PZ().."\n"..CF()
else
return s
end
end)
STR="TFORLOOP v229 :goto_9999999\n"..STR.."\n"..PZ().."\n"..CF()
local HXJS={}
for i in STR:gmatch(":goto_%d+.-TFORLOOP v229 :goto_%d+")do
HXJS[#HXJS+1]=i
end
STR=table.concat(JSHX(HXJS),"\n")
return "maxstacksize "..MAX.."\n"..table.concat(JMP3,"\n").."\nJMP :goto_999999\n:goto_999999\nLOADK v230 1\nLOADBOOL v230 1\nTFORLOOP v229 :goto_9999999\n"..table.concat(JSHX(JMP5),"\n").."\n"..STR.."\n"..table.concat(JSHX(JMP6),"\n").."\n"end)
JMP1=JMP1:gsub("; .local v%d+%s*\"%(.-%)\"",function(x)
return x.."\n"
end):gsub("; .end local v%d+%s*\"%(.-%)\"",function(x)
return "\n"..x
end):gsub("\n%s+","\n")
return JMP1
end
QK={}
QK1=520520
QK2=5201314
local Q_1,Q_2,Q_3,Q_4
local QK3,QK4={},{},{}
QK5=function(QK6)
QK6=QK6:gsub("CLOSURE v0 F0","CLOSURE v0 F520520")
Q_4="\n.line 0\n"..QK6.."\n"
table.insert(QK3,Q_4)
for i=1,520 do
Q_1="\n.func F"..tostring(QK1).."\n"
Q_2="\n.source \"YC\x00\"\n.linedefined 0\n.lastlinedefined 0\n.numparams 0\n.is_vararg 250\n.maxstacksize 0\n.upval u0 nil ; u0\n"
QK1=QK1+1
Q_3="CLOSURE v0 F"..tostring((QK1)).."\nVARARG v1\nTAILCALL v0\n"
Q_3=Q_1..Q_2..Q_3
table.insert(QK3,Q_3)
table.insert(QK4,".end")
end
Q_1="\n.func F"..tostring(QK1).."\n"
Q_2="\n.source \"YC\x00\"\n.linedefined 0\n.lastlinedefined 0\n.numparams 0\n.is_vararg 250\n.maxstacksize 0\n.upval u0 nil ; u0\n"
Q_3="CLOSURE v0 F0\nVARARG v1\nTAILCALL v0\n"
Q_3=Q_1..Q_2..Q_3
table.insert(QK3,Q_3)
table.insert(QK4,".end")
return table.concat(QK3,"\n")
end
LASM=function()
local tab={}
for i=1,16 do
tab[i]=string.char(math.random(8,58))
end
return table.concat(tab)
end
QKCW=[=[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u0 "" ; u4
.upval v0 "" ; u5
.upval u11 "" ; u6
.upval u12 "" ; u7
.upval u13 "" ; u8
.upval u14 "" ; u9
.upval u15 "" ; u10
.upval u16 "" ; u11
]=]
QKCW1=[=[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u7 "" ; u4
.upval u6 "" ; u5
.upval u11 "" ; u6
]=]

QK={}
QK1=520520
QK2=5201314
local Q_1,Q_2,Q_3,Q_4
local QK3,QK4={},{},{}
QK5=function(QK6)
QK6=QK6:gsub("CLOSURE v0 F0","CLOSURE v0 F520520")
Q_4="\n.line 0\n"..QK6.."\n"
table.insert(QK3,Q_4)
for i=1,520 do
Q_1="\n.func F"..tostring(QK1).."\n"
Q_2="\n.source \"GL\x00\"\n.linedefined 0\n.lastlinedefined 0\n.numparams 0\n.is_vararg 250\n.maxstacksize 0\n.upval u0 nil ; u0\n"
QK1=QK1+1
Q_3="CLOSURE v0 F"..tostring((QK1)).."\nVARARG v1\nTAILCALL v0\n"
Q_3=Q_1..Q_2..Q_3
table.insert(QK3,Q_3)
table.insert(QK4,".end")
end
Q_1="\n.func F"..tostring(QK1).."\n"
Q_2="\n.source \"GL\x00\"\n.linedefined 0\n.lastlinedefined 0\n.numparams 0\n.is_vararg 250\n.maxstacksize 0\n.upval u0 nil ; u0\n"
Q_3="CLOSURE v0 F0\nVARARG v1\nTAILCALL v0\n"
Q_3=Q_1..Q_2..Q_3
table.insert(QK3,Q_3)
table.insert(QK4,".end")
return table.concat(QK3,"\n")
end
LASM=function()
local tab={}
for i=1,16 do
tab[i]=string.char(math.random(10,110))
end
return table.concat(tab)
end
QKCW=[=[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u0 "" ; u4
.upval v0 "" ; u5
.upval u11 "" ; u6
.upval u12 "" ; u7
.upval u13 "" ; u8
.upval u14 "" ; u9
.upval u15 "" ; u10
.upval u16 "" ; u11
]=]
QKCW1=[=[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u7 "" ; u4
.upval u6 "" ; u5
.upval u11 "" ; u6
]=]
local ENC={}
ENC.last=gg.getFile()
ENC.info=nil
ENC.config=gg.EXT_FILES_DIR:gsub("%lua$","").."/GL-ENC.Lua"
ENC.data=loadfile(ENC.config)
if ENC.data~=nil then;
ENC.info=ENC.data()
ENC.data=nil
end
if ENC.info==nil then
ENC.info={ENC.last}
end


num1 = math.random(0,255)
        str_enc = function(str)
            local t = {string.byte(str, 1, -1)}
            for i, v in pairs(t) do
                t[i] = string.char(v ~ num1)
            end
            str = table.concat(t)
            return str
        end


function StringSF(str)
a = str_enc(str)
local b = {}
local s = {}
for i = 1,#a do
b[i] = {a:sub(i,i),i}
s[i] = {a:sub(i,i),i}
end
local c = {}
local d ={}
local log = true
local l = #b
while log do
  local len = math.random(1,l)  
  if b[len] then
  c[#c+1] = len
  d[len] = #c
  b[len] = nil
  end
  if #c == l then
    log = nil
  end  
end
local w = ''
local w1 = ""
for i = 1,#c do
  w = w .. s[c[i]][1]
  w1 = w1 .. d[i] .. ","
end
local list = "{\"" .. toLuaHex(w) .. "\", {"..w1.."}}"
  return list
end
local S255l=function(num)
local THSF={}
if not num then
num=math.random(4,8)
end
for x=1,num do
THSF[#THSF+1]=string.char(math.random(128,255))
end
return table.concat(THSF)
end
___String = {}
String___ = {}
function Str_Enc_s(code)
	if code == "" then
		return "string.char()"
	end
	if String___[code] then
		return String___[code]
	end
	__Name = "Str_L['"..toLuaHex(S255l()).."']"
	___String[# ___String + 1] = __Name .. "= (".. StringSF(code) ..")"
	String___[code] = "(uqbzw("..__Name.."))"
	__Name = nil
  return String___[code]
end
__SF=[=[

local Char, Str_L = {}, {}
for i=0,255 do
  Char[i] = string.char(i)
  Char[(Char[i])] = i
end

local string_sub = string.sub
local string_byte = string.byte
local function get(s, f)
  local a = ""
  for i = 1,#f do
    a = a..string_sub(s,f[i],f[i])
  end
  return a
end
local Index__ = #Char/#Char
local Srrb = {}
local function uqbzw(Tab)
if Srrb[Tab] then return Srrb[Tab] end
local str = get(Tab[Index__],Tab[Index__ + Index__])
local result = ""
local str = {string_byte(str,1,-1)}
for i,v in pairs(str)do
result = result .. Char[v ~ Char["]=]..Numto16(num1)..[=["] ]
end
Srrb[Tab] = result
return Srrb[Tab]
end

]=]



function encNumber(code)
  local c = ""--这个字符
  local lastC = ''--上个字符
  local isSpace = false
  local str = ""
  local lastStr = ""--上个字符串(空格和\n中间的字符串)
  local input = ""--存放结果
  local isNum = false--是否为数字
  local num = ""--存放数字的字符串
  local isStr = false--是否为字符串
  local start = ""
  local bool = false
  for i, v in utf8.codes(code) do
    if c ~= ' ' and c ~= '\n' then
      lastC = c
      isSpace = false
     else
      isSpace = true
    end
    c = utf8.char(v)
    if c ~= ' ' and c ~= '\n' then
      if isSpace == true then
        str = c
       else
        str = str .. c
      end
     else
      lastStr = str
    end
    if (c == '"' or c == "'") and not bool then
      if isStr == false then
        isStr = true
        start = c
       else
        if start == c then
          isStr = false
        end
      end
    end
    if not isStr then
      if not isNum then
        if c:match("[%d%-]") then
          if c:match("%-") and (lastC:match("[%[%(%{%,<>;=]") or lastStr == "return" or lastStr == "and" or lastStr == "or" or lastStr == "not") then
            isNum = true
            num = ""
           elseif lastC:match("[%+%-%*/&%%%^~|%[%(%{%,=;<>]") or lastStr == "return" or lastStr == "and" or lastStr == "or" or lastStr == "not" then
            isNum = true
            num = ""
           else
            input = input .. c
          end
         else
          input = input .. c
        end
      end
      if isNum then
        if (not num:match("^0x") and c:match("[%d%.eE]")) or (#num == 0 and c == '-') or (num == '0' and c == 'x') or (num:match("^0x") and c:match("[%da-fA-F%.]")) or (num:match("[eE]") and c:match("[%+%-%da-fA-F]")) then
          num = num .. c
         else
          isNum = false
          if tonumber(num) and input:match("%a$")==nil then
            input = input .. string.format("to_num(%s)", Str_Enc_s(num)) .. c
           else
            input = input .. num .. c
          end
        end
        if i == #code then
          isNum = false
          if tonumber(num) then
            input = input .. string.format("to_num(%s)", Str_Enc_s(num))
           else
            input = input .. num
          end
        end
      end
     else
      input = input .. c
      if c == "\\" then
        bool = not bool
       else
        bool = false
      end
    end
  end
  return input
end


local function getENV(name)
  local tmp={}
  local v = _G
  for i in string.gmatch(name, "[^%.]+") do
    if type(v) ~= "table" then
      v = {}
    end
    tmp[#tmp+1]=i
    v=v[i]
  end
  if (type(v)=="function" and debug.getinfo(v).what=="Java") or _ENV[tmp[1]] then
    local c={}
    local txt=""
    txt="_ENV[" .. Str_Enc_s(tmp[1]) .. "]"
    for i = 2, #tmp do
      txt = txt .. "[" .. Str_Enc_s(tmp[i]) .. "]"
    end
    return txt
  end
  local txt = tmp[1]
  for i=2,#tmp do
    txt=txt.."["..Str_Enc_s(tmp[i]).."]"
  end
  func[name]=txt
  return txt
end

local function strname1(x1, x2)
  local x3 = getENV(x2)
  return x1..x3.."=function("
end


function hshx(data)

  data = "\n" .. data .. "\n"
  
  local shop = 0

  func={}

  -- 备份local函数
  data=data:gsub("([^%w_%.])local%s+([%a_][%w_]*)%s*=%s*function%s*%(", "%1local function.%2(")
  data=data:gsub("([^%w_%.])local%s+function%s+([%a_][%w_]*)%s*%(", "%1local function.%2(")

  -- 替换 a=function()
  data=data:gsub("([^%w_%.])([%a_][%w_]*)%s*=%s*function%s*%(", function(x1, x2)
    return x1 .. "_ENV[" .. Str_Enc_s(x2) .. "]=function("
  end)

  -- 替换 function a()
  data = data:gsub("([^%w_%.])function%s+([%a_][%w_]*)s*%(", function(x1, x2)
    func[x2]="_ENV["..Str_Enc_s(x2).."]"
    x2 = Str_Enc_s(x2)
    shop = shop + 1
    return x1 .. "_ENV[" .. x2 .. "]=function("
  end)

  -- 替换表函数 诸如function a.b()
  data = data:gsub("([^%w_%.])function%s+([%a_][%w_]*%.[%w_%.]+)%s*%(", strname1)
  data=data:gsub("([^%w_%.])([%a_][%w_]*%.[%w_%.]+)%s*=%s*function%s*%(", strname1)

  data=data:gsub("local%s+function%.([%a_][%w_]*)%(", "local %1=function(")

  return data, func, shop
end

-- 标准库
local List = {
  ["collectgarbage"] = 1,
  ["tostring"] = 1,
  ["load"] = 1,
  ["ipairs"] = 1,
  ["pcall"] = 1,
  ["require"] = 1,
  ["rawequal"] = 1,
  ["assert2"] = 1,
  ["setmetatable"] = 1,
  ["getmetatable"] = 1,
  ["rawset"] = 1,
  ["next"] = 1,
  ["select"] = 1,
  ["loadfile"] = 1,
  ["rawget"] = 1,
  ["pairs"] = 1,
  ["error"] = 1,
  ["tonumber"] = 1,
  ["xpcall"] = 1,
  ["assert"] = 1,
  ["dofile"] = 1,
  ["print"] = 1,
  ["type"] = 1,
  ["rawlen"] = 1,
}

function hxenc(data)
  gg.toast('正在处理标准库……')
  
  local vv=0
  for _ = 1, 4 do
    data = data:gsub("([^%w_])([%a_][%w_]*)%s*%.%s*([%a_][%w_]*)([^%w_])", function(a, b, c, d)
      if type(_ENV[b])=="table" then
        local a1=Str_Enc_s(b)
        local a2=Str_Enc_s(c)
         return a .. "_ENV[" .. a1 .. "][" .. a2 .. "]" .. d
      end
    end)
  end
  for _ = 1, 4 do
    data=data:gsub("([^%w_])([%a][%w]+)%s*%(", function(a,b)
      if List[b] then
        return a .. "_ENV["..Str_Enc_s(b).."]("
      end
    end)
  end
  gg.toast("标准库混淆成功")

  return data
end
local Min_num = function(...)
local arm = {...}
local num = nil
for i, v in pairs(arm) do
if v ~= nil then
if not num then
num = v
elseif num > v then
num = v
end
end
end
return num
end
StrEnc=function(DATA)
local gr = {}
repeat
local s1, ss1, x1, xx1, n1, n2, str
s1 = string.find(DATA, "\034")
ss1 = string.find(DATA, "\039")
x1 = string.find(DATA, "%[[=]*%[")
xx1 = string.find(DATA, "%-%-")
str = Min_num(s1, ss1, x1, xx1)
if str == nil then
break
end
if str == s1 then
DATA = DATA:gsub("(.-)(\034.-\034)",function(t1, t2)
gr[#gr + 1] = t1
t2 = string.gsub(t2, "\\\\","\\092")
t2 = string.gsub(t2, "\\\034", "\\034")
if t2:sub(-1, -1) ~= "\034" then
return t2
end
t3 = load("return "..t2)
if not t3 then
gg.alert("\034加密失败\n"..t2)
os.exit()
end
gr[#gr + 1] = Str_Enc_s(t3(),true)
return ""
end, 1)
elseif str == ss1 then
DATA = DATA:gsub("(.-)(\039.-\039)",function(t1, t2)
gr[#gr + 1] = t1
t2 = string.gsub(t2, "\\\\","\\092")
t2 = string.gsub(t2, "\\\039", "\\039")
if t2:sub(-1, -1) ~= "\039" then
return t2
end
t3 = load("return "..t2)
if not t3 then
gg.alert("\039加密失败\n"..t2)
os.exit()
end
gr[#gr + 1] = Str_Enc_s(t3(),true)
return ""
end, 1)
elseif str == x1 then
local g1 = string.match(DATA,"%[([=]*)%[")
DATA=DATA:gsub("(.-)(%["..g1.."%[.-%]"..g1.."%])",function(t1, t2)
gr[#gr + 1] = t1
t3 = load("return "..t2)
if not t3 then
gg.alert("[[加密失败\n"..t2)
os.exit()
end
gr[#gr + 1] = Str_Enc_s(t3(),true)
return ""
end, 1)
elseif str == xx1 then
d1, d2, d3, d4 = string.find(DATA, "%-%-(%[([=]*)%[)")
if d1 == xx1 then
DATA = string.gsub(DATA, "(.-)%-%-%[" .. d4 .. "%[.-%]" .. d4 .. "%]", function(txt1)
gr[#gr + 1] = txt1
return " "
end, 1)
else
DATA = string.gsub(DATA, "(.-)%-%-[^\n]*", function(txt1)
gr[#gr + 1] = txt1
return ""
end, 1) 
end
else
break
end
until not str
gr[#gr+1]=DATA
gr = table.concat(gr):gsub("return%s+end","return 0\nend")
gr = gr:gsub("%-%-%[%[.-%]%]",""):gsub("%-%-[^\n]+", "")
return gr
end
Tonumber = true -- 加密数字开关
bqt={"🌬️","💨","🔱","💒","🌠","💮","🌀️","💬","⚜️","💥","💢","👑",}
sy=1
local mt=bqt[math.random(1,#bqt)]
GL=gg.prompt({mt.."选择脚本:"..mt,mt.."未知错误"..mt,mt.."指令错位"..mt,mt.."刷取图标"..mt,mt.."区块加固"..mt,mt.."防止拆卸"..mt,mt.."陷阱指令"..mt,mt.."算法加固"..mt,mt.."拆卸内存"..mt,mt.."RL指令"..mt,"指令加强",mt.."加密开头"..mt,mt.."输入开头"..mt},ENC.info,{"file","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","text"})
if GL==nil then os.exit(print("未选择文件❗"))end
gg.saveVariable(GL,ENC.config)
data=io.open(GL[1],"r"):read("*a")
data=FY..data
data=StrEnc(data) -- 字符串

if Tonumber then
	data = encNumber(data)
end
data, Func, shop=hshx(data) -- 函数
data=hxenc(data) -- 标准库
local x = os.clock()
local START = 0
for i,v in pairs(Func) do
    START = START + 1
    gg.toast("call混淆进度:" .. START .. " -> " .. shop)
    data=data:gsub("([^%w_%.])"..i:gsub("%.","%%.").."%s*%(","%1"..v.."(")
end
gg.toast("call指令隐藏成功")

data=__SF..table.concat(___String,"\n").."\n"..data
io.open(GL[1]..".[字符串].Lua","w"):write(data)
if GL[9]==true then
lasm="while i do\nlocal i\nwhile i==0 do\n"..("_ENV[\"消炎水笑死人了\"]=\"牛马玩意笑飞我\"\n"):rep(math.random(3000,4000)).."end\nbreak\nend"
else
lasm=""
end
gg.toast("全局OP[Lasm]替换中......")
local function JMPhx(lasm)
		lasm = string.gsub(lasm, '%s*\n%s*', '\n')

		local iszl = false
		local upvalueList = {}
		local zlList = {}

		for line in string.gmatch(lasm, '[^\n]+') do
			if iszl then
				zlList[#zlList + 1] = line
			else
				iszl = string.match(line, '^%u+')
				if iszl then
					zlList[#zlList + 1] = line
				else
					upvalueList[#upvalueList + 1] = line
				end
			end
		end

		local ljzl = {
			EQ = true,
			LT = true,
			LE = true,
			TEST = true,
			TESTSET = true,
		    LOADBOOL = true
		}

		local function JmpHx(zlList)
			local initPc = 10000000
			local pc = initPc
			local jumpList = {}
			local randomList = {}

			local function appendRandomList(content) randomList[#randomList + 1] = content end

			local function getJumpZl(sbx) return '\nJMP :goto_' .. (sbx or (pc + 1)) .. '\n' end

			local isTforloop = false -- TFORLOOP    -- 如果为false, 则是普通JMP
			if isTforloop then function getJumpZl(sbx) return '\nTFORLOOP v222 :goto_' .. (sbx or (pc + 1)) .. '\n' end end

			local jmpText = getJumpZl()

			local function getRandomJmp() return getJumpZl(math.random(initPc, pc)) end

    Confu=function()
        local Vr={}
        local zl={"SUB", "ADD", "MUL", "MOD"}
        for i=1,math.random(0,1) do
            Vr[#Vr+1] = zl[math.random(1,#zl)].." v"..math.random(20,50).." v"..math.random(40,80).." v"..math.random(30,60)
        end
        table.insert(Vr, 1, ("LOADBOOL v"..math.random(20,120).." 20\n"):rep(math.random(0,1)))
        return table.concat(Vr,"\n")
    end
    
			local function appendZl2(zl)
				jumpList[#jumpList + 1] = ':goto_' .. pc .. '\n' .. zl .. "\n" .. Confu() .. ret
				pc = pc + 1
			end

			local function appendZl(zl, sbx) return appendZl2(zl .. getJumpZl(sbx)) end

			local function getZlName(zl) return string.match(zl, '^%u+') end

			local function formatZL(name, ...)
				local args = {...}
				for i = 1, #args do args[i] = 'v' .. args[i] end
				table.insert(args, 1, name)
				return table.concat(args, ' ')
			end

			local function bait()
				local min = 230
				local max = min + 9
				local A1 = math.random(min, max)
				local B1 = math.random(0, 32)
				appendZl(formatZL('MOVE', A1, B1))

				local B2 = math.random(0, 1)
				appendZl(('LOADBOOL v' .. B1 .. ' ' .. B2 .. ' SKIP_NEXT') .. getRandomJmp())

				local isTrue = B2 > 0
				if math.random(0, 1) == 0 then
					appendZl(('TEST v' .. B1 .. ' ' .. (isTrue and '0' or '1')) .. getRandomJmp())
				else
					appendZl(('TEST v' .. B1 .. ' ' .. (isTrue and '1' or '0')))
				end
				appendZl(formatZL('MOVE', B1, A1))
			end

			----------------------------------------------------------------
			appendRandomList('OP[8276]0x7682\nOP[8276]0x7682\n')
			if isTforloop then appendRandomList('LOADBOOL v223 1') end
			appendRandomList(getJumpZl(pc))

			appendZl('NOT v241 v240')
			appendZl('NOT v242 v241')
			appendZl('TESTSET v200 v241 1')

			local islj = false

			for i = 1, #zlList do

				local zl = zlList[i]
				local name = getZlName(zl)

				if islj then
					appendZl(zl)
					islj = false
				elseif ljzl[name] then
					islj = true
					if math.random(0, 1) == 0 then bait() end
					appendZl(zl .. getJumpZl() .. zl .. getRandomJmp(), pc + 2)
				elseif false then
					appendZl(zl)
				elseif name == 'LOADBOOL' and string.find(zl, 'SKIP_NEXT') then
					islj = true
					if math.random(0, 1) == 0 then bait() end
					appendZl(zl .. getJumpZl() .. zl .. getRandomJmp(), pc + 3)

				elseif name == 'JMP' then
					local goto_ = string.match(zl, '^%s*JMP (:goto_%d+)')
					if goto_ then zl = string.gsub(jmpText, ':goto_%d+', goto_) end
					appendZl2(zl .. getRandomJmp())

				elseif name == 'RETURN' or name == 'TAILCALL' then
					appendZl2(zl)

				elseif name == 'LOADK' then
					local A0
					local A1 = math.random(230, 239)
					local zl2 = string.gsub(zl, 'LOADK v(%d+)', function(A)
						A0 = A
						return 'LOADK v' .. A1
					end)

					appendZl(zl2)

					if math.random(0, 1) == 0 then
						appendZl('TESTSET v' .. A0 .. ' v' .. A1 .. ' 1')
					else
						appendZl(('TESTSET v' .. A0 .. ' v' .. A1 .. ' 0') .. getRandomJmp())
						appendZl(formatZL('MOVE', A0, A1))
					end

					local random = math.random(0, 2)
					if random == 1 then
						appendZl(formatZL('EQ 1', A0, A1))
					elseif random == 2 then
						appendZl(formatZL('EQ 0', A0, A1) .. getRandomJmp())
					end

				else
					appendZl(zl)
					bait()
				end
			end

			repeat
				local length = #jumpList
				if length == 0 then break end
				length = 131000 < length and 131000 or length
				appendRandomList(table.remove(jumpList, math.random(1, length)))
				 appendRandomList(table.remove(jumpList, 1))
			until false

			appendRandomList(':goto_' .. pc .. '\nRETURN')
			return randomList
		end

		zlList = JmpHx(zlList)
		return table.concat(upvalueList, '\n') .. '\n' .. table.concat(zlList, '\n')
	end

	local isMain = false
	data = string.gsub(data, '(\n\t*%.maxstacksize %d+\n)(.-RETURN%s*\n)(; %]=========%])', function(p1, p2, p3)
		isMain = true
		return p1 .. JMPhx(p2) .. p3
	end)


Tab={}
function Tab.Table_Rand(t)
	local tRet = {}
	local Total = #t
	while Total > 0 do
		local i = math.random(1,Total)
		table.insert(tRet,t[i])
		t[i] = t[Total]
		Total = Total-1
	end
	return tRet
end--打乱table

function Tab.table_maxn(t)
    local mn = nil;
    for k, v in pairs(t) do
        if(mn == nil) then
            mn = v
        end
        if mn < v then
            mn = v
        end
    end
    return mn
end--table最大值

data=lasm.."\n"..data

BOOL=[=[

local to_num = tonumber
local _Boolean = {}
_Boolean["\255"]=not _Boolean['\250']
_Boolean["\254"]=not _Boolean['\255']


]=]

data=data:gsub("([^%w_])true([^%w_])",'%1(_Boolean["\255"])%2'):gsub("([^%w_])false([^%w_])",'%1(_Boolean["\254"])%2'):gsub("([^%w_])nil([^%w_])",'%1(_Boolean["\253"])%2')
data="local BY=(function(...)\nlocal GL=(function(...)\n"..BOOL.."\n"..data..'\nend)(GL)\nend)(_ENV)([=[ \n'..[=[ 



🇪·🇳·🇨🔹🇧 🇾 🇱 🇸



]=]..' \n debug getinfo @ ️ ]=])'
    data = data:gsub("linedefined [^\n]+", "linedefined 0")
    :gsub("lastlinedefined [^\n]+", "lastlinedefined 0")
    :gsub("%.maxstacksize %d+", ".maxstacksize 250")
data=data:gsub("(%u+)( [uv]%d+[^\n]-)(\".-\")",function(x,z,y)
local max=math.random(210,219)
local min=math.random(200,209)
if x=="LOADK" then
return x..z..y
end
return "LOADK v"..max.." "..y.."\nTESTSET v"..min.." v"..max.." 1\nTESTSET v"..math.random(220,229).." v"..math.random(230,239).." 1\nLOADBOOL v"..min.." 1\n"..x..z.."v"..min
end)
data=data:gsub("LOADK v(%d+) ([^\n]+)",function(min,y)
local max=math.random(210,219)
return "LOADK v"..max.." "..y.."\nTESTSET v"..min.." v"..max.." 1\nTESTSET v"..math.random(220,229).." v"..math.random(230,239).." 1\nLOADBOOL v"..min.." 1"
end)
data=load(data)

data=string.dump(data,true,true)

TY=GL[1]..'.GL.lasm'
if not gg.internal2(load(data),TY)then return gg.alert('文件加密失败❗')end
data=io.open(TY,"r"):read("*a")
os.remove(TY)
data=data:gsub("linedefined[^\n]*","linedefined 0"):gsub("lastlinedefined(^\n]*","lastlinedefined 0"):gsub("maxstacksize[^\n]*","maxstacksize 250")
data=data:gsub('%.source%s*"%=%?"',".source \"YC\"")

if GL[3]==true then
if GL[4]==true then
data=JMPHX(data,true)
else
data=JMPHX(data)
end
soucr=load(data)
if soucr==nil then
gg.alert("JMP加密失败","")
io.open(TY.."[JMP失败文件].Lua","w"):write(data)
os.exit()
end
end
if GL[5]==true then
data=data:gsub("%.line 0\n(.-).func F0(.-)\n",(function(QK7,QK8)
return QK5(QK7).."\n.func F0"..QK8.."\n"
end))
data=data:gsub("%;%s*%]%=%=%=%=%=%=%=%=%=%](.-)%s*",(function(data)
data="\n"..table.concat(QK4,"\n").."\n; ]=========]"..data
return data
end))
data=data:gsub("%s*\n%s*","\n")
end
if GL[6]==true then
data=data:gsub('(\n%s*RETURN [^\n]*)','%1\nRETURN v250..v250;\x4A\x53\n',1)
data=data:gsub('(\n%s*TAILCALL [^\n]*)','%1\nRETURN v250..v250;\x4A\x53\n',1)
end
if GL[7]==true then
local SGLF=function()
return math.random(100,1100)
end
data=data:gsub("[^\n]*NEWTABLE[^\n]*",
function(txt)
return txt:gsub("(NEWTABLE v%d+) %d+ (%d+)","%1 "..SGLF().." %2")
end)
end
if GL[8]==true then
function SAN_t()
local Random=math.random(1,3)
return string.rep("[{  #�۝\n",Random)
end
TAB_SAN={}
for k=231,239 do
TAB_SAN[#TAB_SAN+1]="LOADK v"..k..' "'..SAN_t()..'"'
end
data=data:gsub("[^\n]*LOADK v157 1[^\n]*",function(txt)
return txt:gsub(".+",txt.."\nNEWTABLE v239 200 0\n"..table.concat(TAB_SAN,"\n").."\n")
end)
end
if GL[2]==true then
data=data:gsub("upval%s*v0*%s*nil%s*;%s*%w*","upval v0 nil ; u0\n"..QKCW,1)
data=data:gsub("upval%s*u0*%s*nil%s*;%s*%w*","upval u0 nil ; u0\n"..QKCW1,1)
end
if GL[10]==true then
local TFORLOOP=require('RL')
data=TFORLOOP.enc(data)
end
if GL[11]==true then
    data = string.gsub(data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x6C, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x00), string.char(0x04, 0x00, 0x00, 0x00, 0x00))

    data, error = data:gsub(utf8.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x80, 0x01), utf8.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x80, 0x17))

    data, error = data:gsub(utf8.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x40, 0x00, 0x80, 0x01), utf8.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x40, 0x00, 0x80, 0x99))

    data, error = data:gsub(utf8.char(0x17, 0x80, 0xFE, 0x7F, 0x06), utf8.char(0x17, 0x80, 0x1B, 0x7F, 0x06))

    data, error = data:gsub(utf8.char(0x1F, 0x00, 0x80, 0x00), utf8.char(0x1F, 0x00, 0x80, 0xAB))

    data = string.gsub(data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA), string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))

    data = string.gsub(data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF), string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF))

    data = string.gsub(data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00), string.char(0x00, 0x00, 0x00, 0x00), 1)

    data = string.gsub(data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x6C, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x00), string.char(0x04, 0x00, 0x00, 0x00, 0x00), 1)

    data = string.gsub(data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x6C), string.char(0x04, 0xE9, 0x03, 0x00, 0x00) .. string.rep(string.char(6), 1000))

    data = string.gsub(data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x52), string.char(0x04, 0x11, 0x27, 0x00, 0x00) .. string.rep(string.char(6), 10000))
    data=data:gsub(string.char(0x17 ,0x80 ,0xFE ,0x7F ,0x06),
string.char(0x17 ,0x80 ,0x1B ,0x7F ,0x06))

data=data:gsub(string.char(0x1F ,0x00 ,0x80 ,0x00 ),
string.char(0x1F ,0x00 ,0x80 ,0xAB))
              data=string.gsub(data,string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
				string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
data=string.gsub(data,string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA), function()
			return string.char(math.random(200, 255), math.random(200, 255), math.random(200, 255), math.random(200, 255), 
						math.random(200, 255), math.random(200, 255), math.random(200, 255), math.random(200, 255), 0xFA, 0xFA, 0xFA) end)
    
end
data=string.dump(load(data),true)

if GL[12]==true then
data=data:gsub("Lua"..("."):rep(#GL[13]),"Lua"..string.char(table.unpack({GL[13]:byte(0,-1)})),1)
end
data=data:gsub('\x9F\x3E\x00\x01','\x24\x00\x00\x00')
data=data:gsub(string.rep(string.char(0x1F,0x00,0x80,0x00),4),LASM)
data=data:gsub("\x00\x00\x00\x00\x00\x00\x00\x00\xFA\xFA\xFA(....)\x17...",function(y)
return "\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFA\xFA\xFA"..y.."\x63\xBD"..string.char(math.random(255,255),math.random(10,110))end)
if GL[9]==true then
local TeSl=function(num)
local THSF={}
if not num then
num=math.random(30000,35000)
end
for x=1,num do
THSF[#THSF+1]=string.char(math.random(10,110))
end
return table.concat(THSF)
end
local Ren=math.random(5000,7000)+1
local x1=Ren/256
local x2=Ren%256
local Ren=TeSl(Ren-1)
data=data:gsub("\004\022\000\000\000无京天涯死我卡吧",function(x)
return "\004"..string.char(x2,x1).."\000\000"..Ren
end)
local Ner=TeSl(math.random(10000,13000)).."\x04"..string.char(x2,x1).."\x00\x00"..Ren.."\000"..TeSl(math.random(10000,13000))
local y1=(#Ner+1)/256
local y2=(#Ner+1)%256
data=data:gsub("\004\022\000\000\000牛马玩意笑飞我",function(x)
return "\004"..string.char(y2,y1).."\000\000"..Ner
end)
end
io.open(GL[1]..".'enc'.Lua","w"):write(data.."\n\n\n\n\n\n\n\n\t       =�羽洛6。           ")
gg.alert('加密成功\n文件为:'..GL[1],'确定')