function suiji()
    local data = ''
    for i = 1, 20 do
        if i % 2 == 0 then
            i = 96 + math.random(1, 26)
        else
            i = 64 + math.random(1, 26)
        end
        data = data .. string.char(i)
    end
    return data
end
local ASM = {
    ['LOADK'] = 2,
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
    ['GETTABUP'] = 2,
    ['SETTABUP'] = 2,
    ['CLOSURE'] = 2
}
local classlist = {
    ['table'] = 1,
    ['debug'] = 1,
    ['gg'] = 2,
    ['os'] = 1,
    ['io'] = 1,
    ['bit32'] = 1,
    ['utf8'] = 1,
    ['string'] = 1,
    ['math'] = 1
}
local yzname = suiji()
local yzpath = suiji()
local yzzhi = suiji()
local opyz = suiji()
local xiaoyan = suiji()
local hssl = 1
local blmcs = 1
local jmpsl = 1
local jmp1 = 1000000
local var = {}
local jmpdata = {}
local codetrue = suiji()
local codenil = suiji()
local codefalse = suiji()
local xunhuan = suiji()
local dataa = suiji()
local ress = suiji()
local sss = suiji()
local ttt = suiji()
local rrr = suiji()
local iii = suiji()
local nnn = suiji()
local ggg = suiji()
local ccc = suiji()
local hhh = suiji()
local aaa = suiji()
local bbb = suiji()
local lll = suiji()
local eee = suiji()
local uuu = suiji()
local nnn = suiji()
local kkk = suiji()
local ppp = suiji()
local shu1 = math.random(2000000, 2500000)
local shu2 = math.random(2000000, 2500000)
local shu3 = 1
local shu4 = 0.5 * 1024
local lasm1 = '_ENV[\\034LLXLLX\\034]=_ENV[\\034LLXLLX\\034]\n'
local lasm2 = '_ENV[\\034XLLXLL\\034]=_ENV[\\034XLLXLL\\034]\n'
local lasm3 = '_ENV[\\034XLXLXL\\034]=_ENV[\\034XLXLXL\\034]\n'
local lasm4 = '_ENV[\\034LXLXLX\\034]=_ENV[\\034LXLXLX\\034]\n'
local lasm1 = lasm1:rep(3000)
local lasm2 = lasm2:rep(3000)
local lasm3 = lasm3:rep(3000)
local lasm4 = lasm4:rep(3000)
local CUK1 = "XLLXLL"
local CUK2 = "LLXLLX"
local CUK3 = "LXLXLX"
local CUK4 = "XLXLXL"
local BIG1 = string.char(0x00, 0x63, 0x35, 0x83, 0x56, 0x84, 0x49, 0x93, 0x43, 0x56):rep(1000)
local BIG2 = string.char(0x00, 0x63, 0x48, 0x93, 0x18, 0x11, 0x13, 0x19, 0x43, 0x77):rep(1000)
local BIG3 = string.char(0x00, 0x63, 0x48, 0x17, 0x99, 0x91, 0x93, 0x87, 0x43, 0x77):rep(1000)
local BIG4 = string.char(0x00, 0x63, 0x81, 0x68, 0x65, 0x80, 0x81, 0x47, 0x46, 0x54):rep(1000)
-- local yanzheng=yzpath.."=gg.getFile() function "..yzname.."("..yzname..") local "..yzzhi.."=\034\034 for k, v in _ENV\091\034pairs\034\093({string.byte("..yzname..", "..shu3..", "..shu4..")}) do v = _ENV\091\034tostring\034\093(v) "..yzzhi.." = "..yzzhi.." .. (v % 50) end return  "..yzzhi.." end "..opyz.."=io.open("..yzpath..",\034r\034):read(\034*a\034) "..opyz.."="..yzname.."("..opyz..") "..xiaoyan.."=io.open(\034"..yzname.."\034,\034r\034) if not "..xiaoyan.." then io.open(\034"..yzname.."\034,\034w\034):write("..opyz..") end "..xiaoyan.."=io.open(\034"..yzname.."\034,\034r\034):read(\034*a\034) if "..opyz.."~="..xiaoyan.." then gg.setVisible(false) for aioso=1,9999999 do for aioso=1,9999999 do gg.toast(\034✨✨✨✨✨✨✨✨✨✨✨✨✨\034) end end return false end"
local yanzheng = "\n" .. yzzhi .. "=\03498765\034 " .. yzzhi .. "=" .. yzzhi .. "+1 " .. yzpath .. "=gg.getFile() " ..
                     xiaoyan .. "=io.open(" .. yzpath .. ",\034r\034):read(\034*a\034) if #" .. xiaoyan .. "+1~=" ..
                     yzzhi .. " then return end\n"
