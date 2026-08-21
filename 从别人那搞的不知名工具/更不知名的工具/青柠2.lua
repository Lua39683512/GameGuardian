ios = function(path, data)
    local file
    if data then
        file = io.open(path, 'w')
        if file then
            io.output(file)
            io.write(data)
            io.close(file)
            --    print('输出一个文件到:\n' .. path)
        end
    else
        file = io.open(path)
        if file then
            -- io.input(file)
            data = file:read('*a')
            file:close()
        end
        return (data or '')
    end
end
function random_ATo0(num)
    Tab = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V",
           "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r",
           "s", "t", "u", "v", "w", "x", "y", "z", "_", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
    if not num then
        num = math.random(4, 7)
    end
    local s = ""
    for i = 1, num - 1 do
        s = s .. Tab[math.random(1, 63)]
    end
    return Tab[math.random(1, 53)] .. s
end
XY = gg.prompt({"选择脚本","输出名称"}, {gg.getFile(),"123"}, {"file","txt"})
if not XY then
    return false
end
path = XY[1]
path2 = path..'.lasm'
data = ios(path)
function random() bn={"A_","B_","C","D_","E_","F","G","H","J","K","L","M_","N_","O_","_P","Q_","R","S__","T","U","V_","W","X_","Y","Z_"} x=math.random
local e,f,g,h,i,a,b=x(1,25),x(1,25),x(1,25),x(1,25),x(1,25),x(1,25),x(1,25)
for i=1,10 do
a=bn[e]..bn[f]..bn[g]..bn[h]..bn[i]..bn[a]..bn[b]
return a,b,c,d,e end
end
function DT()
s=random()
local sjs = math.random(1,999999999)
  local str = RandomStr(math.random(8,22))
  local sjs=sjs+1
ss="   ::"..s.."::  if nil then  goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." else while(true) do while(true) do break end break end if nil then  _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." end end if nil then  goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." else while(true) do while(true) do break end break end if nil then  _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." goto "..s.." end end if true then  else end  if true then  else end if true then  else end  if true then  else end  "
return [[if nil then 
if true then
else
goto W
end
::J::
if nil then 
else
goto J
end
::W::
end
]]..ss.."\n"..randtext().."\n"
end
function randOperator()
    local Operator = {
        [1] = "~",
        [2] = ">>",
        [3] = "<<",
        [4] = "|",
        [5] = "&",
        [6] = "/",
        [7] = "//"
    }
    local str = "nil " .. Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil" .. Operator[math.random(1, 7)] .. " nil" ..
                    Operator[math.random(1, 7)] .. " nil"
    return str
end
function randtext()
    local strrr = random() .. math.random(4000, 50000)
    local rand = random() .. math.random(5000, 60000)
    local rand2 = random() .. math.random(6000, 70000)
    local sjs = math.random(1,999999999)
  local str = RandomStr(math.random(8,22))
  local sjs=sjs+1
    txt = 
              "\nif(nil)then\nif(true)then\nend\nif(true)then\nelse\nlocal " .. rand2 .. "=" .. randOperator() .. "\ngoto " ..
            strrr .. "\nend\nend\nif " .. rand .. " then\nelse\nlocal " .. rand2 .. "=" .. randOperator() .. "\ngoto " ..
            strrr .. "\nend\n::" .. strrr .. "::\nlocal " .. rand2 .. "=" .. randOperator() .. "\nwhile" ..
            [==[(nil)do]==] .. "\nbreak\nend\n "
    return txt;
end
function RandomStr(len)
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
function Collect_Boolean(Code)
    local Code_Boolean = {"true", "false", "nil"}
    local Boolean_Tmp = {}
    local Boolean_ = {}
    for num, str in pairs(Code_Boolean) do
        for str_2 in string.gmatch(Code, str) do
            table.insert(Boolean_Tmp, str_2)
            table.insert(Boolean_, RandomStr(3, 7))
        end
        for i = 1, #Boolean_Tmp do
            Code = Code:gsub(Boolean_Tmp[i], "_ENV['" .. Boolean_[i] .. "']", 1)
        end
    end
    local str_tmp = ""
    for i = 1, #Boolean_Tmp do
        local number = math.random(1, 3)
            local sjs = math.random(1,999999999)
  local str = RandomStr(math.random(8,22))
  local sjs=sjs+1
        for ii = 1, number do
            str_tmp = str_tmp .. 'if '..str..' == '..sjs..' then\n_ENV["' .. math.random(21, 95) .. '"]=' .. Code_Boolean[math.random(1, 3)] .. "\nend\n"  .. randtext() .."\n"
        end
        str_tmp = str_tmp .. '_ENV["' .. Boolean_[i] .. '"]=' .. Boolean_Tmp[i] .. "\n" .. DT() .. randtext() .."\n"
    end
    return str_tmp .. Code
