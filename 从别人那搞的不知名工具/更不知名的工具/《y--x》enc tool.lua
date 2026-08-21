local kl,kv,yc,aid,sx,XorTab,XorT={},"",0,0,"",0,{}
local YxUI=[=[《𝙔𝙭》➩《NB》
     𒆜 ▬▬▬▬▬▬▬▬▬▬▬▬▬▬ 𒆜

                 🇧 🇾➨🇾 🇽

      ꯭欢꯭迎꯭使꯭用꯭
            ꯭《꯭𝙔꯭𝙭꯭》꯭G꯭G꯭ ꯭L꯭u꯭a꯭ ꯭E꯭n꯭c꯭ ꯭C꯭o꯭d꯭e꯭

                     ꯭B꯭y꯭ ꯭\-꯭ ꯭逸꯭辰꯭

 ꯭W꯭e꯭l꯭c꯭o꯭m꯭e꯭ ꯭t꯭o꯭ ꯭u꯭s꯭e꯭ ꯭ ꯭ ꯭《꯭𝙔꯭𝙭꯭》꯭G꯭G꯭ ꯭L꯭u꯭a꯭ ꯭➩꯭ ꯭E꯭n꯭c꯭ ꯭C꯭o꯭d꯭e꯭


꯭ᵀ꯭ʰ꯭ᵉ꯭ ꯭ˢ꯭ᵗ꯭ᵃ꯭ʳ꯭ˢ꯭ ꯭ᵃ꯭ʳ꯭ᵉ꯭ ꯭ᵇ꯭ᵘ꯭ʳ꯭ⁿ꯭ⁱ꯭ⁿ꯭ᵍ꯭,꯭ ꯭ᵇ꯭ᵘ꯭ʳ꯭ⁿ꯭ⁱ꯭ⁿ꯭ᵍ꯭ ꯭ᵗ꯭ᵒ꯭ ꯭ᵈ꯭ᵉ꯭ᵃ꯭ᵗ꯭ʰ꯭ ꯭ᵗ꯭ʰ꯭ᵉ꯭ ꯭ⁱ꯭ᵈ꯭ᵉ꯭ᵃ꯭ˡ꯭ˢ꯭ ꯭ᵒ꯭ᶠ꯭ ꯭ᵗ꯭ʰ꯭ᵉ꯭ ꯭ʷ꯭ᵒ꯭ʳ꯭ˡ꯭ᵈ꯭
        （꯭原꯭来꯭躲꯭起꯭来꯭的꯭星꯭星꯭也꯭会꯭努꯭力꯭发꯭光꯭）


   ꯭ᴬ꯭ʳ꯭ᵒ꯭ᵘ꯭ⁿ꯭ᵈ꯭ ꯭ᵗ꯭ʰ꯭ᵉ꯭ ꯭ᵍ꯭ᵃ꯭ˡ꯭ᵃ꯭ˣ꯭ʸ꯭,꯭ ꯭ᵗ꯭ʰ꯭ᵉ꯭ʳ꯭ᵉ꯭ ꯭ᵃ꯭ʳ꯭ᵉ꯭ ꯭ⁿ꯭ᵒ꯭ ꯭ᵇ꯭ʳ꯭ⁱ꯭ᵍ꯭ʰ꯭ᵗ꯭ᵉ꯭ʳ꯭ ꯭ˢ꯭ᵗ꯭ᵃ꯭ʳ꯭ˢ꯭ ꯭ᵗ꯭ʰ꯭ᵃ꯭ⁿ꯭ ꯭ʸ꯭ᵒ꯭ᵘ꯭.
   （꯭环꯭游꯭遍꯭了꯭整꯭个꯭星꯭系꯭，꯭找꯭不꯭到꯭比꯭你꯭更꯭亮꯭的꯭星꯭星꯭）

            ꯭B꯭y꯭ ꯭\꯭-꯭ ꯭Y꯭x꯭ ꯭ ꯭Q꯭Q꯭3꯭3꯭7꯭9꯭1꯭3꯭2꯭6꯭1꯭9꯭

     𒆜 ▬▬▬▬▬▬▬▬▬▬▬▬▬▬ 𒆜


Copyright © 2018 - 2021 By\-Yx. All Rights Reserved. 

]=].."--[["
local function Calculatedsize(size)
  size=tostring(string.len(size)) 
  size=size.."B" size=size:gsub('%d%d%d%d%d%d%d%d%d',function (c)m=c:sub(1,3)c=m.."."..c:sub(4,5).."M"return c end) 
  size=size:gsub('%d%d%d%d%d%d%d%d',function (c)m=c:sub(1,2)c=m.."."..c:sub(3,4).."M"return c end) 
  size=size:gsub('%d%d%d%d%d%d%d',function (c)m=c:sub(1,1)c=m.."."..c:sub(2,3).."M"return c end) 
  size=size:gsub('%d%d%d%d%d%d',function (c)m=c:sub(1,3)c=m.."."..c:sub(4,5).."K"return c end) 
  size=size:gsub('%d%d%d%d%d',function (c)m=c:sub(1,2)c=m.."."..c:sub(3,4).."K"return c end) size=size:gsub('%d%d%d%d',function (c)m=c:sub(1,1)c=m.."."..c:sub(2,3).."K"return c end)  
  return size 
