local Sip

local KT =[=[

local QING=[[



-- ꔼ━━━━━━━━━━━━━━ꘁ


]]

]=]

FBG=[=[

]=]

FY=[=[

]=]




--iv0 = ('function sss() end '):rep(3000)
--iv0=""
function GG_GO(data)
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
function random() bn={"A_","B_","C","D_","E_","F","G","H","J","K_","L","M_","N","O_","P","Q_","R","S__","T","U","V","W","X__","Y__","Z_"} x=math.random
local e,f,g,h,i,a,b=x(1,25),x(1,25),x(1,25),x(1,25),x(1,25),x(1,25),x(1,25)
a=bn[e]..bn[f]..bn[g]..bn[h]..bn[i]..bn[a]..bn[b]
return a,b,c,d,e end
function DT()
s=random()
ss="   ::"..s..":: if nil then  goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." else while(true) do while(true) do break end break end if nil then  _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." end end if nil then  goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." else while(true) do while(true) do break end break end if nil then  _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." end end if true then  else end  if true then  else end if true then  else end  if true then  else end "
return [[if nil then 
if true then
else
goto Wrnm
end
if nil then 
else
goto Wrnm
end
::Wrnm::
end
]]..ss.."\n"
end

function pop()
local re=nil
local outstr="";
for i=2,#dates do
if dates[i]~=dates[1] then
outstr=outstr..string.char(dates[i]);
end
end
if outstr~="" then
outstr='"'..outstr..'"'
local blname=random()
longlongstr=longlongstr.."\nlocal "..blname.."=function(SB)  if nil then  if true then else goto mw0 end if nil then  else goto mw0 end ::mw0:: end local Key="..outstr.." return Key end "
re=blname.."(RAN(1,7))"
long=long+1
end
return re
end
function push(bits)
  local out=nil;
  if dates==nil then
instdates=bits;
datesdi=1;
dates={};
  end
  dates[datesdi]=bits;
  if datesdi~=1 and bits==instdates then
out=pop();
if out==nil then
  out=string.char(instdates)..string.char(instdates)
end
dates=nil;
  end
  datesdi=datesdi+1;
  return out
end
function byte(initstr)
  strsprit=initstr
  local strsprit2="";
  long=1;
  longlongstr=" ";
  len=string.len(strsprit);
  for i=1,len do
local bit=string.byte(strsprit,i);
if bit==34 or bit==39 or dates~=nil then
  local codestr=push(bit);
  if codestr~=nil then
strsprit2=strsprit2..codestr;
  end
 else
  strsprit2=strsprit2..string.char(bit);
end
  end
  return longlongstr.."\n"..strsprit2
