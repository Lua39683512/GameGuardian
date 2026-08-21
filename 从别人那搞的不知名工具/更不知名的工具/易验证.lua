gg.prompt,prompt=prompt,gg.prompt
function gg.prompt(...)
  if appid then
    islogin=appid
  end
  return prompt(...)
end
local m = {}
m.last = gg.getFile()
m.info = nil
m.config = '/storage/emulated/0/Android/jl.cfg'
m.data = loadfile(m.config)
if m.data ~= nil then
	m.info = m.data()
	m.data = nil
end
if m.info == nil then
	m.info = {m.last}
end
m.info=gg.prompt({"选择脚本\n到需要输入卡密\n直接取消便可进入"},m.info,{"file"})
if m.info==nil then
else
 gg.saveVariable(m.info, m.config)
 loadfile(m.info[1])()
end