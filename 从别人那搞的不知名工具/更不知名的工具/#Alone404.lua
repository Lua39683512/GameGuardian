function RandomGarb(sz,isF) sz=sz or math.random(8,58) local se=" goto s " local strs="" for s=1,sz do
strs=strs..se end strs="if nil then  goto s  goto s    goto s  goto s  goto s  goto s  ::s:: end  _X=_X if(nil)then(function()end)()end; if nil then "..strs.." ::s:: end _X=_X " if isF then strs=strs:gsub("_X=_X","")end
return strs
end
function RandomLitter(Num)
if Num == 1 then
M = (function(...) return string.char((...)[2],(...)[1],(...)[1],(...)[1]) end)({0,1})
elseif Num == 2 then
M = (function(...) return string.char((...)[1]) end)({1}) .. (function(...) return string.char(math.random((...)[2],(...)[1]..(...)[3])) end)({3,0,3}) .. (function(...) return string.char((...)[1], (...)[1]) end)({0})
elseif Num == 3 then
M = (function(...) return string.char((...)[1],(...)[2],(...)[3],(...)[4]) end)({173,240,159,135})
elseif Num == 4 then
M = (string.char(math.random(47,63)) .. (function(...) return string.char((...)[1],(...)[2],(...)[3]) end)({240,159,135}))
elseif Num == 5 then
M = (string.char(math.random(111,127)) .. (function(...) return string.char((...)[1],(...)[2],(...)[3]) end)({240,159,135}))
elseif Num == 6 then
M = (string.char(math.random(173,191)) .. (function(...) return string.char((...)[1],(...)[2],(...)[3]) end)({240,159,135}))
elseif Num == 7 then
M = (string.char(math.random(239,255)) .. (function(...) return string.char((...)[1],(...)[2],(...)[3]) end)({240,159,135}))
elseif Num == 8 then
M = (string.char(167) .. (function(...)  return string.char(math.random((...)[2], (...)[1]), math.random((...)[2], (...)[1]), math.random((...)[2], (...)[1])) end)({33,0,167}))
elseif Num == 9 then
M = (function(...) return string.char((...)[1],(...)[2],(...)[3],(...)[4]) end)({172,240,159,135})
end 
return M
end
function tempstr(sz,isF)
  sz=sz or math.random(8,58)
  local se=" goto s "
  local strs=""
  for s=1,sz do
    strs=strs..se
  end
  strs=";if nil then "..strs.." ::s:: end _X=_X ;function _1() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _3() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _3() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _4() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _5() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _6() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _7() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _8() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _9() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _10() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _11() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _12() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _13() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _14() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _15() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _16() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _17() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _18() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _19() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end\nfunction _20() ;goto R1;if(0)then;return;end::R0::e()::R1::function e()goto R2;if(0)then;return;end::R3::e()::R2::function d()end;goto R3;end;goto R0;end;"
  if isF then strs=strs:gsub("_X=_X","")end
    return strs
end
function dzsh(Text)Text=Text:gsub(" ","") return (Text:gsub("..", function (jie)return string.char((tonumber(jie,16))%256) end))end
function zjm_base(cmz)
  local zjm
    if cmz == 1 then
        zjm = dzsh("01000000")
    elseif cmz == 2 then
        zjm = dzsh("01") .. string.char(math.random(0, 33)) .. dzsh("0000")
    elseif cmz == 3 then
        zjm = dzsh("ADF09F87")
    elseif cmz == 4 then
        zjm = string.char(math.random(47, 63)) .. dzsh("F09F87") 
    elseif cmz == 5 then
        zjm = string.char(math.random(111, 127)) .. dzsh("F09F87")
    elseif cmz == 6 then
        zjm = string.char(math.random(173, 191)) .. dzsh("F09F87")
    elseif cmz == 7 then
        zjm = string.char(math.random(239, 255)) .. dzsh("F09F87")
    elseif cmz == 8 then
        zjm = dzsh("A7") .. string.char(math.random(0, 33), math.random(0, 33), math.random(0, 33))
    elseif cmz == 9 then
        zjm = dzsh("ACF09F87")
    else
        zjm = string.char(math.random(133, 255), math.random(0, 33), math.random(97, 122), math.random(133, 255))
    end
  return zjm
end
function xZiJie(counl)
  local zjmre=string.char()
  for i=1,counl do
    zjmre=zjmre..zjm_base(math.random(1,9))
  end
  return zjmre
