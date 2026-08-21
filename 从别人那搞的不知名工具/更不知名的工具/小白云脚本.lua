fuhao= '"' local function json2true(str,from,to) return true, from+3 end local function json2false(str,from,to) return false, from+4 end local function json2null(str, from, to) return nil, from+3 end local function json2nan(str, from, to) return nul, from+2 end local numberchars = {['-'] = true,['+'] = true,['.'] = true,['0'] = true,['1'] = true,['2'] = true,['3'] = true,['4'] = true,['5'] = true,['6'] = true,['7'] = true,['8'] = true,['9'] = true} local function json2number(str,from,to) local i = from+1 while(i<=to) do local char = string.sub(str, i, i) if not numberchars[char] then break end i = i + 1 end local num = tonumber(string.sub(str, from, i-1)) if not num then error(_format('json格式错误，不正确的数字, 错误位置:{from}', from)) end return num, i-1 end local function json2string(str,from,to) local ignor = false for i = from+1, to do local char = string.sub(str, i, i) if not ignor then if char ==  fuhao  then return string.sub(str, from+1, i-1), i elseif char == '\\' then ignor = true end else ignor = false end end error(_format('json格式错误，字符串没有找到结尾, 错误位置:{from}', from)) end local function json2array(str,from,to)    local result = {}    from = from or 1    local pos = from+1    local to = to or string.len(str)    while(pos<=to) do        local char = string.sub(str, pos, pos)        if char ==  fuhao  then            result[#result+1], pos = json2string(str,pos,to)        elseif char == '[' then            result[#result+1], pos = json2array(str,pos,to)        elseif char == '{' then            result[#result+1], pos = json2table(str,pos,to)        elseif char == ']' then            return result, pos        elseif (char=='f' or char=='F') then            result[#result+1], pos = json2false(str,pos,to)        elseif (char=='t' or char=='T') then            result[#result+1], pos = json2true(str,pos,to)        elseif (char=='n') then            result[#result+1], pos = json2null(str,pos,to)        elseif (char=='N') then            result[#result+1], pos = json2nan(str,pos,to)        elseif numberchars[char] then            result[#result+1], pos = json2number(str,pos,to)        end        pos = pos + 1    end    error(_format('json格式错误，表没有找到结尾, 错误位置:{from}', from)) end function _G.json2table(str,from,to)    local result = {}    from = from or 1    local pos = from+1    local to = to or string.len(str)    local key    while(pos<=to) do        local char = string.sub(str, pos, pos)        if char ==  fuhao  then            if not key then                key, pos = json2string(str,pos,to)            else                result[key], pos = json2string(str,pos,to)                key = nil            end        elseif char == '[' then            if not key then                key, pos = json2array(str,pos,to)            else                result[key], pos = json2array(str,pos,to)                key = nil            end        elseif char == '{' then            if not key then                key, pos = json2table(str,pos,to)            else                result[key], pos = json2table(str,pos,to)                key = nil            end        elseif char == '}' then            return result, pos        elseif (char=='f' or char=='F') then            result[key], pos = json2false(str,pos,to)            key = nil        elseif (char=='t' or char=='T') then            result[key], pos = json2true(str,pos,to)            key = nil        elseif (char=='n') then            result[key], pos = json2null(str,pos,to)            key = nil        elseif (char=='N') then            result[key], pos = json2nan(str,pos,to)            key = nil        elseif numberchars[char] then            if not key then                key, pos = json2number(str,pos,to)            else                result[key], pos = json2number(str,pos,to)                key = nil            end        end        pos = pos + 1    end    error(_format('格式错误，表没有找到结尾, 错误位置:{from}', from)) end local jsonfuncs={[ fuhao ]=json2string,['[']=json2array,['{']=json2table,['f']=json2false,['F']=json2false,['t']=json2true,['T']=json2true} function json2lua(str) if str==nil then gg.alert('错误json') else local char = string.sub(str, 1, 1) local func=jsonfuncs[char] if func then return func(str, 1, string.len(str)) end if numberchars[char] then return json2number(str, 1, string.len(str)) end end end local __index local LYF_DefEnv1 = {[""]=""} local LYF_DefEnv2 = {["输出你妈"]="输出你妈"} setmetatable(LYF_DefEnv1, {__index = _ENV}) _ENV=LYF_DefEnv1 _G=LYF_DefEnv2

function md5(code) local code = tostring(code) local HexTable = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"} local A = 0x67452301 local B = 0xefcdab89 local C = 0x98badcfe local D = 0x10325476 local S11 = 7 local S12 = 12 local S13 = 17 local S14 = 22 local S21 = 5 local S22 = 9 local S23 = 14 local S24 = 20 local S31 = 4 local S32 = 11 local S33 = 16 local S34 = 23 local S41 = 6 local S42 = 10 local S43 = 15 local S44 = 21 local function F(x,y,z) return (x & y) | ((~x) & z) end local function G(x,y,z) return (x & z) | (y & (~z)) end local function H(x,y,z) return x ~ y ~ z end local function I(x,y,z) return y ~ (x | (~z)) end local function FF(a,b,c,d,x,s,ac) a = a + F(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function GG(a,b,c,d,x,s,ac) a = a + G(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function HH(a,b,c,d,x,s,ac) a = a + H(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function II(a,b,c,d,x,s,ac) a = a + I(b,c,d) + x + ac a = (((a & 0xffffffff) << s) | ((a & 0xffffffff) >> 32 - s)) + b return a & 0xffffffff end local function MD5StringFill(s) local len = s:len() local mod512 = len * 8 % 512 local fillSize = (448 - mod512) // 8 if mod512 > 448 then fillSize = (960 - mod512) // 8 end local rTab = {} local byteIndex = 1 for i = 1,len do local index = (i - 1) // 4 + 1 rTab[index] = rTab[index] or 0 rTab[index] = rTab[index] | (s:byte(i) << (byteIndex - 1) * 8) byteIndex = byteIndex + 1 if byteIndex == 5 then byteIndex = 1 end end local b0x80 = false local tLen = #rTab if byteIndex ~= 1 then rTab[tLen] = rTab[tLen] | 0x80 << (byteIndex - 1) * 8 b0x80 = true end for i = 1,fillSize // 4 do if not b0x80 and i == 1 then rTab[tLen + i] = 0x80 else rTab[tLen + i] = 0x0 end end local bitLen = math.floor(len * 8) tLen = #rTab rTab[tLen + 1] = bitLen & 0xffffffff rTab[tLen + 2] = bitLen >> 32 return rTab end function getmd5(s) local fillTab = MD5StringFill(s) local result = {A,B,C,D} for i = 1,#fillTab // 16 do local a = result[1] local b = result[2] local c = result[3] local d = result[4] local offset = (i - 1) * 16 + 1 a = FF(a, b, c, d, fillTab[offset + 0], S11, 0xd76aa478) d = FF(d, a, b, c, fillTab[offset + 1], S12, 0xe8c7b756) c = FF(c, d, a, b, fillTab[offset + 2], S13, 0x242070db) b = FF(b, c, d, a, fillTab[offset + 3], S14, 0xc1bdceee) a = FF(a, b, c, d, fillTab[offset + 4], S11, 0xf57c0faf) d = FF(d, a, b, c, fillTab[offset + 5], S12, 0x4787c62a) c = FF(c, d, a, b, fillTab[offset + 6], S13, 0xa8304613) b = FF(b, c, d, a, fillTab[offset + 7], S14, 0xfd469501) a = FF(a, b, c, d, fillTab[offset + 8], S11, 0x698098d8) d = FF(d, a, b, c, fillTab[offset + 9], S12, 0x8b44f7af) c = FF(c, d, a, b, fillTab[offset + 10], S13, 0xffff5bb1) b = FF(b, c, d, a, fillTab[offset + 11], S14, 0x895cd7be) a = FF(a, b, c, d, fillTab[offset + 12], S11, 0x6b901122) d = FF(d, a, b, c, fillTab[offset + 13], S12, 0xfd987193) c = FF(c, d, a, b, fillTab[offset + 14], S13, 0xa679438e) b = FF(b, c, d, a, fillTab[offset + 15], S14, 0x49b40821) a = GG(a, b, c, d, fillTab[offset + 1], S21, 0xf61e2562) d = GG(d, a, b, c, fillTab[offset + 6], S22, 0xc040b340) c = GG(c, d, a, b, fillTab[offset + 11], S23, 0x265e5a51) b = GG(b, c, d, a, fillTab[offset + 0], S24, 0xe9b6c7aa) a = GG(a, b, c, d, fillTab[offset + 5], S21, 0xd62f105d) d = GG(d, a, b, c, fillTab[offset + 10], S22, 0x2441453) c = GG(c, d, a, b, fillTab[offset + 15], S23, 0xd8a1e681) b = GG(b, c, d, a, fillTab[offset + 4], S24, 0xe7d3fbc8) a = GG(a, b, c, d, fillTab[offset + 9], S21, 0x21e1cde6) d = GG(d, a, b, c, fillTab[offset + 14], S22, 0xc33707d6) c = GG(c, d, a, b, fillTab[offset + 3], S23, 0xf4d50d87) b = GG(b, c, d, a, fillTab[offset + 8], S24, 0x455a14ed) a = GG(a, b, c, d, fillTab[offset + 13], S21, 0xa9e3e905) d = GG(d, a, b, c, fillTab[offset + 2], S22, 0xfcefa3f8) c = GG(c, d, a, b, fillTab[offset + 7], S23, 0x676f02d9) b = GG(b, c, d, a, fillTab[offset + 12], S24, 0x8d2a4c8a) a = HH(a, b, c, d, fillTab[offset + 5], S31, 0xfffa3942) d = HH(d, a, b, c, fillTab[offset + 8], S32, 0x8771f681) c = HH(c, d, a, b, fillTab[offset + 11], S33, 0x6d9d6122) b = HH(b, c, d, a, fillTab[offset + 14], S34, 0xfde5380c) a = HH(a, b, c, d, fillTab[offset + 1], S31, 0xa4beea44) d = HH(d, a, b, c, fillTab[offset + 4], S32, 0x4bdecfa9) c = HH(c, d, a, b, fillTab[offset + 7], S33, 0xf6bb4b60) b = HH(b, c, d, a, fillTab[offset + 10], S34, 0xbebfbc70) a = HH(a, b, c, d, fillTab[offset + 13], S31, 0x289b7ec6) d = HH(d, a, b, c, fillTab[offset + 0], S32, 0xeaa127fa) c = HH(c, d, a, b, fillTab[offset + 3], S33, 0xd4ef3085) b = HH(b, c, d, a, fillTab[offset + 6], S34, 0x4881d05) a = HH(a, b, c, d, fillTab[offset + 9], S31, 0xd9d4d039) d = HH(d, a, b, c, fillTab[offset + 12], S32, 0xe6db99e5) c = HH(c, d, a, b, fillTab[offset + 15], S33, 0x1fa27cf8) b = HH(b, c, d, a, fillTab[offset + 2], S34, 0xc4ac5665) a = II(a, b, c, d, fillTab[offset + 0], S41, 0xf4292244) d = II(d, a, b, c, fillTab[offset + 7], S42, 0x432aff97) c = II(c, d, a, b, fillTab[offset + 14], S43, 0xab9423a7) b = II(b, c, d, a, fillTab[offset + 5], S44, 0xfc93a039) a = II(a, b, c, d, fillTab[offset + 12], S41, 0x655b59c3) d = II(d, a, b, c, fillTab[offset + 3], S42, 0x8f0ccc92) c = II(c, d, a, b, fillTab[offset + 10], S43, 0xffeff47d) b = II(b, c, d, a, fillTab[offset + 1], S44, 0x85845dd1) a = II(a, b, c, d, fillTab[offset + 8], S41, 0x6fa87e4f) d = II(d, a, b, c, fillTab[offset + 15], S42, 0xfe2ce6e0) c = II(c, d, a, b, fillTab[offset + 6], S43, 0xa3014314) b = II(b, c, d, a, fillTab[offset + 13], S44, 0x4e0811a1) a = II(a, b, c, d, fillTab[offset + 4], S41, 0xf7537e82) d = II(d, a, b, c, fillTab[offset + 11], S42, 0xbd3af235) c = II(c, d, a, b, fillTab[offset + 2], S43, 0x2ad7d2bb) b = II(b, c, d, a, fillTab[offset + 9], S44, 0xeb86d391) result[1] = result[1] + a result[2] = result[2] + b result[3] = result[3] + c result[4] = result[4] + d result[1] = result[1] & 0xffffffff result[2] = result[2] & 0xffffffff result[3] = result[3] & 0xffffffff result[4] = result[4] & 0xffffffff end local retStr = '' for i = 1,4 do for _ = 1,4 do local temp = result[i] & 0x0F local str = HexTable[temp + 1] result[i] = result[i] >> 4 temp = result[i] & 0x0F retStr = retStr .. HexTable[temp + 1] .. str result[i] = result[i] >> 4 end end return string.lower(retStr) end return getmd5(code) end
--md5加密 md5("加密内容")

ZZRc4 = {}
ZZMathBit = {}
function ZZMathBit.__xorBit(left, right) return (left + right) == 1 and 1 or 0 end function ZZMathBit.__base(left, right, op) if left < right then left, right = right, left end local res = 0 local shift = 1 while left ~= 0 do local ra = left % 2 local rb = right % 2 res = shift * op(ra,rb) + res shift = shift * 2 left = math.modf( left / 2) right = math.modf( right / 2) end return res end function ZZMathBit.xorOp(left, right) return ZZMathBit.__base(left, right, ZZMathBit.__xorBit) end function RC4(text,key,kasi)
  if kasi==false then str = text str=str:gsub("[%s%p]",""):upper() local index=1 local ret="" for index=1,str:len(),2 do ret=ret..string.char(tonumber(str:sub(index,index+1),16)) end text=ret end local function KSA(key) local keyLen = string.len(key) local schedule = {} local keyByte = {} for i = 0, 255 do schedule[i] = i end for i = 1, keyLen do keyByte[i - 1] = string.byte(key, i, i) end local j = 0 for i = 0, 255 do j = (j + schedule[i] + keyByte[ i % keyLen]) % 256 schedule[i], schedule[j] = schedule[j], schedule[i] end return schedule end local function PRGA(schedule, textLen) local i = 0 local j = 0 local k = {} for n = 1, textLen do i = (i + 1) % 256 j = (j + schedule[i]) % 256 schedule[i], schedule[j] = schedule[j], schedule[i] k[n] = schedule[(schedule[i] + schedule[j]) % 256] end return k end local function output(schedule, text) local len = string.len(text) local c = nil local res = {} for i = 1, len do c = string.byte(text, i,i) res[i] = string.char(ZZMathBit.xorOp(schedule[i], c)) end return table.concat(res) end local textLen = string.len(text) local schedule = KSA(key) local k = PRGA(schedule, textLen) str=output(k, text) if kasi==true then str = tostring(str) local index=1 local ret="" for index=1,str:len() do ret=ret..string.format("%02X",str:sub(index):byte()) end return string.lower(ret) else return str end end
--RC42加密和解密配置     RC4("加密内容","密码",false=解密_true=加密)

function ultra(get,post) local c=gg.makeRequest(get,nil,post).content  if c==nil then gg.alert("网络错误了，请检查你的网络") os.exit() end return c  end
--请求
function download(get,address) local c=gg.makeRequest(get,nil,nil).content  if c==nil then gg.alert("网络错误了，请检查你的网络") os.exit() end io.open(address,"w+"):write(c) gg.toast("下载成功") end
--下载文件


---[=[上面不要乱动]=]-------------------------------------------------------------------------------------------------------------------

local wy60042="https://wy.llua.cn/"
--官网

local wy60042_Kami=wy60042.."api/?id=kmlogon"
--接口名称[卡密登录]

local wy60042_jieba=wy60042.."api/?id=kmunmachine"
--接口名称[卡密解绑]

local wy60042_Notice=wy60042.."api/?id=notice"
--接口名称[应用公告]

---[=[  上面是对接  ]=]-------------------------------------------------------------------------------------------------------------------

local wy60042_APPID='15669'
--APPID

local wy60042_APPKEY='a8ALu3qdZ0EQeQJl'
--APPKEY

local wy60042_RC4_key='krLV4nffL14tC4Rv'
--是否 RC4 加密[key 密钥]

local wy60042_RC4="开"
--选择 RC4加密-2 否则会乱码
--打开 签名放DATA里:打开

if wy60042_RC4=="关" then
gg.alert("RC4-2加密未开启，会有破解风险，禁止登录，请前往后台配置RC4-2秘钥")
os.exit()
end

AMI_YDO="/sdcard/Android/"
--卡密 设备码 路径

----------------------------------------------------------------------------------------------------------------------

if wy60042_APPID=="" or wy60042_APPKEY=="" then
  gg.alert("对接数据,空...")--对话框
  os.exit()
end

----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------

wy60042_Notice=ultra(wy60042_Notice.."&app=".. wy60042_APPID,"")
if wy60042_RC4 == "开" then
  wy60042_Notice=RC4(wy60042_Notice,wy60042_RC4_key,false)
  gg.setVisible(false)
end


if json2lua(wy60042_Notice)['code'] == 200 then
if json2lua(wy60042_Notice).msg.app_gg ~= "" then
gg.alert("公告："..json2lua(wy60042_Notice).msg.app_gg)--对话框
end

else
gg.alert("公告接口："..json2lua(wy60042_Notice).msg)--对话框
os.exit()
end
wy60042=999
----------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------


function wy60042_MIAN()

miei=io.open(AMI_YDO..'/miei','r')
if miei==nil or miei:read("*a")== "" then 
miei=md5(os.time()*1000+611-99999)
io.open(AMI_YDO..'/miei','w+'):write(miei)--写
else
miei=io.open(AMI_YDO..'/miei','r'):read("*a")--读
end--设备码


function wy60042_KM_G(km)---[=[ 卡密解绑 ]=]-------------------------------------------------------------------------------------------------------------------
wy60042_key=md5("kami="..km.."&markcode="..miei.."&t="..os.time().."&".. wy60042_APPKEY)
--签名
wy60042_bops="kami="..km.."&markcode="..miei.."&t="..os.time().."&sign="..wy60042_key
--合成发送数据
if  wy60042_RC4 == "开" then
wy60042_bops= "data="..RC4(wy60042_bops,wy60042_RC4_key,true) 
end

wy60042_HUT=ultra(wy60042_jieba.."&app=".. wy60042_APPID,wy60042_bops)

if  wy60042_RC4 == "开" then
wy60042_HUT=RC4(wy60042_HUT,wy60042_RC4_key,false) 
end-- wy60042_Base64
return wy60042_HUT
end


km=io.open(AMI_YDO..'/km','r') 
if km==nil  then else 
km=io.open(AMI_YDO..'/km','r'):read("*a")
end--卡密保存到本地


e=io.open(AMI_YDO..'/e.log','r')
if e==nil or e:read("*a")== "" then 
e="1"
io.open(AMI_YDO..'/e.log','w+'):write(e)--写
else
e=io.open(AMI_YDO..'/e.log','r'):read("*a")--读
end--储存自动登入
if e== "1" then e=false else  e=true
end


wy60042_Random=md5(os.time()*1000+611*os.time()-999999)..wy60042_APPKEY..miei
--随机[用来计算是否相等]
function wy60042_KM_LL(km)---[=[ 卡密登入 ]=]-------------------------------------------------------------------------------------------------------------------
wy60042_key=md5("kami="..km.."&markcode="..miei.."&t="..os.time().."&".. wy60042_APPKEY)
--计算签名

wy60042_bops="kami="..km.."&markcode="..miei.."&t="..os.time().."&sign="..wy60042_key
--需要请求的数据

if  wy60042_RC4 == "开" then
wy60042_bops="data="..RC4(wy60042_bops,wy60042_RC4_key,true)
end-- 把请求数据用RC4加密

wy60042_HUT=ultra(wy60042_Kami.."&app=".. wy60042_APPID,wy60042_bops.."&value="..wy60042_Random)
--请求数据

if  wy60042_RC4 == "开" then
wy60042_HUT=RC4(wy60042_HUT,wy60042_RC4_key,false) 
end-- 把返回的数据用RC4解密
KM_L=json2lua(wy60042_HUT)

wy60042_code=KM_L.code--判断整数 200是成功
wy60042_msg=KM_L.msg--数据提示 也是错误提示
wy60042_check=KM_L.check--验证数据
wy60042_time=KM_L.time--返回时间

if wy60042_check~= md5(wy60042_time..wy60042_APPKEY..wy60042_Random) then
gg.alert("脚本：检测到你有非法操作")--对话框
os.exit()
end

if wy60042_time-os.time()>30 or wy60042_time-os.time()<-30 then
gg.alert("脚本：数据过期")--对话框
os.exit()
end

if wy60042_code~= 786 then
io.open(AMI_YDO..'/e.log','w+'):write("1")--写
gg.alert(wy60042_msg)--对话框
wy60042_MIAN()
else

TT=gg.alert("到期时间:-----------\n" ..os.date("%Y".."年".."%m".."月".."%d".."日  %H".."时".."%M".."分".."%S".."秒",wy60042_msg.vip).."\n使用卡密: "..wy60042_msg.kami,"确定","返回")--对话框
io.open(AMI_YDO..'/km','w+'):write(wy60042_msg.kami)--写

if TT== 2 then
io.open(AMI_YDO..'/e.log','w+'):write("1")--写
wy60042_MIAN()
else

---[=[   ]=]-------------------------------------------------------------------------------------------------------------------

Version = "1.0"
--当前版本

--[[
--文档系统是GG脚本编辑器里面免费提供的云服务
--作者: 半仙
GG脚本编辑器下载地址：https://bxdlc.lanzouj.com/iGf0p04shgij
]]

if debug.getinfo(gg.makeRequest).isvararg ~= false then print("再见") else gg.alert("成功退出脚本") os.exit() end
--防注入
m = os.time()
--开始纪录时间“秒”
function json(str) if str==nil or str=="" then return end return load(str)()end 
--必备函数请勿修改
url = "https://gg.bxdlc.cn/ybq/api2.php"
--接口链接
parameter = "type=oddWord&user=451989458&id=475"
--接口参数
data = gg.makeRequest(url,post,parameter).content
print(data)

function yy()
yiyan = gg.makeRequest("https://v1.hitokoto.cn/").content--一言
if yiyan == nil then return "" else content=yiyan:match("hitokoto\":\"(.-)\"") from=yiyan:match("from\":\"(.-)\"")  return "\n每日一言："..content.."\n      ----"..from end
end

--获取脚本基本配置
function configurations()
  nr = load(data:match("【脚本配置】(.-)【脚本配置】"))()
  --上面是获取表单
  if nr.Switch == "开" then else gg.alert("当前脚本关闭服务\n\n"..nr.tip,"退出脚本") os.exit() end
  --上面是判断是否开启脚本
  if nr.announcement == "" then else gg.alert("公告！\n\n"..nr.announcement,"知道了") end
  --上面是获取公告
  if nr.edition == Version then print("当前最新版本") else if gg.alert("发现新版本："..nr.edition.."\n更新内容："..nr.UpContent,"取消稍后更新","复制更新链接") == 1 then else gg.copyText(nr.link) gg.toast("链接复制成功快去浏览器粘贴更新吧！") os.exit() end end
  --上面是检测更新
end




if data == nil then 
  title = {}
  link = {}
  Status = "⚠️未连接"
  --  Main(title,link,Status)
elseif json(data).code == "-2" then 
  title = {}
  link = {}
  Status = "🌿链接成功\n系统错误"
  --  Main(title,link,Status)
elseif json(data).code == "-1" then 
  title = {}
  link = {}
  Status = "🌿链接成功\n提交的参数类型错误。\n请联系管理员修复。"
  --  Main(title,link,Status)
elseif json(data).id == "" then 
  title = {}
  link = {}
  Status = "🌿链接成功\n文档都不存在了，你还用这个借口，你土不土啊？"
else
  title = load(data:match("【标题】(.-)【标题】"))()
  link = load(data:match("【链接】(.-)【链接】"))()
  Status = "🌿链接成功\n全网启动："..json(data).statistics.."次\n发布日期:"..json(data).time.."\n更新日期:"..json(data).update_time
  --判断脚本是否开启 
  configurations()
end








function Main(title,link,Status)
  bt = gg.choice(title,0,"当前网络情况： "..Status..yy())
  --列表
  if bt ~= nil then 
    --如果变量bt不等于 nil 就执行下一步
    if link[bt] == nil then gg.alert("⚠警告⚠\n\n参数错误，请联系管理员修复") Main(title,link,Status) end
    --检测参数是否错误
    if string.find(link[bt],"http") then Scriptnr = gg.makeRequest(link[bt]).content if Scriptnr == nil then gg.alert("⚠警告⚠\n\n此脚本链接以失效，或者网络出现错误，请联系管理员修复") Main(title,link,Status) end if link[bt] == nil then gg.alert("⚠警告⚠\n\n参数错误，请联系管理员修复") Main(title,link,Status) end
      --检测返回值是否为链接
    elseif string.find(link[bt],"退出") then local a = os.time() - m gg.alert("本次启动到结束您一共使用了："..a.."秒") os.exit() 
      --检测返回值是否为退出
    else Scriptnr = link[bt] end
    --检测返回值是否为GG函数
    pcall(load(Scriptnr))
    --执行脚本
  end
  XGCK=-1 
end





while true do if gg.isVisible(true) then XGCK = 1 gg.setVisible(false) end if XGCK == 1 then Main(title,link,Status) end end






--[[
【脚本配置】
return{ 
	['Switch'] = '开',--脚本开关
	['tip'] = '维护中所以关闭了',--脚本关闭时弹出的内容
	['announcement'] = '',--脚本公告不填默认为关闭公告
	['edition'] = '1.0',--当前版本号
	['UpContent'] = '另类云脚本1.0更新了，快来体验体验吧',--更新公告
    ['link'] = 'https://gg.bxdlc/cn/bjq/',--更新地址链接
}
【脚本配置】

【标题】
return{
"鳄鱼板块",
"QQ估价",
"Q绑定查询",
"天气预报",
"API接口",
"更多功能",
"退出脚本"}
【标题】
--脚本名字要和链接对应
【链接】
return{
"https://wp.bxdlc.cn/down.php/c35175d16203b7ef030b3bcd5f1e80a2.lua",
"https://wp.bxdlc.cn/down.php/ab0fd4d298c33f2530827501f26d6140.lua",
"https://wp.bxdlc.cn/down.php/b0ae0e88ade0ca7a440fb9f6af43d2ed.lua",
"https://wp.bxdlc.cn/down.php/4b7ff50c0f7a5da6a9715f4f64356f34.lua",
"https://wp.bxdlc.cn/down.php/455434faf1d8ce9af3e486c2dc318a6f.lua",
"gg.alert('每天不定时更新内容，请持续关注')",
"退出",}【链接】

]]




---[=[   ]=]-------------------------------------------------------------------------------------------------------------------
end

     end

end





if km == nil  then
else
if km ~=""  then
if e==true then
wy60042_KM_LL(km)
end 
end
end


wy60042_hak=gg.prompt({
"输入你的卡密",
"下次自动登入",
"卡密解绑模式",
},{
km,
e,
jb
},{
'text',--文字
'checkbox',--多选
'checkbox',--多选
})--文本功能



if wy60042_hak==nil then

elseif wy60042_hak[2]==true then
io.open(AMI_YDO..'/e.log','w+'):write("2")--写
elseif wy60042_hak[2]==false then
io.open(AMI_YDO..'/e.log','w+'):write("1")--写
end


if wy60042_hak==nil then gg.setVisible(false) wy60042=nil
elseif wy60042_hak[3]==true then
if  wy60042_hak[1]== "" then
gg.alert("空，请填写卡密")--对话框
else
wy60042_KM_G=json2lua(wy60042_KM_G(wy60042_hak[1]))
if wy60042_KM_G.code== 200 then
gg.alert("解绑成功")--对话框
else
gg.alert(wy60042_KM_G.msg)--对话框
end
end

elseif wy60042_hak[1]== "" then
gg.alert("空，请填写卡密")--对话框
io.open(AMI_YDO..'/e.log','w+'):write("1")--写
else
wy60042_KM_LL(wy60042_hak[1])
end

end









while true do
if gg.isVisible(true) then
gg.setVisible(false)
  wy60042_MIAN()
  else
if wy60042== 999 then
gg.setVisible(true)
else
end
end



end