end
data = Collect_Boolean(data)
local sjs = math.random(1,999999999)
local str = RandomStr(math.random(8,22))
function QN(data)
    local types
    local Table = {
        ['table'] = 1,
        ['debug'] = 1,
        ['gg'] = 1,
        ['os'] = 1,
        ['io'] = 1,
        ['bit32'] = 1,
        ['utf8'] = 1,
        ['string'] = 1,
        ['math'] = 1
    }
    for k, v in pairs(_ENV) do
        types = type(v)
        if types == "table" and Table[k] then
            for kk, vv in pairs(v) do
                data = data:gsub('([^%w_])'..k .. "%s*%.%s*" .. kk..'([^%w_])',"%1_ENV[  (function()::QN3::if nil then goto QN3 end return '" .. k .."'end)()][(function()::QN3::if nil then goto QN3 end return '" .. kk .. "'end)() ]%2")                
            end
        end
    end
    return data
end
-- ios('0.lua', data)
-- os.exit()
local tdzn = gg.multiChoice({"table加固", "table.concat加固", "function加固","减少区块","写入防御"}, nil, "加固功能列表")
if tdzn == nil then
else
    local B,C
    if tdzn[1] == true then
        data = QN(data)
    end

    if tdzn[2] == true then
        B = {}
        C = {}
        function jia(A)
            local Func = load('local function max(a, b)    local m = a    if b > a then        m = b        b = a > "青柠"          end    return m - 10 end\nreturn ' .. A)
            if not Func then
                A = A:sub(2, -2)
                A = string.format('%q', A)
                Func = load('local function max(a, b)    local m = a    if b > a then        m = b        b = a > "青柠"          end    return m - 10 end\nreturn ' .. A)
                A = Func()
                A = A:sub(2, -2)
            else
                A = Func()
            end
            if A == '' then
                return '\\034\\034'
            end
            local E = {}
            for k, v in pairs({string.byte(A, 1, -1)}) do
                v = tostring(v)
                local index = B[v]
                if not index then
                    index = #C+1
                    B[v] = index
                    C[index]=v
                end
                E[#E+1]=index
            end
            return 'char_unpack(' .. table.concat(E,',') .. ')'
        end

        data = data:gsub('\\\\', '\\092\\092')
        data = data:gsub('\092\034', '\\034')
        data = data:gsub("\092\039", '\\039')
        
        local Break, types, Table1, Table2, _STRING_, encrypt1
        
        Table1 = {}
        for txt1 in data:gmatch('[^%-]%[([=]*)%[') do
            Table1[txt1] = string.len(txt1)
        end
        
        Table2 = {}
        for index, value in pairs(Table1) do
            Table2[value + 1] = index
        end
        
        table.sort(Table2, function(a, b)
            return a > b
        end)
        
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
            return '_STRING_(#' .. index .. ')'
        end
        
        repeat
            Break = false
            types = data:match('[\034\039]')
            if types == '\034' then
                data = data:gsub('\034[^\n]-\034', function(txt2)
                    Break = true
                    return encrypt1(txt2)
                end, 1)
            elseif types == '\039' then
                data = data:gsub('\039[^\n]-\039', function(txt2)
                    Break = true
                    return encrypt1(txt2)
                end, 1)
            end
        until not Break
        
        
        
        for text in data:gmatch("[^%-]%-%-%[([=]*)%[") do
            data = data:gsub("([^%-])%-%-%[" .. text .. "%[.-%]" .. text .. "%]", '%1', 1)
        end
        
        data = data:gsub('\\092\\092', '\\\\')
        data = data:gsub('\\034', '\034')
        data = data:gsub("\\039", '\039')
        
        for index, value in pairs(Table1) do
            data = data:gsub('([^\n]-)(%[' .. value .. '%[.-%]' .. value .. '%])', function(txt1, txt2)
                if txt1:find('%-%-') then
                    return nil
                end
                txt2 = txt2:gsub('_STRING_%(#(%d+)%)', function(num)
                    return _STRING_[tonumber(num)]
                end)
                return txt1 .. jia(txt2)
            end)
        end
        
        data = data:gsub('_STRING_%(#(%d+)%)', function(num)
            local data = _STRING_[tonumber(num)]
            data = data:gsub('\\092\\092', '\\\\')
            return jia(data)
        end)

        data = string.gsub(data, '\\034', '\034')
        data = string.gsub(data, '%-%-[^\n]*', '')
        data = string.gsub(data, '%s*\n%s*', '\n')

    end
    if tdzn[2] == true and  tdzn[3] == true then
        for text in string.gmatch(data, '([%a_][%w_]*)%s*=%s*{') do
            data = string.gsub(data, text .. '%.([%a_][%w_]*)', text .. '["%1"]')
        end

        data = string.gsub(data, 'local%s+function%s+([%a_][^%)]+%))', function(text)
            text = 'local function.' .. text
            return text
        end)

        data = string.gsub(data, 'function%s+[%a_][^%)]+%)', function(text)
            local txt1 = string.match(text, 'function%s+(.-)%s*%(')
            local txt2 = string.match(text, '%(.-%)')
            if txt1 and txt2 then
                return '_ENV[' .. jia('"'..txt1..'"') .. ']=function' .. txt2
            end
        end)

        data = string.gsub(data, 'local function%.([^%)]+%))', function(text)
            text = 'local function ' .. text
            return text
        end)

        ios(path2, data)
        func, error = loadfile(path2)
        if not func then
            return gg.alert('标准库加密失败\n\n' .. error)
        end
    end
    if tdzn[2] == true then
        data = 'local char_unpack=function(...)local Table={...}for k,v in pairs(Table)do Table[k]=QN[v] end return string.char(table.unpack(Table))end\n'..data
        data = 'local QN={'..table.concat(C,',') .. '}\n' .. data
    end
end
if tdzn[4] == true then
s=1000
for i in data:gmatch("function ([%w_]+)%(%)") do
s=s+1
data=data:gsub("function "..i.."%(%)","::"..i.."::\nif tt"..s.."==1 then\ntt"..s.."=0")
data=data:gsub(i.."%(%)","tt"..s.."=1\ngoto "..i)
end
end
::QX::
if tdzn[5] == true then
local fy = gg.multiChoice({"防部分拦截器", "数据混淆防御", "LOG防御"}, nil, "防御功能列表\n切记:防御1和防御2不能同时选择")
if fy == nil then
else
if fy[1] == true then
fy1=[==[gg.setVisible(false)
print("#青柠#1.0-2")
local KNTP=string.char(math.random(65,90))..string.char(math.random(65,90))..string.char(math.random(65,90))..string.char(math.random(65,90))..".lua"
local CHE=_G["gg"]["EXT_CACHE_DIR"]
local newn="test"
io.output(CHE.."/"..KNTP)
io.write("Suanshu=82 K1=Suanshu;if not gg.addListItems and not gg.alert or not loadfile or not os.rename or not os.remove then return end")
loadfile(CHE.."/"..KNTP)()
os.remove(CHE.."/"..KNTP)
if K1 ~= 12300 / 150 then end
if loadfile(CHE.."/"..KNTP)
then os.remove(gg.getFile()) return end
os.rename(gg.getFile(),gg.getFile()..newn)
if not loadfile(gg.getFile()) then os.rename(gg.getFile()..newn,gg.getFile()) os.remove(gg.getFile())
return end
os.rename(gg.getFile()..newn,gg.getFile())
 javs = '=[Java]' mnm = gg.getFile () Javs = _G['debug']['getinfo'](gg.alert).source if Javs ~= true then if Javs == javs then else while true do return end end end dirc = gg.EXT_CACHE_DIR  .. "/" nf = gg.getFile ():match( "[^/]+$" ) os.remove (gg.EXT_CACHE_DIR  .. "/LuaR.Mod" ) a = {} for i = 1, 50000 do table.insert(a, {address = 0 + i, flags = 17, values = 0}) end t1 = os.time () for i = 1, 6 do gg.removeResults (a) end gg.clearList () t2= os.time () if t2 < t1 then return end if t2 > t1 then end if os.difftime (t2, t1) > 2 then return end if tostring(os):find( "@" ) then return end
gg.setVisible(true)
]==]
data=fy1.."\n"..data
end
if fy[2] == true then
fy2=[==[BD={loadfile,gg.alert,load,gg.searchNumber,pcall,table.insert,table.concat,gg.getFile,} if 0>9 then  goto i503  goto i503  goto i503   goto i503   goto i503   goto i503   goto i503 goto i503 goto i503 goto i503 goto i503 goto i503 goto i503 ::i503:: end   __=__  for i,v in pairs(BD) do   if _G["string"]["find"](tostring(_G["debug"]["getinfo"](--[[no]]v).func),"/") then if 0>5 then goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 goto i504 ::i504:: end __=__ _G["gg"]["alert"]("你妈没了") if 3>8 then goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 goto i505 ::i505:: end __=__ _G["os"]["exit"](--[[no]]) gunduzi() end end for i in pairs(os) do if _G["string"]["find"](tostring(_G["debug"]["getinfo"](--[[no]]os[i]).func),"/") then if 3>8 then goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 goto i506 ::i506:: end __=__ _G["gg"]["alert"]("ffunc") _G["os"]["exit"](--[[no]]) gunduzi() if 1>8 then goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 goto i507 ::i507:: end __=__ end end BDtime=_G["os"]["clock"](); function _L3_() _L3_() end goto fist ::endfirst:: print(string.char(table.unpack({34,232,175,183,233,135,141,230,150,176,232,191,144,232,161,140,34}))) _G["os"]["exit"](--[[no]]) _L3_() goto endfirst ::fist:: timeseedmx=_G["os"]["clock"]() throughgg=0 BDnum={} mathnum=2000 kd,kd1=_G["string"]["char"](),1 for i=1,500 do kd1=kd1==255 and 1 or kd1+1 kd=kd.._G["string"]["char"](kd1) end for i=1,12 do kd=kd..kd end for i=1,mathnum do BDnum[i]={address=i,flags=1,value=kd} end time1=_G["os"]["clock"]()+os.time() pcall(function(i) _G["gg"]["searchNumber"](i) end,BDnum) time2=_G["os"]["clock"]()+os.time() xpcall(function(i) _G["gg"]["editAll"](i,4) end, function() Txringt=debug.traceback() end,BDnum) time3=_G["os"]["clock"]()+os.time() BDnum=_G["gg"]["getValues"](BDnum) time4=_G["os"]["clock"]()+os.time() fx=_G["debug"]["getinfo"](--[[no]]gg.getValues) if BDnum[_G["math"]["random"](--[[no]]1,2000)].value==0 and type(fx.func)=="function" and type(fx.func)=="function" then BDnum=nil if not BDnum and time4-time1<3 and time2-time3>-2 and time3-time2<time4-time1 then time1=_G["os"]["clock"]() _G["gg"]["sleep"](_G["math"]["random"](--[[no]]8,15)) time1=_G["os"]["clock"]()-time1 if time1>0.008 and time3>time2 then throughgg=throughgg+1 else goto endfirst end else goto endfirst end else goto endfirst end if throughgg==1 then end if throughgg~=1 then goto endfirst else end local BD2=function(...) do if 1>6 then goto i510 goto i510 goto i510 goto i510 goto i510 goto i510 goto i510 goto i510 goto i510 ::i510:: end __=__ local gsou={...} if 2>7 then goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 goto i511 ::i511:: end __=__ if gsou[1] then if 0>8 then goto i512 goto i512 goto i512 goto i512 goto i512 goto i512 goto i512 goto i512 goto i512 ::i512:: end __=__ gsou[1]=gsou[1].."" local mixa,mixb=_G["math"]["random"](--[[no]]500,999),_G["math"]["random"](--[[no]]500,999) if 2>7 then goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 goto i513 ::i513:: end __=__ local xma=_G["string"]["char"](_G["math"]["random"](--[[no]]60,255),_G["math"]["random"](--[[no]]60,255)) if 1>9 then goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 goto i514 ::i514:: end __=__ gsou[1]=gsou[1]:gsub("[^;]+",function (mm) return string.rep(xma,mixa)..mm..string.rep(xma,mixb) end) if 3>8 then goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 goto i515 ::i515:: end __=__ _G["gg"]["setVisible"](false) if 3>5 then goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 goto i516 ::i516:: end __=__ _G["gg"]["searchNumber"](gsou[1],gsou[2],gsou[3],gsou[4],gsou[5],gsou[6]) if 1>9 then goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 goto i517 ::i517:: end __=__ else local isou={} if 1>6 then goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 goto i518 ::i518:: end __=__ for i=1,_G["math"]["random"](--[[no]]1,5) do if isou[1] then if 2>6 then goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 goto i519 ::i519:: end __=__ isou[1]=isou[1]..";".._G["math"]["random"](--[[no]]1,99999999) else if 0>9 then goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 goto i520 ::i520:: end __=__ isou[1]=_G["math"]["random"](--[[no]]1,99999999) end end if 1>5 then goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 goto i521 ::i521:: end __=__ local db={1,2,4,8,16,32,64} isou[2]=db[_G["math"]["random"](--[[no]]1,7)] if 3>5 then goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 goto i522 ::i522:: end __=__ _G["gg"]["searchNumber"](isou[1],isou[2]) for i=1,88 do if 3>6 then goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 goto i523 ::i523:: end __=__ _G["gg"]["searchNumber"]("QN") end return _G["gg"]["clearResults"]() end if 3>6 then goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 goto i524 ::i524:: end __=__ end end if 2>9 then goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 goto i525 ::i525:: end __=__
]==]
data=fy2.."\n"..data
end
if fy[1]==true and fy[2]==true then
abk=gg.alert("不支持防御1和防御2同时选择","退出","返回")
if abk==1 then
os.exit()
end
if abk==2 then
goto QX
end
end
if fy[3] == true then
fy3=[==[
local function Yi_Chen(code)
local data ={}
for i=1,#code do
data[i]=utf8.char(code[i][1]+code[i][2][1]-code[i][2][2]) end
return table.concat(data,"") end
sear=debug.getinfo(gg.searchNumber).short_src
toas=debug.getinfo(gg.toast).short_src
Yxg={}for i, v in pairs(gg) do table.insert(Yxg, gg[i]) Yxg[i]=gg[i]end Yxi={}for i, v in pairs(io) do table.insert(Yxi, io[i]) Yxi[i]=io[i]end Yxo={}for i, v in pairs(os) do table.insert(Yxo, os[i]) Yxo[i]=os[i]end Yxs={}for i, v in pairs(string) do table.insert(Yxs, string[i]) Yxs[i]=string[i]end ark={}for i, v in pairs(table) do table.insert(ark, table[i]) ark[i]=table[i]end arl={}for i,v in pairs(debug) do table.insert(arl, debug[i]) arl[i]=debug[i] end
yMHdc={}
yMHdc[1]=Yi_Chen({{35,{233,165}},{103,{26408,26408}}})
yMHdc[2]=Yi_Chen({{201,{133,231}},{130,{128,155}}})
yMHdc[3]=Yi_Chen({{36877,{168,36924}},{-36634,{36924,168}}})
yMHdc[4]=Yi_Chen({{-36930,{37221,230}},{36878,{168,36924}}})
yMHdc[5]=Yi_Chen({{61,{233,233}},{36864,{168,36924}}})
yMHdc[6]=Yi_Chen({{37099,{230,37221}},{121,{188,188}}})
yMHdc[7]=Yi_Chen({{-29016,{29275,156}},{121,{233,233}}})
yMHdc[8]=Yi_Chen({{122,{137,137}},{89,{155,128}}})
yMHdc[9]=Yi_Chen({})
yMHdc[10]=Yi_Chen({{115,{188,188}},{3,{231,133}},{29235,{156,29275}},{184,{133,231}},{78,{155,128}},{17,{231,133}},{-36886,{37221,230}},{-29021,{29275,156}},{108,{137,137}},{29220,{156,29275}}})
yMHdc[11]=Yi_Chen({{-36892,{37221,230}},{202,{133,231}},{97,{26408,26408}},{-36877,{37221,230}}})
yMHdc[12]=Yi_Chen({{37094,{230,37221}},{199,{133,231}},{-29003,{29275,156}},{55,{155,128}},{37092,{230,37221}},{29234,{156,29275}},{36873,{168,36924}},{206,{133,231}},{184,{165,233}},{-29004,{29275,156}}})
yMHdc[13]=Yi_Chen({{101,{233,233}},{32,{233,165}},{105,{137,137}},{36872,{168,36924}},{38,{155,128}},{108,{188,188}},{-36648,{36924,168}}})
yMHdc[14]=Yi_Chen({{167,{165,233}},{-36883,{37221,230}},{209,{133,231}},{37090,{230,37221}},{9,{231,133}}})
yMHdc[15]=Yi_Chen({{18,{231,133}},{78,{155,128}},{136,{128,155}},{74,{155,128}}})
yMHdc[16]=Yi_Chen({{103,{188,188}},{36857,{168,36924}},{116,{137,137}},{37077,{230,37221}},{-1,{231,133}},{10,{231,133}},{117,{233,233}},{3,{231,133}},{115,{233,233}}})
yMHdc[17]=Yi_Chen({{99,{26408,26408}},{29227,{156,29275}},{29230,{156,29275}},{31,{233,165}},{-36884,{37221,230}}})
yMHdc[18]=Yi_Chen({{116,{188,188}},{105,{26408,26408}},{207,{133,231}},{74,{155,128}}})
yMHdc[19]=Yi_Chen({{99,{233,233}},{-29011,{29275,156}},{-36890,{37221,230}},{97,{137,137}},{29233,{156,29275}},{82,{137,137}},{101,{26408,26408}},{-36876,{37221,230}},{117,{188,188}},{29227,{156,29275}},{37107,{230,37221}},{115,{233,233}}})
yMHdc[20]=Yi_Chen({{72587,{168,36924}},{21179,{233,165}},{36864,{168,36924}},{111,{233,233}},{103,{188,188}}})
yMHdc[21]=Yi_Chen({{36857,{168,36924}},{147,{128,155}},{105,{137,137}},{-36875,{37221,230}}})
yMHdc[22]=Yi_Chen({{29222,{156,29275}},{128,{128,155}},{89,{155,128}},{36838,{168,36924}},{-36890,{37221,230}},{29234,{156,29275}},{117,{188,188}},{108,{26408,26408}},{116,{188,188}},{115,{188,188}}})
yMHdc[23]=Yi_Chen({{101,{26408,26408}},{-36656,{36924,168}},{37096,{230,37221}},{214,{133,231}},{133,{165,233}},{81,{155,128}},{40,{233,165}}})
K5Q1g={}
YxNB = _ENV[yMHdc[1]]
YxNB = YxNB.searchNumber
YxNBNB = _ENV[yMHdc[2]]
YxNBNB = YxNBNB.editAll
function lllsjsf()
    YXB = {yMHdc[3],yMHdc[4],yMHdc[5],yMHdc[6],yMHdc[7],yMHdc[8]}
    wqnmds=yMHdc[9]
   for i=1,8000 do
   wqnmds=wqnmds..YXB[math.random(1, #YXB)]
   end
   return wqnmds
   end
   lllsjsf()
function YxSs(...)
Yxg[yMHdc[10]](false)
search_e=Yxs[yMHdc[11]](0,0,0,0,0,0,0)
for i=1,22 do
search_e=search_e..search_e
end
Yxg[yMHdc[12]](1)
Yxg[yMHdc[13]](search_e,4)
local s,j={},{}
for i=1,50 do
j[i]=math.random(1,2140000000)
s[j[i]]={address=i,flags=4,temp=search_e}
end
local timegg=Yxo[yMHdc[14]]()+Yxo[yMHdc[15]]()
s=Yxg[yMHdc[16]](s)
local dateinit=Yxo[yMHdc[17]]()+Yxo[yMHdc[18]]()
for i=1,50 do
while s[j[i]].value~=0 or dateinit-timegg>2.1 do
Yxg[yMHdc[19]]()
print(yMHdc[20])
Yxo[yMHdc[21]]()
end
end
ab = {...}
Yw=[[%d]]
  ab[1] = ab[1]:gsub(Yw, function(Yx)
    return Yx .. wqnmds .. wqnmds
  end
  )
  YxNB(table.unpack(ab))
  Yxg[yMHdc[22]](0)
Yxg[yMHdc[23]](search_e,4)
end
function YxSg(...)
ab = {...}
  ab[1] = ab[1]:gsub(Yw, function(Yx)
  return Yx .. wqnmds .. wqnmds
  end
  )
  YxNBNB(table.unpack(ab))
end
]==]
data=fy3.."\n"..data
end
end
end
data=' local Mask_key=function(S,S1,S2,S3) ::S:: '..DT()..' local key=S3 '..DT()..' local key=Keys[key] '..DT()..' local r=\'\' '..DT()..' for i=1,#S do '..DT()..' local r2=S[i]-S1[i] '..DT()..' local r2=r2+S2 '..DT()..' local k=i%10 '..DT()..' local k=k+1 '..DT()..' local k=key[k] local r2=r2+k '..DT()..' local r2=K_TABLE[r2] '..DT()..' r=r..r2 '..DT()..' end '..DT()..' return r end '..randtext().."\n"..data
pianyi1 = math.random(1, 255)
jiemi = '--for k,v in pairs(TABLE)do for kk,vv in pairs(v)do TABLE[k][kk]=vv-' .. pianyi1 ..
            ' end TABLE[k]=string.char(table.unpack(TABLE[k]))end\n'--假算法
wzf = "\n\n来自:-Abbr V to en.\n\n青柠-'Encbyte-v1.1"
data = string.rep('return (function()  ',50)..'\n'..data..'\n'..string.rep('end)() ',50)
gy="local function max(a, b)    local m = a    if b > a then        m = b        b = a > ''          end    return m - 10 end"
data = gy.."\n"..data
data = "local QN = [[\n" .. wzf .. "\n\n]]\nlocal main=(function ()\n" .. jiemi .. DT() .. data .. " end)()"

gg.toast("⚙正在混淆编汇指令%⚙")

ios('报错信息.lua', data)
func, error = loadfile('报错信息.lua')
if not func then
    if gg.alert('加密失败', '查看详细', '取消') == 1 then
        gg.alert('错误提示:\n\n' .. error)
    end
    return false
end

dump = string.dump(func, true, true)
gg.internal2(load(dump), path2)

gg.toast("⚙30%⚙")

ym = ios(path2)




ym = ios(path2)

rl = {}
rl.ASM = {
    -- ['LOADK'] = 2,
    ['LOADKX'] = 2,
    ['EXTRAARG'] = 2,

    ['MOVE'] = 2,
    ['UNM'] = 2,
    ['NOT'] = 2,
    ['LEN'] = 2,

    ['ADD'] = 5,
    ['SUB'] = 2,
    ['MUL'] = 2,
    ['DIV'] = 2,
    ['MOD'] = 2,
    ['POW'] = 2,

    ['GETTABLE'] = 2,
    ['SETTABLE'] = 2,
    ['NEWTABLE'] = 2,
    ['SELF'] = 2,
    ['SETLIST'] = 2,

    ['LOADNIL'] = 2,
    ['CONCAT'] = 2,
    ['CALL'] = 2,
    ['VARARG'] = 2,
    ['TAILCALL'] = 2,
    ['TFORCALL'] = 2,

    ['GETUPVAL'] = 2,
    ['SETUPVAL'] = 2,
    -- ['GETTABUP'] = 2,
    ['SETTABUP'] = 2,

    ['CLOSURE'] = 2
}
rl.jmp1 = 1000000
rl.data2 = {}

gg.toast("正在混淆汇编指令...")
for text in string.gmatch(ym, '[^\n]+') do
    if text ~= '' then
        rl.txt1 = string.match(text, '%S+')
        if rl.ASM[rl.txt1] then
            rl.jmp2 = rl.jmp1 + 10
            rl.jmp3 = rl.jmp2 + 10                                  
            text = '\nJMP :goto_' .. rl.jmp1 .. '\n:goto_' .. rl.jmp2 .. '\n' .. text .. '\nJMP :goto_' .. rl.jmp3 ..
                       '\nADD v'..math.random(5026,9990)..' CONST['..math.random(9597,75926)..'] v'..math.random(4056,9000)..'\nNEWTABLE v'..math.random(2,15).." "..math.random(0,9).." "..math.random(1,9999)..'\nTEST v'..math.random(5006,9290)..' '..math.random(5006,9290)..'\nSETTABUP u'..math.random(5006,9290)..' "'..random()..random()..'" v'..math.random(5006,9890)..'; garbage\nGETUPVAL v'..math.random(5006,9290)..' u'..math.random(712,9420)..'\n:goto_' .. rl.jmp1 .. '\nJMP :goto_' .. rl.jmp2 .. '\nLOADK v'..math.random(5006,9290)..' CONST['..math.random(4056,9000)..']  ; garbage\nADD v'..math.random(5026,9990)..' v'..math.random(950,2000)..' v'..math.random(4056,9000)..'\n:goto_' .. rl.jmp3                                         
            rl.jmp1 = rl.jmp3 + 1
        end
        rl.data2[#rl.data2 + 1] = text
        rl.data2[math.random()] = text
    end
end

data = table.concat(rl.data2, '\n')

ios(path2,data)


func, error = loadfile(path2)
if not func then
    if gg.alert('混淆失败', '查看详细', '取消') == 1 then
        gg.alert('错误提示:\n\n' .. error)
    end
    return false
end

gg.toast("⚙80%⚙")



weizhicuowu = [=[
    .upval u76480 "_EVN" ; v94578
    .upval u98433 "_EVN" ; a61840
    .upval u14327 "_EVN" ; x73494
    .upval u85438 "_EVN" ; m13640
    .upval u96543 "_EVN" ; p45723			

]=]
weizhicuowu1 = [=[
.upval v0 "_EVN" ; g5
]=]
data = data:gsub('upval%s*v0*%s*nil%s*;%s*%w*', 'upval v0 "" ; u0\n' .. weizhicuowu, 1)
data = data:gsub('upval%s*u0*%s*nil%s*;%s*%w*', 'upval u0 "" ; u0\n' .. weizhicuowu1, 1)
func, error = loadfile(path)
if not func then
    if gg.alert('混淆失败', '查看详细', '取消') == 1 then
        gg.alert('错误提示:\n\n' .. error)
    end
    return false
end
ZL = {"ADD","SUB","DIV"}
  data=data:gsub("LOADNIL v(%d+)%.%.v(%d+)\n%s+TEST v(%d+) (%d+)\n%s+JMP :goto_(%d+)  ; %+(%d+) ↓",function (a,b,c,d,e,f) return "LOADNIL v"..a.."..v"..b.."\nTEST v"..c.." "..d.."\nTEST v"..c.." "..d.."\nLT 0 403 331\nLT 0 403 331\nJMP :goto_"..e.."  ; +"..f.." ↓ "..fh().."\n"..ZL[math.random(1,#ZL)].." v"..math.random(1,16).." v"..math.random(1,16).." v"..math.random(1,16).."\n" end)
max = 52
data = string.gsub(data, "%s*\n%s*", "\n")
data = string.gsub(data, "%.linedefined %d+\n", ".linedefined 0\n")
data = string.gsub(data, "%.lastlinedefined %d+\n", ".lastlinedefined 0\n")
data = string.gsub(data, "%.numparams %d+\n", ".numparams 250\n",max)
data = string.gsub(data, "%.is_vararg %d+\n", ".is_vararg 250\n",max)
data = string.gsub(data, "%.maxstacksize %d+\n", ".maxstacksize 250\n",max)
s=1000
for i in data:gmatch("function ([%w_]+)%(%)") do
s=s+1
data=data:gsub("function "..i.."%(%)","::"..i.."::\nif tt"..s.."==1 then\ntt"..s.."=0")
data=data:gsub(i.."%(%)","tt"..s.."=1\ngoto "..i)
end
data = data:gsub("LOADNIL v(%d+)%.%.v(%d+)\n%s+TEST v(%d+) (%d+)\n%s+JMP :goto_(%d+)  ; %+(%d+) ↓",
           function(a, b, c, d, e, f)
        return "LOADNIL v" .. a .. "..v" .. b .. "\nTESTSET v" .. c .. " " .. d .. "\nTESTSET v" .. c .. " " .. d ..
                   "\nLT 0 403 331\nLT 0 403 331\nEQ".. e .." ".. b .."\nJMP :goto_" .. e .. "  ; +" .. f .. " ↓ "             
    end)    
ios(path2, data)
data = loadfile(path2)
data = string.dump(data, true)

data=data:gsub(string.char(0x04, 0x00, 0x00, 0x00, 0x02, 0x59),string.char(0x04, 0x00, 0x00, 0x27, 0x11) .. ("\000"):rep(10000))
data = string.gsub(data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
data = string.gsub(data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00), string.char(0x00, 0x00, 0x00, 0x00),1)
data = string.gsub(data, string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) .. string.rep(string.char(0), 32),string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) .. string.rep('\0', 24) ..string.char(0x36, 0xB2, 0xBF, 0xFF, 0x83, 0x2B, 0xD8, 0xFF))
data = string.gsub(data,string.char(0x01,0x00,0x04,0x00,0x05).. string.rep('\0\0', 20))

--os.remove('报错信息.lua')
--sj = os.date("%m_%d_") .. '[插叙].lua'
sj=XY[2]
path = string.match(path,'(.-)[^/]+$')..sj..".lua"
ios(path, data)

gg.toast("⚙100%⚙")
size = #data/1024
gg.alert("编译完成！\n输出文件为:\n" .. path .. "\n\n输出大小为" .. size .. "KB")