end
function dumpplus(loadfun)
  local max,min=58,4
  local strhx=string.dump(loadfun,true)--编译dump
  zjms={}
  for s=max,min,-1 do
    str=string.dump(load(tempstr(s)),true)
    --print(str)
    bytstr=str:sub(34,34+s*4-1)
    zjms[s]={bytstr,bytstr:sub(0,4)}
  end
  for s=max,min,-1 do
    strhx=strhx:gsub(zjms[s][1],zjms[s][2]..xZiJie(s-1))
  end
  local str1=dzsh("0080001F0080001F0080001F")
  local str2=string.char(0,0x80,0,0x1F,0x0,0x80,0x0,0x1B,math.random(0x70,0xff),math.random(0x80,0xff),math.random(0xb0,0xff),0x1F)
  strhx=strhx:gsub(str1,str2)
  rxass=string.char(0x0,0x0,0x0,0x4,0x0,0x0,0x0,0x1B,0x80,0x0,0x80,0x17,0x80,0x0,0x0,0x17,0x80,0x0,0x0,0x17,0x0,0x0,0x0,0x4,0x0,0x80,0x0)
  rxhxs=string.char(0x80,0x31,0x10,0x17,0x80,0x1,0x10,0x17,0x80,0x8,0x82,0x3,0x80,0x5,0x0,0x18,0x80,0x8,0x0,0x19,0x0,0x80,0x5,0x1A,0x8,0x80,0x2A)
  return strhx:gsub(rxass,rxhxs)
end

local xyz = {}
for k, v in pairs(gg) do
	xyz[k] = gg[k]
end

T = xyz.alert([[
🛡️ᴇɴᴄʀʏᴘᴛ ʙʏ xʏᴢ ᴀʟᴏɴᴇ {ʙᴇᴛᴀ}🛡️
                🍓 ᴠᴇʀsɪᴏɴ ᴠ2.0
 ➖➖➖➖➖🔰➖➖➖➖➖➖
🖌️ { sʜᴀ + sᴛʀɪɴɢ + ʜᴇx }   
 ➖➖➖➖➖🔰➖➖➖➖➖➖          
📌  { ʙʟᴏᴄᴋ ᴇɴᴄᴏᴅᴇᴅ }
➖➖➖➖➖➖➖➖➖➖➖➖
🎈 sᴘᴀᴍ ʟᴏɢ 10ᴛʙ
🎈 ᴀɴᴛɪ ʟoᴀᴅ
🎈 ᴀɴᴛɪ тooʟ нooκ
🎈 ᴀɴᴛɪ ssтooʟ ᴀɴᴅ тᴅᴇcoмᴘιʟᴇ
🎈 ᴀɴᴛɪ uɴʟuᴀc
🎈 ʀᴀɴᴅᴏᴍ ᴋᴇʏ - ɢᴇɴᴇʀᴀᴛᴇ
🎈 ғᴀsᴛ ʟᴏᴀᴅ 50%
➖➖➖➖➖➖➖➖➖➖➖➖
ᴇɴᴄᴅᴏᴅᴇ ᴛᴏᴏʟ  > @xyzAlone404
]], "🗝️ [ ᴇɴᴄ ]","❌ [ ᴇxɪᴛ ]")
if T == 1 then 
end
if T == 2 then
print([[
➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖
🔰 ᴇɴᴄʀʏᴘᴛ ʙʏ xʏᴢ ᴀʟᴏɴᴇ {ʙᴇᴛᴀ-sɪ} 🔰
➖➖➖➖➖➖➖➖➖➖➖➖➖➖➖
❌ File : Exit Done 
]])
os.exit()
end

local g = {};
g.last = gg.getFile();
g.info = nil;
g.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
g.data = loadfile(g.config)
if g.data ~= nil then g.info = g.data() g.data = nil end
if g.info == nil then g.info = {g.last, g.last:gsub("/[^/]+$", "")} end
while true do
g.info = gg.prompt({
"📂 Select File",
"📂 Select Path",
"💠 Custom Chunk",
},g.info,{
"file",
"path",
"text",
})
gg.saveVariable(g.info,g.config);if g.info == nil then gg.toast([[Script Cancelled by User.!!]]) return print([[Script Cancelled by User.!!]]) end;g.last = g.info[1];g.reader = loadfile(g.last);if g.reader == nil then;gg.toast([[⚠️ Script not Found! ⚠️]]);gg.sleep(500);gg.alert([[⚠️ Script not Found! ⚠️]]);print([[⚠️ Script not Found! ⚠️]]);return os.exit() end
g.out = g.last:match("[^/]+$")
g.out = "『ENC』".. g.out:gsub(".lua", "")
g.out = g.info[2] .. "/" .. g.out .. ".lua"
DATA = io.open(g.info[1],"r"):read("*a")
if load(DATA) == nil then
gg.toast("Script Can't Be Encrypt")
gg.alert("\n⚠️FAILED TO ENCRYPT⚠️\n\nPlease check your script first...!")
return
end

