To_16=function(txt)
local sp=string.format("%x",txt)
if #sp==1 then
sp="0"..sp
end
return "\\x"..sp
end
function To__16(str)
return(str:gsub(".",function(x)
return(To_16(string.byte(x)))
end))
end
function RandomStr(len)
len=len or math.random(4,6)
    local str = ""
    str = string.char(math.random(65, 90))
    for num = 1, len - 1 do
        local number = math.random(1, 3)
        if number == 1 then
            str = str .. string.char(math.random(65, 90))
        elseif number == 2 then
            str = str .. string.char(math.random(97, 122))
        elseif number == 3 then
            str = str .. string.char(math.random(48, 57))
        end
    end
    return str
end


function suiji()
local ret,rec
ret=""
for i=1,3 do
rec=string.char(math.random(150,190))
ret=ret..rec
end
  weizhi="�"
  ret=weizhi..ret..weizhi..string.char(math.random(150,190))..weizhi
  return ret
end
___name={}
function _Random(Table_name,Random,...)
local xxxx=...
if not ___name[Table_name] then
_ENV[Table_name]={}
___name[Table_name]=true
end
while(true)do
x=_ENV[Random](xxxx)
if not _ENV[Table_name][x] then
_ENV[Table_name][x]=x
str=x
break
end
end
return(str)
end

Table_name=RandomStr()
Dec_name=RandomStr()
_ENV["字符串"]={}
String={}
table.insert(String,"local "..Table_name.."={}")
KEYS={}
local KEY=math.random(1,32)
function NZF_Str(STR)
if(STR=="")then;return("\034\034")end
Str=STR
STRING=_ENV["字符串"][STR]
if(STRING)then;return(STRING)end
ascll={string.byte(STR,1,-1)}
res={}
Key=math.random(128,255)
table.insert(KEYS,To_16(Key))
for index,value in ipairs(ascll) do
value=value~(Key~KEY)
value=To_16(value)
table.insert(res,value)
end
Name=Table_name.."['".._Random("乱码","suiji").."']"
table.insert(String,Name.."=(function();return(Str_dec('"..table.concat(res).."'));end)()")
STR="("..Dec_name.."("..Name.."))"
_ENV["字符串"][Str]=STR
return STR
end
Enc_10Num=function(num)
return("Char['"..To_16(num).."']")
end
----千仞雪字符串
local fuc = {}
	for v, s in pairs(_ENV) do
fuc[v]=1
end

fuc = {
["gg"] = 2,
["os"] = 2,
["io"] = 2,
["string"] = 2,
["math"] = 2,
["table"] = 2,
["debug"] = 2,
["bit32"] = 2,
["utf8"] = 2,
}

Func={}
Func_name=RandomStr()
Enc_Func = function(ltre)
for v, s in pairs(_ENV) do
if type(s) == "table" and fuc[v] then
for i in pairs(s) do
if ltre:find(v .. "%s*%.%s*" .. i .. "%(")~=nil or ltre:find(v .. "%s*%.%s*" .. i .. "%s*,")~=nil or ltre:find(v .. "%s*%.%s*" .. i .. "%)")~=nil then
if ltre:find("function%s*"..v .. "%s*%.%s*" .. i .. "%s*%(")==nil and ltre:find(v .. "%s*%.%s*" .. i .. "%s*%=%s*function%s*%(")==nil  then
name=Func_name.."['".._Random("乱码","suiji").."']"
table.insert(Func,name.."=(function(_)return(_)end)("..v.."[" .. NZF_Str(i) .. "])")
ltre = ltre:gsub(v .. "%." .. i .. "%(", name.."(")
end
ltre = ltre:gsub(v .. "%." .. i .. "%s*,",name..",")
ltre = ltre:gsub(v .. "%." .. i .. "%)", name..")")
end
end
elseif type(s) == "function" and debug.getinfo(s)["what"] == "Java" then
if ltre:find(v .. "%(")~=nil or ltre:find(v .. "%s*,")~=nil then
if ltre:find("function%s*"..v.."%s*%(")==nil and ltre:find(v.."%s*%=%s*function%s*%(")==nil then
name=Func_name.."['".._Random("乱码","suiji").."']"
table.insert(Func,name.."=".."(function(_)return(_)end)(_ENV[" .. NZF_Str(v) .. "])")
ltre = ltre:gsub(v .. "%(", name.."(")
end
ltre = ltre:gsub(v .. "%s*,", name..",")
end
end
end
Func_Tab="\nlocal "..Func_name.."={}\n"..(table.concat(Func,"\n")).."\n"
x=Func_Tab..ltre
return x
end

