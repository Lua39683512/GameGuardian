  io.write(("-"):rep(75).."\n")
  io.write("--《 YI 》 Encryption Ver: 1.0\n")
  io.write("--  作者:   文艺 or 逸辰 or 夕颜\n")
  io.write(("-"):rep(75).."\n")
  YIUI=[[


---------------------------------------------------------------------------
--《 YI 》 Encryption Ver: 1.0
--  作者:   文艺 or 逸辰 or 夕颜
---------------------------------------------------------------------------

]]
function random_S()
return ("YIProMax = 'Y' "):rep(math.random(150,200))
end
function random_YI()
local mahx=math.random(400,800)
local thhx=mahx+math.random(20,50)
local gotos=("goto YIOo "):rep(math.random(5,13))
hx=" if nil then "..random_S().." func='功能' end if (("..mahx..")<(-"..thhx..")) then end if(nil)then func='功能' if(true)then else "..gotos.." end if(nil)then func='功能'  else "..gotos.." end ::YIOo:: end "
return hx
end
assigns=""
asign=""
   function compatible(str)
local tbSpecialWorld ={
 ["("] = "%(", [")"] = "%)", ["."] = "%.", ["%"] = "%%",
 ["+"] = "%+", ["-"] = "%-", ["*"] = "%*", ["?"] = "%?",
 ["["] = "%[", ["]"] = "%]", ["^"] = "%^", ["$"] = "%$",
}
str=string.gsub(str, ".", function(s) return tbSpecialWorld[s] or s end)
return str
end
    function random_Oo(num)
      local txt = ""
      letter = {"o", "O", "0"}
      if not num then
        for i=1,math.random(20,40) do
          txt=txt..letter[math.random(1,3)]
        end
      else
        for i=1,num do
          txt=txt..letter[math.random(1,3)]
        end
       end
      return letter[math.random(1,2)]..txt
    end
