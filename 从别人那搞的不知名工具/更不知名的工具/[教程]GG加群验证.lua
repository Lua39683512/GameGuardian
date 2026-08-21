gg.alert("加群验证")
gg.alert("获取手机存诸信息.....\n验证身份是否异常...","继续")
gg.alert("验证完毕..请求回执验证结果.....","继续")
function file_exists(path)
  local file = io.open(path, "rb")
  if file then
    file:close()
    return 1
  else
    return 2
  end
end
local lj = "/storage/emulated/0/tencent/QQfile_recv/"
local qlj = "/storage/emulated/0/tencent/QQfile_recv/"
local ms = file_exists(lj .. "123.lua")
qqh = {
  "201902409",
}
local sq1 = 0
for i, v in ipairs(qqh) do
  if file_exists(qlj .. v .. ".lua") == 1 then
    sq1 = 1
    if ms ~= 1 then
      break
    end
    os.remove(lj .. "123.lua")
    break
  end
end
if sq1 == 0 then
  if ms == 2 then
    gg.alert("验证完毕！你不是群成员！交流群xxxx\n若您是群成员，但还是验证失败\nxxxx ", "交流群xxxx")
    os.exit()
  else
    local file = io.open(lj .. "123.lua", "r")
    assert(file)
    local data = file:read("*a")
    file:close()
    if string.find(data, "yicyic") == nil then
      gg.alert("验证错误，你正在尝试破解这道验证！请停止！")
    else
      local yic7 = string.gsub(data, "p5", "")
      yic7 = string.gsub(yic7, "n3", "")
      yic7 = string.gsub(yic7, "m9", "")
      yic7 = string.gsub(yic7, "%a", "")
      if file_exists(qlj .. yic7 .. "artfilter.config") == 2 then
        gg.alert("出现错误：原因:十六进制改变")
        os.exit()
      end
    end
  end
end
gg.alert("你是交流群人员：验证通过！","下一步")
if gg.BUILD < 5511 then
  print("xxxx")
end
if gg.isVisible(true) then
  gg.setVisible(false)
end


gg.alert("功能")

