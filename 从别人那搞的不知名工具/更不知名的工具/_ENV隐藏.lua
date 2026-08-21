local __index
local LYF_DefEnv = {["输出你🐴"]="看你🐴的ENV"}
local LYF_DefGetYb = {["输出你🐴"]="看你🐴的ENV"}
local LYF_DefGetDg = {["输出你🐴"]="看你🐴的ENV"}
setmetatable(LYF_DefGetDg,{__index = debug.getmetatable})
setmetatable(LYF_DefEnv, {__index = _ENV})
setmetatable(LYF_DefGetYb,{__index = getmetatable})
_ENV=LYF_DefEnv
getmetatable=LYF_DefGetYb
debug.getmetatable=LYF_DefGetDg
debug.setupvalue(debug.getinfo(1)['func'],1,_ENV)
print(_ENV)
wsnd="测试"
gg.alert(1)