chunk = {g.info[3]:byte(1,-1)};if #chunk % 4 ~= 0 then;repeat;hi = math.random(1,255);table.insert(chunk,hi);until #chunk % 4 == 0;end;test = #chunk / 4

DATA = DATA:gsub([["\"]],[["]]):gsub([[\""]],[["]]):gsub([["']],[[']]):gsub([['"]],[[']]):gsub([['\']],[[']]):gsub([[\'']],[[']]):gsub([['"]],[[']]):gsub([["']],[[']])

AB = math.random(50,120)
AC = math.random(50,320)
AD = math.random(50,430)
AE = math.random(50,900)
AF = math.random(55,500)
AG = math.random(55,100)
local KEY = {(AB+AC*AD-AF)+AE-AG+AB*AC,AB+AD-AE+AF*AG,AG*AF+50-2}
local A_ = ((KEY[1] * AE - 5) + (AB + KEY[1] * AF + AG) - (AG/2)) - (AG + AE - 100000 / 2)
local B_ = ((KEY[2] * AB - 2) + (AB + KEY[1] * AF) - (AG))
local C_ = ((KEY[3] + AF * 50) + (AC + AG * KEY[2] - AB) - (AE))
local KEYY = {(A_+B_-202982)/2,C_*AF,A_-7200,AG*AB+AE-60,A_+C_}

function EncSHA(str)
if not inv256 then inv256 = {} for M = 0, 127 do
local inv = -1 repeat inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end;end
local K = ((KEY[2] * AB - 2) + (AB + KEY[1] * AF) - (AG))
local F = ((KEY[3] + AF * 50) + (AC + AG * KEY[2] - AB) - (AE))
return (str:gsub('.', function(m)
local L = AB + KEY[1] * KEY[2] - 1101010 % KEY[3]
local PX = AG + (KEYY[1] * 3) - 110029
local H = (K * PX + L - KEY[1]) / KEYY[1]
local M = H % 27
local m = m:byte()
local c = (m * inv256[M] - (H + M) / 27) % 256 K = L * F + F + AG * F - m return ('%02x'):format(c)
end)) 
end


function encodeval(str)
	return '_DXOR_("'..EncSHA(str)..'")'
end
function encodegg(str)
	return 'gg[_DXOR_("'..EncSHA(str)..'")]('
end
function encodeos(str)
	return 'os[_DXOR_("'..EncSHA(str)..'")]('
end
function encodestr(str)
	return 'string[_DXOR_("'..EncSHA(str)..'")]('
end
function encodeio(str)
	return 'io[_DXOR_("'..EncSHA(str)..'")]('
end

local encode_run = function(char, count)
    return count == 1 and char or ("%d%s"):format(count, char)
end

