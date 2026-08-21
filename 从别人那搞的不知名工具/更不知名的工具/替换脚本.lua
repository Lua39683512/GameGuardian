--恶魔原创/禁止转载或倒卖
--青柠QQ:3269648025    本工具只供参考


EM=gg.prompt({
"选择脚本"},
{[1]="/storage/emulated/0/tencent/QQfile_recv/"},{
"file"
})

local orig = load
local hook = 1 
hook = function (...) 
local arg = {...}
local result= orig(...)
local data=CY.tostring(arg[1])
if result then
if  CYCY.isHookLoadOpt == false or
loaded[arg[1]]==nil then
CYCY.time = CYCY.time + 1
loaded[arg[1]]=CYCY.time
file=CY.io.open(CYCY.outPath .. "[LOAD" .. CYCY.time .. "]" .. CYCY.name .. CYCY.randomName .. ".lua", "w")
file:write(data)
file:close()
end
end
return result
end 
tr[hook] = orig 
load = hook
-----------load/print可以一建替换改一下即可
io.open(EM[1]..".em.lua","w+"):write(data):close()
print("替换成功\n替换后的文件输出在"..EM[1]..".em.lua")