local NumStr = function(code)
local isInTab = function(p, t)
    if #t == 0 then
        return false
    end
    for i, v in pairs(t) do
        if p == v then
            return i
        end
    end
    return false
end
local numArgs = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 }
local strArgs = { "_0_", "_1_", "_2_", "_3_", "_4_", "_5_", "_6_", "_7_", "_8_", "_9_" }
numName=RandomStr()

        numTab = {}
        numTabT = {}
        Z_ = "([%(%{%[%-%+%%%*/%=%^~%s\n\r\t,;])"
        Y_ = "([%]%}%)%-%+%%%*/%=%^~%s\n\r\t,;])"
        Ptab = {
            Z_ .. "(%d%.%d+[Ee]%-?%d+)" .. Y_, Z_ .. "(%d+%.%d+)" .. Y_,
            Z_ .. "(0[xX][A-Fa-f0-9]+)" .. Y_, Z_ .. "(%d+)" .. Y_
        }
        for _, v in pairs(Ptab) do
            for x, ii, h in code:gmatch(v) do
                III = ii:gsub("%-", "%%-"):gsub("%.", "%%.")
                local mat = III:match("0[xX](.+)")
                if mat then
                    if (tonumber("0x" .. mat) == nil) then
                        ii = "0"
                    end
                end
                XX = "%" .. x
                HH = "%" .. h
                x = x:gsub("%%", "%%%%")
                h = h:gsub("%%", "%%%%")
                local key = isInTab(ii, numTab)
                if not key then
                    numTab[#numTab + 1] = ii
                    key = #numTab
                    
                    numTabT[key] = numName .. "[" .. key .. "]=_Ts(" .. NZF_Str(ii) .. ")"
                end
                key = tostring(key)
                for i, v in pairs(numArgs) do
                    key = key:gsub(v, strArgs[i])
                end
                code = code:gsub(XX .. III .. HH, x .. numName .. "[" .. key .. "]" .. h)
                
            end
        end
    
    if numTabT then
        local NUMDY = "local " .. numName .. "={}" .. table.concat(numTabT, ";")
        code = NUMDY .. code
    end
    for i, v in pairs(strArgs) do
        code = code:gsub(v, numArgs[i])
    end
    code="\nlocal _Ts=tonumber\n"..code
    return code
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
Enc_Str=function(DATA)
local gr = {}
repeat
local s1, ss1, x1, xx1, n1, n2, str
s1 = string.find(DATA, "\034")--单引号
ss1 = string.find(DATA, "\039")--双引号
x1 = string.find(DATA, "%[[=]*%[")--中括号
xx1 = string.find(DATA, "%-%-")--注释
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
gr[#gr + 1] = NZF_Str(t3(),true)
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
gr[#gr + 1] = NZF_Str(t3(),true)
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
gr[#gr + 1] = NZF_Str(t3(),true)
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
local GY={}
GY.last=gg.getFile()
GY.info=nil
GY.config=gg.EXT_FILES_DIR:gsub("%lua$","").."/By千仞雪-rx.cfg"
GY.data=loadfile(GY.config)
if GY.data~=nil then;
GY.info=GY.data()
GY.data=nil
end
if GY.info==nil then
GY.info={GY.last}
end
------------UI界面
local ByGY=gg.prompt({
"1.🎰选择脚本🎎:",
'2.🎭加密函数🧸',--2
'3.🛀加密数字🧻',--3
'4.💉垃圾写入🛎️',--5
"5.🔭未知错误📱",
"6.🧬指令错位⌨️",
"7.🖥️刷取图标🖨️",
"8.🕹️区块加固🎮",
"9.💽防止拆卸🧭",
"10.📉陷阱指令🎛️",
"11.💵算法加固💶",
"12.⚔️拆卸内存⚒️",
"13.🔱无用禁开🔱",
"14.🔰指令加强🎷",
"15.🎹添加专属修改器🧩",
"16.💡开启/添加密码🔦",
"17.📡开启/输入密码🚨",
"18.💠加密开头〽️",
"19.🎴输入开头✂️",
"20.🧮加密变量名📖"
},
GY.info
,{
"file",
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
"text",
"checkbox",
"text",
"checkbox"
})
if ByGY==nil then os.exit(print("未选择文件"))end
ByGY1 = ByGY[1]:gsub("(.+)/(.+)",function(x,y)
    CoNe = "[Encryption]-" .. y
    return x .. "/[Encryption]-" .. y
end)

gg.saveVariable(ByGY,GY.config)
data=io.open(ByGY[1],"r"):read("*a")
Fy=[=[




--防hook
new=os.clock()
local Luffyyf={}
for i=1,20 do
  Luffyyf[#Luffyyf+1]=math.random(1,255)
  Luffyyf[#Luffyyf+1]=10
end
Luffyyf="string.char(table.unpack({"..((","..table.concat(Luffyyf,",")):rep(1000)):gsub(",","",1).."}))"
pcall(load(Luffyyf))
while os.clock()-new>0.2 do
print("检测到hook破解")
os.exit()
while true do end
end
for i = 1,9999 do
debug.getinfo(i)
end
for k = 1,9999 do
debug.getinfo(k)
end
randBunti = math.random
CitMau = randBunti(1,254)
CitMau2 = randBunti(255,632)
 CitMaulog = randBunti(CitMau,CitMau2) CitMau3 = CitMau2..CitMau..CitMau2 CitMau4 = "LOG？LOG？"..CitMau3.."LOG？作者:千仞雪"
 CitMau5 = CitMau4..CitMau4..CitMau4..CitMau4
 CitMau6 = CitMau5..CitMau5..CitMau5..CitMau5
 CitMau7 = CitMau6..CitMau6..CitMau6..CitMau6
   G = CitMau7..CitMau7..CitMau7..CitMau7..CitMau7..CitMau7..CitMau7..CitMau7..CitMau7..CitMau7..CitMau7..CitMau7..CitMau7..CitMau7
for i = 1,CitMaulog do
gg.setVisible(false)
gg.refineNumber(G..G..G)
gg.refineNumber("作者千仞雪",G..G,"​log？")
gg.refineAddress(_ENV)
gg.clearResults()
end
tostring=nil
debug.debug=nil
debug.gethook=nil
debug.getinfo=nil
debug.getlocal=nil
debug.getmetatable=nil
debug.getregistry=nil
debug.getupvalue=nil
debug.getuservalue=nil
debug.sethook=nil
debug.setlocal=nil
debug.setmetatable=nil
debug.setupvalue=nil
debug.setuservalue=nil
debug.traceback=nil
debug.upvalueid=nil
debug.upvaluejoin=nil

vpn= "https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F"
vpn=tostring(gg["makeRequest"](vpn))
if not vpn  or not vpn:sub(1,20) then 
    gg["alert"]("请允许访问网络！",string.char())
else
    while #vpn<100 or vpn:find("SSL") or vpn:find("I/O") or vpn:find("javax") do
    end
end
for i=1,1 do load(" load你🐴逼逼是不是小狗狗 ") end
--简单的防拦截器
for i, v in pairs(_ENV) do
        i = _ENV[i]
        if type(i) == "table" then    
        for m, n in pairs(i) do
        if type(i[m]) == "function" then
        local zhuangtai=pcall(debug.getlocal,i[m],0,1)
        while not zhuangtai do
        print("╾╾╾╾╾🌠🌀警告⭐💨╾╾╾╾╾\n检测破解!\n请正常执行脚本!\n支持版本:91.0~101.1\n".."╾╾╾╾╾🔰By.千仞雪🔱╾╾╾╾╾")
        os.exit() 
        end        
    end
end
        elseif type(i) == "function" then
        local zhuangtai=pcall(debug.getlocal,i,0,1)        
        while not zhuangtai do
        print("╾╾╾╾╾🌠🌀警告⭐💨╾╾╾╾╾\n检测破解!\n请正常执行脚本!\n支持版本:91.0~101.1\n".."╾╾╾╾╾🔰By.千仞雪🔱╾╾╾╾╾")
        os.exit() 
        end
    end
end


--Art修改器防御
while string.find(gg.EXT_CACHE_DIR,"catch.Art.Tool.seatchl") do
end
--防kk钞能力修改器
while string.find(gg.EXT_CACHE_DIR,"catch_.me_.if_.you_.can_93") do
end
for k,v in pairs(_ENV) do
if type(v)=="table" then
for kk,vv in pairs(v) do
if type(vv)=="function" then
local zhuangtai,Fuanfuizhi=pcall(string.dump,vv)
while zhuangtai==nil or zhuangtai do
end
end
end
end
end
--gg.internal2防御
local Table_Pcall={}
for k,v in pairs(_ENV) do
if type(v)=="table" then
for kk,vv in pairs(v) do
if type(vv)=="function" then
local zhuangtai,Fanhuizhi=pcall(gg.internal2,vv)
--遍历脚本名称
for kk in string.gmatch(Fanhuizhi,"/(.-):") do
Table_Pcall[#Table_Pcall+1]="/"..kk
end
--是否存在JAVA层
for kk in string.gmatch(Fanhuizhi,"%[Java%]%:%-1") do
Table_Pcall[#Table_Pcall+1]=kk
end
end
end
end
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
	print("爱上这个女孩[千仞雪]")
    os.exit()
    print("爱上这个女孩[千仞雪]")
    XYNB()
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
		print("爱上这个女孩[千仞雪]")
        os.exit()
        print("爱上这个女孩[千仞雪]")
        XYNB()
	end
end
local loadResult=function(Tab, Star)
	local clock = Clock()
	for i = 1, Ei_Thousand do
		Tab[#Tab+1] = {[AddRess] = Tab[1][AddRess], [Flag] = Tab[1][Flag]}
	end
	local jg = loadResults(Tab)
	while Clock()-clock > Two do
		print("爱上这个女孩[千仞雪]")
        os.exit()
        print("爱上这个女孩[千仞雪]")
        XYNB()
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
		return gg.toast("爱上这个女孩[千仞雪]")
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
            print("爱上这个女孩[千仞雪]")
            os.exit()
            print("爱上这个女孩[千仞雪]")
            XYNB() 
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
            print("爱上这个女孩[千仞雪]")
            os.exit()
            print("爱上这个女孩[千仞雪]")
            XYNB()
        end
        return str2
    end
end

]=]

data=Fy..data
data=Enc_Str(data)
if ByGY[20] == true then
data = Env(data)
end

if ByGY[2] == true then
data = Enc_Func(data)
end
if ByGY[3] == true then
data = NumStr(data)
end
SF={}
table.insert(SF,[=[
local Char={}
local __pairs,string__byte,string__char=pairs,string.byte,string.char
for index=#Char,255 do
Char[index]=string__char(index)
Char[(Char[index])]=index
end
local INDEX=#Char/#Char
]=])
table.insert(SF,"local KEYS='"..table.concat(KEYS).."'")
table.insert(SF,[=[

local Str_dec=function(str)
local Res={}
for index,value in __pairs({string__byte(str,1,#str)}) do
Res[index]=(value~(]=]..Enc_10Num(KEY)..[=[~string__byte(KEYS,INDEX)))
end
INDEX=INDEX+#KEYS/#KEYS
return(Res)
end
]=])

table.insert(SF,"local "..Dec_name..[=[=function(Table)
local res=""
for index,value in __pairs(Table) do
res=res..Char[(value)]
end
return(res)
end
]=])
local Goto=function(num)
num=num or math.random( 4,10)
nzf = "goto nzf;"
return ";if(Char['我将.....'])then;" .. nzf:rep(num * 2) ..
            "::nzf::;end;"
end
___=function(Table)
res=""
for i, v in pairs(Table) do
res=res..v..Goto()
end
return res
end
String=(ByGY[4]) and  ___(String) or table.concat(String,"\n")
table.insert(SF,String)
SF=table.concat(SF,"\n")
data=SF..data
if ByGY[15] == true then
gg.alert("本功能能防99%的解密GG，除了部分可伪装，其余解密GG基本报废！")
aaa=gg.prompt({"自定义修改器版本","自定义修改器版本号","自定义修改器包名"},{gg.VERSION,gg.BUILD,gg.PACKAGE},{"Text","Text","Text"})
 fanGYu2 = [[
if gg.VERSION== '版本' then
 else
 print('专属GG验证失败')
os.exit()
 while true do 
end end
if gg.BUILD=='版本号' then
 else
print('专属GG验证失败')
os.exit() 
while true do 
end end
if gg.PACKAGE=='包名'
 then
 else
print('专属GG验证失败')
os.exit() 
while true do 
end end
        ]]
data = fanGYu2 .. data
data = data:gsub('版本号', aaa[2])
data = data:gsub('版本', aaa[1])
data = data:gsub('包名', aaa[3])
end
if ByGY[16] then
        fanGYu1 = [[
        key = gg.prompt({"请输入密码"}, {
            [1] = ""
        }, {
            [1] = "text"
        })
        key = key or os.exit()
        while key[1] ~= 'tihuan' do
            gg.alert("请输入密码")
            os.exit()
        end
        ]]
        fanGYu1 = string.gsub(fanGYu1, "tihuan", ByGY[17])
    
data = fanGYu1 .. data
end
if ByGY[12]==true then
lasm="while i do\nlocal i\nwhile i==QQ2171410025 do\n"..("_ENV[\"消炎水笑死人了\"]=\"牛马玩意笑飞我\"\n"):rep(math.random(3000,4000)).."end\nbreak\nend"
else
lasm=""
end
data=lasm.."\n"..data

VarName_Ran = math.random(60,90)
local Vername_dec=[===[
local char, Tostring, Char, gmatc, ToNumber
local KwtRv={}
KwtRv["\x4d\x7f\xfd"]="s"
KwtRv["\x57\x0a\xf8\x03\x1f"]="n"
KwtRv["\x45\x58\x60"]="a"
KwtRv["\x66\x68\x8a"]="t"
KwtRv["\x50\xf4\x2f"]="r"
KwtRv["\x14\x43\x7b\x5d\xa6"]="i"
KwtRv["\xdd\xf5\xd6\xd2\x24"]="o"
KwtRv["\xa4\xa9\x72\x27\x63"]="m"
KwtRv["\x94\x59\x51"]="u"
KwtRv["\xa9\x59\x72\x67\x83"]="b"
KwtRv["\x4b\x44\x16\x94\x75"]="g"
KwtRv["\x92\xe6\x0b\xd3\x34"]="c"
KwtRv["\x40\x63\x9e\xd0"]="h"
KwtRv["\xc4\xd9\xc6\xf7\xe1"]="e"
local skjtRv=function(Table)
local data=""
for index = (#KwtRv)^(#KwtRv), #Table do
data=data..KwtRv[Table[index]]
end
return data
end
local KmsUy={}
KmsUy["\xc1\x13\x25\x62"]=skjtRv({"\x4d\x7f\xfd","\x66\x68\x8a","\x50\xf4\x2f","\x14\x43\x7b\x5d\xa6","\x57\x0a\xf8\x03\x1f","\x4b\x44\x16\x94\x75"})
KmsUy["\x2f\xa6\x6c\x4d"]=skjtRv({"\x92\xe6\x0b\xd3\x34","\x40\x63\x9e\xd0","\x45\x58\x60","\x50\xf4\x2f"})
KmsUy["\x8f\xb3\x18\x5c\x3f"]=skjtRv({"\x66\x68\x8a","\xdd\xf5\xd6\xd2\x24","\x4d\x7f\xfd","\x66\x68\x8a","\x50\xf4\x2f","\x14\x43\x7b\x5d\xa6","\x57\x0a\xf8\x03\x1f","\x4b\x44\x16\x94\x75"})
KmsUy["\x74\x39\xfd"]=skjtRv({"\x4b\x44\x16\x94\x75","\xa4\xa9\x72\x27\x63","\x45\x58\x60","\x66\x68\x8a","\x92\xe6\x0b\xd3\x34","\x40\x63\x9e\xd0"})
KmsUy["\x54\x19\x8d"]=skjtRv({"\x66\x68\x8a","\xdd\xf5\xd6\xd2\x24","\x57\x0a\xf8\x03\x1f","\x94\x59\x51","\xa4\xa9\x72\x27\x63","\xa9\x59\x72\x67\x83","\xc4\xd9\xc6\xf7\xe1","\x50\xf4\x2f"})
char=_ENV[(KmsUy["\xc1\x13\x25\x62"])][(KmsUy["\x2f\xa6\x6c\x4d"])]
Tostring=_ENV[(KmsUy["\x8f\xb3\x18\x5c\x3f"])]
gmatc=_ENV[(KmsUy["\xc1\x13\x25\x62"])][(KmsUy["\x74\x39\xfd"])]
ToNumber=_ENV[(KmsUy["\x54\x19\x8d"])]
Char={}
for i=(#KwtRv-#KwtRv),255 do
Char[i]=char(i)
Char[char(i)]=i
end
local Dec_FuncVarName = function(x,n)
if x~=nil then
local re=""
for i in gmatc(x,".") do
re=re..Char[Char[i]-VarName_Ran]
end
if n then
re = ToNumber(re)
end
return re
end
end
]===]
To_16 = function(txt)
local sp = string.format("%x",txt)
if #sp == 1 then
sp = "0" .. sp
end
return "\\x" .. sp
end
Enc_FuncVarName = function(x)
return string.gsub(x,".",function(s)
return To_16(string.byte(s)+VarName_Ran)
end)
end
BOOL=[=[
FuncVarName=0
Dec_FuncVarName("\xFD\xFE")
_ENV['\255\255\255\255\255\255\255\255']=true
_ENV['\254\254\254\254\254\254\254\254']=false
_ENV['\253\253\253\253\253\253\253\253']=nil
]=]
data=data:gsub("true",'(_ENV["\255\255\255\255\255\255\255\255"])'):gsub("false",'(_ENV["\254\254\254\254\254\254\254\254"])'):gsub("nil",'(_ENV["\253\253\253\253\253\253\253\253"])')
data="(function(...)\nDec_FuncVarName(\"\\xFD\\xFE\")\n"..data:gsub("([^%w]function[%w%s%._:]*%(.-%))","%1\nDec_FuncVarName(\"\\xFD\\xFE\")\n").."\nend)()"
data="local BY=(function(...)\nlocal GY=(function(...)\nlocal VarName_Ran="..VarName_Ran.."\n".. Vername_dec .. "\n"..BOOL.."\n"..data..'\nend)(GY)\nend)(_ENV)([=[ \n\n\n\n'..[===[
     💮["终焉中焉-雪"]🌸
 not true |break true| not true 
     '⅀⋄ 孤灵∤'=true"---无知"🌖
身是菩提树，心如明镜台，时时勤拂拭，勿使惹尘埃。
From :羽洛☄️
        "in the 2022 Ture"🌠
     true===|🍁break true🌺|===nil🌠️

|['光るなら (若能绽放光芒)']|
✨[四月是你的谎言]🌌 
- - ∽{'http://music.163.com/song/media/outer/url?id=29732992.mp3'}
⏱️]===] .. os.date("%Y年%m月%d日%H时%M分") .. [===[



]===]..']=])'
io.open(ByGY[1]..".[san字符串].Lua","w"):write(data)
data=load(data)
data=string.dump(data,true,true)
TY=ByGY[1]..'.GY.lasm'
if not gg.internal2(load(data),TY)then return gg.alert('文件加密失败❗')end
data=io.open(TY,"r"):read("*a")
os.remove(TY)
data=data:gsub("linedefined[^\n]*","linedefined 0"):gsub("lastlinedefined(^\n]*","lastlinedefined 0"):gsub("maxstacksize[^\n]*","maxstacksize 250")
data=data:gsub('%.source%s*"%=%?"',".source \"GY\"")
local start, fina
fina=string.find(data,"FuncVarName")
start=data:sub(0,fina-1)
fina=data:sub(fina,-1)
fina=fina:gsub("(GETUPVAL v(%d+) u%d+%s+LOADK v%d+ \"\\xFD\\xFE\"%s+CALL v%d+..v%d+)","%1\nMOVE v221 v%2")
local Tab_OP={"SETTABLE","GETTABLE","SETTABUP","GETTABUP","SELF"}
for k,v in pairs(Tab_OP) do
fina = fina:gsub("("..v.." [^\n]-)\"([^\n]-)\"",function(vb,i)
if not i:find("[^%w_]") and i:gsub("[%w_]","")=="" and #i>1 then
return "MOVE v224 v221\nLOADK v225 \""..Enc_FuncVarName(i).."\"\nCALL v224..v225 v224..v224\n"..vb.."v224"
else
return vb.."\""..i.."\""
end
end)
end
fina = fina:gsub("LOADK (v%d+) \"([^\n]-)\"",function(vb,i)
if not i:find("[^%w_]") and i:gsub("[%w_]","")=="" and #i>1 then
return "MOVE v224 v221\nLOADK v225 \""..Enc_FuncVarName(i).."\"\nCALL v224..v225 v224..v224\nMOVE "..vb.." v224"
else
return "LOADK "..vb.." \""..i.."\""
end
end)
data=start..fina
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
local BQ={"c","}","∑️","∐","️∿","∄","⊴","⊲","∔","∓","≂","∸","∃","️∤"}
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
Q_2="\n.source \"GY\x00\"\n.linedefined 0\n.lastlinedefined 0\n.numparams 0\n.is_vararg 250\n.maxstacksize 0\n.upval u0 nil ; u0\n"
QK1=QK1+1
Q_3="CLOSURE v0 F"..tostring((QK1)).."\nVARARG v1\nTAILCALL v0\n"
Q_3=Q_1..Q_2..Q_3
table.insert(QK3,Q_3)
table.insert(QK4,".end")
end
Q_1="\n.func F"..tostring(QK1).."\n"
Q_2="\n.source \"GY\x00\"\n.linedefined 0\n.lastlinedefined 0\n.numparams 0\n.is_vararg 250\n.maxstacksize 0\n.upval u0 nil ; u0\n"
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
--垃圾防反编译
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
if ByGY[6]==true then
if ByGY[7]==true then
data=JMPHX(data,true)
else
data=JMPHX(data)
end
soucr=load(data)
if soucr==nil then
gg.alert("JMP加密失败","")
io.open(data.."[JMP失败文件].Lua","w"):write(data)
os.exit()
end
end
if ByGY[8]==true then
data=data:gsub("%.line 0\n(.-).func F0(.-)\n",(function(QK7,QK8)
return QK5(QK7).."\n.func F0"..QK8.."\n"
end))
data=data:gsub("%;%s*%]%=%=%=%=%=%=%=%=%=%](.-)%s*",(function(data)
data="\n"..table.concat(QK4,"\n").."\n; ]=========]"..data
return data
end))
data=data:gsub("%s*\n%s*","\n")
end
if ByGY[9]==true then
data=data:gsub('(\n%s*RETURN [^\n]*)','%1\nRETURN v250..v250;\x4A\x53\n',1)
data=data:gsub('(\n%s*TAILCALL [^\n]*)','%1\nRETURN v250..v250;\x4A\x53\n',1)
end
if ByGY[10]==true then
local SJSF=function()
return math.random(100,1100)
end
data=data:gsub("[^\n]*NEWTABLE[^\n]*",
function(txt)
return txt:gsub("(NEWTABLE v%d+) %d+ (%d+)","%1 "..SJSF().." %2")
end)
end
if ByGY[11]==true then
function GY_t()
local Random=math.random(1,20)
return string.rep("�",Random)
end
TAB_GY={}
for k=231,239 do
TAB_GY[#TAB_GY+1]="LOADK v"..k..' "'..GY_t()..'"'
end
data=data:gsub("[^\n]*LOADK v246 1[^\n]*",function(txt)
return txt:gsub(".+",txt.."\nNEWTABLE v239 200 0\n"..table.concat(TAB_GY,"\n").."\nSETLIST v240..v249 1\n")
end)
end
if ByGY[5]==true then
data=data:gsub("upval%s*v0*%s*nil%s*;%s*%w*","upval v0 nil ; u0\n"..QKCW,1)
data=data:gsub("upval%s*u0*%s*nil%s*;%s*%w*","upval u0 nil ; u0\n"..QKCW1,1)
end
if ByGY[13]==true then
local TFORLOOP=require('RL')
data=TFORLOOP.enc(data)
end
if ByGY[14]==true then
end
data=string.gsub(string.dump(load(data),true),"LuaR","LuaR")
if ByGY[18]==true then
data=data:gsub("Lua"..("."):rep(#ByGY[19]),"Lua"..string.char(table.unpack({ByGY[19]:byte(0,-1)})),1)
end
data=data:gsub('\x9F\x3E\x00\x01','\x24\x00\x00\x00')
data=data:gsub(string.rep(string.char(0x1F,0x00,0x80,0x00),4),LASM)
data=data:gsub("\x00\x00\x00\x00\x00\x00\x00\x00\xFA\xFA\xFA(....)\x17...",function(y)
return "\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFA\xFA\xFA"..y.."\x63\xBD"..string.char(math.random(255,255),math.random(10,110))end)
data = data:gsub("\x00\x00\x00\x00\x00\x00\x00\x00\xFA\xFA\xFA(....)\x17...",function(y)
	        return "\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFA\xFA\xFA"..y.."\x63\xBD"..string.char(math.random(250,255),math.random(95,127))
	    end):gsub("\x00\x00\x00\x00\x00\x00\x00\x00\xFA\xFA\xFA(....)\x17...",function(y)
	        return "\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFA\xFA\xFA"..y.."\x63\xBD"..string.char(math.random(250,255),math.random(95,127))
end)
if ByGY[12]==true then
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
data=data:gsub("\004\022\000\000\000消炎水笑死人了",function(x)
return "\004"..string.char(x2,x1).."\000\000"..Ren
end)
local Ner=TeSl(math.random(10000,13000)).."\x04"..string.char(x2,x1).."\x00\x00"..Ren.."\000"..TeSl(math.random(10000,13000))
local y1=(#Ner+1)/256
local y2=(#Ner+1)%256
data=data:gsub("\004\022\000\000\000牛马玩意笑飞我",function(x)
return "\004"..string.char(y2,y1).."\000\000"..Ner
end)
end
data = string.gsub(data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA), string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))

data=string.gsub(data,string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA), function()
			return string.char(math.random(200, 255), math.random(200, 255), math.random(200, 255), math.random(200, 255), 
						math.random(200, 255), math.random(200, 255), math.random(200, 255), math.random(200, 255), 0xFA, 0xFA, 0xFA) end)

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
io.open(ByGY1,"w"):write(data.."")
gg.alert('加密成功\n文件为:'..ByGY[1],'确定')