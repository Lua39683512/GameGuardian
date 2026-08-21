local rl = {}
rl.path1 = gg.getFile()
rl.dir1 = string.gsub(rl.path1, string.match(rl.path1, '[^/]*$'), '')
rl.config = gg.EXT_CACHE_DIR .. '/Encrypt_v1.2.cfg'
rl.sel1 = loadfile(rl.config)
if rl.sel1 then
    rl.sel1 = rl.sel1()
else
    rl.sel1 = {rl.dir1}
end
require "MS"
local ASM={["LOADK"]=2,["GETTABUP"]=2}
rl.sel2 = gg.prompt({'请选择操作文件:', '去除联系方式',"是否添加防御(默认取消)"}, rl.sel1, {'file', 'checkbox',"checkbox"})
if not rl.sel2 then
    return false
end
rl.path2 = rl.sel2[1]
if rl.path2 ~= rl.sel1[1] then
    gg.saveVariable(rl.sel2, rl.config)
end
rl.func, rl.error = loadfile(rl.path2)
if not rl.func then
    return gg.alert('脚本加载失败\n\n' .. rl.error)
end
Replace = {}
function Replace.GRB(DATA)
    DATA = DATA:gsub("\\092\\092", "\\\\")
    DATA = DATA:gsub("\\034", "\092\034")
    DATA = DATA:gsub("\\039", "\092\039")
    return DATA
end
function Replace.GRA(DATA)
    DATA = DATA:gsub("\\\\", "\\092\\092")
    DATA = DATA:gsub("\092\034", "\\034")
    DATA = DATA:gsub("\092\039", "\\039")
    return DATA
end
function Replace.GRC(Tx)
    Tx=Tx:gsub("\\092\\092", "\\\\")
    :gsub("\\034", "\034")
    :gsub("\\039", "\039")
    :gsub("\\n", "\n")
    :gsub("\\t", "\t")
    :gsub("\\r", "\r")
    :gsub("\\a", "\a")
    :gsub("\\b", "\b")
    :gsub("\\v", "\v")
    :gsub("\\f", "\f")
    :gsub("([^\\])\\x([0-9a-fA-F][0-9a-fA-F])",function(y,x)
        z = load("hex=\"\\x"..x.."\"")
        if z ~= nil then
            z()
            if hex == nil then
                return y.."\\x"..x
            else
                return y..hex
            end
        else
            return y.."\\x"..x
        end
    end)
    :gsub("([^\\])\\(%d+)",function(y,x)
        z=load("acsii=\"\\"..x.."\"")
        if z ~= nil then
            z()
            if acsii == nil then
                return y.."\\"..x
            else
                return y..acsii
            end
        else
            return y.."\\"..x
        end
    end)
    return Tx
end
rl.w_r = function(path, data)
    local file
    path = tostring(path)
    if not string.find(path, '/') then
        path = rl.dir1 .. path
    end
    if data then
        file = io.open(path, 'w')
        io.output(file)
        io.write(data)
        io.close(file)
    else
        file = io.open(path)
        if file then
            io.input(file)
            data = io.read('a')
            io.close(file)
        end
        return data
    end
end

