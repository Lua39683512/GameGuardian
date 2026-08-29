local url="https://raw.githubusercontent.com/Lua39683512/Lua/main/zhqf.lua"
local res=gg.makeRequest(url)
if not res then
print("无法连接GitHub")end
if res.code~=200 then
gg.toast("下载失败\n状态码:"..res.code)end
local save="/sdcard/zhqf.lua"
local f=io.open(save,"w")
if not f then
print("无法创建文件")end
f:write(res.content)
f:close()
print("下载成功"..save)--https://github.com/Lua39683512