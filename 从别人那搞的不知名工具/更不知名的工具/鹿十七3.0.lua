local time=os.clock()
lq=[[ local info = {}
for i = 1, 10 do
    info[i] = debug.getinfo(i + 1)
end
info = #info
while info ~= 2 or debug.getinfo(0) or not debug.getinfo(1) do
    return 
gg.alert("检测到您使用了第三方打开脚本‼️\n亦或者妄想使用拦截器‼️\n因此触发核心防御\n❤by——鹿十七❤\n略略略你个工具人哼\n我鹿十七看不起你🌝")
end ]]


Rl_fy1=[[ local dZvT=string.rep(" ",1048576)sOaJ={}for cInW=1,1024 do sOaJ[cInW]=dZvT end dZvT=nil
for dLrV, wNjO in pairs({gg.alert,gg.bytes,gg.copyText,gg.searchAddress,gg.searchNumber,gg.toast})do pcall(wNjO,sOaJ)end ]]
Hx = string.char(0, 0, 0, 0, 0, 0):rep(99)
Hxx = string.char(0, 0, 0, 0, 0, 0):rep(87654)
function Delt(t)
    local tab = {}
    local index = 1
    while #t ~= 0 do
        local n = math.random(0, #t)
        if t[n] ~= nil then
            tab[index] = t[n]
            table.remove(t, n)
            index = index + 1
        end
    end
    return tab
end
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
function ZD(code)
    ffdm =
        ' (function() (function() (function() (function()  end)() end)() end)() end)() for i=1,0 do _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() ' ..
            ('goto _M_ '):rep(99) ..
            ' ::_M_:: local i={(_M_|_M_)} if i.i==i.i then i.i=i.i() end end while(true) do while(true) do (function() (function() (function() (function()  end)() end)() end)() end)() break return end (function() (function() (function() (function()  end)() end)() end)() end)() break end'
    b = code
    tab = {b:byte(1, -1)}
    table.sort(tab, function(a, b)
        return a > b
    end)
    K = {}
    for i = 1, #tab do
        if i == 1 then
            table.insert(K, "sC(" .. tostring(tab[i]) .. ")")
        else
            if "sC(" .. tostring(tab[i]) .. ")" == K[#K] then
            else
                table.insert(K, "sC(" .. tostring(tab[i]) .. ")")
            end
        end
    end
    K = Delt(K)
    q = ""
    tab = {b:byte(1, -1)}
    for i = 1, #tab do
        for k, v in pairs(K) do
            if "sC(" .. tostring(tab[i]) .. ")" == v then
                I = ",__k[" .. k .. "]"
            end
        end
        q = q .. I
    end
    q = q:gsub(",", "", 1)
    t = ""
    for i = 1, #K do
        t = t .. "," .. K[i]
    end
    t = "{" .. t:gsub(",", "", 1) .. "}"
    t =
        "load(string.dump(function() do local a=[==[" .. Hx .. "]==] end " .. ffdm .. " __k=" .. t .. "   P={" .. q .. "} " ..
            ffdm .. "  return tC(P,sC()) end))()"
    return t
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


gg.alert("🇧 🇾➨🇱 🇸 🇶\n此版本为3.0版本采用全新优化方式\n反馈群聊:796546632")
gg.copyText("796546632")

g.info = gg.prompt({
"❤选择脚本❤",
"❤脚本碎片化❤",
"❤防第三方拦截器调用❤",
"❤防止第三方打开脚本❤",
"❤全新3.0算法混淆❤",
"❤时间差防御log❤",
"❤防止hook调用❤",
"❤hook返回值丢包❤",
"❤防TD反编译❤",
"❤dump数据混淆❤",
"❤数据回流❤",
"❤暴风雪表防御❤"
},g.info,{"file","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
if g.info == nil then
else
    gg.saveVariable(g.info, g.config)
    code = io.open(g.info[1], "r"):read("*a")
    code = lq..Rl_fy1..code
    code = code:gsub('\\n', '\n')
    code = code:gsub([[\"]], '"..' .. Jcip('"') .. '.."')
    code = code:gsub([[\']], "'.." .. Jcip("'") .. "..'")
    p = '"(.-)"'
    for i in code:gmatch(p) do
        code = code:gsub(p, tostring(ZD(i)), 1)
    end
    p = "'(.-)'"
    for i in code:gmatch(p) do
        code = code:gsub(p, tostring(ZD(i)), 1)
    end
    -- io.open("/sdcard/msbak", 'w'):write(
    --     )
    xx = load("local __=[==["..[[


BY——鹿十七3.0 针对防反系列 感谢使用
        喵~
    ﾍ^ヽ､　 /⌒､　　_,_
  　 |　　￣7　 (⌒r⌒7/
  　 レ　　　＼_/￣＼_｣
  ＿/  　　　　　　　 {
  _ﾌ　●　　　　　　　ゝ
  _人　　　ο　　●　 ナ
  　 `ト､＿　　　　　メ
  　　　 /　 ￣ ーィﾞ
  　　 〈ﾟ･｡｡｡･ﾟ 　丶
  ]].."]==] local __=(function() sC=string.char tC=table.concat " .. code .. " end)()")
    if xx then
        spritend = string.dump(xx, true)
        io.open(g.info[1] .. "LSQ.lua", "w"):write(spritend .. "\n##🇧 🇾➨ 鹿十七™️##\n")
        gg.alert("❤您使用了这个脚本❤"..os.clock()-time.."秒\n"..'\n❤欢迎下次使用❤\n\n🔰加密完成\n总共加密:' .. #spritend .. '字节\n❤by——鹿十七为您脚本保驾护航❤')
        print('➿加密成功，脚本保存在：\n➿' .. g.info[1] .. 'LSQ.lua\n\n\n'.."加密总耗时为"..os.clock()-time.."秒")
        xx()
        else
        print("未选择脚本或者出现未知错误❌\n请联系作者\n或者加入反馈群聊进行反馈")
end
end