if gg.alert('是否载入防御', '是', '', '否') == 1 then
fyture=true
end

if gg.alert('是否减弱防御 建议开启', '是', '', '否') == 1 then
FFY2=true
end


if gg.alert('是否使用新版指令混淆', '是', '', '否') == 1 then
jmpture=true
else
jmpture=false
end

if gg.alert('是否使用return防导', '是', '', '否') == 1 then
fdture=true
end

if gg.alert('是否使用字节码混淆', '是', '', '否') == 1 then
retture=true
end

local UI = "\n\n\n" .. [=[
-- ☨━━━━━━━━━━━━━━━━━━━☨
🏆欢迎使用➨

     ➖➖➖➖➖➖➖➖
        VERSION：2.6🌸
     ➖➖➖➖➖➖➖➖

🔸Script By➨
  🔏加密作者：by.伤感神
  🍀联系方式：1254166911
  ✏️加密时间：]=] .. os.date("%Y.%m.%d.%H.%M.%S") .. [=[

  🔍加密强度：★★★★★
-- ☦︎━━━━━━━━━━━━━━━━━━━☦︎

 ＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿
˘                                             ˘
┎🅛🅞🅥🅔┈┈┈┈┒
 ♡『伤感』-伤感神♡
┖┈┈┈┈┈┈┈┈┚
˘＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿˘
    

]=] 

g={}

function rw(path, data)
	if data then
		local file, err = io.open(path, 'w')
		if not file then return file, err end
		file:write(data)
		file:close()
	else
		local file, err = io.open(path, 'r')
		if not file then return file, err end
		data = file:read('*a')
		file:close()
		return data
	end
end

local function getRandomStr(a, b, c)
	local t = {}
	for i = 1, a do t[i] = math.random(b, c) end
	return string.char(table.unpack(t))
end

local function toLuaHex(s)
	local t = {string.byte(s, 1, -1)}
	for i = 1, #t do t[i] = string.format('\\x%02X', t[i]) end
	return table.concat(t)
end

local dir = string.match(gg.getFile(), '(.-)/[^/]+$') or gg.EXT_CACHE_DIR
local function getCachePath() return dir .. '/tmp.lua' end

local function getDataFunc(data, e)
	local tmppath = getCachePath()
	rw(tmppath, data)
	local func, err = loadfile(tmppath)
	if not func then
		print(e)
		error(err)
	end
	return func
end

local function getInternal2(func)
	local ty = type(func)
	if ty == 'function' then
		local path = getCachePath()
		local res = gg.internal2(func, path)
		if res ~= true then return false, res end
		return rw(path)
	elseif ty == 'string' then
		return getInternal2(getDataFunc(func, 'getInternal2异常'))
	else
		return false, 'getInternal2参数类型错误'
	end
end

local encStrTab, encStrTabT, encMetaTab, envFunc, numTab, numTabT, Ptab, Z_, Y_, III, XX, HH = {}, {}, {}, {}
local tab, nextLine, syh, dyh = string.char(9), string.char(10), string.char(34), string.char(39)
local isInTab = function(p, t)
    if #t == 0 then return false end
    local b = "," .. table.concat(t, ",") .. ","
    b = b:find("," .. p .. ",")
    if b then
        for i, v in pairs(t) do
            if p == v then return i end
        end
    else
        return b
    end
end
local isInArray = function(t, val)
    for _, v in ipairs(t) do
        if val:find("%(") then
            if v:find(val) then return true end
        else
            if v == val then return true end
        end
    end
    return false
