local time = os.time()

Rl_fy1 = [[ local dZvT=string.rep(" ",1048576)sOaJ={}for cInW=1,1024 do sOaJ[cInW]=dZvT end dZvT=nil
for dLrV, wNjO in pairs({gg.alert,gg.bytes,gg.copyText,gg.searchAddress,gg.searchNumber,gg.toast})do pcall(wNjO,sOaJ)end ]]

function Rl_encrypt_a(DATA)
    local data =
        " while(function(_)return _ end)()do ::Rl1:: if(function()end)()then goto Rl1 end _ENV['43052113']=nil end "
    data = data:rep(10)
    DATA = DATA:gsub("[^%w_]end[^%w%)_]", function(text)
        return text:gsub("end", "end" .. data)
    end)
    data = data:rep(100)
    DATA = data .. DATA .. data
    return DATA
end

function Rl_encrypt_b(DATA)
    local types
    for k, v in pairs(_ENV) do
        types = type(v)
        if types == "table" then
            for kk, vv in pairs(v) do
                DATA = DATA:gsub(k .. "%s*%.%s*" .. kk,
                           "_ENV[(function()::Rl3::if nil then goto Rl3 end return '" .. k ..
                               "'end)()][(function()::Rl3::if nil then goto Rl3 end return '" .. kk .. "'end)()]")
            end
        end
    end
    return DATA
end

function suiji()
    local data = ''
    for i = 1, 4 do
        if i % 2 == 0 then
            i = 96 + math.random(1, 26)
        else
            i = 64 + math.random(1, 26)
        end
        data = data .. string.char(i)
    end
    return data
end

function Rl_encrypt_c(DATA)
    ascll_tb = {}
    ascll_name = suiji()
    ascll_data = 'local ' .. ascll_name .. '={'
    ascll_num = 0

    ascll_name2 = suiji()
    ascll_data2 = 'local ' .. ascll_name2 .. '={'
    ascll_num2 = 0

    pianyi1 = math.random(256, 3830)
    pianyi2 = math.random(256, 3830)

    local data, len, DATA2
    -- local char = "_" .. math.random(10000, 99999)
    -- local gsub = "_" .. math.random(100000, 999999)

    function jia(data)
        if data == '' then
            return '"' .. '"'
        end
        data = string.gsub(data, '\\n', '\n')
        data = string.gsub(data, '\\34', '\34')
        data = string.gsub(data, '\\39', '\39')
        config = '{'
        for k, v in pairs({string.byte(data, 1, -1)}) do
            v = tostring(v)
            index = ascll_tb[v]
            if not index then
                ascll_num = ascll_num + 1
                ascll_data = ascll_data .. (v + pianyi1) .. ','
                ascll_tb[v] = ascll_num
                index = ascll_num
            end
            config = config .. (index + pianyi2) .. ','
        end
        config = string.sub(config, 1, -2) .. '}'
        ascll_data2 = ascll_data2 .. config .. ','
        ascll_num2 = ascll_num2 + 1
        return ascll_name2 .. '[' .. ascll_num2 .. ']'
    end

    DATA = string.gsub(DATA, '\\"', [[\34]])
    DATA = string.gsub(DATA, "\\'", [[\39]])

    DATA2 = ""
    for text in DATA:gmatch("[^\n]+") do
        local types = text:match("['" .. '"]')
        if types == "'" then
            text = text:gsub("'(.-)'", jia)
            text = text:gsub('"(.-)"', jia)
        elseif types == '"' then
            text = text:gsub('"(.-)"', jia)
            text = text:gsub("'(.-)'", jia)
        end
        DATA2 = DATA2 .. "\n" .. text
    end
    DATA = DATA2

    ascll_data = string.sub(ascll_data, 1, -2) .. '}'
    ascll_data2 = string.sub(ascll_data2, 1, -2) .. '}'

    jiemiconfig = 'for kkk,vvv in pairs(' .. ascll_name2 .. ')do for kk,vv in pairs(vvv)do ' .. ascll_name2 ..
                      '[kkk][kk]=' .. ascll_name .. '[vv-' .. pianyi2 .. ']-' .. pianyi1 .. ' end end\n'
    jiemiconfig = jiemiconfig .. 'for kk,vv in pairs(' .. ascll_name2 .. ')do ' .. ascll_name2 ..
                      '[kk]=string.char(table.unpack(vv)) end\n'

    config_data = ascll_data .. '\n' .. ascll_data2 .. '\n' .. jiemiconfig .. '\n'

    DATA = config_data .. DATA

    return DATA