local hook =
    '\nlocal info={} for i=1,100 do info[i]=_ENV\091\034debug\034\093\091\034getinfo\034\093(i+1)end local num=2 local text=_ENV\091\034tostring\034\093(info[1]) while #info~=num or not string.find(text,"%-1%-%-1") or info[num]["istailcall"] or _ENV\091\034debug\034\093\091\034getinfo\034\093(0) do gg.setVisible(false) local file_path=gg.getFile()os.remove(file_path)os.remove(string.match(file_path,("[^/]+$"))) for aioso=1,9999999 do for aioso=1,9999999 do gg.toast("✨✨✨✨✨✨✨✨✨✨✨✨✨") end end return os.exit() end num=nil text=nil info=nil\n'
local weizhicuowu =
    '.upval u1 \034\034 ; u1\n.upval u9 \034\034 ; u2\n.upval u10 \034\034 ; u3\n.upval u0 \034\034 ; u4\n.upval v0 \034\034 ; u5\n.upval u11 \034\034 ; u6\n.upval u12 \034\034 ; u7\n.upval u13 \034\034 ; u8\n.upval u14 \034\034 ; u9\n.upval u15 \034\034 ; u10\n.upval u16 \034\034 ; u11\n'
local weizhicuowu1 =
    '.upval u1 \034\034 ; u1\n.upval u9 \034\034 ; u2\n.upval u10 \034\034 ; u3\n.upval u7 \034\034 ; u4\n.upval u6 \034\034 ; u5\n.upval u11 \034\034 ; u6\n'
local hunxiao = "((function() return(function() return"
local SFF = sss .. "=\\034s\\034\n" .. ttt .. "=\\034t\\034\n" .. rrr .. "=\\034r\\034\n" .. iii .. "=\\034i\\034\n" ..
                nnn .. "=\\034n\\034\n" .. ggg .. "=\\034g\\034\n" .. ccc .. "=\\034c\\034\n" .. hhh .. "=\\034h\\034\n" ..
                aaa .. "=\\034a\\034\n" .. ttt .. "=\\034t\\034\n" .. bbb .. "=\\034b\\034\n" .. lll .. "=\\034l\\034\n" ..
                eee .. "=\\034e\\034\n" .. uuu .. "=\\034u\\034\n" .. nnn .. "=\\034n\\034\n" .. kkk .. "=\\034k\\034\n" ..
                ppp .. "=\\034p\\034\n"
local SF = "local LLXLLX=(function() _ENV[\\034\150\151\152\153\154\155\\034]=function(" .. dataa .. ") " .. ress ..
               "=\034\034 for " .. xunhuan .. " in _ENV\091" .. iii .. ".." .. ppp .. ".." .. aaa .. ".." .. iii .. ".." ..
               rrr .. ".." .. sss .. "\093(" .. dataa .. ")do " .. ress .. "=" .. ress .. ".._ENV[" .. sss .. ".." ..
               ttt .. ".." .. rrr .. ".." .. iii .. ".." .. nnn .. ".." .. ggg .. "][" .. ccc .. ".." .. hhh .. ".." ..
               aaa .. ".." .. rrr .. "](_ENV[" .. ttt .. ".." .. aaa .. ".." .. bbb .. ".." .. lll .. ".." .. eee ..
               "][" .. uuu .. ".." .. nnn .. ".." .. ppp .. ".." .. aaa .. ".." .. ccc .. ".." .. kkk .. "]({" .. dataa ..
               "[" .. xunhuan .. "]+" .. shu1 .. "}))end return " .. ress .. " end end)()\n\n"