rl.data = '\n' .. rl.w_r(rl.path2) .. '\n'
Un_know = function(num)
    local zl = {}
    if not num then
        num = math.random(3, 5)
    end
    for x = 1, num do
        zl[#zl+1] = string.char(math.random(1, 255))
    end
    return table.concat(zl)
end

--这是防御
fy=[=[

     --栈层检测
local info = {}
for i = 1, 10 do
    info[i] = debug.getinfo(i + 1)
end
info = #info
--print(info)
while info >10 or info~=10 or debug.getinfo(0) or not debug.getinfo(1) do
print("╾╾╾╾╾❤⚠.警告.⚠❤╾╾╾╾╾\n异常结束!\n请使用正规GG!")
while (true) do
os.exit()
end
end
--与第三方搭配使用的防log
local getinfo = debug['getinfo']
local tables = {}
local strings = {}
local tI = table['insert']
for i, v in pairs(_ENV) do
    i = _ENV[i]
    if type(i) == 'table' then

        for m, n in pairs(i) do
            if type(i[m]) == 'function' then
                tI(tables, getinfo(i[m]))
            end
        end

    elseif type(i) == 'function' then
        tI(tables, getinfo(i))
    elseif type(i) == 'string' then
        tI(strings, i)
    end
end

for i = 1, 100 do
    (function()
        return (function()
            if math.random(0, 1) == 1 then
                repeat
                until debug.getinfo(2).istailcall and math.random(0, 1)==0
            else
                while debug.getinfo(3).istailcall do
                end
            end
        end)()
    end)()
end

local istailcall, isvararg, short_src, source, what = 'istailcall', 'isvararg', 'short_src', 'source', 'what'

for i, v in pairs(tables) do
    local tab = v

    if tab[istailcall] or not tab[isvararg] or tab[short_src] ~= '[Java]' or tab[source] ~= '=[Java]' or tab[what] ~=
        'Java' then
        print({tab, tab.func, tab[istailcall], not tab[isvararg], tab[short_src] ~= '[Java]', tab[source] ~= '=[Java]',
               tab[what] ~= 'Java'})
        hook = true
        break
    end
end
if strings[2] then
    hook = true
end
tables, strings = nil, nil

if hook then
    _ENV = nil
    return false
end

]=]
if rl.sel2[3] then
    rl.data=fy.."\n\n"..rl.data
else
    rl.data=rl.data
end


        num1 = math.random(128,228)
        str_enc = function(str)
            local t = {string.byte(str, 1, -1)}
            for i, v in pairs(t) do
                t[i] = string.format('\\x%02X',v ~ num1)
            end
            str = table.concat(t)
            str = '(rlxor("' .. str .. '"))'
            return str
        end

        rlxor='local rlxor=function(t)t={string.byte(t,1,-1)}for i,v in pairs(t)do t[i]=v~'..num1..' end return string.char(table.unpack(t)) end\n'

--rl.w_r('字符串.lua', rl.data)
-- os.exit()

rl.data=MS:encoding(rl.data, str_enc)
for k, v in pairs({'table', 'debug', 'gg', 'os', 'io', 'bit32', 'utf8', 'string', 'math'}) do
    for kk, vv in pairs(_ENV[v]) do
        rl.data = string.gsub(rl.data, '([^%w_])' .. v .. '%s*%.%s*' .. kk .. '%s*([^%w_])', function(txt1, txt2)
            return txt1 .. '_ENV[' .. str_enc('"' .. v .. '"') .. '][' .. str_enc('"' .. kk .. '"') .. ']' ..
                       txt2
        end)
    end
end

XES=rlxor
rl.data=XES.."\n\n"..rl.data
rl.w_r('字符串.lua', rl.data)
rl.hxcode = ' while ""=="RlRlRR" do RlRlRR="RlRlRR" end '
rl.hxcode = string.rep(rl.hxcode, 1000)
rl.data = rl.hxcode .. rl.data
rl.data = ' while ""=="RlRlRR" do RlRlRR=(function()end)("lRlRlR") end ' .. rl.data

rl.hxcode = '(function() '
rl.hxcode = string.rep(rl.hxcode, 79)
rl.data = rl.hxcode .. rl.data

rl.hxcode = ' end)()'
rl.hxcode = string.rep(rl.hxcode, 79)
rl.data = rl.data .. rl.hxcode

if rl.sel2[2] then
    rl.data=rl.data
else
    rl.data = 'local XR=(function()' .. rl.data .. ' end)([=[' .. [=[



--因光而遇，因遇而知

--仙若 免费版v2.0加密

--加密时间:]=] ..os.date("%Y年%m月%d日%H时%M分%S秒  %A\n")..']=])'
end
rl.func = load(rl.data)
rl.dump = string.dump(rl.func, true, true)
rl.path3 = rl.dir1 .. 'tmp.lasm'
if not gg.internal2(load(rl.dump), rl.path3) then
    return gg.alert('加密失败')
end
rl.data = rl.w_r(rl.path3)
function strdump(data,path2)  
    local jmpdata = {}
	gg.toast("正在混淆区块指令......")
	data=string.gsub(data,"maxstacksize [^\n]*","maxstacksize 250")
	data=string.gsub(data,"linedefined [^\n]*","linedefined 0")
	data=string.gsub(data,"lastlinedefined [^\n]*","lastlinedefined 0")
	data=string.gsub(data,"\n%s+","\n")
	data=string.gsub(data,"%.line 0","")
	for text in string.gmatch(data,"[^\n]+")do
		if text~=""then
			jmptxt1=string.match(text,"%S+")
			if ASM[jmptxt1] then
				jmpdata[#jmpdata+1]="FORPREP v245 GOTO[2]\n"..text.."\nEQ 1 v"..math.random(190,220).." v"..math.random(221,240).."\nFORLOOP v245 GOTO[-3]"
			else
				jmpdata[#jmpdata+1]=text
			end
		end
	end
	data=table.concat(jmpdata,"\n")
	data=string.gsub(data,"(%.upval [^\n]+)\n([^%.][^\n]+)",function(p1,p2)
		return p1.."\nLOADK v245 1\nLOADK v246 1\nLOADK v247 1\n"..p2 
	end)
	return data  
end  
rl.data=strdump(rl.data)
rl.path4 = string.match(rl.path2, '[^%.]+') .. "-[加密].lua"

-- rl.func = load(rl.data)

rl.w_r(rl.path4, rl.data)
rl.func, rl.error = load(rl.data)
if not rl.func then
    return gg.alert('汇编指令混淆失败!\n\n' .. rl.error)
end

rl.data = string.dump(rl.func, true, true)
gg.toast("正在加密二进制区块...")
rl.data = string.gsub(rl.data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
              string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))

rl.data = string.gsub(rl.data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
              string.char(0x00, 0x00, 0x00, 0x00), 1)

rl.data = string.gsub(rl.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x6C, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x00),
              string.char(0x04, 0x00, 0x00, 0x00, 0x00), 1)

rl.data = string.gsub(rl.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x6C),
              string.char(0x04, 0xE9, 0x03, 0x00, 0x00) .. string.rep(string.char(6), 1000))

rl.data = string.gsub(rl.data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x52),
              string.char(0x04, 0x11, 0x27, 0x00, 0x00) .. string.rep(string.char(6), 10000))

rl.qukuai = string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) ..
                string.rep(string.char(0), 32)
rl.data = rl.data:gsub(rl.qukuai,
              string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA) ..
                  string.rep(string.char(0), 24) .. string.char(0x36, 0xB2, 0xBF, 0xFF, 0x83, 0x2B, 0xD8, 0xFF))

rl.path4 = string.match(rl.path2, '[^%.]+') .. "-[加密].lua"

-- rl.func = load(rl.data)

rl.w_r(rl.path4, rl.data)

print("文件保存到:" .. rl.path4)

-- rl.func()