function localy()
locals=locals+1
if locals<150 then
return "local "
else 
return ""
end
end
function gg.toprt(...)
gg.toast(...)
print(...)
end
locals=0
tablebox=""
ttt=1
function vigilance(x)
a={"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
aa={"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "_"}
s=x
for i=1,#a do
x=x:gsub(a[i]," "..i)
x=x:gsub(aa[i]," "..aa[i])
end
x=x:gsub("_"," _")
x=x:gsub(" ","",1)
x=x.." "
b=""
xx=""
for i in x:gmatch("(.-) ") do
cs=i
i=tonumber(i)
if type(i)=="number" then
if i<=21 then
ss=math.random(1,5)
b=b..a[ss]
ss=i+ss
xx=xx..a[ss]
elseif i>21 then
b=b..a[i]
xx=xx..a[i]
end
else
b=b..cs
xx=xx..cs
end
end
return "int(\""..xx.."\",\""..b.."\")"
end
function cinendl(x)
function ransm(x)
a={"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
generating=""
for v=1,x do
generating=generating..a[math.random(1,50)]
end
return a[math.random(51,60)]..generating..a[math.random(51,60)]
end
ioo={"OooOo","oOoooO","OoOo","OOooo","OoOO","OOOoo","oooOo","oOoO","ooOooOO","OooooOO"}
for i=0,9 do
x=x:gsub(i," "..ioo[i+1])
end
for i in x:gmatch(" ") do
x=x:gsub(" ",ransm(2),1)
end
return x
end
     function charhx(YI)
  YI=table.concat({YI:byte(0, -1)}, ",")
  YI="'"..YI:gsub(",","','").."'"
  for i in YI:gmatch("'(%d+)'") do
  tablebox=tablebox..","..i
  YI=YI:gsub(i,"____["..ttt.."]",1)
  ttt=ttt+1
  YI=YI:gsub("'","")
  end
 return "rankeys[2]("..YI..")"
 end
    function YIchar(data)
      return "{" .. table.concat({data:byte(0, -1)}, ",") .. "}"
    end
    function check(s)
       if string.byte(s) >= 65 and string.byte(s) <= 90 or string.byte(s) >= 48 and string.byte(s) <= 57 then
         return true
       else
         return false
       end
    end
    function clear_comment(data)
      return data:gsub("%-%-%[%[.-%]%]",""):gsub("%-%-[^\n]+","")
    end
    function random_num()
      num = {"1","2","3","4","5","6","7","8","9","0"}
      return ((num[math.random(1,10)])*(num[math.random(1,10)]))+num[math.random(1,10)]+num[math.random(1,10)]
    end
    function searandom(file)
    gg.toprt("YI：正在清理脚本...")
      content = io.open(file):read("*a")
       :gsub("\\n","\n")
       :gsub("\\t","\t")
       :gsub("\\r","\r")
      content = clear_comment(content)
      
      
      
      
      
      gg.toprt("YI：正在赋值table...")
for i in content:gmatch("{.-}") do
if i~="{}" and load("loadtab="..i)~=nil then 
Oo_random=random_Oo()
i=compatible(i)
   asign=asign..random_YI()..Oo_random.."="..(i:gsub("%%","")).." "
  content=content:gsub(i,Oo_random,1)
end
end
for i in content:gmatch("{.-}") do
if i~="{}" then 
i=compatible(i)
i=i:gsub("\n",""):gsub("{(.-){","{"):gsub("{{","{"):gsub("{%s+{","{")
Oo_random=random_Oo()
   asign=asign..random_YI()..Oo_random.."="..(i:gsub("%%","")).." "
  content=content:gsub(i,Oo_random,1)
end
end
for i in content:gmatch("{.-}") do
if i~="{}" then 
i=compatible(i)
i=i:gsub("\n",""):gsub("{(.-){","{")
--print(i)
Oo_random=random_Oo()
   asign=asign..random_YI()..Oo_random.."="..(i:gsub("%%","")).." "
  content=content:gsub(i,Oo_random,1)
end
end
for i in content:gmatch("{.-}") do
if i~="{}" and load("loadtab="..i)~=nil then 
i=compatible(i)
Oo_random=random_Oo()
   asign=asign..Oo_random.."="..(i:gsub("%%","")).." "
  content=content:gsub(i,Oo_random,1)
end
end
asign=asign:gsub("\n"," ")
content=asign..content
      content=content:gsub("print",random_YI().."_ENV[\"print\"]")
      gg.toprt("YI：正在混淆搜索修改数据...")
      content=content:gsub("gg.searchNumber%(\"(.-)\",",function(x) return "gg.searchNumber(cin(\""..cinendl(x).."\")," end)
content=content:gsub("gg.editAll%(\"(.-)\",",function(x) return "gg.editAll(cin(\""..cinendl(x).."\")," end)
gg.toprt("YI：正在混淆函数...")
         local str = {"string","debug","io","os","gg","math","table"}
         local txts = ""
         for order,code in ipairs(str) do
           code2=random_Oo()
           txts=txts..'local '..code2..'={}\nfor i, v in pairs('..code..') do\ntable.insert('..code2..', '..code..'[i])\n'..code2..'[i]='..code..'[i]\nend\n'
           content=content:gsub(code.."%.(.-[^a-zA-z_0-9])",function(s)
             s=code2.."["..s.."]"
             s=s:gsub("(.)%]",function(x) return "]"..x end)
             s=s:gsub("%[(.-)%]",function(z) return "["..vigilance(z).."]" end)
             return s
           end)
         end
       kl={"choice","multiChoice","prompt"}
       pv={}
       for ov=1,3 do
     for i in content:gmatch("([A-Za-z_][%w]- -)=gg%."..kl[ov]) do
    pv[#pv+1]=i
    end
     for i in content:gmatch("([A-Za-z_][%w]- -) = gg%."..kl[ov]) do
    pv[#pv+1]=i
    end
   end
         for v in pairs(gg) do
           conts="gg."..v
             if content:match("local ([A-Za-z_][%w]- -) = "..conts)==nil
             and content:match("([A-Za-z_][%w]- -) = "..conts)==nil
             and content:match("local ([A-Za-z_][%w]- -)="..conts)==nil
             and content:match("([A-Za-z_][%w]- -)="..conts)==nil
             and content:match("if "..conts)==nil
             and content:match("if("..conts)==nil
             and content:match("return "..conts)==nil
             and conts:find("TYPE_")==nil
             and conts:find("SIGN_")==nil
             and conts:find("isVisible")==nil
             and conts:find("REGION_")==nil then
               content=content:gsub(conts,random_YI().." local "..random_Oo().."="..conts)
             end
         end
         for s in string.gmatch(content, "([A-Za-z_][%w]- -)=[^=]") do
           if not type(s)~="string"
           and s:find("address")
           and s:find("value")
           and s:find("flags")
           and s:find("freeze") then
           if #s>=3 then
             content=content:gsub(s:gsub(" ",""),random_Oo())
           end
           end
         end
         for s in string.gmatch(content, "function -(%w-)%(") do
           content=content:gsub(s.."%(",random_Oo().."(")
         end
         local mark={"value","flags","freeze"}
         for order,code in ipairs(mark) do
           brary=random_Oo()
           code2=charhx(code)
           txts=txts..random_YI()..brary..'='..code2..'\n'
           content=content:gsub("%."..code,"["..brary.."]")
         end
         gg.toprt("YI：正在混淆Boolean数据...")
         local mark={"true","false"}
         for order,code in ipairs(mark) do
           brary=random_Oo()
           txts=txts..random_YI()..brary..'='..code..'\n'
           content=content:gsub(code,brary)
         end
         tablebox=tablebox:gsub(",","",1)
         tablebox="local ____={"..tablebox.."}\n"
         content=tablebox..txts..content
       return content
     end
    function enc_code(data)
      data = string.upper(tostring(data)) -- 字符串字母转换大写
      nums = {"oOOOO","ooOOO","oooOO","ooooO","ooooo","Ooooo","OOooo","OOOoo","OOOOo","OOOOO"} -- 数字 0-9
      letter = {"oO","Oooo","OoOo","Ooo","o","ooOo","OOo","oooo","oo","oOOO","OoO","oOoo","OO","Oo","OOO","oOOo","OOoO","oOo","ooo","O","ooO","oooO","oOO","OooO","OoOO","OOoo"} -- 字母A-Z
      local txt = ""
      for i = 1, #data do
        local repl = string.sub(data,i,i)
        if check(repl) then
          local num = tonumber(repl) -- 数字 否为nil
            if num then -- 为数字
              if num == 0 then num = 10 end
              txt = txt.." "..nums[num]
            else
              local str = tostring(repl) -- 转化可读字符串
              txt = txt.." "..letter[string.byte(str)-64]
            end
          end
        end
      return txt
    end
    function dzsh(text)
      pattern="."
      s=string.gsub(text,pattern,function(c)
        local c=string.format("%02X",string.byte(c))
        return c
      end)
      s=string.gsub(s," ","+")
      return enc_code(s)
    end
    algorithm =  [=[
    local getFile=gg.getFile()
    local open=io.open
   local zfc=string
  local function length(x)
  if nil then end if ((548)<(-592)) then end if(nil)then if(true)then else goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo  end if(nil)then else goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo  end ::YIOo:: end
  return #x
  end
  local function numF(...)
  if nil then end if ((548)<(-592)) then end if(nil)then if(true)then else goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo  end if(nil)then else goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo  end ::YIOo:: end
  return tonumber(...)
  end
    local rankeys={111,zfc.char,79,zfc.gsub,"\001","你妈死定了",table.concat,"'(%d+)'","(.-) ","\"(%w+)\"",zfc.gmatch,zfc.sub,"*a"}
     local __={48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70,71,72,73,74,75,76,77,78,80,81,82,83,84,85,86,87,88,89,90}
   local function int(x,y)
local a={"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
local aa={"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "_"}
for i=1,#a do
x=rankeys[4](x,a[i],i.." ")
x=rankeys[4](x,aa[i],aa[i].." ")
y=rankeys[4](y,a[i],i.." ")
y=rankeys[4](y,aa[i],aa[i].." ")
end
x=rankeys[4](x,"_","_ ")
y=rankeys[4](y,"_","_ ")
xx={}
for i in rankeys[11](x,rankeys[9]) do
xx[length(xx)+1]=i
end
yy={}
for i in rankeys[11](y,rankeys[9]) do
yy[length(yy)+1]=i
end
xy=""
for i=1,#xx do
if yy[i]~=nil then
if type(numF(yy[i]))=="number" then
if xx[i]==yy[i] then
xy=xy..a[numF(yy[i])]
else xy=xy..a[xx[i]-yy[i]]
end
else
xy=xy..yy[i]
end
else xy=xy..a[numF(xx[i])]
end
end
return xy
end
  local function dec_code(data)
      local function dzsh(text)
      pattern=".."
      s=rankeys[4](text,pattern,function(c)
        local c=rankeys[2]((numF(c,16))%256)
        return c
      end)
      s=rankeys[4](s," ","+")
      return s
    end
    local function Split(Text)
      Table="{\""..rankeys[4](Text," ","\",\"").."\"}"
      Tables={}
      sx=1
      for s in rankeys[11](Table,rankeys[10]) do
      Tables[sx]=s
      sx=sx+1
      end
        return Tables
      end
local tables = {rankeys[2](rankeys[1],rankeys[3],rankeys[3],rankeys[3],rankeys[3]),rankeys[2](rankeys[1],rankeys[1],rankeys[3],rankeys[3],rankeys[3]),rankeys[2](rankeys[1],rankeys[1],rankeys[1],rankeys[3],rankeys[3]),rankeys[2](rankeys[1],rankeys[1],rankeys[1],rankeys[1],rankeys[3]),rankeys[2](rankeys[1],rankeys[1],rankeys[1],rankeys[1],rankeys[1]),rankeys[2](rankeys[3],rankeys[1],rankeys[1],rankeys[1],rankeys[1]),rankeys[2](rankeys[3],rankeys[3],rankeys[1],rankeys[1],rankeys[1]),rankeys[2](rankeys[3],rankeys[3],rankeys[3],rankeys[1],rankeys[1]),rankeys[2](rankeys[3],rankeys[3],rankeys[3],rankeys[3],rankeys[1]),rankeys[2](rankeys[3],rankeys[3],rankeys[3],rankeys[3],rankeys[3]),rankeys[2](rankeys[1],rankeys[3]),rankeys[2](rankeys[3],rankeys[1],rankeys[1],rankeys[1]),rankeys[2](rankeys[3],rankeys[1],rankeys[3],rankeys[1]),rankeys[2](rankeys[3],rankeys[1],rankeys[1]),rankeys[2](rankeys[1]),rankeys[2](rankeys[1],rankeys[1],rankeys[3],rankeys[1]),rankeys[2](rankeys[3],rankeys[3],rankeys[1]),rankeys[2](rankeys[1],rankeys[1],rankeys[1],rankeys[1]),rankeys[2](rankeys[1],rankeys[1]),rankeys[2](rankeys[1],rankeys[3],rankeys[3],rankeys[3]),rankeys[2](rankeys[3],rankeys[1],rankeys[3]),rankeys[2](rankeys[1],rankeys[3],rankeys[1],rankeys[1]),rankeys[2](rankeys[3],rankeys[3]),rankeys[2](rankeys[3],rankeys[1]),rankeys[2](rankeys[3],rankeys[3],rankeys[3]),rankeys[2](rankeys[1],rankeys[3],rankeys[3],rankeys[1]),rankeys[2](rankeys[3],rankeys[3],rankeys[1],rankeys[3]),rankeys[2](rankeys[1],rankeys[3],rankeys[1]),rankeys[2](rankeys[1],rankeys[1],rankeys[1]),rankeys[2](rankeys[3]),rankeys[2](rankeys[1],rankeys[1],rankeys[3]),rankeys[2](rankeys[1],rankeys[1],rankeys[1],rankeys[3]),rankeys[2](rankeys[1],rankeys[3],rankeys[3]),rankeys[2](rankeys[3],rankeys[1],rankeys[1],rankeys[3]),rankeys[2](rankeys[3],rankeys[1],rankeys[3],rankeys[3]),rankeys[2](rankeys[3],rankeys[3],rankeys[1],rankeys[1]),rankeys[2](__[2]),rankeys[2](__[3]),rankeys[2](__[4]),rankeys[2](__[5]),rankeys[2](__[6]),rankeys[2](__[7]),rankeys[2](__[8]),rankeys[2](__[9]),rankeys[2](__[10]),rankeys[2](__[1]),rankeys[2](__[11]),rankeys[2](__[12]),rankeys[2](__[13]),rankeys[2](__[14]),rankeys[2](__[15]),rankeys[2](__[16]),rankeys[2](__[17]),rankeys[2](__[18]),rankeys[2](__[19]),rankeys[2](__[20]),rankeys[2](__[21]),rankeys[2](__[22]),rankeys[2](__[23]),rankeys[2](__[24]),rankeys[2](rankeys[3]),rankeys[2](__[25]),rankeys[2](__[26]),rankeys[2](__[27]),rankeys[2](__[28]),rankeys[2](__[29]),rankeys[2](__[30]),rankeys[2](__[31]),rankeys[2](__[32]),rankeys[2](__[33]),rankeys[2](__[34]),rankeys[2](__[35])}
      local txt = ""
      for order,code in pairs(Split(data)) do
        for orders,codes in pairs(tables) do
          if code == codes then
            txt = txt..tables[orders+36]
          end
        end
      end
      return dzsh(txt)
    end
   local function cin(x)
local a={rankeys[2](97), rankeys[2](98), rankeys[2](99), rankeys[2](100), rankeys[2](101), rankeys[2](102), rankeys[2](103), rankeys[2](104), rankeys[2](105), rankeys[2](106), rankeys[2](107), rankeys[2](108), rankeys[2](109), rankeys[2](110), rankeys[2](112), rankeys[2](113), rankeys[2](114), rankeys[2](115), rankeys[2](116), rankeys[2](117), rankeys[2](118), rankeys[2](119), rankeys[2](120), rankeys[2](121), rankeys[2](122), rankeys[2](65), rankeys[2](66), rankeys[2](67), rankeys[2](68), rankeys[2](69), rankeys[2](70), rankeys[2](71), rankeys[2](72), rankeys[2](73), rankeys[2](74), rankeys[2](75), rankeys[2](76), rankeys[2](77), rankeys[2](78), rankeys[2](80), rankeys[2](81), rankeys[2](82), rankeys[2](83), rankeys[2](84), rankeys[2](85), rankeys[2](86), rankeys[2](87), rankeys[2](88), rankeys[2](89), rankeys[2](90), rankeys[2](49), rankeys[2](50), rankeys[2](51), rankeys[2](52), rankeys[2](53), rankeys[2](54), rankeys[2](55), rankeys[2](56), rankeys[2](57), rankeys[2](48)}
local ioo={rankeys[2](rankeys[3],rankeys[1],rankeys[1],rankeys[3],rankeys[1]),rankeys[2](rankeys[1],rankeys[3],rankeys[1],rankeys[1],rankeys[1],rankeys[3]),rankeys[2](rankeys[3],rankeys[1],rankeys[3],rankeys[1]),rankeys[2](rankeys[3],rankeys[3],rankeys[1],rankeys[1],rankeys[1]),rankeys[2](rankeys[3],rankeys[1],rankeys[3],rankeys[3]),rankeys[2](rankeys[3],rankeys[3],rankeys[3],rankeys[1],rankeys[1]),rankeys[2](rankeys[1],rankeys[1],rankeys[1],rankeys[3],rankeys[1]),rankeys[2](rankeys[1],rankeys[3],rankeys[1],rankeys[3]),rankeys[2](rankeys[1],rankeys[1],rankeys[3],rankeys[1],rankeys[1],rankeys[3],rankeys[3]),rankeys[2](rankeys[3],rankeys[1],rankeys[1],rankeys[1],rankeys[1],rankeys[3],rankeys[3])}
for i=1,#a do
x=rankeys[4](x,a[i]," ")
end
for i=0,9 do
x=rankeys[4](x,ioo[i+1],i)
end
x=rankeys[4](x," ","")
return x
end   
  local Intercept=0
    local icode=open(getFile,"r"):read(rankeys[13])
  for isub=8,11 do
    Intercept=Intercept+(numF(rankeys[12](icode,isub,isub):byte()))
 end
 Intercept=(Intercept^2)
  local function pr(YI)
        YI=rankeys[4](YI,rankeys[5],rankeys[2](rankeys[1]))
        YI=rankeys[4](YI,rankeys[6],rankeys[2](rankeys[3]))
        return YI
        end
        local YIUI=length(YIUI)
    function Dec(YI,YII)
          local function YIchar(YII)
          if nil then end if ((548)<(-592)) then end if(nil)then if(true)then else goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo  end if(nil)then else goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo  end ::YIOo:: end
      return "{'" .. rankeys[7]({YII:byte(0, -1)}, "','") .. "'}"
    end
      YII=YIchar(YII)
      YIIII={}
      sx=1
      for s in rankeys[11](YII,rankeys[8]) do
      YIIII[sx]=s
      sx=sx+1
      end
      YI=dec_code(YI)
      YIII={}
      sx=1
      for s in rankeys[11](YI,rankeys[8]) do
      YIII[sx]=s
      sx=sx+1
      end
      code={}
      for i=1,#YIII do
        code[i]=rankeys[2](YIII[i]-YIIII[i]-key-YIUI-YIJM-Intercept)
      end
      return rankeys[7](code,"")
    end
    ]=]
    function enc_string(data)
          brary=random_num()
          function numbertys(sotent)
            for o,i in content:gmatch(sotent) do
        ii = YIchar(i)
        load("iii="..ii)()
        ll = random_Oo(#iii)
        lll = YIchar(ll)
        load("llll="..lll)()
        YI={}
        for x=1,#iii do
          YI[x]=iii[x]+llll[x]+brary+#YIUI+64.0
        end
        local txt = ""
        for l=1,#YI do
          txt=txt..","..YI[l]
        end
        txt="{'"..txt:gsub(",","",1):gsub(",","','").."'}"
        txt=dzsh(txt)
        txt=txt:gsub(" ","",1)
        sign=random_Oo()
        txt=txt:gsub("o","\\001")
        txt=txt:gsub("O","\\0")
        assigns=assigns..random_YI()..localy()..sign.."='"..txt.."'\n"
        content=content:gsub(sotent,o.."=numF(Dec(pr("..sign.."),'"..ll.."'))",1)
      end
   end
    gg.toprt("YI：正在混淆num数字...")
      numbertys("([A-Za-z_][%w]- -)=(%d+)")
      numbertys("([A-Za-z_][%w]- -) = (%d+)")
            gg.toprt("YI：正在混淆if判断...")
      for i=1,#pv do
     content=content:gsub("if "..pv[i].."==(%d+)",function(x) return "if not (function(...) "..random_YI().." return "..pv[i].."~=numF(rankeys[2]("..table.concat({x:byte(0, -1)}, ",")..")) end)()" end)
     content=content:gsub("if "..pv[i].." == (%d+)",function(x) return "if not (function(...) "..random_YI().." return "..pv[i].."~=numF(rankeys[2]("..table.concat({x:byte(0, -1)}, ",")..")) end)()" end)
     end
            local muteness='"'
      local sotent=muteness.."(.-)"..muteness
     gg.toprt("YI：正在混淆字符串...")
      for i in content:gmatch(sotent) do
        ii = YIchar(i)
        load("iii="..ii)()
        ll = random_Oo(#iii)
        lll = YIchar(ll)
        load("llll="..lll)()
        YI={}
        for x=1,#iii do
          YI[x]=iii[x]+llll[x]+brary+#YIUI+64.0
        end
        local txt = ""
        for l=1,#YI do
          txt=txt..","..YI[l]
        end
        txt="{'"..txt:gsub(",","",1):gsub(",","','").."'}"
        txt=dzsh(txt)
        txt=txt:gsub(" ","",1)
        sign=random_Oo()
        txt=txt:gsub("o","\\001")
        txt=txt:gsub("O","\\0")
        assigns=assigns..random_YI()..localy()..sign.."='"..txt.."'\n"
        content=content:gsub(sotent,"Dec(pr("..sign.."),'"..ll.."')",1)
      end
    fuck=algorithm.."\n"..content
    content=""
io.open("/storage/emulated/0/Android/data/YI_Lua.dll","w"):write(fuck)
files=io.open("/storage/emulated/0/Android/data/YI_Lua.dll", "r")
for line in files:lines() do
if load(line)~=nil and string.find(line,"return")==nil then 
content=content..random_YI().."\n"..line.."\n"
else content=content..line.."\n"
end
if line~=nil then
else 
break
end
end
os.remove("/storage/emulated/0/Android/data/YI_Lua.dll")
      content=" if nil then end if ((548)<(-592)) then end if(nil)then if(true)then else goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo  end if(nil)then else goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo goto YIOo  end ::YIOo:: end local key="..brary.."\nlocal YIUI=[["..YIUI.."]]local YIJM=1 \nlocal YIencrypt=(function()local YIJM=YIJM*((((19&25)-(11|7))*2)|2) local YIJM=((YIJM*20)/2-5*4+9)%11-4\n"..assigns..content.."\nend)()"
    return content
    end
yx=gg.prompt({"选择脚本"},{[1]=gg.getFile():gsub('/[^/]+$','')},{"file"})
if yx==nil then os.exit(print("未选择"))end
last=yx[1] 
test,error=loadfile(last) 
if test==nil then
gg.alert('脚本错误!\n\n╾╾╾╾╾⚠ 问 题 所 在 ️⚠╾╾╾╾╾\n错误:\n'..error)
os.exit(print("结束"))
end
out = yx[1].."YI"
ym=enc_string(searandom(yx[1]))
ym=ym:gsub("你妈死定了"," ")
ym=ym:gsub("func='功能'","(function()end)()")
io.open(out..".lua","w"):write(ym)
enc=true
if enc==true then 
gg.toprt("YI：正在编译...")
function fh()
bool=("\n\nLOADBOOL v48 28\n\nLOADBOOL v48 28"):rep(math.random(3,7))
return bool
end
if load(ym)==nil then 
gg.alert("加密失败~") os.exit()
end
ym = string.dump(load(ym), true)
res = gg.internal2(load(ym), out)

gg.alert(tostring(res))

ym=io.open(out,"r"):read("*a")
ym=ym:gsub("LOADNIL v(%d+)%.%.v(%d+)\n\n%s+TEST v(%d+) (%d+)\n\n%s+JMP :goto_(%d+)  ; %+(%d+) ↓",function (a,b,c,d,e,f) return "LOADNIL v"..a.."..v"..b.."\n\nTEST v"..c.." "..d.."\n\nTEST v"..c.." "..d.."\n\nLT 0 454 278\n\nLT 0 454 278\n\nJMP :goto_"..e.."  ; +"..f.." ↓ \n\nSETTABUP u0 \"YILS\" v4  \n\nGETTABUP v0 u0 \"YISL\"\n\nMUL v1 \"YI\" v15\n\nEQ 246 v250 v161"..fh() end)
--io.open(out.."拆卸.lasm","w"):write(ym)
ym = string.dump(load(ym),true)
ym=ym:sub(1,7)..string.char(0,0,4,4)..ym:sub(12,22)..string.char(178,0,0,0,11,1,11)..ym:sub(30,#ym) b=string.rep('\x1F\x32\x00\x64',3)
for i=112,127 do ym=ym:gsub(string.rep(string.char(i)..'...',3),b) end
ym=ym:gsub(string.char(27,76,117,97,82,0),string.char(27,76,117,97,89,73),1):gsub(string.char(0x04,0x00,0x00,0x00,0x02,0x59),string.char(0x04,0x00,0x00,0x27,0x11)..("\000"):rep(10000)):gsub(string.char(0x05,0x59,0x49,0x4C,0x53,0x00),string.char(0)):gsub(string.char(0x05,0x59,0x49,0x53,0x4C,0x00),string.char(0)):gsub(string.char(1,0,0x80,0,0x1f,0,0,0),string.char(0,0,0,0))
end
io.open(out,"w"):write(ym)
gg.setVisible(true)
gg.toprt("YI：加密成功")