end
function fh()
bool=("\nLOADBOOL v40 20\nLOADBOOL v40 20")
fhh=bool.."\n\nSETTABUP u0 \" SQ \" 1"
return fhh
end
function tihuan(wenjian)
local echo=""
files1=io.open(wenjian) repeat text=files1:read('*l')
if text~=nil then
echo=echo..text.."\n"
if string.find(text, "function", 1)~=nil and returns==nil then echo=echo..DT().."\n" end
end until text==nil
gg.toast(#echo)
return echo
end
local t={}
local k=1
local charkey={}
for v=1,10 do
charkey[v]={}
for i=1,10 do
charkey[v][i]=math.random(0,255)
end
end
local Asll_table,Start_key_table='',0
Keys='local Keys={} local char={} '
local xxx={}
local xxx2={}
for i=1,10 do
::xxx::
local xxx1=math.random(1,10)
if xxx2[xxx1] then goto xxx end
xxx[i]=xxx1 xxx2[xxx1]=1
end
local task={'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'}
local yhy={}
local key=math.random(0,255)
local o=0
local zzh={}
local gtable={}
local yz={}
while(task) do
zzy=''
for i=1,3 do
local thq=math.random(1,26)
zzy=zzy..task[thq] end
if not yz[zzy] then
yz[zzy]=1
zzh[string.format('%X',o+key)]=zzy gtable[o]=zzy o=o+1 end
if gtable[255] then break end
end
local hxtable={}
o=0
local t={}
local t2={}
for i,v in pairs(zzh) do
t[v]=o
t2[o]=v
o=o+1
end
function hh(j)
local r=''
for i=1,#j do
local b=string.byte(j,i)
if r=='' then r=r..b else r=r..','..b end
end
r='Qing_asll('..r..')'
return r
end
function hx(j)
if j=='' then return 'Qing_key({})' end
local len=#j
if len==1 then return xhx(j) else local hand=#j/2 return xhx(j:sub(1,hand))..'..'..xhx(j:sub(hand+1,len)) end
end
 function xhx(j)
local r,r1='',''
local b2,b3,b4=math.random(-646498,255),math.random(-646498,255),math.random(1,10)
for i=1,#j do
local b1=math.random(math.random(-646498,-1),math.random(1,255))
b=t[gtable[string.byte(j,i)]]+b1-b2-b3-charkey[b4][i%10+1]
if r=='' then
r=r..b r1=r1..b1 else r=r..','..b r1=r1..','..b1 end end
Start_key_table=Start_key_table+1
Asll_table=Asll_table..' if nil then  ::S:: _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() '..string.rep('goto S ',math.random(5,15))..' end char['..Start_key_table..']={'..r1..'}'
return '(function(S,S1) ::S:: if nil then  '..string.rep('goto S ',math.random(5,15))..'else while(true) do while(true) do break end break end local ENV=Qing_key({'..r..'},S,'..b2..'+S1,'..b4..'),250 if nil then  _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() '..string.rep('goto S ',math.random(15,25))..' else return ENV end end end)(char['..Start_key_table..'],'..b3..')'
end
hxtable={}
for v=1,10 do
hxtable[v]={}
for i=1,10 do
hxtable[v][i]=math.random(0,255)
end
end
for i=1,10 do
i=xxx[i]
jd=math.random(1,2)
if jd==1 then
Keys=Keys..'Keys['..i..']={'..table.concat(charkey[i],',')..'}char['..i..']={'..table.concat(hxtable[i],',')..'}' else Keys=Keys..'char['..i..']={'..table.concat(hxtable[i],',')..'}Keys['..i..']={'..table.concat(charkey[i],',')..'}' end
end
c=nil
for i,v in pairs(zzh) do
if c then
c=c..','..'['..hh(i)..']='..hh(v) else c='['..hh(i)..']='..hh(v) end
end
c=DT()..' local Table_plus={'..c..'} '..DT()..' local KEY_TABLE={} for i,v in pairs(Table_plus) do Qing_asll(_ENV['..hh('math')..']['..hh('random')..'](0,255)) KEY_TABLE[v]=Qing_asll(_ENV['..hh('tonumber')..'](i,16)-'..key..') end local KEY_TABLE={[0]='
for i=0,255 do
c=c..'KEY_TABLE['..hh(t2[i])..'],'
end
--[[
Y=gg.makeRequest("https://v1.hitokoto.cn/").content
Q=string.match(Y,'hitokoto(.+)type')
F=string.gsub(Q,'":"',"")
Q=string.gsub(F,'","',"")
]]
--脚本配置区
local g = {}
g.last = string.gsub(gg.getFile(),"/[^/]+$", "")
SQ_Esp = nil
g.config = '/storage/emulated/0/Android/jl.cfg'
g.data = loadfile(g.config)
if g.data ~= nil then
    SQ_Esp = g.data()
    g.data = nil
end

if SQ_Esp == nil then
    SQ_Esp = {g.last}
end

--配置区域
SQ_Esp=gg.prompt({
'选择脚本',
'随机命名布尔值',
'使用goto加固',
'区块减少[xs等写法别用]',
'使用return赋值[暂不可用，待修复]',
'对函数进行加强的保护[各种库，内存较大]',
'限制包名:' .. '本修改器包名为:' .. gg.PACKAGE,
'限制版本:' .. '本修改器版本:' .. gg.VERSION,
'限制版本号:' .. '本修改器版本号:' .. gg.BUILD,
'防捕捉GG[未完善]',
'核心字符串[中速]',
'编译脚本'
},SQ_Esp,{
'file',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'checkbox'
})
Outfile = string.match(SQ_Esp[1], '[^%.]+') .. "-[加密].lua"
Sip = io.open(SQ_Esp[1]):read("*a")
if SQ_Esp == nil then else
if SQ_Esp then
    gg.saveVariable(SQ_Esp, g.config)  
  inittime = os.clock()
  

if SQ_Esp[2]  then
io.open(Outfile,'w'):write(Sip)
rt=""
Buer={}
ALL_GG={"true","false","nil"}
for k,v in ipairs(ALL_GG) do
for g in Sip:gmatch(v) do
Buer[#Buer+1]=g
end
end
if #Buer~=0 then 
Ba=#Buer
as=0
for i=1,Ba do
as=as+1
gfd=random()
if load(Sip:gsub(Buer[i],"_ENV."..gfd,1)) then
Sip=Sip:gsub(Buer[i],"_ENV."..gfd,1)
rt=rt..gfd.."="..Buer[i].." ; "
gg.toast("处理完成["..as.."]个布尔值",true)
end
end
rt=rt..rt
end
Sip=rt.."\n"..Sip
end
end


if SQ_Esp == nil then else
if SQ_Esp[3]  then
io.open(Outfile,'w'):write(Sip)
Sip=tihuan(Outfile)
end
end


if SQ_Esp == nil then else
if SQ_Esp[4]  then
s=0
for i in Sip:gmatch("function ([%w_]+)%(%)") do
s=s+1
Sip=Sip:gsub("function "..i.."%(%)","::"..i.."::\nif tt"..s.."==1 then\ntt"..s.."=0")
Sip=Sip:gsub(i.."%(%)","tt"..s.."=1\ngoto "..i)
end
end
end


if SQ_Esp == nil then else
if SQ_Esp[5]  then
Sip=byte(Sip)
end
end


if SQ_Esp == nil then else
if SQ_Esp[6]  then
Sip = GG_GO(Sip)
end
end


if SQ_Esp == nil then else
--限制修改器
fangyu = ''
if SQ_Esp[7]  then
        fangyu = fangyu .. [[
        while gg.PACKAGE ~= 'tihuan' do
            print('专属GG包名验证失败')
            os.exit()
        end]]
        fangyu = fangyu:gsub('tihuan', gg.PACKAGE)
    end
if SQ_Esp[8] then
        fangyu = fangyu .. [[
        while gg.VERSION ~= 'tihuan' do
            print('专属GG版本验证失败')
            os.exit()
        end]]
        fangyu = fangyu:gsub('tihuan', gg.VERSION)
    end
if SQ_Esp[9] then
        fangyu = fangyu .. [[
        while gg.BUILD ~= 'tihuan' do
            print('专属GG版本号验证失败')
            os.exit()
        end]]
        fangyu = fangyu:gsub('tihuan', gg.BUILD)
    end
--将所有东西放进加密
Sip=(fangyu.."\n"..Sip)


if SQ_Esp[10] then
Sip = FBG..Sip
end



if SQ_Esp[11] then
Sip = FY..Sip
p='"(.-)"'
for i in Sip:gmatch(p) do 
Sip= Sip:gsub(p,hx(i),1) end
p="'(.-)'"
for i in Sip:gmatch(p) do
Sip=Sip:gsub(p,hx(i),1)
end
Sip='local Qing_asll=string.char '..c..'} '..Keys..' local Qing_key=function(S,S1,S2,S3) ::S:: '..DT()..' local key=S3 '..DT()..' local key=Keys[key] '..DT()..' local r=\'\' '..DT()..' for i=1,#S do '..DT()..' local r2=S[i]-S1[i] '..DT()..' local r2=r2+S2 '..DT()..' local k=i%10 '..DT()..' local k=k+1 '..DT()..' local k=key[k] local r2=r2+k '..DT()..' local r2=KEY_TABLE[r2] '..DT()..' r=r..r2 '..DT()..' end '..DT()..' return r end '..Asll_table..Sip
end

Sip=[==[
if nil then 
if true then
else
goto Wrnm
end
if nil then 
else
goto Wrnm
end
::Wrnm::
end

local ELGG_Sc,ELGG_UTP,RAN=string.char,table.unpack,math.random
]==] .. '\n' ..Sip
end

hxcode = '(function() '
hxcode = string.rep(hxcode, 80)
Sip = hxcode .. Sip

hxcode = ' end)()'
hxcode = string.rep(hxcode, 80)
Sip = Sip .. hxcode

hxcode = ' while ""=="lsqnblsqnblsqnb" do lsqnblsqnblsqnb="lsqnblsqnblsqnb" end '
hxcode = string.rep(hxcode, 15000)
Sip = hxcode .. Sip

Sip = ' while ""=="SQSQSS" do SQSQSS=(function()end)("QSQSQS") end ' .. Sip
Sip = "\n\n" ..KT.. "\n\n local SQNB66=function() ".. Sip .." end SQNB66() "




if SQ_Esp[12]  then
chunk = string.dump(load(Sip), true)
res = gg.internal2(load(chunk), Outfile)
file = io.open(Outfile,"r"):read("*a")

	Zhiling = {
    ["JMP"] = 1,
    ["ADD"] = 1,
    ["CALL"] = 1,
    ["LOADNIL"] = 1,
    ["CLOSURE"] = 1,
    ["GETUPVAL"] = 1
    }
	Str = {utf8.char("13144").."̧̡̛̜̹̼̳͍̰͍̠͉͚̘͇̼̹̤̽̏͆͐̏̒̀̎͐̏̆́̚͘̚͘̚͟͟͝ͅ",utf8.char("13145").."ۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ̛̜͖͙̤͇̗̙͕̤̙͙̩͇̝̘̦͈̠͔̗̯̤͍۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗ̀͊̀̋͐͑̋͑̀̽́́̈̌̔̑̃͋̑̈́͒̚͜͢",utf8.char("13146").."̧̹͎̞̠̠̲͇̰̰̫̪̰̖̲͌́̑͂͗̂͛͗́̌̽͘͜ۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗ",utf8.char("13147").."ۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۦ̴̧̛̺̲̼̣͎̟̖̱۬ۛۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗۖۢۗ̎͐͋͂̊͌́",utf8.char("13148").."̴̸̢̡̛̛̠̘̟̻̙͙͈̖̻̤̣̭̩̤͕̫͍̻̩̰͉̤̩̺͖̻̲̯͍͍̓͗̑̿̋͂̔̒̈́̆̈̄̔́̑̈́̿̒͛̽̓̈́͒̉̐̈̓̑̍͗́̈́͘̕̚̚͝",utf8.char("13149").."̧̧̖͔̖̰̻͖͇̱̩̱͔̞̭̼͇̬̮̣̹̐̏̈́̄",utf8.char("13150").."̽̉̀͒̾́̏̓̈́̔͆͒̈́̈́̄̊̎́̑͒̈́̐͊̄͌̉̂͋̉̾͌͛̃̾̔͋̇̾̏͒͆̓͋͌̄̈́̀̾̀͂̂̂̈̋̿̊̑̆̎͊͆̀͗͆̓́͗̓̍̃͂̎̓̚̕̕͘̕̚͝͝͝͠͠͝͠",utf8.char("13151").."̢̧̨̨̡̪̻̻̟̩̘̝͇͓̣̥̬͕̠̣̻̬̰̙̺̰̺͎̲̹̳͍͍̳͇͚̯͚͖̥̦͙͍̪̞̩̯͖̙̲̭̳̰̆̌͆̆̿̿͗̾̔́̈͜͜͠ͅͅ",utf8.char("13152").."By 🇦 🇩 ",utf8.char("13153").."👨‍❤️‍💋‍👨⃠ 👨‍❤️‍💋‍👨⃠ 👨‍❤️‍💋‍👨⃠⃤🇩🇪 💩⃣🏳️‍🌈⃠🇩🇪⃤🇸🇻",utf8.char("13154").."🏳️‍🌈⃤卐☫☭🏳️‍🌈⃠🇮🇱⃠👦🏿⃠🏳️‍🌈⃠",utf8.char("13155").." ‏‏‎జ్ఞ ‌ా ‏‏‎జ్ఞ ‌ా",utf8.char("13156").."🇩🇪⃠ 🍇⃠☔️⃠⃠⎷ ₯ ",utf8.char("13157").."̧̡̛̜̹̼̳͍̰͍̠̆́͟͟",utf8.char("13158").."̛̜̹̼̳̆́͟͟⃠👩🏾‍🦲⃠👩🏿‍🦲⃠ 🇭🇰⃠👨🏾‍̧̡͍̰͍̠",utf8.char("12992").."👨‍👩‍👧⃠ 👧🏻⃠ 👩🏿‍🦳⃠👼🏿⃤☫☭"}
while("\t\t  ​​")do break end
num = 1
data = {}
number = 601004059
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
               
    return "JMP :goto_60" .. number .. "; garbage\nTEST v"..math.random(7542,10890).." "..math.random(5699,9990).."\n" .. table.concat(tab) .. "\n :goto_60" .. number .. "\n"
end
for text in string.gmatch(file, '[^\n]+') do
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
function Split(strdata,strSub)
  if not strdata then
    return nil
  end
  local tabdata={}
  for item in string.gmatch(strdata,string.format("([^%s]+)",strSub)) do
    table.insert(tabdata,item)
  end
  return tabdata
end
local JMP_Split = Split(Outfile,"\n")
for k,v in pairs(JMP_Split) do
 if v:find("JMP") then
 table.insert(JMP_Split,k,"OP[83] 0x" .. x .. "; unused")
end
end
file = table.concat(data)

--区块错误
weizhicuowu=[=[
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

weizhicuowu1=[=[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u7 "" ; u4
.upval u6 "" ; u5
.upval u11 "" ; u6
]=]

--local 250 区块防御替换区
file = string.gsub(file, "%s*\n%s*", "\n")
file = file:gsub("linedefined [^\n]*","linedefined 0")
file = file:gsub("lastlinedefined [^\n]*","lastlinedefined 0")
file = file:gsub("numparams [^\n]*","numparams 250")
file = file:gsub("is_vararg [^\n]*","is_vararg 250")
file = file:gsub("maxstacksize [^\n]*","maxstacksize 250")
file = file:gsub("upval%s*v0*%s*nil%s*;%s*%w*","upval v0 nil ; u0\n"..weizhicuowu,1)
file = file:gsub("upval%s*u0*%s*nil%s*;%s*%w*","upval u0 nil ; u0\n"..weizhicuowu1,1)
file = file:gsub("LOADNIL v(%d+)%.%.v(%d+)\n%s+TEST v(%d+) (%d+)\n%s+JMP :goto_(%d+)  ; %+(%d+) ↓",function (a,b,c,d,e,f) return "LOADNIL v"..a.."..v"..b.."\nTEST v"..c.." "..d.."\nTEST v"..c.." "..d.."\nLT 0 403 331\nLT 0 403 331\nJMP :goto_"..e.."  ; +"..f.." ↓ "..fh() end)
Sip = string.dump(load(file), true) .. "\n\n by WPN \n"..os.date"⏰加密时间:%Y年-%m月-%d日 %H时:%M分:%S秒\nTP WPN-AD"

Sip = string.gsub(Sip, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
               string.char(0xC1, 0xC1, 0xC1, 0xC1, 0xC1, 0xC1, 0xC1, 0xC1, 0xFA, 0xFA, 0xFA))
--null防组
Sip = string.gsub(Sip, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x51, 0x53, 0x51, 0x53, 0x51, 0x53, 0x00),
              string.char(0x04, 0x00, 0x00, 0x00, 0x00))
--1-0
Sip = string.gsub(Sip, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
              string.char(0x00, 0x00, 0x00, 0x00))

Sip = string.gsub(Sip, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x53, 0x51, 0x53, 0x51, 0x53, 0x53),
              string.char(0x04, 0x11, 0x27, 0x00, 0x00) .. string.rep("\x7F", 10000))


 qukuai = string.char(0xC1, 0xC1, 0xC1, 0xC1, 0xC1, 0xC1, 0xC1, 0xC1, 0xFA, 0xFA, 0xFA) .. string.rep(string.char(0), 32)

Sip,error = Sip:gsub(qukuai,
              string.char(0xC1, 0xC1, 0xC1, 0xC1, 0xC1, 0xC1, 0xC1, 0xC1, 0xFA, 0xFA, 0xFA) .. string.rep(string.char(0), 24) ..
                  string.char(0x36, 0xB2, 0x2B, 0xC1, 0x83, 0xBF, 0xD8, 0xC4))  

local lsqnbb = string.char(0x6C,0x73,0x71,0x6E,0x62)
local lsqnbb = string.rep(lsqnbb, "5000")
Y=string.gsub(Sip,string.char(0x04,0x10,0x00,0x00,0x00,0x6C,0x73,0x71,0x6E,0x62,0x6C,0x73,0x71,0x6E, 0x62,0x6C,0x73,0x71,0x6E,0x62,0x00),string.char(0x04,0xA9,0x61,0x00,0x00)..lsqnbb..string.char(0x00))
Sip=string.gsub(Y,"lsqnb",string.char(math.random(0,255))..string.char(math.random(0,255))..string.char(math.random(0,255))..string.char(math.random(0,255))..string.char(math.random(0,255)))

Sip = string.gsub(Sip, string.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x00 ,0x00 ,0x80,0x01),
           string.char(0x1B, 0x00, 0x00, 0x00 ,0x17, 0x00 ,0x00 ,0x80 ,0x17))

Sip = string.gsub(Sip, string.char(0x1B,0x00,0x00, 0x00, 0x17, 0x40 ,0x00 ,0x80,0x01),
            string.char(0x1B, 0x00, 0x00, 0x00 ,0x17, 0x40 ,0x00 ,0x80 ,0x99))

Sip = string.gsub(Sip, string.char(0x17, 0x80, 0xFE, 0x7F, 0x06),
            string.char(0x17, 0x80, 0x1B, 0x7F, 0x06))

Sip = Sip:gsub(string.char(0x1F, 0x00, 0x80, 0x00),
                string.char(0x1F ,0x00 ,0x80 ,0xAB))




if not Sip then
return print("替换二进制数据时出现未知原因\n\n╾╾╾╾╾⚠ 问 题 所 在 ️⚠╾╾╾╾╾\n\n"..error)
end
end
gg.toast("替换完成") 
io.open(Outfile,'w'):write(Sip)
gg.toast("加密完毕")
gg.alert("加密成功\n加密完成"..#Sip.."字节")
print("加密总耗时为"..os.clock() - inittime.."秒","\n加密完成"..#Sip.."字节")
end