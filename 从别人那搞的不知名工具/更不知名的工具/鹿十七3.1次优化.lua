local time = os.clock()

Rl_fy1 = [[ local dZvT=string.rep(" ",1048576)sOaJ={}for cInW=1,1024 do sOaJ[cInW]=dZvT end dZvT=nil
for dLrV, wNjO in pairs({gg.alert,gg.bytes,gg.copyText,gg.searchAddress,gg.searchNumber,gg.toast})do pcall(wNjO,sOaJ)end ]]

function Jcip(j)
    local result = ''
    if j == result then
        return 'sC()'
    end
    pd = nil
    for i = 1, #j do
        h = string.byte(j, i)
        if pd == nil then
            pd = 1
            result = result .. h
        else
            result = result .. ',' .. h
        end
    end
    local NR = 'sC(' .. result .. ')'
    return NR
end

function Rl_encrypt_a(DATA)
    local data = " while(function(_)return _ end)()do ::Rl1:: if(function()end)()then goto Rl1 end end "
    local data2 = ""
    for text in DATA:gmatch("[^\n]+") do
        if load(text) then
            text = data .. text
        end
        data2 = data2 .. text .. " "
    end
    DATA = data2
    for i = 1, 3 do
        DATA = DATA:gsub("[^%w_]end[^%w%)_]", function(text)
            return text:gsub("end", "end" .. data)
        end)
    end
    return DATA
end

function Rl_encrypt_b(DATA)
    local types
    for k, v in pairs(_ENV) do
        types = type(v)
        if types == "table" then
            for kk, vv in pairs(v) do
                DATA = DATA:gsub(k .. "%s*%.%s*" .. kk,
                           "_ENV[(function()return '" .. k .. "'end)()][(function()return '" .. kk .. "'end)()]")
            end
        end
    end
    return DATA
end

function Rl_encrypt_c(DATA)
    function string1(text)
        text = table.concat({text:byte(1, -1)}, ",")
        text = "(function()return string.char(" .. text .. ")end)()"
        return text
    end
    DATA = DATA:gsub("'(.-)'", string1)
    DATA = DATA:gsub('"(.-)"', string1)
    local char = "_" .. math.random(10000, 99999)
    DATA = DATA:gsub("string.char", char)
    DATA = char .. "=string.char " .. DATA
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

g.info = gg.prompt({"❤选择脚本❤", "❤脚本碎片化❤", "❤防第三方拦截器调用❤",
                    "❤防止第三方打开脚本❤", "❤全新3.0算法混淆❤", "❤时间差防御log❤",
                    "❤防止hook调用❤", "❤hook返回值丢包❤", "❤防TD反编译❤",
                    "❤dump数据混淆❤", "❤数据回流❤", "❤暴风雪表防御❤"}, g.info,
             {"file", "checkbox", "checkbox", "checkbox", "checkbox", "checkbox", "checkbox", "checkbox", "checkbox",
              "checkbox", "checkbox", "checkbox"})
-- print(g.info)
if g.info then
    gg.saveVariable(g.info, g.config)
    code = io.open(g.info[1], "r"):read("*a")

    code = Rl_fy1 .. code -- 把防御添加进来,待会一起加密
    
    code = code:gsub('\\n', '\n')
    code = code:gsub([[\"]], '"..' .. Jcip('"') .. '.."')
    code = code:gsub([[\']], "'.." .. Jcip("'") .. "..'")

    code = Rl_encrypt_b(code) -- 加密所有类库
    code = Rl_encrypt_c(code) -- 字符串加密
    code = Rl_encrypt_a(code) -- 全局混淆
    -- code = Rl_encrypt_b(code) -- 加密所有类库

    code = "local __=[==[🇧 🇾➨ LSQ 3.0针对防反震撼来袭]==] local __=(function() " .. code .. " end)()"
    io.open("源.lua", "w"):write(code):close()

    xx = load(code)
    if xx then
        spritend = string.dump(xx, true)
        io.open(g.info[1] .. "LSQ.lua", "w"):write(spritend .. "\n##🇧 🇾➨ 鹿十七™️##\n"):close()
        gg.alert("❤您使用了这个脚本❤" .. os.clock() - time .. "秒\n" ..
                     '\n❤欢迎下次使用❤\n\n🔰加密完成\n总共加密:' .. #spritend ..
                     '字节\n❤by——鹿十七为您脚本保驾护航❤')
        print('➿加密成功，脚本保存在：\n➿' .. g.info[1] .. 'LSQ.lua\n\n\n' .. "加密总耗时为" ..
                  os.clock() - time .. "秒")
        xx()
    else
        print("未选择脚本或者出现未知错误❌\n请联系作者\n或者加入反馈群聊进行反馈")
    end
end
