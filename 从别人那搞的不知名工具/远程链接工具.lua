

local urls = "https://sharechain.qq.com/51624f63f2746d236ebb3246bcc091aa" -- 远程链接
local path = "/sdcard/公告.txt"
local data = gg.makeRequest(urls).content
local switch = data:match("【开关】(.-)【开关】")
local Notice = data:match("【公告】(.-)【公告】")
local files = io.open(path, "r")
while switch ~= "开" do
  gg.alert("墨辞已把脚本关闭了.")
  os.exit()
end
if files == nil or files:read("*a") ~= Notice then
  if gg.alert("墨辞\n" .. Notice, "我知道了", "不再提示") == 2 then
    local f=io.open(path, "w")
    f:write(Notice)
    f:close()
  end
end

--[[
【开关】这里是开关【开关】

【公告】这里放公告【公告】
]]

--------------下面是第2部分
      
SAK_WJLJ="/sdcard/新版本.lua"

SAK_YY="https://v1.hitokoto.cn"

SAK_WY="https://sharechain.qq.com/c53925529e91928b2ae3721b78b75184"
SAK_TQ="http://m.weather.com.cn/mweather/101120206.shtml"

local SAK_YiYan=gg.makeRequest(SAK_YY).content

local SAK_TianQi=gg.makeRequest(SAK_TQ).content

local SAK_SQWL=gg.makeRequest(SAK_WY).content

local SAK_KG=SAK_SQWL:match("【开关】(.-)【开关】")

local SAK_GG=SAK_SQWL:match("【公告】(.-)【公告】")

local SAK_YiY=SAK_YiYan:match('hitokoto\":\"(.-)","type\":')

local SAK_DW=SAK_TianQi:match("<span>(.-)</span>")

local N=0 N=N+1



if SAK_KG~="开" then
SAK_LXZZ=gg.alert("脚本已关闭","知道了")
if SAK_LXZZ=="2" then
gg.copyText("3393145332")
os.exit()
end
os.remove(gg.getFile())
os.exit()
end

if SAK_GG~=nil then
SAK_JRTC=gg.alert("公告：".."[ "..SAK_GG.." ]".."\n\n墨辞牛逼".."[ "..SAK_DW.." ]","退出","进入")
end
if SAK_JRTC=="1" then
os.exit()
end

if SAK_LJ=="" then
gg.alert("服务器资源不存在")
os.exit()
end

pcall(load(gg.makeRequest(SAK_LJ).content))

--下面的放在微云
--[[
【开关】这里是开关【开关】

【公告】这里放公告【公告】
]]