end

io.w_r = function(path, data)
    if data then
        file = io.open(path, "w")
        io.output(file)
        io.write(data)
        io.close(file)
    else
        file = io.open(path, "r")
        io.input(file)
        data = io.read("*a")
        io.close(file)
        return data
    end
end

function Rl_encrypt_d(DATA)
    local path = "/sdcard/lasm.lua"
    gg.internal2(load(DATA), path)
    DATA = io.w_r(path)
    DATA = DATA:gsub("linedefined [^\n]*", "linedefined 0")
    DATA = DATA:gsub("lastlinedefined [^\n]*", "lastlinedefined 0")
    DATA = DATA:gsub("numparams [^\n]*", "numparams 250")
    DATA = DATA:gsub("is_vararg [^\n]*", "is_vararg 250")
    DATA = DATA:gsub("maxstacksize [^\n]*", "maxstacksize 250")
    -- io.w_r(path, DATA)

    DATA = string.dump(load(DATA), true)
    DATA = DATA:gsub(string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
               string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))

    DATA = DATA:gsub(string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00), string.char(0x00, 0x00, 0x00, 0x00))

    DATA = DATA:gsub(string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA, 0x00, 0x00, 0x00,
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00),
               string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA, 0x00, 0x00, 0x00, 0x00,
                   0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                   0x00, 0x00, 0x00, 0x36, 0xB2, 0xBF, 0xFF, 0x83, 0x2B, 0xD8, 0xFF))
    return DATA
end

local g = {}
g.last = gg.getFile()
g.info = nil
g.config = '/storage/emulated/0/Android/jl.cfg'
g.data = loadfile(g.config)
if g.data ~= nil then
    g.info = g.data()
    g.data = nil
end

if g.info == nil then
    g.info = {g.last}
end

-- gg.alert("🇧 🇾➨🇱 🇸 🇶\n此版本为3.0版本采用全新优化方式\n反馈群聊:796546632")
-- gg.copyText("796546632")

g.info = gg.prompt({"❤选择脚本❤"}, g.info, {"file"})
-- print(g.info)
if g.info then
    gg.saveVariable(g.info, g.config)
    if not loadfile(g.info[1]) then
        return gg.alert("请选择可执行脚本")
    end

    code = io.w_r(g.info[1]) -- 读取选择的脚本

    code = Rl_fy1 .. code -- 把防御添加进来,待会一起加密
    
    code = Rl_encrypt_b(code) -- 加密所有类库
    code = Rl_encrypt_c(code) -- 字符串加密
    code = Rl_encrypt_a(code) -- 全局混淆

    code = "local __=[==[🇧 🇾➨ LSQ 3.0针对防反震撼来袭]==] local __=(function() " .. code .. " end)()"
    io.w_r("源.lua", code) -- 写出10进制源码

    xx = load(code)
    if xx then
        spritend = string.dump(xx, true, true)
        spritend = Rl_encrypt_d(spritend) -- 反汇编保护
        xx = load(spritend)
        spritend = string.dump(xx, true)
        spritend = spritend:gsub(string.char(0x04, 0x09, 0x00, 0x00, 0x00, 0x34, 0x33, 0x30, 0x35, 0x32, 0x31, 0x31,
                                     0x33, 0x00), string.char(0x04, 0x00, 0x00, 0x00, 0x00))

        io.w_r(g.info[1] .. "LSQ'.lua", spritend .. "\n##🇧 🇾➨ 鹿十七™️##\n")

        gg.alert("❤您使用了这个脚本❤" .. os.time() - time .. "秒\n" ..
                     '\n❤欢迎下次使用❤\n\n🔰加密完成\n\n❤总共加密:' .. (#spritend / 1024) ..
                     'KB\n\n❤by——鹿十七为您脚本保驾护航❤')

        print('➿加密成功，脚本保存在：\n➿' .. g.info[1] .. 'LSQ.lua\n\n\n' .. "加密总耗时为" ..
                  os.time() - time .. "秒")
        xx()
    else
        print("未选择脚本或者出现未知错误❌\n请联系作者\n或者加入反馈群聊进行反馈")
    end
end