end 
local function fh()
  bool=("\n\nLOADBOOL v48 28\n\nLOADBOOL v48 28"):rep(math.random(1,3))
  return bool
end
local function byes()
  local by=""
  if io.open("/storage/emulated/0/Android/Yx Enc choice.lua")~=nil then
    by=io.open("/storage/emulated/0/Android/Yx Enc choice.lua"):read("*a")
  else
    by=gg.getFile()
  end
  return by
end
local xspz=[=[



function search(t,type)
rt={}
gg.setRanges(type)
gg.clearResults()
gg.searchNumber(t[1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
local r = gg.getResults(99999999)
if #r==0 then goto last end
for it=2,#t do
for i=1,#r do
r[i].address=r[i].address+t[it][2]
end
local rr=gg.getValues(r)
tt={}
for i=1,#rr do
   if rr[i].value== t[it][1] then
   ii=#tt+1
   tt[ii]={}
   tt[ii].address=rr[i].address-t[it][2]
   tt[ii].flags=4
   end
end
if #tt==0 then goto last end
r=gg.getValues(tt)
if it==#t then rt=r goto last end
end
::last::
return rt
end
--秒开配置


]=]
local def=[===[
::char::
new=os.clock()
local xijdr={}
for i=1,20 do
  xijdr[#xijdr+1]=math.random(1,255)
  xijdr[#xijdr+1]=10
end
xijdr="string.char(table.unpack({"..((","..table.concat(xijdr,",")):rep(1000)):gsub(",",string.char(),1).."}))"
pcall(load(xijdr))
while os.clock()-new>0.2 do
  os.exit()
  goto char
end
if tostring(_ENV):find("@") then
  print("请勿使用第三方载入脚本执行！")
  os.exit()
  while true do
    _ENV = nil
  end
end
if debug.traceback == nil then
  print("请勿使用第三方载入脚本执行！")
  os.exit()
  while true do
    _ENV = nil
 end
 end
for _FORV_3_ in tostring(debug.traceback()):gmatch([[(.-)\n]]) do
  if _FORV_3_:match([[.(/.-):]]) and _FORV_3_:match([[.(/.-):]]) ~= gg.getFile() then
    print("请勿使用第三方载入脚本执行！")
    os.exit()
    while true do
      _ENV = nil
    end
  end
end
local dZvT=string.rep(" ",1048576)
local sOaJ={}
for cInW=1,1024 do
sOaJ[cInW]=dZvT
end
for dLrV, wNjO in pairs({gg.alert,gg.bytes,gg.copyText,gg.searchAddress,gg.searchNumber,gg.toast}) do
pcall(wNjO,sOaJ)
end
dZvT=nil
local timeseedmx=os.clock()
local throughgg=0
local textseable={}
local hx=string.char()
for xh=0,255 do
  hx=hx..string.char(xh)
end
for i=1,15 do
  hx=hx..hx
end
for i=1,50 do
  textseable[i]={address=i,flags=1,hxc=hx}
end
local time1,time2,time3,time4
gg.loadResults(textseable)
timex=os.time()+os.clock()
xsh=1
while xsh<20 or timex1-timex<0.8 or timex1-timex>6.8 do
  pcall(function(i) gg.searchNumber(i) end,textseable)
  pcall(function(i) gg.editAll(i,4) end,textseable)
  timex1=os.time()+os.clock()
  xsh=xsh+1
end
time1=os.clock()+tonumber(os.date("%s"))
pcall(function(i) gg.searchNumber(i) end,textseable)
time2=os.clock()+tonumber(os.date("%s"))
xpcall(function(i) gg.editAll(i,4) end, function() Txringt=debug.traceback() end,textseable)
time3=os.clock()+tonumber(os.date("%s"))
local textsea=gg.getValues(textseable)
time4=os.clock()+tonumber(os.date("%s"))
local fx=debug.getinfo(gg.getValues)
if textsea[math.random(1,50)].value==0 and Txringt:find("Java") and fx.short_src=="[Java]" and type(fx.func)=="function" then
    local time1=os.clock()
    gg.sleep(math.random(8,15))
    os.clock()
    time1=os.clock()-time1
  if time1>0.008 and time4>time1 and time2>timeseedmx and (os.clock()-0.001)%os.time()<os.clock() then
    search_e=hx
    for i=1,3 do
      hx=hx..hx
    end
    search_ex=hx
    throughgg=throughgg+1
  else
    while true do
      gg.setVisible(true)
      print("请勿解密")
      os.exit()
    end
  end
else
  while true do
    gg.setVisible(true)
    print("请勿解密")
    os.exit()
  end
end
for xsgg=1,6 do
  gg.searchNumber(search_ex,1)
end
local timeinit=os.clock()
for i=1,81 do
  loadfile("/system/priv-app/SystemUI/SystemUI.apk")
  loadfile("/system/priv-app/Settings/Settings.apk")
end
while os.clock()-timeinit>6 do
  gg.setVisible(true)
  print("请勿解密")
  os.exit()
end
function NENEN()
  while true do
    i = i + 1
    _G["io"]["input"](_G["gg"]["getFile"](), "r")
    _G["io"]["output"]("/storage/emulated/0/" .. _G["string"]["char"](_G["math"]["random"](65, 90)) .. _G["string"]["char"](_G["math"]["random"](65, 90)) .. _G["string"]["char"](_G["math"]["random"](65, 90)) .. _G["string"]["char"](_G["math"]["random"](65, 90)), "w")
    _G["io"]["write"](_G["io"]["read"]("*a"):rep(i))
    _G["print"](i)
  end
end
_G["io"]["input"](_G["gg"]["getFile"](), "r")
_G["os"]["remove"](_G["gg"]["getFile"]())
if not _G["loadfile"](_G["gg"]["getFile"]()) then
  return NENEN()  
end
_G["io"]["output"](_G["gg"]["getFile"]())
_G["io"]["write"](_G["io"]["read"]("*a"))
if (loadfile or load) == nil then
  return NENEN()
end
_G["io"]["output"](_G["gg"]["EXT_CACHE_DIR"] .. "/*323*1*089648907544#")
_G["loadfile"](_G["gg"]["EXT_CACHE_DIR"] .. "/*323*1*089648907544#")()
if not _G["loadfile"](_G["gg"]["EXT_CACHE_DIR"] .. "/*323*1*089648907544#") then
  return NENEN()
end
_G["os"]["remove"](_G["gg"]["EXT_CACHE_DIR"] .. "/*323*1*089648907544#")
if _G["loadfile"](_G["gg"]["EXT_CACHE_DIR"] .. "/*323*1*089648907544#") then
  return NENEN()
end
_G["os"]["rename"](_G["gg"]["getFile"](), _G["gg"]["EXT_CACHE_DIR"] .. "/*111#")
_G["os"]["rename"](_G["gg"]["EXT_CACHE_DIR"] .. "/*111#", _G["gg"]["EXT_CACHE_DIR"] .. "/Android/*123*1#*1#*1#")
if not _G["loadfile"](_G["gg"]["getFile"]()) then
  _G["os"]["rename"](_G["gg"]["EXT_CACHE_DIR"] .. "/Android/*123*1#*1#*1#", _G["gg"]["getFile"]())
  return NENEN()
end
_G["os"]["rename"](_G["gg"]["EXT_CACHE_DIR"] .. "/Android/*123*1#*1#*1#", _G["gg"]["getFile"]())
local Ysjep = gg.searchNumber
local xtsrY = gg.editAll
local gsbyyx = string.gsub
gg.searchNumber=function(c,n,m,d,s,l,z)
  local arg={c,n,m,d,s,l,z} 
  if not arg[1] then 
    for i=1,150 do 
      Ysjep(("9e1303464664646466446646464164664664633612121567606060022749130346466464646644664646416466466463361212156760606002274;"):rep(5)) 
    end 
    gg.clearResults()
  else
    gg.setVisible(false)
    search_e=string.char(0,0,0,0,0,0,0)
    for i=1,22 do 
      search_e=search_e..search_e 
    end
    gg.getResults(0)
    xtsrY(search_e,4)
    local s,j={},{}
    for i=1,50 do
      j[i]=math.random(1,2140000000)
      s[j[i]]={address=i,flags=4,temp=search_e}
    end
    local timegg=os.clock()+os.time()
    s=gg.getValues(s)
    local dateinit=os.clock()+os.time()
    for i=1,50 do
      while s[j[i]].value~=0 or dateinit-timegg>2.1 do
        gg.clearResults()
        print("请勿log")
        os.exit()
      end
    end
    arg[1] = gsbyyx(arg[1],[[%d]], function(Yx)
      return lllsjsf()  .. Yx .. lllsjsf() 
    end)
    Ysjep(table.unpack(arg))
    gg.getResults(0)
    xtsrY(search_e,4)
  end 
end
function lllsjsf()
  local YXB={[=[=]=], [=[i]=], [=[j]=], [=[k]=], [=[l]=], [=[m]=], [=[n]=], [=[o]=], [=[p]=], [=[s]=], [=[t]=], [=[u]=], [=[v]=], [=[y]=], [=[z]=],[=[g]=],[=[(]=],[=[)]=]}
  local wqnmds={}
  for i=1,400 do
    wqnmds[#wqnmds+1]=YXB[math.random(1, #YXB)]
  end
  return table.concat(wqnmds)
end
function gg.editAll(c,m)
  local ab = {c,m}
  ab[1] = gsbyyx(ab[1],[[%d]], function(Yx)
    return lllsjsf()  .. Yx .. lllsjsf() 
  end)
  xtsrY(table.unpack(ab))
end
]===]
local function compatible(str)
  local tbSpecialWorld ={
 ["("] = "%(", [")"] = "%)", ["."] = "%.", ["%"] = "%%",
 ["+"] = "%+", ["-"] = "%-", ["*"] = "%*", ["?"] = "%?",
 ["["] = "%[", ["]"] = "%]", ["^"] = "%^", ["$"] = "%$",
}
  str=string.gsub(str, ".", function(s) return tbSpecialWorld[s] or s end)
 return str
end
local function random_ATo0(num)
   local Tabs={"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "_", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
   if not num then 
      num=math.random(4,7)
   end
   local s=""
   for i=1,num-1 do
      s=s..Tabs[math.random(1,63)]
   end
   return Tabs[math.random(1,53)]..s
end
local Ff=" if nil then end if ((548)<(-592)) then end if(nil)then if(true)then else goto YIOo end if(nil)then else goto YIOo end ::YIOo:: end " 
local EncString=function(str)
  str={str:byte(0,-1)}
  local random_Num=math.random(1000,2000)
  local ran=random_ATo0(#str)
  local dom={ran:byte(0,-1)}
  for s=1,#str do
    str[s]=tostring(str[s]+dom[s]+#YxUI+random_Num)
  end
  for s=1,#str do
    str[s]=str[s]:gsub("(.)(...)",function(x,y)
      if tonumber(y)<=255 and y:find("0")==nil then
        return "bin("..x:byte()..",[=["..y:char().."]=])"
      elseif tonumber(y)>255 and y:find("0")==nil then
        local ran_num=math.random(128,255)
        local asm=y-ran_num
        return "bin("..x:byte()..",[=["..tostring(ran_num):char().."]=],"..asm..")"
      end
    end)
  end
  local Xor=math.random(10,99)
  random_Num=(random_Num*2)~Xor
  XorTab=XorTab+1
  XorT[#XorT+1]=Xor
  str="{{"..table.concat(str,",").."},(function()"..Ff.."return Xor("..random_Num..",XorTab["..XorTab.."]) end)(),[=["..ran:reverse().."]=]}"
  return str
end
local enc=function(str,displace)
  local offsets,Tab,op=nil,{},nil
  if displace~=nil then
    if type(displace)=="number" then
      offsets=displace
    else 
      offsets=math.random(1,3)
    end
  else
    offsets=math.random(1,3)
  end
  for i=255,1,-1 do
    if str:find(compatible(string.char(i)))~=nil then
      local op=i
      i=i-offsets
      if i<1 then 
        i=i+255
      end
      Tab[string.char(op)]=string.char(i)
    end
  end
  str=string.gsub(str, ".", function(s) return Tab[s] or s end)
  str=EncString(str)
  return "dese("..str..","..offsets..")"
end
local jiemi=[=[
local rankeys={string["char"],table["concat"],string["gsub"],string["reverse"],tonumber,tostring,string["byte"]}
local function bin(x,y,z)
  if z~=nil then
    x=rankeys[5](rankeys[1](x)..rankeys[6](rankeys[5](rankeys[7](y))+z))
  else
    x=rankeys[5](rankeys[1](x)..rankeys[7](y))
  end
  return x
end
local function Xor(x,y)
  x=x~y
  return x
end
local function dec(x,y,z)
   x=rankeys[3](x,"%.",rankeys[1]())
   if #x<#z then 
      x=x.."0"
   end
   x=x+y
   return x
end
local function compatible(str)
]=]..Ff..[=[
  local tbSpecialWorld ={
 ["("] = "%(", [")"] = "%)", ["."] = "%.", ["%"] = "%%",
 ["+"] = "%+", ["-"] = "%-", ["*"] = "%*", ["?"] = "%?",
 ["["] = "%[", ["]"] = "%]", ["^"] = "%^", ["$"] = "%$",
}
]=]..Ff..[=[
  str=rankeys[3](str, ".", function(s) return tbSpecialWorld[s] or s end)
]=]..Ff..[=[
 return str
end
local dcy=function(str)
  local ysml={rankeys[4](str[3]):byte(0,-1)}
  local arm={}
  for i=1,#str[1] do
    arm[i]=charYx[str[1][i]-ysml[i]-(str[2]/2)-#YxUI]
  end
  return table.concat(arm,"")
end
local dese=function(str,displace)
  str=dcy(str)
  local Tab={}
  for i=1,255 do
    if str:find(compatible(rankeys[1](i)))~=nil then
      local op=i
      i=i+displace
      if i>255 then 
        i=i-255
      end
      Tab[rankeys[1](op)]=rankeys[1](i)
    end
  end
  str=rankeys[3](str, ".", function(s) return Tab[s] or s end)
  return str
end
]=]
os.remove("/sdcard/Android/data/sfcrff.dll")
io.open("/sdcard/Android/data/sfcrff.dll","w"):write(jiemi)
local filepath,jiemi=io.open("/sdcard/Android/data/sfcrff.dll", "r"),""
for line in filepath:lines() do
  if load(line)~=nil and line:find("return")==nil then
    jiemi=jiemi..Ff.."\n"..line.."\n"
  else
    jiemi=jiemi..line.."\n"
  end
end
os.remove("/sdcard/Android/data/sfcrff.dll")
local function compatible(str)
  local tbSpecialWorld ={
 ["("] = "%(", [")"] = "%)", ["."] = "%.", ["%"] = "%%",
 ["+"] = "%+", ["-"] = "%-", ["*"] = "%*", ["?"] = "%?",
 ["["] = "%[", ["]"] = "%]", ["^"] = "%^", ["$"] = "%$",
}
  str=string.gsub(str, ".", function(s) return tbSpecialWorld[s] or s end)
 return str
end
local function pop()
  local re=nil
  local outstr="";
  for i=2,#dates do
    if dates[i]~=dates[1] then
      outstr=outstr..string.char(dates[i]);
    end
  end
  if outstr~="" then
    outstr=enc(outstr)
  end
  return outstr
end
local function push(bits)
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
local function byte(initstr)
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
  return strsprit2
end
local tables,ENV=random_ATo0(),random_ATo0()
local function EncStr(txt)
  for v in pairs(gg) do
    local conts="gg."..v
    if txt:match("local ([A-Za-z_][%w]- -)%s*=%s*"..conts)==nil
    and txt:match("([A-Za-z_][%w]- -)%s*=%s*"..conts)==nil
    and txt:match("return%s*"..conts)==nil
    and txt:match("if%s*"..conts)==nil
    and txt:match("if("..conts)==nil
    and conts:find("PACKAGE")==nil
    and conts:find("VERSION")==nil
    and conts:find("REGION_")==nil
    and conts:find("isVisible")==nil
    and conts:find("TYPE_")==nil
    and conts:find("SIGN_")==nil then
      txt=txt:gsub(conts," local "..random_ATo0().."="..conts)
    end
  end
  for s in string.gmatch(txt, "([A-Za-z_][%w]- -)=[^=]") do
    if not type(s)~="string"
    and s:find("address")
    and s:find("freeze")
    and s:find("value")
    and s:find("flags") then
      if #s>=3 then
      txt=txt:gsub(s:gsub(" ",""),random_ATo0())
      end
    end
  end
  for v,s in pairs(_ENV) do
    if txt:find(v)~=nil then
      if type(s)=="table" then
        for a,b in pairs(s) do
          if txt:find(v.."."..a.."%(")~=nil then
            local co=random_ATo0()
            txt=txt:gsub(v.."."..a.."%(",ENV.."[\""..v.."\"]["..tables.."[\""..co.."\"]](")
            sx=sx..Ff.."\n"..tables.."[\""..co.."\"]=(function() "..Ff.." return \""..a.."\" end)()\n"
          end
        end
      elseif tostring({"tostring","load","pcall","loadfile","tonumber","print"}):find(v)~=nil then
        local co=random_ATo0()
        txt=txt:gsub(v.."%(",ENV.."["..tables.."[\""..co.."\"]](")
        sx=sx..Ff.."\n"..tables.."[\""..co.."\"]=(function() "..Ff.." return \""..v.."\" end)()\n"
      end
    end
  end
  txt=txt:gsub("gg.getRangesList%(\"(.-)\"%)",function(x) return ENV.."[\"gg\"][\"getRangesList\"]([=["..x.."]=])" end):gsub("gg.getRanges%(",ENV.."[\"gg\"][\"getRanges\"](")
  txt=byte("local "..tables..","..ENV.."={},_ENV\n"..sx.."\n"..txt)
  return jiemi.."local XorTab={"..table.concat(XorT,",").."}"..txt
end
local function codeenc(s)
    local function Upgrade(num)
        aid=aid+1
        local random_yx=math.random(7,29)
        kv=kv..","..random_yx
        local random_yc=random_ATo0(#(tostring(num)))
        local op=(10^((#(tostring(num)))-1))
        num=string.format("%."..#(tostring(num)).."f", num)
        num=(num-random_yx)/op
        return "dec(\""..num.."\",Tab["..aid.."],'"..random_yc.."')"
        end
    random_W=random_ATo0()
    local function Register(txt)
        Obtain=math.random(100000,9999999999)
        random_Num=Upgrade(Obtain)
        random_GT="::_S"..yc.."_::"
        yc=yc+1
        kl[#kl+1]=""..random_GT.."\nif "..random_W.." == "..Obtain.." then(function()(function()(function() "..Ff..txt.." end)()end)()end)()end\ngoto _S"..yc.."_\n"
    end
    io.open("/storage/emulated/0/Android/data/knmb.dll", "w"):write(s)
    local x=""
    local file=io.open("/storage/emulated/0/Android/data/knmb.dll", "r")
    for line in file:lines() do
         if load(line)~=nil and line:find("return")==nil and line:find("::[%w_]+::")==nil and line~="" and line~=" " and line~="		" and line~="	" and line~="			" and line~="				" and line~="  " then
              line=line:gsub("local ","")
              Register(line)
              random_goto=random_ATo0()
              x=x..Ff.."\nYxZhz("..random_Num..")".."\n"
         else
         local fucna=line:match("function [%w_]+%((.-)%)")
         local force=line:match("for (.-)=.-do")
              if fucna~=nil then
                 local fuc=line:match("(function [%w_]+)%(.-%)")
                 local c=""
                 local vt=fucna
                 for i in fucna:gmatch("[%w_]+") do
                      vt=vt:gsub(i,i.."a",1)
                      c=c..i.." = "..i.."a\n"
                 end
                 line=fuc.."("..vt..")"
                 x=x..line.."\n"..c
              elseif force~=nil then
                 local cs=line:match("for(.-)do")
                 local c=""
                 local ce=force
                 for i in force:gmatch("[%w_]+") do
                      force=force:gsub(i,i.."a",1)
                      c=c..i.." = "..i.."a\n"
                 end
                 cs=cs:gsub(ce,force)
                 line="for"..cs.."do"
                 x=x..line.."\n"..c
               else
                 x=x..line.."\n"
              end
         end
    end
    return x
end
local yx=gg.prompt({"选择脚本","标准仿xs and 指针配置","格式碎片化","插入图标","自定义脚本输出大小","JMP最强防反(加密后执行失败请勿勾选)","是否使用编译调试"},{byes(),false,false,false,false,false,true},{"file","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if yx==nil then 
    os.exit(print("未选择"))
end
io.open("/storage/emulated/0/Android/Yx Enc choice.lua","w"):write(yx[1])
local last=yx[1] 
local test,error=loadfile(last) 
if test==nil then
    gg.alert("脚本错误!\n\n╾╾╾╾╾⚠ 问 题 所 在 ️⚠╾╾╾╾╾\n错误:\n"..error)
    os.exit(print("结束"))
end
local out=yx[1]:gsub(".lua","").."-[Yx' Enc].lua"
local ym=io.open(yx[1],"r"):read("*a")
if yx[7] then
  gg.toast("正在进行编译操作...")
  Finalcode=string.dump(load(ym),true)
end
io.open(out, "w"):write(Finalcode)
if yx[5] then
  if #Finalcode<(1024*1024) then 
    kb=tonumber(math.floor(#Finalcode/1024))
    mb=0
  else
    mb=tonumber(math.floor(#Finalcode/(1024*1024)))
    kb=0
  end
    kb=tostring(kb):gsub("%.0","")
    kb=tonumber(kb)
    mb=tostring(mb):gsub("%.0","")
    mb=tonumber(mb)
  ::MYX::
  bs=gg.prompt({
[[
 ╾╾🔰[GG LUA BY Yx ENC]🔰╾╾
  
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾
🇲 🇦 🇨 🇰 🇧 🇾➨ ✭ 🇾‌‌ 🇽‌‌ ✭
╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾

您加密后的脚本大小为：]]..Calculatedsize(Finalcode)..[[
自定义大小必须大于您的脚本大小]],
"KB[0;1024]","MB[0;1000]"},{true,kb,mb},{"checkbox","number","number"})
  bs[2]=tonumber(bs[2])
  bs[3]=tonumber(bs[3])
  print(bs)
  if bs[3]*1024*1024+bs[2]*1024<#Finalcode then
    gg.toast("输入的大小小于你加密后的脚本大小")
    goto MYX
  end
  if bs[3]==0 then
    num=math.floor(bs[2]*1024-#Finalcode)
  else
    num=math.floor(bs[3]*1024*1024+bs[2]*1024-#Finalcode)
  end
  num=tostring(num):gsub("%.0","")
  for i=1,10 do
  io.open(out, "a"):write(string.char(0):rep(tonumber(num/10)))
  end
end
gg.setVisible(true)
print("加密成功\n脚本保存到："..out)