local SF2 = "local LLXLLXLLX=(function() _ENV[\\034\160\161\162\163\164\165\\034]=function(" .. dataa .. ") " .. ress ..
                "=\034\034 for " .. xunhuan .. " in _ENV\091" .. iii .. ".." .. ppp .. ".." .. aaa .. ".." .. iii ..
                ".." .. rrr .. ".." .. sss .. "\093(" .. dataa .. ")do " .. ress .. "=" .. ress .. ".._ENV[" .. sss ..
                ".." .. ttt .. ".." .. rrr .. ".." .. iii .. ".." .. nnn .. ".." .. ggg .. "][" .. ccc .. ".." .. hhh ..
                ".." .. aaa .. ".." .. rrr .. "](_ENV[" .. ttt .. ".." .. aaa .. ".." .. bbb .. ".." .. lll .. ".." ..
                eee .. "][" .. uuu .. ".." .. nnn .. ".." .. ppp .. ".." .. aaa .. ".." .. ccc .. ".." .. kkk .. "]({" ..
                dataa .. "[" .. xunhuan .. "]-" .. shu2 .. "}))end return " .. ress .. " end end)()\n\n"
local SF = SFF .. SF .. SF2
function topart(filein)
    local sprits_1, sprits_2 = "", ""
    local files1 = io.open(filein)
    repeat
        text = files1:read('*l')
        if text then
            if text ~= "" and load(text) and not text:find("return") then
                local tempt = suiji()
                sprits_1 = sprits_1 .. "\n _ENV[\034" .. tempt .. "\034]()\n"
                if math.random(1, 2) == 1 then
                    sprits_2 = sprits_2 .. " _ENV[\034" .. tempt .. "\034]=function()\n" .. text .. "\nend\n"
                else
                    sprits_2 = " _ENV[\034" .. tempt .. "\034]=function()\n" .. text .. "\nend\n" .. sprits_2
                end
            else
                sprits_1 = sprits_1 .. text .. "\n"
            end
        end
    until text == nil
    return sprits_2 .. sprits_1
end
ios = function(path, data)
    local file
    if data then
        file = io.open(path, 'w')
        if file then
            io.output(file)
            io.write(data)
            io.close(file)
            gg.alert("✨加密成功啦！输出文件地址✨:\n" .. path .. "\n")
        end
    else
        file = io.open(path, 'r')
        if file then
            data = file:read('*a')
            file:close()
        end
        return (data or '')
    end
end
function env(text)
    for index, value in pairs(_ENV) do
        local types = type(value)
        if types == 'table' and classlist[index] then
            for index2, value2 in pairs(value) do
                for _ = 1, 2 do
                    text = text:gsub('(.)([^%w_])(%s*)' .. index .. '%s*%.%s*' .. index2 .. '(%s*)([^%w_])(.)',
                        function(P1, P2, P3, P4, P5, P6)
                            if (P1 ~= '.' or P2 == '.') and (P5 ~= '.' or P6 == '.') then
                                return P1 .. P2 .. P3 .. " _ENV[" .. enc("\034" .. index .. "\034") .. "][" ..
                                           enc("\034" .. index2 .. "\034") .. "]" .. P4 .. P5 .. P6
                            end
                        end)
                    if hssl % 4 == 0 then
                        gg.toast("标准库加密完成进度：" .. hssl .. "/516。")
                    end
                    hssl = hssl + 1
                end
            end
        end
    end
    return text
end
enc = function(txt1)
    local zhi = ""
    local suijii = math.random(1, 10)
    txt1 = load('return ' .. txt1)
    assert(txt1, '字符加密失败。')
    txt1 = txt1()
    if suijii % 2 == 0 then
        for k, v in pairs({string.byte(txt1, 1, -1)}) do
            v = tostring(v)
            zhi = zhi .. (v - shu1) .. ','
        end
        return " 混淆待替换 _ENV[\\034\150\151\152\153\154\155\\034]{" .. zhi ..
                   "}end)(\034LLXLLX\034)end)(\034LLXLLX\034))"
    else
        for k, v in pairs({string.byte(txt1, 1, -1)}) do
            v = tostring(v)
            zhi = zhi .. (v + shu2) .. ','
        end
        return " 混淆待替换 _ENV[\\034\160\161\162\163\164\165\\034]{" .. zhi ..
                   "}end)(\034LLXLLX\034)end)(\034LLXLLX\034))"
    end
