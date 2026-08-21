-- 原创BY——鹿十七，开源给大家学习，转载时请保留个人信息，谢谢❤
print("群号  796546632")

function Main()
    SN = gg.choice({"❤查询ip归属地❤", "❤查询自己的ip❤", "凡[❤五彩斑斓❤]"}, 2020,
             "原创——by鹿十七\n\n望转载时请保留本行信息谢谢\n群号:796546632 密码十七")
    if SN == 1 then
        a1()
    end
    if SN == 2 then
        Exi()
    end
    if SN == 3 then
        Exit()
    end
    XGCK = -1
end

function a1()
    A = gg.prompt({"输入您要查询的ip"}, {""}, {"text"})
    C = A[1]
    B = gg.makeRequest("https://m.ip138.com/iplookup.asp?ip=" .. C .. '&action=2').content
    if B then
        D = string.match(B, "ASN归属地</td><td>(.-) </td></tr>") or "只能查询个人IP"
        gg.alert("❤查询已完毕\n\n" .. "❤" .. D .. "❤")
    end
end

function Exi()
    N = gg.makeRequest("https://202020.ip138.com/").content
    if N then
        R = string.match(N, "<title>(.-)</title>")
        V = string.match(N, '来自：(.-)</p>')
        gg.alert(R .. "\n\n" .. V)
    end
end

function Exit()
    os.exit()
end

while true do
    if gg.isVisible(true) then
        XGCK = 1
        gg.setVisible(false)
    end
    gg.clearResults()
    if XGCK == 1 then
        Main()
    end
end