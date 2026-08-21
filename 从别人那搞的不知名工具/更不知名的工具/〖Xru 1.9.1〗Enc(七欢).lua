local XRU={}
local XRUUI=[=[


[======================[

　  ∧＿∧ 
　（`･ω･´)ミ
┳∪┳―┳∪┳―┳―┐
┻┳┻┳┻┳┻┳┻┳┨
┳┻┳┻┳┻┳┻┳┻┨
┻┳┻┳┻┳┻┳┻┳┨
―┻―┻―┻―┻―┻┘
 "别怕来不及
--你永远有重头再来.
'𝓛𝓾𝓿 𝓛𝓮𝓽𝓽𝓮𝓻'="牛"
Script By➨
：Xru - for 七欢
  &-《𝙓𝙍𝙐》𝐕《1.9.1》-&  "精致版"
--联系方式已去除

🚼Thank for : RL or San or 老鸟 or 逸辰 or 鹿十七
]======================]
© 2016 ~ 2021 By\-𝙭𝙧𝙪 All Rights Reserved.    


]=]
local function Table_Rand(t)
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
local FFF=[=[ _ENV["\nXru*\n"]=nil ]=]
local FY=[=[


----没有防御，自行添加，或者直接二改，在或者直接使用


---没联系方式，唯一快猫


]=]
local Break, types, Table1, Table2, _STRING_, encrypt1


function getRandom(num)
    local data = ''
    for i = 1, num do
        if i % 2 == 0 then
            i = 96 + math.random(1, 26)
        else
            i = 64 + math.random(1, 26)
        end
        data = data .. string.char(i)
    end
    return data
end
xru_Str={}
xru_str={}
XRU.func_Str=1
FZ=1
local Key1 = math.random(1000,123456789)
local Key2 = math.random(1000,123456789)
local Key3 = math.random(1000,123456789)
local Key4 = math.random(1000,123456789)
local Key5 = math.random(1000,123456789)
local Key6 = math.random(1000,123456789)
local Key7 = math.random(1000,123456789)
local Key8 = math.random(1000,123456789)
local Key9 = math.random(1000,123456789)
local Key10 = math.random(1000,123456789)
local Key11 = math.random(1000,123456789)
local Key12 = math.random(1000,123456789)
local Key13 = math.random(1000,123456789)
local Key14 = math.random(1000,123456789)
local Key15 = math.random(1000,123456789)
local Key16 = math.random(1000,123456789)
local Key17 = math.random(1000,123456789)
local Key18 = math.random(1000,123456789)
local Key19 = math.random(1000,123456789)
local Key20 = math.random(1000,123456789)
local getKey = -Key1+Key2-Key3+Key4-Key5+Key7-Key8+Key9-Key10+Key11-Key12+Key13-Key14+Key15-Key16+Key17-Key18+Key19-Key20
function Delt(t)
  local tab={}
  local index=1
  while #t~=0 do
    local n=math.random(0,#t)
    if t[n]~=nil then
      tab[index]=t[n]
      table.remove(t,n)
      index=index+1
    end
  end
  return tab
end
XRU.encrypt=function(str)
x=","
KEY=math.random(1000,123456789)
tab={str:byte(1,-1)}
table.sort(tab,function(a,b) return a>b end)
K={}
for i=1,#tab do
  if i==1 then
    table.insert(K,'"\\' .. ((tostring(tab[i]) - Key1 + (getKey+KEY) * (Key20-KEY)) % 256) .. '"')
  else
    if '"\\' .. ((tostring(tab[i]) - Key1 + (getKey+KEY) * (Key20-KEY)) % 256) .. '"'==K[#K] then
    else
      table.insert(K,'"\\' .. ((tostring(tab[i]) - Key1 + (getKey+KEY) * (Key20-KEY)) % 256) .. '"')
    end
  end
end
K=Delt(K)
q=""
tab={str:byte(1,-1)}
for i=1,#tab do
  for k,v in pairs(K) do
    if '"\\' .. ((tostring(tab[i]) - Key1 + (getKey+KEY) * (Key20-KEY)) % 256) .. '"'==v then
      I=",N["..k.."]"
    end
  end
  q=q..I
end
q=q:gsub(",","",1)
t=""
for i=1,#K do
  t=t..","..K[i]..""
end
t="{"..t:gsub(",","",1).."}"
if XRU.STR[2]==true then
t="(function() N="..t.." \n"..FFF.."\n return XRU_Char(({___ = {"..q.."}}),"..KEY..") end)() "
else
t="(function() N="..t.."  return XRU_Char(({___ = {"..q.."}}),"..KEY..") end)() "
end
XRU.func_Str=XRU.func_Str+1
return t
end

encrypt2=function(DATA)
if DATA=="" then return "\34\34"end
DATA=tostring(DATA)
local Func = load('return ' .. DATA)
if not Func then
DATA = DATA:sub(2, -2)
DATA = string.format('%q', DATA)
Func = load('return ' .. DATA)
DATA = Func()
DATA = DATA:sub(2, -2)
else
DATA = Func()
end
DATA=tostring(DATA)
return XRU.encrypt(DATA) 
end

encrypt3=function(DATA)
if DATA=="" then return "\34\34"end
DATA=tostring(DATA)
local Func = load('return ' .. DATA)
if not Func then
DATA = DATA:sub(2, -2)
DATA = string.format('%q', DATA)
Func = load('return ' .. DATA)
DATA = Func()
DATA = DATA:sub(2, -2)
else
DATA = Func()
end
DATA=tostring(DATA)
DATA=DATA:gsub("\\092\\092", "\\\\"):gsub("\\034", "\034"):gsub("\\039", "\039"):gsub("\\n", "\n"):gsub("\\t", "\t"):gsub("\\r", "\r"):gsub("'","\34")
return XRU.encrypt(DATA)
end


jie=[[

local string_char = string.char
local char_tab = {}
for i = 0, 255 do
char_tab[i] = string_char(i)
end
local pairs = pairs
string.char = function(...)
local arg = {...}
local str = ''
for i, v in pairs(arg) do
str = str .. char_tab[v]
end
return str
end
local Key1 = ]]..Key1..[[

local Key2 = ]]..Key2..[[

local Key4 = ]]..Key4..[[

local Key5 = ]]..Key5..[[

local Key13 = ]]..Key13..[[

local Key19 = ]]..Key19..[[

local Key6 = ]]..Key6..[[

local Key7 = ]]..Key7..[[

local Key8 = ]]..Key8..[[

local Key14 = ]]..Key14..[[

local Key9 = ]]..Key9..[[

local Key10 = ]]..Key10..[[

local Key15 = ]]..Key15..[[

local Key12 = ]]..Key12..[[

local Key11 = ]]..Key11..[[

local Key16 = ]]..Key16..[[

local Key17 = ]]..Key17..[[

local Key3 = ]]..Key3..[[

local Key18 = ]]..Key18..[[

local Key20 = ]]..Key20..[[

local getKey = -Key1+Key2-Key3+Key4-Key5+Key7-Key8+Key9-Key10+Key11-Key12+Key13-Key14+Key15-Key16+Key17-Key18+Key19-Key20
local Char,Ipairs,Byte=string.char,ipairs,string.byte
local N
local XRU_Char=function(tab,KEY)
local tab=tab.___
local res=''
for index,value in Ipairs(tab)do
value=Byte(value)
value=(value + Key1 - (getKey+KEY) * (Key20-KEY)) % 256
res=res..Char(value)
end
return res
end


]]
_G["字符串"]=function(DATA)
Table1 = {}
for txt1 in DATA:gmatch('[^%-]%[([=]*)%[') do
Table1[txt1] = string.len(txt1)
end
Table2 = {}
for index, value in pairs(Table1) do
Table2[value + 1] = index
end
Table1 = Table2
_STRING_ = {}
Table2 = {}
encrypt1 = function(txt1)
    local index
    index = Table2[txt1]
    if not index then
        index = #_STRING_ + 1
        Table2[txt1] = index
        _STRING_[index] = txt1
    end
    return '_七欢𝑠𝑡𝑟𝑖𝑛𝑔_(#' .. index .. ')'
end
repeat
Break = false
types = DATA:match('[\034\039]')
if types == '\034' then
DATA = DATA:gsub('\034[^\n]-\034', function(txt2)
Break = true
return encrypt1(txt2)
end, 1)
elseif types == '\039' then
DATA = DATA:gsub('\039[^\n]-\039', function(txt2)
Break = true
return encrypt1(txt2)
end, 1)
end
until not Break
Table2 = nil
for text in DATA:gmatch("[^%-]%-%-%[([=]*)%[")do
DATA = DATA:gsub("([^%-])%-%-%[" .. text .. "%[.-%]" .. text .. "%]", '%1', 1)
end
for index, value in pairs(Table1) do
    DATA = DATA:gsub('([^\n]-)(%[' .. value .. '%[.-%]' .. value .. '%])', function(txt1, txt2)
if txt1:find('%-%-') then
return nil
end
 txt2 = txt2:gsub('_七欢𝑠𝑡𝑟𝑖𝑛𝑔_%(#(%d+)%)', function(num)
return _STRING_[tonumber(num)]
end)
return txt1 .. encrypt2(txt2)
end)
end
DATA = DATA:gsub('_七欢𝑠𝑡𝑟𝑖𝑛𝑔_%(#(%d+)%)', function(num)
 local DATA = _STRING_[tonumber(num)]
 return encrypt3(DATA)
end)
_STRING_ = nil
Table1 = nil
DATA = DATA:gsub("%-%-%[%[.-%]%]",""):gsub("%-%-[^\n]+", ""):gsub('%s*\n%s*', '\n')
XRU.func_Str=XRU.func_Str-1
gg.alert("一共加密了:"..XRU.func_Str.."个𝑠𝑡𝑟𝑖𝑛𝑔")
return DATA
end
local function Calculatedsize(size)
size=tostring(string.len(size)) 
size=size.."B" size=size:gsub('%d%d%d%d%d%d%d%d%d',function (c)m=c:sub(1,3)c=m.."."..c:sub(4,5).."M"return c end) 
size=size:gsub('%d%d%d%d%d%d%d%d',function (c)m=c:sub(1,2)c=m.."."..c:sub(3,4).."M"return c end) 
size=size:gsub('%d%d%d%d%d%d%d',function (c)m=c:sub(1,1)c=m.."."..c:sub(2,3).."M"return c end) 
size=size:gsub('%d%d%d%d%d%d',function (c)m=c:sub(1,3)c=m.."."..c:sub(4,5).."K"return c end) 
size=size:gsub('%d%d%d%d%d',function (c)m=c:sub(1,2)c=m.."."..c:sub(3,4).."K"return c end) size=size:gsub('%d%d%d%d',function (c)m=c:sub(1,1)c=m.."."..c:sub(2,3).."K"return c end)
return size 
end 
_G["编译"]=function(DATA)
lasm=_G["string"]["rep"]('XRUXRUXRUNZ="XRUXRUXRUNZ" ',tostring(XRU.xru[6]))..'\n' DATA=lasm..DATA
XRUUI="local XRU_MAIN=[=====["..XRUUI.."--[[]=====]"
DATA=XRUUI..""..("(function() "):rep(10).."\n"..DATA.."\n"..("end)() "):rep(10)..""
io.open("66666.lua","w"):write(DATA):close()
DATA=string.dump(load(DATA),true)
Lasm=tostring(XRU.xru[5])
if XRU.xru[5]=="" then
gg.alert("刷Lasm出问题\n你当前刷的内容是:空\n已自动选择方案二")
Lasm="Xru*\n"
end
if XRU.xru[5]==tostring("随机") then
Lasm=getRandom(10000)
else
LASM=tonumber((10000/#Lasm)*#Lasm)
if LASM~=10000 then
gg.alert("刷Lasm出问题\n你当前刷的内容是:\n"..#Lasm.."字节\n而10000除以"..#Lasm.."不是整数\n已自动修复")
Len=tonumber(10000-LASM)
local LasmXF=''
Table1={"\0","\1","\2","\3",}
for i=1,Len do
LasmXF=LasmXF..Table1[_G["math"]["random"](1,#Table1)]
end
Lasm=Lasm:rep(10000/#Lasm)
Lasm=Lasm..LasmXF
else
Lasm=Lasm:rep(10000/#Lasm)
end
end
_G["gg"]["internal2"](_G["load"](DATA), _G["输出"])
DATA=_G["io"]["open"](_G["输出"],"r"):read("*a")
os.remove(_G["输出"])
gg.toast("正在加密区块信息...")
DATA = string.gsub(DATA, "%s*\n%s*", "\n")
if XRU.FF[4]==true then
DATA = string.gsub(DATA, "linedefined %d+", "linedefined 0")
DATA = string.gsub(DATA, "lastlinedefined %d+", "lastlinedefined 0")

else
end
if XRU.FF[5]==true then
else
end
if XRU.FF[6]==true then
function fh()
bool=("\nLOADBOOL v40 20\nLOADBOOL v40 20")
fhh=bool.."\n\nSETTABUP u0 \"Xru*️\" 1"
return fhh
end
DATA=DATA:gsub("LOADNIL v(%d+)%.%.v(%d+)\n%s+TEST v(%d+) (%d+)\n%s+JMP :goto_(%d+)  ; %+(%d+) ↓",function (a,b,c,d,e,f) return "LOADNIL v"..a.."..v"..b.."\nTEST v"..c.." "..d.."\nTEST v"..c.." "..d.."\nLT 0 "..math.random(400,500).." "..math.random(300,400).."\nLT 0 "..math.random(400,500).." "..math.random(300,400).."\nJMP :goto_"..e.."  ; +"..f.." ↓ "..fh() end)
else
end
io.open("66666.lua","w"):write(DATA):close()

    Zhiling = {["MOVE"] = 1,["LOADK"] = 1,["LOADKX"] = 1,["LOADBOOL"] = 1,["LOADNIL"] = 1,["GETUPVAL"] = 1,["GETTABUP"] = 1,["GETTABLE"] = 1,["SETTABUP"] = 1,["SETUPVAL"] = 1,["SETTABLE"] = 1,["NEWTABLE"] = 1,["SELF"] = 1,["ADD"] = 1,["SUB"] = 1,["MUL"] = 1,["DIV"] = 1,["MOD"] = 1,["POW"] = 1,["UNM"] = 1,["NOT"] = 1,["LEN"] = 1,["CONCAT"] = 1,["JMP"] = 1,["EQ"] = 1,["LT"] = 1,["LE"] = 1,["TEST"] = 1,["TESTSET"] = 1,["CALL"] = 1,["TAILCALL"] = 1,["RETURN"] = 1,["FORLOOP"] = 1,["FORPREP"] = 1,["TFORCALL"] = 1,["TFORLOOP"] = 1,["SETLIST"] = 1,["CLOSURE"] = 1,["VARARG"] = 1,["EXTRAARG"] = 1,["IDIV"] = 1,["BNOT"] = 1,["BAND"] = 1,["BOR"] = 1,["BXOR"] = 1,["SHL"] = 1,["SHR"] = 1,["RETURN"] = 1}
	Str = {"🉑","❄","⚡","💥","✨","🌈","💫","💧","☁️","☔","🌞","🎊","🎈","🦄","🌺","🌼","🦀️","🌹","💐","🥀","🍁","☀️","🌤️","⛅","🌥️","☁️","🌦️","🌧️","⛈️","🌩️","🌨️","❄️","☔","🌈","🍒","🤍","❤️","💛","🧡","💚","💙","💜","🧸","🖤","💕","💞","💓","💗","💖","💝","🍎","🍆","🐸","🐷","🦁","🐯","🦊","🐬","🐣","🐞","🐳","🐿️"} num = 1 Tab = {} number = 10000086
	function Resver(b)
      local tab = {}
      for k,v in pairs(b) do
        table.insert(tab,1,string.format("%x",v))
      end
      str = table.concat(tab)
      tab = {}
      str = str:gsub("........",function (x) table.insert(tab,1,"OP[48] 0x"..x.."\n") end)
      number = number+1
      return "JMP :goto_"..number.."\n"..table.concat(tab).."\n:goto_"..number.."\n\nMOVE v0 v0\n"
    end
    for text in string.gmatch(DATA, '[^\n]+') do
      if text ~= '' then
        str_1 = string.match(text, '%S+')
        if Zhiling[str_1] and text:match("JMP") == nil then
          table.insert(Tab,Resver(gg.bytes(Str[num])).."\n"..text.."\n")
          if num+1 > #Str then
			 num = 1
          else
			 num = num+1
          end
        else
          table.insert(Tab,text.."\n")
        end
      end
    end
    DATA=table.concat(Tab)
DATA=_G["string"]["dump"](_G["load"](DATA),true)
DATA=_G["string"]["gsub"](DATA, _G["string"]["char"](0x04, 0x0C, 0x00, 0x00, 0x00, 0x4E ,0x5A ,0x46,0x4E ,0x5A ,0x46,0x4E ,0x5A,0x46,0x4E ,0x5A),_G["string"]["char"](0x04, 0x11, 0x27, 0x00, 0x00) .. Lasm)
DATA = string.gsub(DATA, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
              string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFF, 0xFF))
              qukuai = string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF) .. string.rep(string.char(0), 32)
DATA = DATA:gsub(qukuai,
              string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) .. string.rep(string.char(0xFF), 23) ..
                  string.char(0xFF,0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF))
  DATA = string.gsub(DATA, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
  string.char(0x00, 0x00, 0x00, 0x00))

DATA=DATA.."\n\n &-《𝙓𝙍𝙐》𝐕《1.9.1》NEC-& \n\n"
gg.alert("加密成功\n大小:\n"..Calculatedsize(DATA).."")
return DATA
end

XRU.last = _ENV["gg"]["getFile"]()
XRU.info = nil
XRU.config = '/storage/emulated/0/Android/loveXRU.cfg'
XRU.DATA = _ENV['loadfile'](XRU.config)
if XRU.DATA ~= nil then
    XRU.info = XRU.DATA()
    XRU.DATA = nil
end
if XRU.info == nil then
    XRU.info = {XRU.last}
end
if gg.playMusic==nil then
else
gg.playMusic("牛")
gg.toast("💔𝓛𝓾𝓿 𝓛𝓮𝓽𝓽𝓮𝓻💔")
end
function Main()
if XRU.info[1]==_G["gg"]["getFile"]() then
XRU.info[1]="未选择"
end
_G["gg"]["toast"]("当前文件:"..XRU.info[1])
menu = gg.choice({
	 "📁 选择脚本",
	 "⚒️️ 开始加密",
	 "💔️️ 加密公告",
     "🔚 退出脚本",
},nil,"&-《𝙓𝙍𝙐》𝐕《1.9.1》NEC -&\nXru作者 联系方式已去除\n当前文件:"..XRU.info[1])
if menu==1 then
a1()
end
if menu==2 then
a2()
end
if menu==3 then
a3()
end
if menu==4 then
Exit()
end
GLWW=-1
end

function a1()
XRU.info = _ENV["gg"]["prompt"]({
'📁 选择要加密的文件 :',
},XRU.info,{
'file',
})
if XRU.info then 
else 
_G["gg"]["alert"]('您选择取消')
Exit()
end
if _ENV["loadfile"](XRU.info[1]) then 
else 
_ENV["gg"]["alert"]('脚本存在问题') 
_ENV["os"]["exit"]()
_ENV["error"]()
end
_ENV["gg"]["saveVariable"](XRU.info, XRU.config)
Main()
end
function a2()
if XRU.info[1]=="未选择" then
_G["gg"]["alert"]("未选择脚本")
a1()
end
local time=_G["os"]["clock"]()
_G["输出名字"]=XRU.info[1]:match("[^/]+$"):gsub('%.lua$', '').."-[加密].Lua"
XRU.xru = _G["gg"]["prompt"]({
'🏷️输出名字',--1
'🗂️输出位置',--2
'🔰字符串保护',--3
'🔰函数保护区',--4
'🔰Lasm刷取内容:',--5
'🔰Lasm刷取数量:[15000;30000]',--6
'🔰防反区',--7
},{
_G["输出名字"],
XRU.info[1]:gsub('/[^/]+$',''),
true,
true,
"自定义输入",
"15000",
true,
},{
"text",
"path",
'checkbox',
'checkbox',
'text',
'number',
'checkbox',
})
if XRU.xru then 
else 
_G["gg"]["alert"]('您选择取消')
Exit()
end
_G["输出"] =XRU.xru[2].."/"..XRU.xru[1]
DATA= io.open(XRU.info[1],"r"):read("*a")

if XRU.xru[4]==true then
XRU.ENV = _G["gg"]["prompt"]({
'🔰加密函数',--1
'🔰加密function名称',--2
'🔰address等',--3
'🔰加密[]=中的数字',--4
'🔰加密=后的数字',--5
'🔰加密()中的数字',--6
'🔰替换布尔值',--7
},{
true,
true,
true,
true,
true,
true,
true,
},{
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
})
if XRU.ENV then 
else 
_G["gg"]["alert"]('您选择取消')
Exit()
end

if XRU.ENV[4]==true then
if load(DATA:gsub("%[(%s*%d+%s*)%]%s*%=","[tonumber('%1')]=")) then
DATA=DATA:gsub("%[(%s*%d+%s*)%]%s*%=","[tonumber('%1')]=")
end
end
if XRU.ENV[5]==true then
for k in DATA:gmatch("=%s*(%-?%d+%.?%d*e?E?%-?%+?%d*)") do
k1=k
k="=%s*"..k:gsub("%-","%%%0"):gsub("%+","%%%0")
if load(DATA:gsub(k,"= tonumber('"..k1.."')")) then 
DATA=DATA:gsub(k,"= tonumber('"..k1.."')")
end
end
end
if XRU.ENV[6]==true then
for k in DATA:gmatch("%((%d+)%)") do
if load(DATA:gsub("%("..k.."%)",'(tonumber("'..k..'"))')) then
DATA=DATA:gsub("%("..k.."%)",'(tonumber("'..k..'"))')
end
end
end
if XRU.ENV[3]==true then
DATA=DATA:gsub("%]%.address=",'][tostring("address",nil)]='):gsub("%]%.flags=",'][tostring("flags",nil)]='):gsub("%]%.value=",'][tostring("value")]='):gsub("%]%.freeze=",'][tostring("freeze")]=')
end
if XRU.ENV[2]==true then

end
ENV={}
ENV_FZ=1

if XRU.ENV[7]==true then
local buer={'nil','true','false'}
for k,v in ipairs(buer) do
a=_G["string"]["find"](DATA,v)
if a~=nil then
if load(DATA:gsub("([^%w_])" .. v .. "([^%w_])","%1ENV["..ENV_FZ.."]%2")) then
table.insert(ENV,v)
DATA=DATA:gsub("([^%w_])" .. v .. "([^%w_])","%1ENV["..ENV_FZ.."]%2")
ENV_FZ=ENV_FZ+1
end
end
end--布尔值
end
if XRU.ENV[1]==true then
for k, v in pairs(_G) 
do
DATS = type(v)
if DATS == "table" then
for kk, vv in pairs(v) do
a=string.find(DATA,"[^%w_]" .. k .. "%s*%.%s*" .. kk)
if a~=nil then
if load(DATA:gsub("([^%w_])" .. k .. "%s*%.%s*" .. kk,"%1ENV["..ENV_FZ.."]")) then
table.insert(ENV,"_G['" .. k .. "']['" .. kk .. "']")
DATA = DATA:gsub("([^%w_])" .. k .. "%s*%.%s*" .. kk,"%1ENV["..ENV_FZ.."]")
ENV_FZ=ENV_FZ+1
end
end
end
elseif
DATS == "function" then
a=string.find(DATA,"[^%w_]" .. k .. "%s*%(")
if a~=nil then
if load(DATA:gsub("([^%w_])" .. k .. "%s*%(", "%1ENV["..ENV_FZ.."](")) then
table.insert(ENV,"_G['" .. k .. "']")
DATA = DATA:gsub("([^%w_])" .. k .. "%s*%(", "%1ENV["..ENV_FZ.."](")
ENV_FZ=ENV_FZ+1
end
end
end
end
DATA="\nlocal ENV={"..table.concat(ENV,",").."}\n"..DATA
end

end
if XRU.xru[3]~=true then
_G["gg"]["alert"]('禁止不开(🔰字符串保护)')
XRU.xru[3]=true
end
if XRU.xru[3]==true then
XRU.STR = _G["gg"]["prompt"]({
'🔰当前插入的垃圾',--1
'🔰字符串插垃圾',--2
},{
FFF,
true,
},{
'text',
'checkbox',
})
if XRU.STR then 
else 
_G["gg"]["alert"]('您选择取消')
Exit()
end
end
DATA=_G["字符串"](FY.."\n"..DATA)
if XRU.xru[7]==true then
XRU.FF = _G["gg"]["prompt"]({
'🔰当前插入的垃圾',--1
'🔰if插垃圾',--2
'🔰then插垃圾',--3
'🔰负数防重组',--4
'🔰区块错误',--5
'🔰混淆错误',--6
},{
FFF,
true,
true,
true,
true,
true,
},{
'text',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
})
if XRU.FF then 
else 
_G["gg"]["alert"]('您选择取消')
Exit()
end
FFF=tostring(XRU.FF[1])
if XRU.FF[2]==true then
DATA=DATA:gsub("([^%w_])if",FFF.."\n%1if")
else
end
if XRU.FF[3]==true then
DATA=DATA:gsub("([^%w_])then","%1then\n"..FFF.."\n")
else
end


end

DATA=jie.."\n"..DATA
io.open("66666.lua","w"):write(DATA):close()
DATA=_G["编译"](DATA)
io.open(_G["输出"],"w"):write(DATA):close()
Exit()
end
function a3()
i=[[
         [𝙓𝙍𝙐 · Enc - 系列 - Script]✭
           ➖➖➖➖➖➖➖➖
 🔸▫️##   VERSION：✭1.9.1✭   ##▫️🔸
           ➖➖➖➖➖➖➖➖
 
              Script By➨
  ➣加密作者：𝙭𝙧𝙪 - for 七欢
  ➣ So you're here to decrypt?
  ➣ Do you think you have that strength?
  ➣加密强度：⚠︎⚠︎⚠︎⚠︎⚠︎
  ➣加密联系：666                     
 ＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
(\__/)| ⠀⠀
(•ㅅ•)|⠀⠀
/　  づ

我从来都舍不得用你的方式来对你
˘＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿˘

© 2016 ~ 2021 By\-𝙭𝙧𝙪 七欢 All Rights Reserved.    

]]
a=_G["gg"]["alert"](i)
end
function Exit()
_G["print"]("欢迎下次使用七欢加密")
_G["os"]["exit"]()
end

while(true)do
if _G["gg"]["isVisible"](true) then
XGCK=1
_G["gg"]["setVisible"](false)
end
_G["gg"]["clearResults"]()
if XGCK==1 then
Main()
end
end