end
local g = {}
last = gg.getFile()
LLX = nil
dzdz = '/storage/emulated/0/Android/llxji.txt'
ddddd = loadfile(dzdz)
if ddddd ~= nil then
    LLX = ddddd()
    ddddd = nil
end
if LLX == nil then
    LLX = {last}
end
LLX = gg.prompt({
    "🇧 🇾    🇱 🇱 🇽 🇶 🇶 1432262828",
    [1] = "✨请选择脚本路径✨:",
    [2] = "✨加密函数名。✨",
    [3] = "✨加密变量名。✨",
    [4] = "✨碎片化。✨",
    [5] = "✨勾选则添加LASM刷取，去除JMP混淆。✨"
}, LLX, {
    [1] = "file",
    [2] = "checkbox",
    [3] = "checkbox",
    [4] = "checkbox",
    [5] = "checkbox"
})
if not LLX then
    return false
end
gg.saveVariable(LLX, dzdz)
gg.setVisible(false)
local path = LLX[1]
local hanshu = LLX[2]
local jmblm = LLX[3]
local suipianhua = LLX[4]
local shualasm = LLX[5]
local path2 = path .. "[LLXLLX].lua"
data = ios(path)
data = string.gsub(data, "\n%s*", "  \n")
data = string.gsub(data, "\\\034", "\\034")
data = string.gsub(data, "\\\039", "\\039")
if suipianhua == true then
    data = topart(path)
end
data = hook .. data
if hanshu == true then
    data = data:gsub("\046value", " \091\034value\034\093  "):gsub("\046address", " \091\034address\034\093  "):gsub(
        "\046flags", " \091\034flags\034\093  "):gsub("\046freeze", " \091\034freeze\034\093  "):gsub("\046start",
        " \091\034start\034\093  "):gsub("\046content", " \091\034content\034\093  "):gsub("print",
        " _ENV\091\034print\034\093  ")
    buzuo = string.match(data, "function%s%s")
    if buzuo ~= nil then
        repeat
            gg.toast("整理函数 function " .. buzuo .. "() 中......")
            data = string.gsub(data, "function%s%s", "function ")
            buzuo = string.match(data, "function%s%s")
        until buzuo == nil
    end
    buzuo1 = string.match(data, "function%s([%w_]+)")
    if buzuo1 ~= nil then
        repeat
            gg.toast("混淆函数 function " .. buzuo1 .. "() 中......")
            local tihuan = suiji()
            data = string.gsub(data, "function%s" .. buzuo1 .. "[^%w_]*%(",
                "_ENV[混淆待替换 '" .. tihuan .. "' end)()end)())]=function(")
            data = string.gsub(data, "[%c%s]" .. buzuo1 .. "[^%w_]*%(",
                "  _ENV[混淆待替换 '" .. tihuan .. "' end)()end)())](")
            data = string.gsub(data, "=" .. buzuo1 .. "[^%w_]*%(",
                "=_ENV[混淆待替换 '" .. tihuan .. "' end)()end)())](")
            buzuo1 = string.match(data, "function%s([%w_]+)")
        until buzuo1 == nil
    end
end
data2 = ""
for text in data:gmatch("[^\n]+") do
    local types = text:match("[\039" .. '\034]')
    if types == "\039" then
        text = text:gsub("\039.-\039", enc)
        text = text:gsub('\034.-\034', enc)
    elseif types == '\034' then
        text = text:gsub('\034.-\034', enc)
        text = text:gsub("\039.-\039", enc)
    end
    data2 = data2 .. "\n" .. text
end
data = data2
data = env(data)
data = data:gsub("true", codetrue)
data = data:gsub("nil", codenil)
data = data:gsub("false", codefalse)
data = codetrue .. "=true\n" .. codenil .. "=nil\n" .. codefalse .. "=false\n" .. data
if jmblm == true then
    string.gsub(data, '([%a_][%w_]*)%s*=', function(name)
        var[name] = true
    end)
    for k, v in pairs(var) do
        local tihuan = suiji()
        data = string.gsub(data, '([^%w_])' .. k .. '([^%w_])', '%1' .. tihuan .. '%2')
        if blmcs % 10 == 0 then
            gg.toast("变量名加密完成进度：" .. blmcs .. "。")
        end
        blmcs = blmcs + 1
    end
