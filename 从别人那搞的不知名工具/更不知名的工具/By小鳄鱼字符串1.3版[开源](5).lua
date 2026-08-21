--By小鳄鱼2022年1月31号开源
--二改请留版权！二改请留版权！二改请留版权！
--QQ:1578989908


local XEY = {}
XEY.XEY3 = gg.getFile()
XEY.XEY4 = nil
XEY.XEY5 = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
XEY.XEY6 = loadfile(XEY.XEY5)
if XEY.XEY6 ~= nil then
XEY.XEY4 = XEY.XEY6()
XEY.XEY6 = nil
end
if XEY.XEY4 == nil then
XEY.XEY4 = {XEY.XEY3, XEY.XEY3:gsub("/[^/]+$", "")}
end
while not false do
XEY.XEY4 = gg.prompt({
"选择加密脚本文件 : ",
"选择加密输出位置: ",
"自定义个人标识 : "},
XEY.XEY4,{
"file",
"path",
"text",
})
if XEY.XEY4 == nil then
break
end
gg.saveVariable(XEY.XEY4, XEY.XEY5)
XEY.XEY1 = io.input(XEY.XEY4[1]):read("*a")
if not load(XEY.XEY1) then 
os.exit()
end

XEY.XEY3 = XEY.XEY4[1]
XEY.XEY2 = XEY.XEY3:match("[^/]+$")
XEY.XEY2 = XEY.XEY2:gsub(".lua", ".lua")
XEY.XEY2 = XEY.XEY4[2] .. "/" .. XEY.XEY2 .. ".lua"
XEY.XEY1 = io.input(XEY.XEY3):read("*a")

XEY.XEY1 = XEY.XEY1:gsub("\\n","\n"):gsub("\\t","\t")

math.randomseed(os.time())
  
XEY.XEY1=[[
--By小鳄鱼:防御放这里
]]..XEY.XEY1


local Chars = {}
for Loop = 0, 255 do
   Chars[Loop+1] = string.char(Loop)
end

 Built = {['.'] = Chars}
 AddLookup = function(CharSet)
 Substitute = string.gsub(table.concat(Chars), '[^'..CharSet..']', '')
 Lookup = {}
   for Loop = 1, string.len(Substitute) do
   Lookup[Loop] = string.sub(Substitute, Loop, Loop)
   end
   Built[CharSet] = Lookup
  return Lookup
end

function string.random(Length, CharSet)
  local CharSet = CharSet or '.'
   if CharSet == '' then
  return ''
   else
  local Result = {}
  local Lookup = Built[CharSet] or AddLookup(CharSet)
  for Loop = 1,Length do
 Result[Loop] = Lookup[math.random(1, #Lookup)]
  end
  return table.concat(Result)
   end
end

local tkey = {} 
local tkay = {}
local rbig = {}


for k, v in pairs(_G) do
if (assert(type(v)) == ("table")) then
for y,m in pairs(v) do
find = (k.."." .. y)
XEY.XEY1 = XEY.XEY1:gsub(find, function(...)
return ('_ENV["'..k..'"]["'..y..'"]')
  end)
end 
  end
end

local rand,schar,tC=math.random,string.char,table.concat
function randstr(len)
local len=len or 6
local e=""
for i=1,len do
e=e..schar(rand(128,255))
end
return e
end

local sname = string.random(4,"%g%p")
local wname = string.random(4,"%c%p")

function enc(j)
r=''
for i=1,#j do
if ( r == '' ) then
 r = r..'_ENV[([==['..wname..']==])]('..string.byte(j,i)..')'
else
r = r..','..'_ENV[([==['..wname..']==])]('..string.byte(j,i)..')'
end
end
return r
 end



XEY.XEY1 = XEY.XEY1:gsub('"(.-)"',function(p) 
rbig[#rbig+1] = string.random(6,"%p%g")
tkay[#tkay+1] = "_ENV[([==["..string.random(10,"%c%u%p%w%g").."]==])]"
tkey[#tkey+1] =  enc(p)
return "_ENV[([==["..sname.."]==])](".. tkay[#tkay].."())"
end)

function ByXEY()
v = ''
for i = 1,#tkay do 
v = v..tkay[i].." = function()\n\nwhile(_ENV[([===["..string.random(3,"%c%u%p%w%g").."]===])] ~= _ENV[([===["..string.random(3,"%c%u%p%w%g").."]===])] ) do for i in (_) do _[_]=_  end _() _ENV[\""..XEY.XEY4[3].."\"] = nil \n;local _ = {nil, -nil % -nil, nil, -nil, nil, nil % -nil, -nil % nil, -nil}if #_ < 0 then;break;end;if _[#_] < 0 then;break;end;if _[-nil] ~= #_ & ~_ then _[#_] = _[-nil]();end;if #_ < nil then _[#_] = _[-nil%nil]();end;goto X1;if(nil or 0)then;return;end::X0::__()::X1::function __()goto X2;if(nil or 0)then;return;end::X3::__()::X2::function _()end;goto X3;end;goto X0;end if false then _() local _={}  _._=_ _._=_._ _._={}end\nreturn {".. tkey[i].."}\n\nend;\n"
end
return v
end

XEY.XEY1 =[[
;(function() _ENV["\n\n]]..XEY.XEY4[3]..[[\n\n"] = not false 
_ENV[([==[]]..wname..[[]==])] = _ENV["string"]["char"]
]]..ByXEY()..[[
_ENV[([==[]]..sname..[[]==])] = _ENV["table"]["concat"]
]]..XEY.XEY1..[[
end)()
]]

if not load(XEY.XEY1) then 
gg.alert("By小鳄鱼:\n\n脚本存在错误\n\n请重新启动尝试","确定")
return 0
end

--XEY.XEY1= string.dump(load(XEY.XEY1),not false)--编译脚本

io.open(XEY.XEY2,"w"):write(XEY.XEY1)
gg.setVisible(not false)
gg.alert("By小鳄鱼:\n\n加密成功:\n\n".. XEY.XEY2 .. "")
break
end