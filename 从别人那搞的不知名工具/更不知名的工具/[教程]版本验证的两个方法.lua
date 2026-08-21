Bx = gg.VERSION 
Bxa = gg.BUILD
Bxb = math.random(100,9999999)
function BxA()
Bxc = gg.alert("北玄提示您:\n您的GG版本号是:"..Bx.."\n您的运行版本号是:"..Bxa.."","退出","复制","随机数:"..Bxb.."")
if Bxc == 1 then os.exit() end
if Bxc == 2 then gg.copyText(""..Bx.."\n"..Bxa.."\n"..Bxb.."") gg.alert("已经复制以下内容:\n"..Bx.."\n"..Bxa.."\n"..Bxb.."")  os.exit() end
if Bxc == 3 then BxA() end
end
BxA()

--[[
By 北玄 201902409
By 北玄 201902409

验证版本方法①
if gg.BUILD == 11631 then os.exit() end
解释:如果版本号是 11631就结束否则就正常运行
验证版本方法②
Bx = "8.61.6"
if gg.VERSION == Bx then os.exit() end
解释:如果版本号是8.61.6就结束否则正常运行

By 北玄 201902409
By 北玄 201902409
]]