end
gg.toast("正在整合脚本......")
data = SF .. data
data = string.gsub(data, "混淆待替换", hunxiao)
if debug == false then
    if shualasm == true then
        data = lasm1 .. lasm2 .. lasm3 .. lasm4 .. data
    end
end
data = yanzheng .. data
data = string.gsub(data, "\\034", "\034")
data = ' (function(...)\n' .. data .. ' end )([===[\n\n' .. [=[

        String Encryption

]=] .. ']===]\n\n) '
io.open(path2 .. "字符串.lua", "w"):write(data)
data = string.dump(load(data), true)
data = gg.internal2(load(data), path2)
io.input(path2, "r")
data = io.read("*a")
for text in string.gmatch(data, '[^\n]+') do
    if jmpsl % 1000 == 0 then
        gg.toast("JMP混淆数量：" .. jmpsl .. "。")
    end
    jmpsl = jmpsl + 1
    if text ~= '' then
        llxtxt1 = string.match(text, '%S+')
        if ASM[llxtxt1] then
            jmp2 = jmp1 + 1
            jmp3 = jmp2 + 1
            text = 'JMP :goto_' .. jmp1 .. '\n:goto_' .. jmp2 .. '\n' .. text .. '\nJMP :goto_' .. jmp3 .. '\nMUL v' ..
                       math.random(1, 10) .. ' v' .. math.random(10, 100) .. ' v' .. math.random(1000, 10000) ..
                       '\n:goto_' .. jmp1 .. '\nJMP :goto_' .. jmp2 .. '\n:goto_' .. jmp3
            jmp1 = jmp3 + 1
        end
        jmpdata[#jmpdata + 1] = text
        jmpdata[math.random()] = text
    end
end
if shualasm == false then
    data = table.concat(jmpdata, '\n')
end
data = data:gsub("numparams [^\n]*", "numparams 250"):gsub("is_vararg [^\n]*", "is_vararg 250"):gsub(
    "maxstacksize [^\n]*", "maxstacksize 250"):gsub("linedefined [^\n]*", "linedefined 0"):gsub(
    "lastlinedefined [^\n]*", "lastlinedefined 0"):gsub("upval%s*v0*%s*nil%s*;%s*%w*",
    "upval v0 nil ; u0\n" .. weizhicuowu, 1):gsub("upval%s*u0*%s*nil%s*;%s*%w*", "upval u0 nil ; u0\n" .. weizhicuowu1,
    1)
data = string.dump(load(data), true)
data = data:gsub(string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
    string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA)):gsub(
    string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00), string.char(0x00, 0x00, 0x00, 0x00)):gsub(string.char(
    0x1B, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x80, 0x01), string.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x80,
    0xFA)):gsub(string.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x40, 0x00, 0x80, 0x01),
    string.char(0x1B, 0x00, 0x00, 0x00, 0x17, 0x40, 0x00, 0x80, 0x1B)):gsub(string.char(0x17, 0x80, 0xFE, 0x7F, 0x06),
    string.char(0x17, 0x80, 0x1B, 0x7F, 0xFF)):gsub(string.char(0x1F, 0x00, 0x80, 0x00),
    string.char(0x1F, 0x00, 0x80, 0xAB))
if shualasm == true then
    data = data:gsub(string.char(4, 7, 0, 0, 0) .. CUK1, string.char(4, 17, 39, 0, 0) .. BIG1):gsub(
        string.char(4, 7, 0, 0, 0) .. CUK2, string.char(4, 17, 39, 0, 0) .. BIG2):gsub(
        string.char(4, 7, 0, 0, 0) .. CUK3, string.char(4, 17, 39, 0, 0) .. BIG3):gsub(
        string.char(4, 7, 0, 0, 0) .. CUK4, string.char(4, 17, 39, 0, 0) .. BIG4)
end
print(#data)
ios(path2, data)
