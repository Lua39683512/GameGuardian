--稍微更改
--恶魔
local MeatTable = {}
local Gl={
["type"]=0,
["getmetatable"]=0,
["tonumber"]=0,
["pairs"]=0,
["next"]=0,
}
for i,v in pairs(_ENV) do
if type(v)=="function" and not Gl[i] then
MeatTable[i]=v
end
end
local Io,ggg,String,Debug,Os,Table={},{},{},{},{},{}
local Test = {}
local Pcall,Load,Loadfile,Dofile,Tostring,Print,Pairs,Type,MaskFunc,mask
local SELF_PATH = gg.getFile()
Pcall = _ENV["pcall"]
Load = _ENV["load"]
Loadfile = _ENV["loadfile"]
Tostring = _ENV["tostring"]
Print = _ENV["print"] 
Dofile = _ENV["dofile"]
Pairs = _ENV["pairs"]
Type = type
Test["io"] = Io
Test["gg"] = ggg
Test["string"] = String
Test["debug"] = Debug
Test["os"] = Os
Test["table"] = Table
local HG = ''
for i,v in ipairs({"io","gg","string","debug","os","table"}) do
for i1,v1 in pairs(_ENV[v]) do
if type(v1) == "function" then
Test[v][i1] = v1
end
end
end
Hen=gg.prompt({
"选择文件",
"旧版极简云",
"新版极简云",
"绕时间差防御",
"钩子类型防御",
},{
gg.getFile()
},{
"file",
"checkbox",
"checkbox",
"checkbox",
"checkbox"
})
pcall=loadfile(Hen[1])
if Hen[2] then
local JJY
local function md6(code) local code = tostring(code) local HexTable = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"} local A = 0x67452301 local B = 0xefcdab89 local C = 0x98badcfe local D = 0x10325476 local S11 = 7 local S12 = 12 local S13 = 17 local S14 = 22 local S21 = 5 local S22 = 9 local S23 = 14 local S24 = 20 local S31 = 4 local S32 = 11 local S33 = 16 local S34 = 23 local S41 = 6 local S42 = 10 local S43 = 15 local S44 = 21 local function F(x,y,z) return (x & y) | ((~x) & z) end local function G(x,y,z) return (x & z) | (y & (~z)) end local function H(x,y,z) return x ~ y ~ z end local function I(x,y,z) return y ~ (x | (~z)) end local function FF(a,b,c,d,x,s,ac) a = a + F(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function GG(a,b,c,d,x,s,ac) a = a + G(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function HH(a,b,c,d,x,s,ac) a = a + H(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function II(a,b,c,d,x,s,ac) a = a + I(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function MD5StringFill(s) local len = s:len() local mod512 = len * 8 % 512 local fillSize = (448 - mod512) // 8 if mod512 > 448 then fillSize = (960 - mod512) // 8 end local rTab = {} local byteIndex = 1 for i = 1,len do local index = (i - 1) // 4 + 1 rTab[index] = rTab[index] or 0 rTab[index] = rTab[index] | (s:byte(i) << (byteIndex - 1) * 8) byteIndex = byteIndex + 1 if byteIndex == 5 then byteIndex = 1 end end local b0x80 = false local tLen = #rTab if byteIndex ~= 1 then rTab[tLen] = rTab[tLen] | 0x80 << (byteIndex - 1) * 8 b0x80 = true end for i = 1,fillSize // 4 do if not b0x80 and i == 1 then rTab[tLen + i] = 0x80 else rTab[tLen + i] = 0x0 end end local bitLen = math.floor(len * 8) tLen = #rTab rTab[tLen + 1] = bitLen & 0xffffffff rTab[tLen + 2] = bitLen >> 32 return rTab end function getmd5(s) local fillTab = MD5StringFill(s) local result = {A,B,C,D} for i = 1,#fillTab // 16 do local a = result[1] local b = result[2] local c = result[3] local d = result[4] local offset = (i - 1) * 16 + 1 a = FF(a, b, c, d, fillTab[offset + 0], S11, 0xd76aa478) d = FF(d, a, b, c, fillTab[offset + 1], S12, 0xe8c7b756) c = FF(c, d, a, b, fillTab[offset + 2], S13, 0x242070db) b = FF(b, c, d, a, fillTab[offset + 3], S14, 0xc1bdceee) a = FF(a, b, c, d, fillTab[offset + 4], S11, 0xf57c0faf) d = FF(d, a, b, c, fillTab[offset + 5], S12, 0x4787c62a) c = FF(c, d, a, b, fillTab[offset + 6], S13, 0xa8304613) b = FF(b, c, d, a, fillTab[offset + 7], S14, 0xfd469501) a = FF(a, b, c, d, fillTab[offset + 8], S11, 0x698098d8) d = FF(d, a, b, c, fillTab[offset + 9], S12, 0x8b44f7af) c = FF(c, d, a, b, fillTab[offset + 10], S13, 0xffff5bb1) b = FF(b, c, d, a, fillTab[offset + 11], S14, 0x895cd7be) a = FF(a, b, c, d, fillTab[offset + 12], S11, 0x6b901122) d = FF(d, a, b, c, fillTab[offset + 13], S12, 0xfd987193) c = FF(c, d, a, b, fillTab[offset + 14], S13, 0xa679438e) b = FF(b, c, d, a, fillTab[offset + 15], S14, 0x49b40821) a = GG(a, b, c, d, fillTab[offset + 1], S21, 0xf61e2562) d = GG(d, a, b, c, fillTab[offset + 6], S22, 0xc040b340) c = GG(c, d, a, b, fillTab[offset + 11], S23, 0x265e5a51) b = GG(b, c, d, a, fillTab[offset + 0], S24, 0xe9b6c7aa) a = GG(a, b, c, d, fillTab[offset + 5], S21, 0xd62f105d) d = GG(d, a, b, c, fillTab[offset + 10], S22, 0x2441453) c = GG(c, d, a, b, fillTab[offset + 15], S23, 0xd8a1e681) b = GG(b, c, d, a, fillTab[offset + 4], S24, 0xe7d3fbc8) a = GG(a, b, c, d, fillTab[offset + 9], S21, 0x21e1cde6) d = GG(d, a, b, c, fillTab[offset + 14], S22, 0xc33707d6) c = GG(c, d, a, b, fillTab[offset + 3], S23, 0xf4d50d87) b = GG(b, c, d, a, fillTab[offset + 8], S24, 0x455a14ed) a = GG(a, b, c, d, fillTab[offset + 13], S21, 0xa9e3e905) d = GG(d, a, b, c, fillTab[offset + 2], S22, 0xfcefa3f8) c = GG(c, d, a, b, fillTab[offset + 7], S23, 0x676f02d9) b = GG(b, c, d, a, fillTab[offset + 12], S24, 0x8d2a4c8a) a = HH(a, b, c, d, fillTab[offset + 5], S31, 0xfffa3942) d = HH(d, a, b, c, fillTab[offset + 8], S32, 0x8771f681) c = HH(c, d, a, b, fillTab[offset + 11], S33, 0x6d9d6122) b = HH(b, c, d, a, fillTab[offset + 14], S34, 0xfde5380c) a = HH(a, b, c, d, fillTab[offset + 1], S31, 0xa4beea44) d = HH(d, a, b, c, fillTab[offset + 4], S32, 0x4bdecfa9) c = HH(c, d, a, b, fillTab[offset + 7], S33, 0xf6bb4b60) b = HH(b, c, d, a, fillTab[offset + 10], S34, 0xbebfbc70) a = HH(a, b, c, d, fillTab[offset + 13], S31, 0x289b7ec6) d = HH(d, a, b, c, fillTab[offset + 0], S32, 0xeaa127fa) c = HH(c, d, a, b, fillTab[offset + 3], S33, 0xd4ef3085) b = HH(b, c, d, a, fillTab[offset + 6], S34, 0x4881d05) a = HH(a, b, c, d, fillTab[offset + 9], S31, 0xd9d4d039) d = HH(d, a, b, c, fillTab[offset + 12], S32, 0xe6db99e5) c = HH(c, d, a, b, fillTab[offset + 15], S33, 0x1fa27cf8) b = HH(b, c, d, a, fillTab[offset + 2], S34, 0xc4ac5665) a = II(a, b, c, d, fillTab[offset + 0], S41, 0xf4292244) d = II(d, a, b, c, fillTab[offset + 7], S42, 0x432aff97) c = II(c, d, a, b, fillTab[offset + 14], S43, 0xab9423a7) b = II(b, c, d, a, fillTab[offset + 5], S44, 0xfc93a039) a = II(a, b, c, d, fillTab[offset + 12], S41, 0x655b59c3) d = II(d, a, b, c, fillTab[offset + 3], S42, 0x8f0ccc92) c = II(c, d, a, b, fillTab[offset + 10], S43, 0xffeff47d) b = II(b, c, d, a, fillTab[offset + 1], S44, 0x85845dd1) a = II(a, b, c, d, fillTab[offset + 8], S41, 0x6fa87e4f) d = II(d, a, b, c, fillTab[offset + 15], S42, 0xfe2ce6e0) c = II(c, d, a, b, fillTab[offset + 6], S43, 0xa3014314) b = II(b, c, d, a, fillTab[offset + 13], S44, 0x4e0811a1) a = II(a, b, c, d, fillTab[offset + 4], S41, 0xf7537e82) d = II(d, a, b, c, fillTab[offset + 11], S42, 0xbd3af235) c = II(c, d, a, b, fillTab[offset + 2], S43, 0x2ad7d2bb) b = II(b, c, d, a, fillTab[offset + 9], S44, 0xeb86d391) result[1] = result[1] + a result[2] = result[2] + b result[3] = result[3] + c result[4] = result[4] + d result[1] = result[1] & 0xffffffff result[2] = result[2] & 0xffffffff result[3] = result[3] & 0xffffffff result[4] = result[4] & 0xffffffff end local retStr = '' for i = 1,4 do for _ = 1,4 do local temp = result[i] & 0x0F local str = HexTable[temp + 1] result[i] = result[i] >> 4 temp = result[i] & 0x0F retStr = retStr .. HexTable[temp + 1] .. str result[i] = result[i] >> 4 end end return string.lower(retStr) end return getmd5(code) end
--MD5加密函数
local _md5 = function(...)
if JJY=="BGTMT" then
print(MeatTable["pcall"])
_ENV["pcall"] = MeatTable["pcall"]
return "BGTMT and M."
end
return md6(...)
end
function io.open(...)
if mask then
return Io.open,"io.open"
end
md5 = _md5
return Io.open(...)
end
function string.match(...)
if mask then
return String.match,"string.match"
end    
local r={...}
if r[2]=='check":"(.-)"' then
JJY="BGTMT"
return "BGTMT and M."
end
if r[2]=='time":(.-),' then
return os.time()
end
if r[2]=='code":(.-),' then
return "200"
end
return String.match(...)
end
end
if Hen[3] then
local function json2true(str,from,to) return true, from+3 end local function json2false(str,from,to) return false, from+4 end local function json2null(str, from, to) return nil, from+3 end local function json2nan(str, from, to) return nul, from+2 end local numberchars = {['-'] = true,['+'] = true,['.'] = true,['0'] = true,['1'] = true,['2'] = true,['3'] = true,['4'] = true,['5'] = true,['6'] = true,['7'] = true,['8'] = true,['9'] = true} local function json2number(str,from,to) local i = from+1 while(i<=to) do local char = string.sub(str, i, i) if not numberchars[char] then break end i = i + 1 end local num = tonumber(string.sub(str, from, i-1)) if not num then error(_format('json格式错误，不正确的数字, 错误位置:{from}', from)) end return num, i-1 end local function json2string(str,from,to) local ignor = false for i = from+1, to do local char = string.sub(str, i, i) if not ignor then if char == '\"' then return string.sub(str, from+1, i-1), i elseif char == '\\' then ignor = true end else ignor = false end end error(_format('json格式错误，字符串没有找到结尾, 错误位置:{from}', from)) end local function json2array(str,from,to) local result = {} from = from or 1 local pos = from+1 local to = to or string.len(str) while(pos<=to) do local char = string.sub(str, pos, pos) if char == '\"' then result[#result+1], pos = json2string(str,pos,to) elseif char == '[' then result[#result+1], pos = json2array(str,pos,to) elseif char == '{' then result[#result+1], pos = json2table(str,pos,to) elseif char == ']' then return result, pos elseif (char=='f' or char=='F') then result[#result+1], pos = json2false(str,pos,to) elseif (char=='t' or char=='T') then result[#result+1], pos = json2true(str,pos,to) elseif (char=='n') then result[#result+1], pos = json2null(str,pos,to) elseif (char=='N') then result[#result+1], pos = json2nan(str,pos,to) elseif numberchars[char] then result[#result+1], pos = json2number(str,pos,to) end pos = pos + 1 end error(_format('json格式错误，表没有找到结尾, 错误位置:{from}', from)) end function _G.json2table(str,from,to) local result = {} from = from or 1 local pos = from+1 local to = to or string.len(str) local key while(pos<=to) do local char = string.sub(str, pos, pos) if char == '\"' then if not key then key, pos = json2string(str,pos,to) else result[key], pos = json2string(str,pos,to) key = nil end elseif char == '[' then if not key then key, pos = json2array(str,pos,to) else result[key], pos = json2array(str,pos,to) key = nil end elseif char == '{' then if not key then key, pos = json2table(str,pos,to) else result[key], pos = json2table(str,pos,to) key = nil end elseif char == '}' then return result, pos elseif (char=='f' or char=='F') then result[key], pos = json2false(str,pos,to) key = nil elseif (char=='t' or char=='T') then result[key], pos = json2true(str,pos,to) key = nil elseif (char=='n') then result[key], pos = json2null(str,pos,to) key = nil elseif (char=='N') then result[key], pos = json2nan(str,pos,to) key = nil elseif numberchars[char] then if not key then key, pos = json2number(str,pos,to) else result[key], pos = json2number(str,pos,to) key = nil end end pos = pos + 1 end error(_format('格式错误，表没有找到结尾, 错误位置:{from}', from)) end local jsonfuncs={['\"']=json2string,['[']=json2array,['{']=json2table,['f']=json2false,['F']=json2false,['t']=json2true,['T']=json2true} function json2lua(str) if str==nil then gg.alert('错误json') else local char = string.sub(str, 1, 1) local func=jsonfuncs[char] if func then return func(str, 1, string.len(str)) end if numberchars[char] then return json2number(str, 1, string.len(str)) end end end
local JSON = json2lua
local function md6(code) local code = tostring(code) local HexTable = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"} local A = 0x67452301 local B = 0xefcdab89 local C = 0x98badcfe local D = 0x10325476 local S11 = 7 local S12 = 12 local S13 = 17 local S14 = 22 local S21 = 5 local S22 = 9 local S23 = 14 local S24 = 20 local S31 = 4 local S32 = 11 local S33 = 16 local S34 = 23 local S41 = 6 local S42 = 10 local S43 = 15 local S44 = 21 local function F(x,y,z) return (x & y) | ((~x) & z) end local function G(x,y,z) return (x & z) | (y & (~z)) end local function H(x,y,z) return x ~ y ~ z end local function I(x,y,z) return y ~ (x | (~z)) end local function FF(a,b,c,d,x,s,ac) a = a + F(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function GG(a,b,c,d,x,s,ac) a = a + G(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function HH(a,b,c,d,x,s,ac) a = a + H(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function II(a,b,c,d,x,s,ac) a = a + I(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function MD5StringFill(s) local len = s:len() local mod512 = len * 8 % 512 local fillSize = (448 - mod512) // 8 if mod512 > 448 then fillSize = (960 - mod512) // 8 end local rTab = {} local byteIndex = 1 for i = 1,len do local index = (i - 1) // 4 + 1 rTab[index] = rTab[index] or 0 rTab[index] = rTab[index] | (s:byte(i) << (byteIndex - 1) * 8) byteIndex = byteIndex + 1 if byteIndex == 5 then byteIndex = 1 end end local b0x80 = false local tLen = #rTab if byteIndex ~= 1 then rTab[tLen] = rTab[tLen] | 0x80 << (byteIndex - 1) * 8 b0x80 = true end for i = 1,fillSize // 4 do if not b0x80 and i == 1 then rTab[tLen + i] = 0x80 else rTab[tLen + i] = 0x0 end end local bitLen = math.floor(len * 8) tLen = #rTab rTab[tLen + 1] = bitLen & 0xffffffff rTab[tLen + 2] = bitLen >> 32 return rTab end function getmd5(s) local fillTab = MD5StringFill(s) local result = {A,B,C,D} for i = 1,#fillTab // 16 do local a = result[1] local b = result[2] local c = result[3] local d = result[4] local offset = (i - 1) * 16 + 1 a = FF(a, b, c, d, fillTab[offset + 0], S11, 0xd76aa478) d = FF(d, a, b, c, fillTab[offset + 1], S12, 0xe8c7b756) c = FF(c, d, a, b, fillTab[offset + 2], S13, 0x242070db) b = FF(b, c, d, a, fillTab[offset + 3], S14, 0xc1bdceee) a = FF(a, b, c, d, fillTab[offset + 4], S11, 0xf57c0faf) d = FF(d, a, b, c, fillTab[offset + 5], S12, 0x4787c62a) c = FF(c, d, a, b, fillTab[offset + 6], S13, 0xa8304613) b = FF(b, c, d, a, fillTab[offset + 7], S14, 0xfd469501) a = FF(a, b, c, d, fillTab[offset + 8], S11, 0x698098d8) d = FF(d, a, b, c, fillTab[offset + 9], S12, 0x8b44f7af) c = FF(c, d, a, b, fillTab[offset + 10], S13, 0xffff5bb1) b = FF(b, c, d, a, fillTab[offset + 11], S14, 0x895cd7be) a = FF(a, b, c, d, fillTab[offset + 12], S11, 0x6b901122) d = FF(d, a, b, c, fillTab[offset + 13], S12, 0xfd987193) c = FF(c, d, a, b, fillTab[offset + 14], S13, 0xa679438e) b = FF(b, c, d, a, fillTab[offset + 15], S14, 0x49b40821) a = GG(a, b, c, d, fillTab[offset + 1], S21, 0xf61e2562) d = GG(d, a, b, c, fillTab[offset + 6], S22, 0xc040b340) c = GG(c, d, a, b, fillTab[offset + 11], S23, 0x265e5a51) b = GG(b, c, d, a, fillTab[offset + 0], S24, 0xe9b6c7aa) a = GG(a, b, c, d, fillTab[offset + 5], S21, 0xd62f105d) d = GG(d, a, b, c, fillTab[offset + 10], S22, 0x2441453) c = GG(c, d, a, b, fillTab[offset + 15], S23, 0xd8a1e681) b = GG(b, c, d, a, fillTab[offset + 4], S24, 0xe7d3fbc8) a = GG(a, b, c, d, fillTab[offset + 9], S21, 0x21e1cde6) d = GG(d, a, b, c, fillTab[offset + 14], S22, 0xc33707d6) c = GG(c, d, a, b, fillTab[offset + 3], S23, 0xf4d50d87) b = GG(b, c, d, a, fillTab[offset + 8], S24, 0x455a14ed) a = GG(a, b, c, d, fillTab[offset + 13], S21, 0xa9e3e905) d = GG(d, a, b, c, fillTab[offset + 2], S22, 0xfcefa3f8) c = GG(c, d, a, b, fillTab[offset + 7], S23, 0x676f02d9) b = GG(b, c, d, a, fillTab[offset + 12], S24, 0x8d2a4c8a) a = HH(a, b, c, d, fillTab[offset + 5], S31, 0xfffa3942) d = HH(d, a, b, c, fillTab[offset + 8], S32, 0x8771f681) c = HH(c, d, a, b, fillTab[offset + 11], S33, 0x6d9d6122) b = HH(b, c, d, a, fillTab[offset + 14], S34, 0xfde5380c) a = HH(a, b, c, d, fillTab[offset + 1], S31, 0xa4beea44) d = HH(d, a, b, c, fillTab[offset + 4], S32, 0x4bdecfa9) c = HH(c, d, a, b, fillTab[offset + 7], S33, 0xf6bb4b60) b = HH(b, c, d, a, fillTab[offset + 10], S34, 0xbebfbc70) a = HH(a, b, c, d, fillTab[offset + 13], S31, 0x289b7ec6) d = HH(d, a, b, c, fillTab[offset + 0], S32, 0xeaa127fa) c = HH(c, d, a, b, fillTab[offset + 3], S33, 0xd4ef3085) b = HH(b, c, d, a, fillTab[offset + 6], S34, 0x4881d05) a = HH(a, b, c, d, fillTab[offset + 9], S31, 0xd9d4d039) d = HH(d, a, b, c, fillTab[offset + 12], S32, 0xe6db99e5) c = HH(c, d, a, b, fillTab[offset + 15], S33, 0x1fa27cf8) b = HH(b, c, d, a, fillTab[offset + 2], S34, 0xc4ac5665) a = II(a, b, c, d, fillTab[offset + 0], S41, 0xf4292244) d = II(d, a, b, c, fillTab[offset + 7], S42, 0x432aff97) c = II(c, d, a, b, fillTab[offset + 14], S43, 0xab9423a7) b = II(b, c, d, a, fillTab[offset + 5], S44, 0xfc93a039) a = II(a, b, c, d, fillTab[offset + 12], S41, 0x655b59c3) d = II(d, a, b, c, fillTab[offset + 3], S42, 0x8f0ccc92) c = II(c, d, a, b, fillTab[offset + 10], S43, 0xffeff47d) b = II(b, c, d, a, fillTab[offset + 1], S44, 0x85845dd1) a = II(a, b, c, d, fillTab[offset + 8], S41, 0x6fa87e4f) d = II(d, a, b, c, fillTab[offset + 15], S42, 0xfe2ce6e0) c = II(c, d, a, b, fillTab[offset + 6], S43, 0xa3014314) b = II(b, c, d, a, fillTab[offset + 13], S44, 0x4e0811a1) a = II(a, b, c, d, fillTab[offset + 4], S41, 0xf7537e82) d = II(d, a, b, c, fillTab[offset + 11], S42, 0xbd3af235) c = II(c, d, a, b, fillTab[offset + 2], S43, 0x2ad7d2bb) b = II(b, c, d, a, fillTab[offset + 9], S44, 0xeb86d391) result[1] = result[1] + a result[2] = result[2] + b result[3] = result[3] + c result[4] = result[4] + d result[1] = result[1] & 0xffffffff result[2] = result[2] & 0xffffffff result[3] = result[3] & 0xffffffff result[4] = result[4] & 0xffffffff end local retStr = '' for i = 1,4 do for _ = 1,4 do local temp = result[i] & 0x0F local str = HexTable[temp + 1] result[i] = result[i] >> 4 temp = result[i] & 0x0F retStr = retStr .. HexTable[temp + 1] .. str result[i] = result[i] >> 4 end end return string.lower(retStr) end return getmd5(code) end
local function _md5(...)
if VB == true then
VB = nil
return "6666"
end
return md6(...)
end
local MOSHI=function(...)
local GT=JSON(...)
if GT.msg=="卡密不存在" then
GT.msg={}
GT.msg.kami = "破解完毕!"
GT.check = "6666"
GT.code = 200
GT.time = os.time()
GT.msg.vip = 253402271999
VB=true
return GT
end
return GT
end
function io.open(...)
if mask then
return Io.open,"io.open"
end
json2lua=MOSHI
md5=_md5
return Io.open(...)
end
end
if Hen[4] then
local os_clock,os_time,gg_toast
os_clock = _ENV['os']['clock']
os_time = _ENV['os']['time']
gg_toast = _ENV['gg']['toast']
local clock1, clock2, clock3
_ENV['os']['clock'] = function(...)
gg.toast('os.clock')
if mask then
mask = false
return os_clock
end
clock1 = os_clock(...)
if clock2 then
clock3 = clock1
clock1 = clock2 + 1
clock2 = clock3
else
clock2 = clock1
end
return clock1
end
local time1, time2, time3
_ENV['os']['time'] = function(...)
gg_toast('os_time')
if mask then
mask = false
return os_time
end
time1 = os_time(...)
if time2 then
time3 = time1
time1 = time2 + 1
time2 = time3
else
time2 = time1
end
return time1
end
end
if Hen[5] then
local orig = debug.getinfo
local hook = 1
hook = function (...)
local arg1 = ... -- {...}
for i in string.gmatch(tostring(orig(...)),"%[%'func%'%] = (.-)\n") do
echo('[DEBUG]       ('..i..')')
end
for i in string.gmatch(tostring(orig(...)),"%[%'short_src%'%] = %'(.-)%'") do
echo('[INFO]           ["'..i..'"]')
end
for i in string.gmatch(tostring(orig(...)),"%[%'source%'%] = %'(.-)%'") do
echo('[BLOCK]       { '..i..' }')
end
--[[
SS=ggg.alert("选择","防类型挂钩子","防wrap检测")
if SS == 2 then
WARN={short_src="wrap"}
return WARN
end
--]]
if arg1 ~= nil and tr[arg1] ~= nil then
arg1 = tr[arg1]
end
return orig(arg1, sel(2, ...))
end
debug.getinfo = hook
tr[hook] = orig
------------------------------分割线------------------------------
--[[
local orig = debug.getinfo
local hook = function (...)
local arg = {...}
local result=tostring(math.random(1,10000))
local fhz=ggg.prompt({"currentline验证\n请输入："..result,"func函数验证"},{[1]=tonumber(result),[2]=file.."a"},{"number","text"})
s={['currentline'] = tonumber(fhz[1]),['func'] = 'function: @'..fhz[2]..':0-0',['name'] = '?',['namewhat'] = '',['source'] = '@'..fhz[2]}
return s
end

debug.getinfo = hook
tr[hook] = orig
--]]
end
return pcall()