end
local randomStr = function(lens, ...)
    local cs, str, as = {{48, 57}, {65, 90}, {97, 122}}, "", nil
    if type(...) == "table" then
        as = ...
    else
        as = {...}
    end
    for _ = 1, lens do
        local index = math.random(as[1], as[#as])
        str = str .. string.char(math.random(cs[index][1], cs[index][2]))
    end
    return str
end
local numName = randomStr(math.random(11, 12), {2, 3})
-- 字符串加密变量名
local strName = randomStr(math.random(11, 12), {2, 3})
-- 字符串算法变量名
local encFuncName = randomStr(math.random(11, 12), {2, 3})
-- 全局元表变量名
local encMetaName = randomStr(math.random(11, 12), {2, 3})
local initEncryStrFuntion = function(code, encStrFunction, ...)
    -- 重载加密函数
    local numArgs = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
    local strArgs = {"_0_", "_1_", "_2_", "_3_", "_4_", "_5_", "_6_", "_7_", "_8_", "_9_"}
    local enc, encStrFunction = encStrFunction, enc
    encStrFunction = function(c, ...)
        local encCode = enc(c, ...)
        for i, v in pairs(numArgs) do
            encCode = encCode:gsub(v, strArgs[i])
        end
        return encCode
    end
    -- 字符串加密
    assert(type(encStrFunction) == 'function', '请传入加密函数')
    local data_table = {}
    repeat
        local A1, A2, A3 = string.find(code, "([\034\039%\045%\091])")
        if A3 == "\034" or A3 == '\039' then
            code = string.gsub(code, '(.-)(' .. A3 .. '.-' .. A3 .. ')', function(...)
                local P = {...}
                data_table[#data_table + 1] = P[1]
                local txt1 = P[2]
                txt1 = string.gsub(txt1, '\\([\\\034\039])', function(str)
                    return string.format('\\x%02X', string.byte(str))
                end)
                if string.sub(txt1, -1, -1) ~= A3 then
                    return txt1
                end
                local loadStr = load("return " .. txt1)
                if not loadStr then
                    gg.alert(gg.getLine() .. '字符串加密失败')
                    os.exit()
                end
                txt1 = loadStr()
                data_table[#data_table + 1] = encStrFunction(txt1)
                return ''
            end, 1)
        elseif A3 == "\045" then
            local B1, B2, B3, B4 = string.find(code, "%-%-")
            if B1 == A1 then
                A1 = B1
                B1, B2, B3, B4 = string.find(code, "%-%-(%[([=]*)%[)")
                if B1 == A1 then
                    code = string.gsub(code, "(.-)%-%-%[" .. B4 .. "%[.-%]" .. B4 .. "%]", function(txt1)
                        data_table[#data_table + 1] = txt1
                        return " "
                    end, 1)
                else
                    code = string.gsub(code, "(.-)%-%-[^\n]*", function(txt1)
                        data_table[#data_table + 1] = txt1
                        return ""
                    end, 1)
                end
            else
                code = string.gsub(code, ".-%\045", function(txt1)
                    data_table[#data_table + 1] = txt1
                    return ''
                end, 1)
            end
        elseif A3 == "\091" then
            local B1, B2, B3 = string.find(code, "%[([=]*)%[")
            if B1 == A1 then
                code = string.gsub(code, "(.-)(%[" .. B3 .. "%[.-%]" .. B3 .. "%])", function(...)
                    local P = {...}
                    data_table[#data_table + 1] = P[1]
                    local txt2 = P[2]
                    txt2 = load("return " .. txt2)()
                    data_table[#data_table + 1] = encStrFunction(txt2)
                    return ''
                end, 1)
            else
                code = string.gsub(code, ".-%\091", function(txt1)
                    data_table[#data_table + 1] = txt1
                    return ''
                end, 1)
            end
        else
            break
        end
    until not A3
    data_table[#data_table + 1] = code
    code = table.concat(data_table)
    -- 数值加密
    code = code:gsub("\n_FFDM_ = 1\n", "")
    if gg.alert('是否加密数值', '是', '', '否') == 1 then
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
                    numTabT[key] = numName .. "[" .. key .. "] = tonumber(" .. encStrFunction(ii) .. ")"
                end
                key = tostring(key)
                for i, v in pairs(numArgs) do
                    key = key:gsub(v, strArgs[i])
                end
                code = code:gsub(XX .. III .. HH, x .. numName .. "[" .. key .. "]" .. h)
            end
        end
    end
    if numTabT then
        local NUMDY = "local " .. numName .. "={};" .. table.concat(numTabT, ";") .. nextLine
        code = NUMDY .. code
    end
    for i, v in pairs(strArgs) do
        code = code:gsub(v, numArgs[i])
    end
    return code
end
g.random = {}
g.random.used = {}
function g.random.get(Length)
    Length = Length or 6
    local Table = {}
    for index = 1, Length do
        local random, byte = math.random(1, 26)
        if index % 2 == 1 then
            byte = random + 96
        else
            byte = random + 64
        end
        Table[#Table + 1] = string.char(byte)
    end
    local Content = table.concat(Table)
    if g.random.used[Content] then
        return g.random.get(Length + 1)
    end
    g.random.used[Content] = 1
    if g.data and string.match(g.data, '[^%w_]' .. Content .. '[^%w_]') then
        return g.random.get(Length + 1)
    end
    return Content
end

g.string = {}
g.string.used = {}
g.string.name = g.random.get()
g.string.index = 0
g.string.data = {}
table.insert(g.string.data, g.string.name .. '={}')

function Benc(Table)
    local Done_table,fun,Join_table,Lianj,i,Table_Number
    Table=gg.bytes(Table)
    Done_table = {}
    fun = {}
    Join_table = {}
    for n=1,#Table do
        fun[n]=Table[n]
    end
    Lianj = #Table
    while Lianj > 0 do
        i = math.random(1,Lianj)
        table.insert(Done_table,Table[i])
        Table[i] = Table[Lianj]
        Lianj = Lianj-1
    end
    for n=1,#Table do
        Join_table[n]=Done_table[n]
    end
    Table_Number={}
    for k,v in pairs(fun) do
        for Nb,s in pairs(Join_table) do
            if v == s then
                Table_Number[#Table_Number+1] = Nb
                Join_table[Nb] = ""
                break
            end
        end
    end
    return "SS_San({"..table.concat(Done_table,",").."},\34"..table.concat(Table_Number,"\000").."\000\34)"
end

--[[解密算法]]
DEC=[[
local function SS_San(Table,numb)
    local Nmsl,Charr
    Nmsl={}
    Charr={}
    for n in numb:gmatch("(%d-)\000") do
        Charr[#Charr+1]=tonumber(n)
    end
    for W,v in pairs(Charr) do
        Nmsl[W]= string.char(Table[v])
    end
    return table.concat(Nmsl)
end
]]

--[[
字符串混淆（来自我[苏酥]）
]]
function encrypt(data)
index = math.random(1,12345678)
table.insert(g.string.data, g.string.name .. "[" .. index .. "]=(function() return " .. Benc(data) .. " end)")--偏移破损字符串存放
return g.string.name .. "[" .. index .. "]()"
end

--指令混淆
local string = string
local math = math
local table = table

local function EncJMP(data)
	local string = string
	local math = math
	local table = table

	local dir = string.match(gg.getFile(), '(.-)/[^/]+$') or gg.EXT_CACHE_DIR
	local function getCachePath() return dir .. '/tmp.lua' end

	local function rw(path, data)
		local file
		if data then
			file = io.open(path, 'w')
			file:write(data)
			file:close()
		else
			file = io.open(path, 'r')
			data = file:read('*a')
			file:close()
			return data
		end
	end

	local function getDataFunc(data, e)
		local tmppath = getCachePath()
		rw(tmppath, data)
		local func, err = loadfile(tmppath)
		if not func then
			print(e)
			error(err)
		end
		return func
	end

	local ty = type(data)
	if ty == 'function' then return EncJMP(string.dump(data, true)) end

	local head = string.byte(data, 1)
	if head == 0x1b then -- 字节码
		local func, err = getDataFunc(data, '字符串混淆失败,"字节码"验证不通过')
		local tmppath = getCachePath()
		local res, err = gg.internal2(func, tmppath)
		if res ~= true then
			print('字符串混淆失败,无法拆卸')
			error(err)
		end
		return EncJMP(rw(tmppath))
	elseif head ~= 0x3b then -- 不是lasm
		local func, err = getDataFunc(data, '字符串混淆失败,"源代码"验证不通过')
		return EncJMP(string.dump(func, true))
	end
	-- rw('0.lasm', data)
	data = string.gsub(data, '\n\t*;[^\n]*', '')
	data = string.gsub(data, '[^\n]+ ; garbage\n', '')
	data = string.gsub(data, '%.maxstacksize %d+\n', '.maxstacksize 250\n')

	if #string.dump(load('RL="RL"'), true) == 79 then
		local arr = {'"[^\n]-"', '-?%d[%w%.]*'}
		local opNames = {
			ADD = true,
			SUB = true,
			MUL = true,
			DIV = true,
			MOD = true,
			POW = true,
			GETTABLE = true,
			SETTABLE = true,
			SELF = true,
			GETTABUP = true,
			SETTABUP = true,
			EQ = true,
			LT = true,
			LE = true
		}
		for i, const in pairs(arr) do
			local A1 = 210 + (i % 3)
			data = string.gsub(data, '(\n(\t*)(%u+) %w+ %w+ )(' .. const .. '\n)', function(p1, tab, name, p2)
				if not opNames[name] then return end
				return '\n' .. tab .. 'LOADK v' .. A1 .. ' ' .. p2 .. p1 .. 'v' .. A1 .. '\n'
			end)

			data = string.gsub(data, '(\n(\t*)(%u+) %w+ )(' .. const .. ')( %w+\n)', function(p1, tab, name, p2, p3)
				if not opNames[name] then return end
				return '\n' .. tab .. 'LOADK v' .. A1 .. ' ' .. p2 .. '\n' .. p1 .. 'v' .. A1 .. p3
			end)

			data = string.gsub(data, '(\n(\t*)(%u+) %w+ )(' .. const .. ')( ' .. const .. '\n)', function(p1, tab, name, p2, p3)
				if not opNames[name] then return end
				local A2 = A1 + 1
				return '\n' .. tab .. 'LOADK v' .. A1 .. ' ' .. p2 .. '\n\n' .. tab .. 'LOADK v' .. A2 .. ' ' .. p3 .. p1 .. 'v' .. A1 .. ' v' .. A2 .. '\n'
			end)
		end
	end

	---[[
	
	function getRandom(n) 
    local t = {
        "0","1","2","3","4","5","6","7","8","9",
        "a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
        "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
        "🉑","❄","⚡","💥","✨","🌈","💫","💧","☁️","☔","🌞","🎊","🎈","🦄","🌺","🌼","🦀️","🌹","💐","🥀","🍁","☀️","🌤️","⛅","🌥️","☁️","🌦️","🌧️","⛈️","🌩️","🌨️","❄️","☔","🌈","🍒","🤍","❤️","💛","🧡","💚","💙","💜","🧸","🖤","💕","💞","💓","💗","💖","💝","🍎","🍆","🐸","🐷","🦁","🐯","🦊","🐬","🐣","🐞","🐳","🐿️",
        '😂', '🌚', '🌝', '🙄', '🙃', '😊', '😍', '😘', '😏', '😱', '😭', '😳', '😒', '🙈', '🙊', '🙉', '🌹', '❤️', '👍', '👌', '🤔', '🌈', '🤳', '🦄', '🖤', '🐮','🇦', '🇧', '🇨', '🇩', '🇪', '🇫', '🇬', '🇭', '🇮', '🇯', '🇰', '🇱', '🇲', '🇳', '🇴', '🇵', '🇶', '🇷', '🇸', '🇹', '🇺', '🇻', '🇼', '🇽', '🇾', '🇿'
    }    
    local s = ""
    for i =1, n do
        s = s .. t[math.random(#t)]        
    end;
    return s
end;

        num1 = math.random(0,255)
        str_enc = function(str)
            local t = {string.byte(str, 1, -1)}
            for i, v in pairs(t) do
                t[i] = string.format('\\x%02X',v ~ num1)
            end
            str = table.concat(t)
            return str
        end
        
suiji = getRandom(15) .. string.char(math.random(128,255))

	local function constenc(...)
		local data = ...
		if not string.find(data, '\n\t*%.line 0\n') then return end

		-- local function getRandomStr(max)
		-- 	local t = {}
		-- 	for i = 1, max do t[i] = math.random(0, 255) end
		-- 	return string.char(table.unpack(t))
		-- end

		local keytext = suiji
		local key = {string.byte(keytext, 1, -1)}
		local keyL = #key
		local cache = {}
		local function xor(s)
			local res = cache[s]
			if not res then
				local t = {string.byte(s, 1, -1)}
				local t2 = {}
				for i = 1, #t do
					local v = t[i]
					local v2 = v ~ key[(i - 1) % keyL + 1]
					t2[i] = v2
				end
				res = string.format(string.rep('\\x%02X', #t2), table.unpack(t2))
				cache[s] = res
			end
			return res
		end
		local function loadxor(s)
			local f, e = load('return ' .. s)
			if not f then return end
			return xor(f())
		end

		data = string.gsub(data, '(\n(\t*)LOADK (%w+)[ ]+)("[^\n]-")\n', function(p1, tab, p2, p3)
			local s = loadxor(p3)
			if not s then return end
			return p1 .. '"' .. s .. '"' .. '\n\n' .. tab .. 'GETTABLE ' .. p2 .. ' ' .. p2 .. ' ' .. p2 .. '\n'
		end)

--变量加密

XWL=[===[
local string = string
local table = table
local key = {string.byte(]===].."'"..suiji.."'"..[===[, 1, -1)}
local keyL = #key

local char = {}
for i = 0, 255 do
    char[i] = string.char(i)
end

local cache = {}
local function xor2(s)
    local res = cache[s]
    if not res then
        local t = {string.byte(s, 1, -1)}
        res = ''
        for i = 1, #t do
            res = res .. char[(t[i] ~ key[(i - 1) % keyL + 1])]
        end
        cache[s] = res
    end
    return res
end

debug.setmetatable(string, {
    __index = function(a, b)
        return xor2(b)
    end
})

]===]
--固定写法

        SS_San='local SS_San=function(t)t={string.byte(t,1,-1)}for i,v in pairs(t)do t[i]=v~'..num1..' end return string.char(table.unpack(t)) end\n'

XWL = string.dump(load(XWL),true)
jmdm = str_enc(XWL)
decryption = SS_San.."local data = SS_San('JMDM')\n\nlocal jiazai = load(data)\n\npcall(jiazai)\n"
XWL = string.gsub(decryption, "JMDM", jmdm)
XWL = string.dump(load(XWL),true)

    data = string.gsub(data, '\n\t*%.line 0\n', function(p1)
        return p1 .. '\nGETTABUP v0 u0 "load"\nLOADK v1 "' .. toLuaHex(XWL or '') .. '"\nCALL v0..v1 v0..v0\nCALL v0..v0\n'
    end)
    
		return data
	end
	
	data = constenc(data)
	-- ]]
	
	
    ret = ""
    if retture then
    ret=string.rep("\nRETURN\n",3)
    end
if jmpture == false then
local function JMPhx(lasm)
		lasm = string.gsub(lasm, '%s*\n%s*', '\n')

		local iszl = false
		local upvalueList = {}
		local zlList = {}

		for line in string.gmatch(lasm, '[^\n]+') do
			if iszl then
				zlList[#zlList + 1] = line
			else
				iszl = string.match(line, '^%u+')
				if iszl then
					zlList[#zlList + 1] = line
				else
					upvalueList[#upvalueList + 1] = line
				end
			end
		end

		local ljzl = {
			EQ = true,
			LT = true,
			LE = true,
			TEST = true,
			TESTSET = true,
		    LOADBOOL = true
		}

		local function JmpHx(zlList)
			local initPc = 10000000
			local pc = initPc
			local jumpList = {}
			local randomList = {}

			local function appendRandomList(content) randomList[#randomList + 1] = content end

			local function getJumpZl(sbx) return '\nJMP :goto_' .. (sbx or (pc + 1)) .. '\n' end

			local isTforloop = false -- TFORLOOP    -- 如果为false, 则是普通JMP
			if isTforloop then function getJumpZl(sbx) return '\nTFORLOOP v222 :goto_' .. (sbx or (pc + 1)) .. '\n' end end

			local jmpText = getJumpZl()

			local function getRandomJmp() return getJumpZl(math.random(initPc, pc)) end

    Confu=function()
        local Vr={}
        local zl={"SUB", "ADD", "MUL", "MOD"}
        for i=1,math.random(0,1) do
            Vr[#Vr+1] = zl[math.random(1,#zl)].." v"..math.random(20,50).." v"..math.random(40,80).." v"..math.random(30,60)
        end
        table.insert(Vr, 1, ("LOADBOOL v"..math.random(20,120).." 20\n"):rep(math.random(0,1)))
        return table.concat(Vr,"\n")
    end
    
			local function appendZl2(zl)
				jumpList[#jumpList + 1] = ':goto_' .. pc .. '\n' .. zl .. "\n" .. Confu() .. ret
				pc = pc + 1
			end

			local function appendZl(zl, sbx) return appendZl2(zl .. getJumpZl(sbx)) end

			local function getZlName(zl) return string.match(zl, '^%u+') end

			local function formatZL(name, ...)
				local args = {...}
				for i = 1, #args do args[i] = 'v' .. args[i] end
				table.insert(args, 1, name)
				return table.concat(args, ' ')
			end

			local function bait()
				local min = 230
				local max = min + 9
				local A1 = math.random(min, max)
				local B1 = math.random(0, 32)
				appendZl(formatZL('MOVE', A1, B1))

				local B2 = math.random(0, 1)
				appendZl(('LOADBOOL v' .. B1 .. ' ' .. B2 .. ' SKIP_NEXT') .. getRandomJmp())

				local isTrue = B2 > 0
				if math.random(0, 1) == 0 then
					appendZl(('TEST v' .. B1 .. ' ' .. (isTrue and '0' or '1')) .. getRandomJmp())
				else
					appendZl(('TEST v' .. B1 .. ' ' .. (isTrue and '1' or '0')))
				end
				appendZl(formatZL('MOVE', B1, A1))
			end

			----------------------------------------------------------------
			appendRandomList('OP[8276]0x7682\nOP[8276]0x7682\n')
			if isTforloop then appendRandomList('LOADBOOL v223 1') end
			appendRandomList(getJumpZl(pc))

			appendZl('NOT v241 v240')
			appendZl('NOT v242 v241')
			appendZl('TESTSET v200 v241 1')

			local islj = false

			for i = 1, #zlList do

				local zl = zlList[i]
				local name = getZlName(zl)

				if islj then
					appendZl(zl)
					islj = false
				elseif ljzl[name] then
					islj = true
					if math.random(0, 1) == 0 then bait() end
					appendZl(zl .. getJumpZl() .. zl .. getRandomJmp(), pc + 2)
				elseif false then
					appendZl(zl)
				elseif name == 'LOADBOOL' and string.find(zl, 'SKIP_NEXT') then
					islj = true
					if math.random(0, 1) == 0 then bait() end
					appendZl(zl .. getJumpZl() .. zl .. getRandomJmp(), pc + 3)

				elseif name == 'JMP' then
					local goto_ = string.match(zl, '^%s*JMP (:goto_%d+)')
					if goto_ then zl = string.gsub(jmpText, ':goto_%d+', goto_) end
					appendZl2(zl .. getRandomJmp())

				elseif name == 'RETURN' or name == 'TAILCALL' then
					appendZl2(zl)

				elseif name == 'LOADK' then
					local A0
					local A1 = math.random(230, 239)
					local zl2 = string.gsub(zl, 'LOADK v(%d+)', function(A)
						A0 = A
						return 'LOADK v' .. A1
					end)

					appendZl(zl2)

					if math.random(0, 1) == 0 then
						appendZl('TESTSET v' .. A0 .. ' v' .. A1 .. ' 1')
					else
						appendZl(('TESTSET v' .. A0 .. ' v' .. A1 .. ' 0') .. getRandomJmp())
						appendZl(formatZL('MOVE', A0, A1))
					end

					local random = math.random(0, 2)
					if random == 1 then
						appendZl(formatZL('EQ 1', A0, A1))
					elseif random == 2 then
						appendZl(formatZL('EQ 0', A0, A1) .. getRandomJmp())
					end

				else
					appendZl(zl)
					bait()
				end
			end

			repeat
				local length = #jumpList
				if length == 0 then break end
				length = 131000 < length and 131000 or length
				appendRandomList(table.remove(jumpList, math.random(1, length)))
				 appendRandomList(table.remove(jumpList, 1))
			until false

			appendRandomList(':goto_' .. pc .. '\nRETURN')
			return randomList
		end

		zlList = JmpHx(zlList)
		return table.concat(upvalueList, '\n') .. '\n' .. table.concat(zlList, '\n')
	end

	local isMain = false
	data = string.gsub(data, '(\n\t*%.maxstacksize %d+\n)(.-RETURN%s*\n)(; %]=========%])', function(p1, p2, p3)
		isMain = true
		return p1 .. JMPhx(p2) .. p3
	end)

	if not isMain then data = string.gsub(data, '(\n\t*%.maxstacksize %d+\n)(.-)(\n\t*%.[ef][nu][dn][c ][; ][^\n]+)', function(p1, p2, p3) return p1 .. JMPhx(p2) .. p3 end) end
end

Tab={}
function Tab.Table_Rand(t)
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

function Tab.table_maxn(t)
    local mn = nil;
    for k, v in pairs(t) do
        if(mn == nil) then
            mn = v
        end
        if mn < v then
            mn = v
        end
    end
    return mn
end--table最大值

JMP={}
local ZL = {
    ['LOADKX'] = 2,
    ['EXTRAARG'] = 2,
    ['MOVE'] = 2,
    ['UNM'] = 2,
    ['BNOT'] = 2,
    ['NOT'] = 2,
    ['LEN'] = 2,
    ['ADD'] = 2,
    ['SUB'] = 2,
    ['MUL'] = 2,
    ['DIV'] = 2,
    ['IDIV'] = 2,
    ['MOD'] = 2,
    ['POW'] = 2,
    ['BXOR'] = 2,
    ['BOR'] = 2,
    ['BAND'] =2,
    ['SHL'] = 2,
    ['SHR'] = 2,
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
    ['GETTABUP'] = 2,
    ['SETTABUP'] = 2,
    ['CLOSURE'] = 2,
    ['RETURN'] = 2,
    ['FORLOOP'] = 2,
    ['FORPREP'] = 2,
    ['TFORLOOP'] = 2,
}
function JMP.Disloc(Tran,free)
    local Pic = {"🦀","🎂","🍭","🍡","🍟","🥤","🍧","🍸","🦑","🥛","🍤","🌯","🥪","🥘","🥩","🍝","🥗","🥞",'🍑','🍊', '🍅', '🍎', '🍐', '🥝', '🍆', '🥒', '🥚️', '🍥', '🥥', '🍇', '🥦', '🍠', '🥔',"🉑","❄","⚡","💥","✨","🌈","💫","💧","☁️","☔","🌞","🎊","🎈","🦄","🌺","🌼","🦀️","🌹","💐","🥀","🍁","☀️","🌤️","⛅","🌥️","☁️","🌦️","🌧️","⛈️","🌩️","🌨️","❄️","☔","🌈","🍒","🤍","❤️","💛","🧡","💚","💙","💜","🧸","🖤","💕","💞","💓","💗","💖","💝","🍎","🍆","🐸","🐷","🦁","🐯","🦊","🐬","🐣","🐞","🐳","🐿️",
        '😂', '🌚', '🌝', '🙄', '🙃', '😊', '😍', '😘', '😏', '😱', '😭', '😳', '😒', '🙈', '🙊', '🙉', '🌹', '❤️', '👍', '👌', '🤔', '🌈', '🤳', '🦄', '🖤', '🐮','🇦', '🇧', '🇨', '🇩', '🇪', '🇫', '🇬', '🇭', '🇮', '🇯', '🇰', '🇱', '🇲', '🇳', '🇴', '🇵', '🇶', '🇷', '🇸', '🇹', '🇺', '🇻', '🇼', '🇽', '🇾', '🇿'}
    local Star = 0
    Confu123=function()
        local Vr={}
        local zl={"SUB", "ADD", "MUL", "MOD"}
        for i=1,math.random(0,1) do
            Vr[#Vr+1] = zl[math.random(1,#zl)].." v"..math.random(20,50).." v"..math.random(40,80).." v"..math.random(30,60)
        end
        table.insert(Vr, 1, ("LOADBOOL v"..math.random(20,120).." 20\n"):rep(math.random(0,1)))
        return table.concat(Vr,"\n")
    end
    Confu=function()
        if math.random(0,3)==0 then
            return "TFORLOOP v229 :goto_999999"
        else
            return ""
        end
    end
    local Resver
	function Resver()
	    Star = Star + 1
	    if Star > #Pic then
	        Star = 1
	    end
	    local Tab = {}
	    local b = gg.bytes(Pic[Star])
        local tab = {}
        for k,v in pairs(b) do
            table.insert(tab, 1, string.format("%x",v))
        end
        tab = table.concat(tab)
            tab = tab:gsub("........",function (x)
            table.insert(Tab, 1, "OP[48] 0x" .. x .. "\n")
        end,1)
        return "\n" .. table.concat(Tab) .. "\n"
    end
    if not free then
        Resver=function()
            return "\n"
        end
    end
    gg.toast("正在进行JMP错位...")
    Tran = Tran:gsub("; .local v[^\n]+\n",""):gsub("\n%s*; .end local v[^\n]+",""):gsub("\n%s+","\n")
    Tran = Tran:gsub("maxstacksize (%d+)(.-RETURN[^\nv]+)\n",function(max,str)
        if #str>100 then
            local tre_Z = {}
            local num = 1000000
            local tre_X = {}
            local tre_V = {}
            str = str:gsub("[^\n]+",function(s)
                zl = s:match("%S+")
                local Dt,tD,DT,HX = nil, nil, nil, nil
                if zl == ".upval" or zl == ".line" then
                    tre_Z[#tre_Z+1] = s
                    tD = true
                end
                if zl == "LOADK" and HX == nil then
                    num = num+1
                    tre_V[#tre_V+1] = ":goto_" .. num .. "\n" .. s .. "\nFORPREP v246 :goto_" .. (num+1).. "\n"
                    num = num+1
                    Dt = true
                end
                if ZL[zl] then
                    num = num+1
                    if zl == "RETURN" and s:find("v") == nil then
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s
                        DT=true
                    else
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s .. "\nFORPREP v246 :goto_" .. (num+1) .. Resver() .. Confu() .. "\n\n" .. Confu123() .. ret
                        num = num+1
                        Dt = true
                    end
                end
                if Dt then
                    return "TFORLOOP v229 :goto_" .. (num-1) .. "\n:goto_" .. num
                elseif tD then
                    return ""
                elseif DT then
                    return "TFORLOOP v229 :goto_" .. num
                else
                    return s
                end
            end)
            
            str = ":goto_1000000\n" .. str
            local system = {}
            for i in str:gmatch(":goto_%d+.-TFORLOOP v229 :goto_%d+") do
                system[#system+1]=i
            end
            str=table.concat(Tab.Table_Rand(system),"\n")
            return "maxstacksize 250\n" .. table.concat(tre_Z,"\n") .. "\nTFORLOOP v229 :goto_999999\nEQ 0 v230 v230\nTAILCALL v0\nLOADBOOL v230 1\nLOADK v246 1\nLOADK v247 1\nLOADK v248 1\nFORPREP v246 :goto_1000000\nFORPREP v246 :goto_1000000\n" .. table.concat(Tab.Table_Rand(tre_X),"\n") .. "\n" .. str .. "\n" .. table.concat(Tab.Table_Rand(tre_V),"\n")  .. "\nRETURN\n:goto_999999\nJMP :goto_999999\n"
        else
            return "maxstacksize "..max..str.."\n"
        end
    end)
    Tran = Tran:gsub("\n%s+","\n")
    return Tran
end

if jmpture == true then
data = JMP.Disloc(data,true)
end

	local A = os.time()
	data = string.gsub(data, '\n\t*%.line 0\n', function(p1) return p1 .. '\nCLOSURE v0 F' .. A .. '\n\nVARARG v1\n\nTAILCALL v0\n\n.func F' .. A .. '\n.source ""\n.linedefined 0\n.lastlinedefined 0\n.numparams 0\n.is_vararg 1\n.maxstacksize 250\n.upval u0 nil ; u0\n' end)

	data = data .. '\n\n.end\n'
	-- rw('2.lasm', data)
		
	data = string.gsub(data, '\n\t*%.line 0\n', function(p1) return p1 .. '\nLOADK v0 "' .. toLuaHex(UI or '') .. '"\n' end)

	data = data:gsub("\n%s+","\n")

	local path = getCachePath()
	local func, err = getDataFunc(data, '字符串混淆失败,无法组装混淆后的数据')

	-- gg.internal2(func, path)
	data = string.dump(func, true)
		
data = string.gsub(data,'\x9F\x3E\x00\x01','\x24\x00\x00\x00')

    zjmhx = function()
        local tab = {}
        for i = 1, 12 do
            tab[i] = string.char(math.random(0, 255))
        end
        return table.concat(tab)
    end
    data = string.gsub(data, string.rep(string.char(0x1F, 0x00, 0x80, 0x00), 3), zjmhx)

data=string.gsub(data,string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
				string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
data=string.gsub(data,string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA), function()
			return string.char(math.random(200, 255), math.random(200, 255), math.random(200, 255), math.random(200, 255), 
						math.random(200, 255), math.random(200, 255), math.random(200, 255), math.random(200, 255), 0xFA, 0xFA, 0xFA) end)
              
data,error=data:gsub(string.char(0x1B,0x00,0x00, 0x00, 0x17, 0x00 ,0x00 ,0x80,0x01),string.char(0x1B, 0x00, 0x00, 0x00 ,0x17, 0x00 ,0x00 ,0x80 ,0x17))

data,error=data:gsub(string.char(0x1B,0x00,0x00, 0x00, 0x17, 0x40 ,0x00 ,0x80,0x01),string.char(0x1B, 0x00, 0x00, 0x00 ,0x17, 0x40 ,0x00 ,0x80 ,0x99))

data,error=data:gsub(string.char(0x17 ,0x80 ,0xFE ,0x7F ,0x06),
string.char(0x17 ,0x80 ,0x1B ,0x7F ,0x06))

data,error=data:gsub(string.char(0x1F ,0x00 ,0x80 ,0x00 ),
string.char(0x1F ,0x00 ,0x80 ,0xAB))

	data = string.gsub(data, string.rep('\x82\x76\x00\x00', 2), function()
		local str1 = '\x23\xfe\xea\x77'
		local str2 = '\x23' .. string.char(math.random(253, 253), math.random(234, 234), math.random(0, 255))
		return str1 .. str2
	end)
	data = string.gsub(data, '\x82\x76\x00\x00', function() return '\x23' .. string.char(math.random(127, 253), math.random(0, 255), math.random(0, 255)) end)
	local func, err = getDataFunc(data, '字符串混淆失败,"82 76 00 00"')
	-- gg.internal2(func, path)
	return data
end

FY=[===[

for i, v in pairs(_ENV) do
        i = _ENV[i]
        if type(i) == "table" then    
        for m, n in pairs(i) do
        if type(i[m]) == "function" then
        local zhuangtai=pcall(debug.getlocal,i[m],0,1)
        while not zhuangtai do
        print("╾╾╾╾╾❤⚠.警告.⚠❤╾╾╾╾╾\n检测破解!\n请正常执行脚本!\n支持版本:91.0~101.1\n".."╾╾╾╾╾✨By伤感神✨╾╾╾╾╾")
        os.exit() 
        end        
    end
end
        elseif type(i) == "function" then
        local zhuangtai=pcall(debug.getlocal,i,0,1)        
        while not zhuangtai do
        print("╾╾╾╾╾❤⚠.警告.⚠❤╾╾╾╾╾\n检测破解!\n请正常执行脚本!\n支持版本:91.0~101.1\n".."╾╾╾╾╾✨By伤感神✨╾╾╾╾╾")
        os.exit() 
        end
    end
end

local Table_num={}
local Table_false={}
local Table_true={}
for k,v in pairs(_ENV) do
   if type(v)=="table" and k~="gg" then
      for kk,vv in pairs(v) do
          if type(vv)=="function" then
            local Zhuangtai,Fanhui=pcall(vv,vv)
            --判断false数量
            if not Zhuangtai then
            Table_false[#Table_false+1]=Zhuangtai
            end
            --判断true数量
            if Zhuangtai then
            Table_true[#Table_true+1]=Zhuangtai
            end
            --判断总数量
            Table_num[#Table_num+1]=Fanhui
            end
        end
    end
end
while #Table_false ~= "110" or not Table_false or #Table_num ~= "125" or not Table_num or #Table_true ~= "25" or not Table_true do
os.exit()
end

while gg.PACKAGE == "catch.Art.Tool.seatch" do
while true do
os.exit(print("工具人破解你妈？"))
end
end
while gg.VERSION == "96.0" do
while true do
os.exit(print("工具人破解你妈？"))
end
end
while gg.BUILD == "15993" do
while true do
os.exit(print("工具人破解你妈？"))
end
end
local dZvT=string.rep(" ",1048576)sOaJ={}for cInW=1,1024 do sOaJ[cInW]=dZvT end local dZvT=string.rep(" ",1048576)sOaJ={}for cInW=1,1024 do sOaJ[cInW]=dZvT end for dLrV, wNjO in pairs({gg.alert,gg.bytes,gg.copyText,gg.searchAddress,gg.searchNumber,gg.toast})do pcall(wNjO,sOaJ)end dZvT=nil
for i=1,666 do loadfile(string.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107)) end


--Art修改器防御
while string.find(gg.EXT_CACHE_DIR,"com.Art.Tool") do
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
local Art_Hook=function(Chan)
Blianliang = ""
for i = 1, Chan do
num = math.random(1, 26)                       
if num % 2 == 0 then
Blianliang = Blianliang .. string.char(num + 64)
else
Blianliang = Blianliang .. string.char(num + 96)
end
end
return Blianliang
end
for k=1,500 do
_ENV[Art_Hook(k)]="Hook Char"
end
local Jishuan={}
local function hook()
Jishuan[#Jishuan+1]=""
end
local Fanhui = debug.sethook(hook, "r")
Rep=string.rep("log你妈呢？\n",1048576)
local List={
["string"]=2,
["io"]=2,
["os"]=2,
["math"]=2,
["table"]=2
}
for i, v in pairs(List) do
for k,l in pairs(_ENV[i]) do
pcall(l,{Rep})
end
end

]===]

FY2 = [===[

local Detection=gg.searchNumber
gg.searchNumber=function(...)
local vpn, Rep, time1, time2, rzlog, logFk, logSy, Hour, Montie, Second, search_e, log3, log4, arm
arm={...}
vpn=gg.makeRequest("https://time.tianqi.com/")["headers"]["Date"]
Hour,Montie,Second=vpn[1]:match("(%d+):(%d+):(%d+)")
if Hour=="00" then
Hour=24
end
time1=Hour*3600+Montie*60+Second
rzlog=tonumber("800")
Rep={}
for i=1,rzlog do
Rep[i]=" "
end
logFk=(table.concat(Rep))
for i=1,rzlog do
Rep[i]=logFk
end
logFk=(table.concat(Rep))
while logFk~=string.rep(" ",rzlog^2) and #logFk~=rzlog^2 do
end
while string.rep("a",5)~="aaaaa" do
end
logSy={}
for logTi=1,rzlog do
logSy[logTi]=logFk
end
logFk=nil
log3={_ENV["gg"]["alert"],_ENV["gg"]["bytes"],_ENV["gg"]["copyText"],_ENV["gg"]["searchAddress"],Detection,_ENV["gg"]["toast"]}
for log1, log2 in pairs(log3) do
xpcall(log2,Search,logSy)
end
log4=string.char(rzlog-rzlog)
search_e=(log4):rep(7)
for i=1,22 do 
search_e=search_e..search_e 
end
gg.getResults(0)
gg.editAll(search_e,4)
Detection(search_e,16,false,gg.SIGN_EQUAL,0,-1)
rzlog, logFk={}, {}
for i=1,50 do
logFk[i]=math.random(1,2140000000)
rzlog[logFk[i]]={address=i,flags=4,temp=search_e}
end
rzlog=gg.getValues(rzlog)
vpn=gg.makeRequest("https://time.tianqi.com/")["headers"]["Date"]
Hour,Montie,Second=vpn[1]:match("(%d+):(%d+):(%d+)")
if Hour=="00" then
Hour=24
end
time2=Hour*3600+Montie*60+Second
while time2-time1>1 do
os.exit()
end
return Detection(table.unpack(arm))
end

]===]
if FFY2 then
FY2=""
end

FY3 = [===[

debug.sethook()
local BassF={}
local gg_setRanges=gg.setRanges
_ENV["gg"]["setRanges"]=function(Value)
local Shua=string.rep("0","9999999")
return gg_setRanges(Value.."."..Shua)
end
searchNumber=_ENV["gg"]["searchNumber"]
_ENV["gg"]["searchNumber"]=function(a,b,c,d,e,f,g)
local spit=function(_txt,id)
local index={}
for value in string.gmatch(_txt,"(.-)"..id) do
table.insert(index,value)
end
local en=string.match(_txt,".+"..id.."(.+)")
if string.find(en,":") then
table.insert(index,string.match(en,"(.+):"))
table.insert(index,string.match(en,"(:.+)"))
else
table.insert(index,en)
end
return index
end
local jg, min, max
d=d or gg.SIGN_EQUAL
e=e or 0 f=f or -1
g=g or 0
local rp=("0"):rep(1024^2)
b=b.."."..rp d=d.."."..rp
e=e.."."..rp f=f.."."..rp
g=g.."."..rp
if not tonumber(a) then
local tb={}
a=spit(a,";")
for i, k in pairs(a) do
if k:find(":") then
a=table.concat(a,";")
break
end
if not string.find(k,"[^%$%*,%-%.0123456789:;%?ABCDEFHQRWXabcdefhqrwx~]") then
a[i]=string.rep("0",10000)..k
end
end
if type(a)=="table" then
a=table.concat(a,";")
end
return searchNumber(a,b,c,d,e,f,g)
end
a=tonumber(a)
max = string.rep("0",10000) .. (a - math.random(10,20)) .. "~" .. (a + math.random(10,20))
a = string.rep("0",10000)..a
searchNumber(max, b, c, d, e, f, g)
if gg.getResultsCount()==0 then
return gg.toast("没有搜索到值")
end
local glab, autIL
if gg.getResultsCount()<4 then
glab=gg.getResultsCount()
autIL=math.random(1,glab)
else
glab=math.random(4,5)
autIL=math.random(2,glab-1)
end
local sear = gg.getResults(glab)
for i,k in pairs(sear) do
if i == autIL then
searchNumber(a,b,c,d,e,f,g)
jg = gg.getResults(gg.getResultsCount())
end
gg.loadResults({sear[i]})
searchNumber(k.value, b, c, d, e, f, g)
gg.clearResults()
end
return gg.loadResults(jg)
end
local gg_getResults=gg.getResults
_ENV["gg"]["getResults"]=function(Value)
local Shua=string.rep("0","999999")
return gg_getResults(Shua..Value)
end
_ENV["gg"]["editAll"]=function(a,b)
local sear=gg.getResults(gg.getResultsCount())
if sear[1]==nil then
gg.toast("没有检测到修改值")
end
for i,k in pairs(sear) do
sear[i].value=a
sear[i].flags=b
end
return gg.setValues(sear)
end
local getRangesList=_ENV["gg"]["getRangesList"]
local setValues=_ENV["gg"]["setValues"]
_ENV["gg"]["setValues"]=function(_Tab)
if not _ENV["\180\242"] then
_ENV["\180\242"]=true
getRangesList(string.rep("\000",(1024^2*5)))
end
for i=1,20000 do
BassF[i]={address=1,value=0,flags=16}
end
setValues(BassF)
setValues(_Tab)
setValues(BassF)
end
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
local string_rep = string.rep
string.rep = function(str, n, sep)    
local str2 = string_rep(str, n, sep)
local num = #str * n + (sep and #sep * (n - 1) or 0)
while #str2 ~= num do           
os.exit()
end
return str2
end
while string.find(gg.EXT_CACHE_DIR,"com.ByXEY") do
end
local __index
local LYF_DefEnv = {["输出你🐴"]="看你🐴的ENV"}
local LYF_DefGetYb = {["输出你🐴"]="看你🐴的ENV"}
local LYF_DefGetDg = {["输出你🐴"]="看你🐴的ENV"}
setmetatable(LYF_DefGetDg,{__index = debug.getmetatable})
setmetatable(LYF_DefEnv, {__index = _ENV})
setmetatable(LYF_DefGetYb,{__index = getmetatable})
_ENV=LYF_DefEnv
getmetatable=LYF_DefGetYb
debug.getmetatable=LYF_DefGetDg
debug.setupvalue(debug.getinfo(1)['func'],1,_ENV)

]===]
local select = gg.prompt({'选择脚本:'}, {gg.getFile()}, {'file'})
if not select then
    return os.exit()
end
local file = io.open(select[1])
if not file then
    os.exit()
end

path = select[1]:gsub("(.+)/(.+)",function(x,y)
    CoNe = "[Encryption]-" .. y
    return x .. "/[Encryption]-" .. y
end)

local data = file:read('*a')
file:close()

if fdture then
data = initEncryStrFuntion(data,encrypt)
g.config = {}
g.config.used = {}
g.config.name = g.random.get()
g.config.data = {}
table.insert(g.config.data, table.concat(g.string.data, '\n'))
g.data2 = table.concat(g.config.data, '\n')
data = DEC .. g.data2 .. '\n' .. data
end

if fyture then
data = FY .. FY2 .. FY3 .. data
end

data=string.dump(load(data),true)
local res = gg.internal2(load(data), path)
if not res then print("错误！ 脚本可能出错，请用不带编译的版本进行查错") end
data=io.open(path,"r"):read("*a")

data = data:gsub("linedefined [^\n]+", "linedefined 0")
:gsub("lastlinedefined [^\n]+", "lastlinedefined 0")
:gsub("%.numparams %d+%s+%.is_vararg (%d+)%s+%.maxstacksize %d+", function(vararg)
        if tonumber(vararg)==1 then
            return ".numparams 0\n.is_vararg 250\n.maxstacksize 250"
        else
            return ".numparams 250\n.is_vararg 250\n.maxstacksize 250"
        end
end)

	local func, err = getDataFunc(data, '源码存在异常')
	data = string.dump(func, true)
	data = getInternal2(data) -- 获取拆卸数据
	if not data then error('获取拆卸数据失败') end
	local EncJMP = EncJMP or require('EncJMP')
	data = EncJMP(data)
	    data=data:gsub("Lua"..("."):rep(#"💎"),"Lua".."💎",1)
    data=data:gsub("\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\xFA\x02\x00\x00\x00\x25\x25\x00\x00\x00\x1E\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00","\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\xFA\x05\x00\x00\x00\x25\x25\x00\x00\x00\x00\x00\x00\x00\x1D\x40\x00\x01\x1F\x00\x80\x00\xE4\x00\x80\x00\x01\x00\x00\x00\x04\x33\x00\x00\x00\xE3\x85\xA4\x0A\x0A\x0A\x0A\xF0\x9F\x87\xAA\xC2\xB7\xF0\x9F\x87\xB3\xC2\xB7\xF0\x9F\x87\xA8\xF0\x9F\x94\xB9\xF0\x9F\x92\x8E\x20\xF0\x9F\x87\xBE\x20\xF0\x9F\x87\xBD\x20\xF0\x9F\x92\x8E\x0A\x0A\x0A\x0A\x00\x01\x00\x00\x00",1)
    data=data:sub(0,#data-8).."『伤感』-伤感神\xBF\xFF"

    os.remove(dir .. '/tmp.lua')

io.open(path, 'w'):write(data):close()
gg.alert('加密成功\n\n文件为:' .. path, '确定')