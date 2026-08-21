


--[[
获取网络时间戳
A=gg.makeRequest('http://42.194.209.155/rl/getTime.php').content
B=string.match(A,"(%d+)")
if B>"1" then--这里找转换工具时间戳
gg.alert("脚本已到期....")
end


]]


--[[
本地时间
Q="09 00:52:16 2020"
B=string.match(A,"%d%d %d%d:%d%d:%d%d %d%d%d%d+")
if B >=Q then 
gg.alert("时间已到期")
end

]]