_BXOR_ = function(input)
    local runs = {}
    local prev = ""
    local count = 0

    for i = 1, #input do
        local char = input:sub(i,i)
        if char == prev then
            count = count + 1
        else
            if prev ~= "" then
                runs[#runs+1] = encode_run(prev, count)
            end
            prev = char
            count = 1
        end
        if i == #input then     
            runs[#runs+1] = encode_run(char, count)
        end
    end
    return table.concat(runs)
end

function encode1(str)
str = {str:byte(1,-1)}
 k = "_FXOR_,"
 for i in ipairs(str) do
  str[i] = (str[i] - (KEY[1] * AE - 5) - (AB + KEY[1] * AF + AG) + (AG/2))%256
  str[i] = "'"..k:rep(str[i]).."'"
 end
 return "{XRed = {"..table.concat(str,",").."}}"
end

local timee = os.clock()
Decode =[[
local _CXOR_ = _G;local function ___(c,f,...)f = ...,...,... return c end
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';local AB = ]]..AB..[[;while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';local AC = ]]..AC..[[;while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';local AD = ]]..AD..[[;while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';
;local AE = ]]..AE..[[;while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';local AF = ]]..AF..[[;while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';local AG = ]]..AG..[[;while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';local KEY = {(AB+AC*AD-AF)+AE-AG+AB*AC,AB+AD-AE+AF*AG,AG*AF+50-2};while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';local A_ = ___((KEY[1] * AE - 5) + (AB + KEY[1] * AF + AG) - (AG/2)) - (AG + AE - 100000 / 2);while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';local B_ = ___((KEY[2] * AB - 2) + (AB + KEY[1] * AF) - (AG))
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';local C_ = ___((KEY[3] + AF * 50) + (AC + AG * KEY[2] - AB) - (AE));while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';local KEYY = {(A_+B_-202982)/2,C_*AF,A_-7200,AG*AB+AE-60,A_+C_}
function _DXOR_(str)
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';local K = ___((KEY[2] * AB - 2) + (AB + KEY[1] * AF) - (AG))
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';local F = ___((KEY[3] + AF * 50) + (AC + AG * KEY[2] - AB) - (AE))
return (str:gsub("%x%x", function(c)
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';local L = ___(AB + KEY[1] * KEY[2] - 1101010 % KEY[3])
local PX = ___(AG + (KEYY[1] * 3) - 110029)
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';local H = ___((K * PX + L - KEY[1]) / KEYY[1])
local M = H % 27 c = tonumber(c, 16)
local m = (c + (H + M) / 27) * (2*M + 1) % 256 K = L * F + F + AG * F - m return string.char(m)
end))
end
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';
_AXOR_ = function(input)
    local decoded = ""
    for n, c in input:gmatch("(%d*)(%D)") do
        decoded = decoded .. c:rep(n == "" and 1 or tonumber(n))
    end
    return decoded
end;while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';
local function _EXOR_(c)
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';
local c = c[string.char(table.unpack({88,82,101,100}))]
 res = ''
 for i in ipairs(c) do
  c[i] = c[i]:gsub("_FXOR_,","1")
  c[i] = string.char((#c[i] + (KEY[1] * AE - 5) + (AB + KEY[1] * AF + AG) - (AG/2))%256)
  res = res..c[i]
 end
 return res
end
while(nil)do;local ZxZ = {} if(ZxZ.ZxZ)then;ZxZ.ZxZ=(ZxZ.ZxZ(ZxZ))end;end;local i = ']]..math.random(100,8000)..[[';
]]

gg.toast("Loading...")
DATA = DATA:gsub("io%.(%a+)%(", encodeio)
DATA = DATA:gsub("os%.(%a+)%(", encodeos)
DATA = DATA:gsub("string%.(%a+)%(", encodestr)	
DATA = DATA:gsub("gg%.(%a+)%(", function(input)
input = '_CXOR_[_AXOR_("' .. _BXOR_("gg") .. '")][_AXOR_("' .. _BXOR_(input) .. '")]('
return input
end)
DATA = DATA:gsub('%".-(.-)%"', encodeval)
DATA = DATA:gsub("%'.-(.-)%'", encodeval)
DATA = DATA:gsub('%[%[.-(.-)%]%]', encodeval)
DATA = DATA:gsub("gg%.(%a+)%(", encodegg)
DATA = DATA:gsub('"(.-)"', function(c)
T = encode1(c)
return '_EXOR_('..T..')'
end)
DATA = Decode..DATA

DATA =[[collectgarbage("collect");
local _zx = "[' 🛡️ ᴇɴᴄʀʏᴘᴛ ᴛᴏᴏʟ xʏᴢ ᴀʟᴏɴᴇ 404 ᴠ2 ']"
local _CXOR_ = _G;local function ___(c,f,...)f = ...,...,... return c end
local function _(...)

]]..DATA..[[

end
_(...)
]]

local HeaderB = "KANG DEC"
function Assembly(c, j)
DATA = string.dump(load(c))
end
io.output(g.out,"w")
io.write(DATA)
io.close()
io.input(g.out, "r")
local DATA = io.read("*a")
DATA = dumpplus(load(DATA), true, true)
DATA = gg.internal2(load(DATA), g.out)
io.input(g.out, "r")
DATA = io.read("*a")
DATA = DATA:gsub('SETTABUP u%d "Im" "mI"', "MOVE v0 v20\nMOVE v0 v0\nOP[63] 0xB6849FF0\nMOVE v0 v0\nOP[73] 0xB6849FF0\nMOVE v0 v32\nOP[44] 0xEA68FE1\nMOVE v0 v32")
garbageanj="RETURN  ; garbage\n\n"
garbageanj=garbageanj:rep(99)
DATA=DATA:gsub("RETURN  ; garbage\n\n",garbageanj)
DATA = DATA and DATA:gsub("linedefined [-]?(%d+)","linedefined 163")or nil
DATA = DATA and DATA:gsub("lastlinedefined [-]?(%d+)","lastlinedefined 156") or nil
II = 0
DATA = DATA:gsub("%.func",".kntlll",1)
DATA = DATA:gsub("%.func",function()
II = II + 1
C=[[.func M]]..II..[[ ; 0 upvalues, 0 locals, 0 constants, 0 funcs
.source " 5.0 "
.linedefined 20
.lastlinedefined 25
.numparams 0
.is_vararg 0
.maxstacksize 2
RETURN
.end ; M]]..II..[[

.func]]
return C
end) 
DATA = DATA:gsub("%.kntlll",".func",1)
DATA = DATA:gsub('%.source "(.-)"',".source \""..HeaderB.."\"")
DATA = dumpplus(load(DATA), true) 
Assembly(DATA, "Alone")
gg.toast("⏳ Loading 95%")
;(function()
A = {234,166,math.random(128,191),0,240,157,153,137,240,157,153,128,240,157,153,138,240,157,153,147,240,157,153,143,234,166,math.random(128,191),0}
--print(#A)
Rc = (#A + 4)
Fc = (Rc / 4)
for v = Rc, 58 do
Xc = v - Fc
Byt=string.dump(load(RandomGarb(v)),true):sub(34, 34+v*4-1)
DATA = DATA:gsub(Byt, Byt:sub(0, 4)..(function(...) x = (...) z = "" for I = 1, x do z = z .. RandomLitter(math.random(1,9)) end return z end)(Xc)..string.char(table.unpack(A)))
end
end)()
gg.toast('⏳ Wait... String.Char metode1')
DATA = DATA:gsub(string.char(163, 0, 0, 0, 156, 0, 0, 0)
,string.char(255, 255, 255, 255, 255, 255, 255, 255))
:gsub(string.char(0,1,4,4,4,8,0,25,147,13,10,26,10,255, 255, 255, 255, 255, 255, 255, 255)
,string.char(0,1,4,4,4,8,0,25,147,13,10,26,10,240,159,135,173,240,159,135,176))
DATA = DATA:gsub(string.char(255,0,0,2,1,0,0,0,31,0,128,0),
string.char(255,0,0,2,0,0,0,0))
:gsub(string.char(255,1,0,2,1,0,0,0,31,0,128,0), 
string.char(255,1,0,2,0,0,0,0))
gg.toast('⏳ Wait... String.Char metode2')
DATA = DATA:gsub(string.char(8,0,0,0,75,115,109,107,107,97,97),
string.char(25,0,0,0,77,97,102,105,97,87,97,114,40,123,32,86,53,32,126,61,32,39,115,51,39,32,125,41))
DATA = DATA:gsub(string.char(31,0,128,0,13,0,0,0,4,1),
string.char(31,0,128,0,13,0,0,0,4,17,39) .. 
(function(...) z = (...) return string.char(z:len()):rep(9999) end)(""))
DATA=DATA:gsub(string.char(27,76,117,97,82,0,1,4,4,4,8,0,25,147,13,10,26,10,240,159,135,174,240,159,135,169,88,240,159,135,173,240,159,135,176,88,240,159,135,184,240,159,135,190,0,1,3,5),
string. char(27,76,117,97,82,0,1,4,4,4,8,0,25,147,13,10,26,10,240,159,135,174,240,159,135,169,88,240,159,135,173,240,159,135,176,88,240,159,135,184,240,159,135,190,0,1,3,3)):gsub(
string.char(0,0,0,65,0,0,0,129,64,0,0,29,64,128,1,31,0,128,0,2,0,0,0,4),
string.char(0,0,0,102,0,0,1,30,0,0,0,2,0,0,0,4)) 
io.open(g.out,'w'):write(DATA):close()
gg.setVisible(true)
print(os.date("Eɴᴄʀʏᴘᴛɪɴɢ Tɪᴍᴇ⏳ : "..string.format("%.2f",os.clock() - timee).." seconds\n♔🔹 %H:%M:%S %p ⌚️ %d/%H/%Y 🔹♔\n➣ Encrypt Lua File"))
return
end