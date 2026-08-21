gg.require('88.0', 666)
kt =
    [=[ if(nil)then while(1.8e308)do local i={nil,}for i=-1.8e308,1.8e308 do(function(...)end)({1.8e308,-1.8e308,nil,})end end end ]=]
HS = kt
FY = HS
app = FY
sin = app
for i = 1, 6 do
    sin = sin .. sin .. sin
end
FY = sin .. FY .. sin
local xuan = gg.prompt({"选择文件", "随机算法"}, {gg.getFile(),true}, {"file", "checkbox"})
if xuan == nil then
    return print("您已取消加密")
end
filepath = xuan[1] .. '.WSZ.lua'
file = io.open(xuan[1], 'r')
jz = file:read('*a') -- 读取脚本源码
file:close()
file = io.open(filepath, "w")
file:write(jz) -- 写入防御源码
file:close()

if xuan[2] == false then
    xxh = [["]]
    xxhh = [[']]
    file = io.open(filepath)
    code = file:read("*a")
    file:close()
    function X(code)
        res = ''
        for i in ipairs(code) do
            res = res .. string.char(code[i])
        end
        return res
    end
    code = string.gsub(code, X({92, 110}), "\n")
    code = string.gsub(code, X({92, 114}), "\r")
    code = string.gsub(code, X({92, 116}), "\t")
    p = xxh .. "(.-)" .. xxh
    for i in code:gmatch(p) do
        i = "WSZ({" .. table.concat({i:byte(0, -1)}, ",") .. "})"
        n = n and n + 1 or 1
        code = code:gsub(p, i, 1)
    end
    if n then
        io.open(filepath, "w"):write((mf or "") .. code):close()
        p = xxhh .. "(.-)" .. xxhh
        mf =
            sin .. "function WSZ(code)res=''for i in ipairs(code)do res=res..string.char(code[i])end return res end " ..
                sin
        for i in code:gmatch(p) do
            i = "WSZ({" .. table.concat({i:byte(0, -1)}, ",") .. "})"
            n = n and n + 1 or 1
            code = code:gsub(p, i, 1)
        end
        io.open(filepath, "w"):write((mf or "") .. code):close()
    end
end

if xuan[2] == true then
    function GT(path)
        function mi64()
            local zm64 = {"a", "b", "c", "d", "e", "f", "g", "h", "m", "z", "k", "l", "i", "o", "p", "s", "j", "z", "x",
                          "v", "n", "y", "t", "r", "u"}
            local hs = ""
            local sz = ""
            local lp = 0
            local wll = math.random(32, 64)
            for i = 1, wll do
                local sj = math.random(1, 25)
                local kl = math.random(1, 4)
                local ko = math.random(1, 6)
                if kl % 2 == 0 and i > 1 then
                    zm66 = zm64[sj]
                else
                    zm66 = string.upper(zm64[sj])
                end
                if ko % 3 == 0 and lp < 2 and i > 1 then
                    local zm66 = "_"
                    local lp = lp + 1
                end
                hs = hs .. zm66
                sj, kl, ko = 0, 0, 0
            end
            lp = 0
            return hs
        end
        ssh = '"'
        XXLS = {}
        jb = path
        sc = jb .. ".xx.lua"
        file = io.open(jb, "r")
        jz = file:read('*a')
        file:close()
        file = io.open(sc, "w")
        file:write(jz)
        file:close()
        local data = io.open(sc, "rb"):read("*a")
        data = data:gsub("'", ssh)
        io.open(sc, "w+"):write(data):close()

        file = io.open(sc)
        code = file:read("*a")
        p = ssh .. '(.-)' .. ssh
        w = 0
        for i in code:gmatch(p) do
            w = w + 1
            XXLS[w] = i

            i = "WSZ[" .. w .. "]"

            n = n and n + 1 or 1
            code = code:gsub(p, i, 1)
        end
        XXLSS = "{" .. tostring(XXLS):gsub('%table(.-%)', ''):sub(6, -1)
        XXLSS = XXLSS:gsub("\\n", "\n")
        XXLSS = XXLSS:gsub("\\r", "\r")
        XXLSS = XXLSS:gsub("\\t", "\t")
        xxhh = "'"
        pp = xxhh .. "(.-)" .. xxhh
        s5 = ""
        sj = math.random(1000, 1000000)
        sjj = math.random(0, 1)
        s4 = mi64()
        if sjj == 0 then
            sjj = "+"
        else
            sjj = "-"
        end
        s5 = "function " .. s4 .. "(code)res=''for i in ipairs(code)do res=res..string.char(code[i]" .. sjj .. sj ..
                 ")end return res end WSZ="
        for i in XXLSS:gmatch(pp) do
            QQH = {}
            string.gsub(tostring(table.concat({i:byte(0, -1)}, ",")), "[^,]+", function(XXL)
                if sjj == "+" then
                    XXL = XXL - sj
                else
                    XXL = XXL + sj
                end
                table.insert(QQH, XXL)
            end)
            i = s4 .. "({" .. table.concat(QQH, ",") .. "})"
            XXLSS = XXLSS:gsub(pp, i, 1)
        end
        XXLSS = XXLSS:gsub("\n", "")
        XXLSS = XXLSS:gsub(" ", "")
        XXLSS = XXLSS:gsub("	", "")
        s5 = s5 .. XXLSS
        os.remove(sc)
        return s5, code
    end
    aaa, bbb = GT(filepath)
    io.open(filepath, "w"):write(aaa .. '\n' .. bbb):close()
end

file = io.open(filepath)
code = file:read("*a")
io.open(filepath, "w"):write(code):close()
file = io.open(filepath)
TC = file:read("*a")
file = io.open(filepath, "w")
file:write(HS .. TC)

file = io.open(filepath, "r")
jb = file:read("*a")
file:close()
if jb:match("gg.choice") or jb:match("gg.multiChoice") then
    for i in jb:gmatch("function (.-)%(") do -- 寻找方法体
        if jb:match("function " .. i .. "(%(.-%))") == "()" then -- 判断是否写入防御
            jb = jb:gsub("function " .. i .. "", "function " .. i .. "()\n" .. sin .. "\nlocal function appfy(...)end appfy") -- 写入防御
        end
    end
end
io.open(filepath, "w"):write(app .. jb)

file = io.open(filepath, 'r')
jz = file:read('*a') -- 读取脚本源码
file:close()

yjb = FY .. jz .. sin
Y=[=[
BY.鹿十七4.0字符串加密 欢迎大家的使用


         《无名》 作者:鹿十七.
         
千百度里寻伊人 不见当年庐州月./
远赴人间惊鸿宴 一睹人间盛世颜./
生成八景宫中客 不记人间几万年./
不知天上宫锦阙 敢问今夕是何年./

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

我是21世纪最菜的加密 经常有大佬可以意念开我的加密
]=]
yjb = " (function(...)" ..kt.. yjb .." end )([=[\n\n\n--"..Y.."\n\n--[[']=]) "

yjb = string.dump(load(yjb), true)
yjb = string.gsub(yjb, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
              string.char(0x00, 0x00, 0x00, 0x00))



file = io.open(filepath, "w")
file:write(yjb) -- 写入防御源码
file:close()

