XEY=[[小鳄鱼交流群：590854164

工具已开源处理二改随意]]
gg.alert(XEY)

LJ = gg.prompt({'小鳄鱼选择脚本：'},{gg.getFile()},{'file',})

if LJ then 
else 
gg.alert('小鳄鱼：已取消使用')
os.exit()
end
if loadfile(LJ[1]) then 
else 
gg.alert('小鳄鱼：脚本存在问题') 
os.exit()
end
--打开脚本#小鳄鱼
file = io.open(LJ[1])
code = file:read("*a")
--替换涵数配置#小鳄鱼
SST=[=[
local XEY_1 = gg.alert
local XEY_2 = gg.toast
local XEY_3 = gg.searchNumber
local XEY_4 = gg.editAll
local XEY_5 = gg.setRanges
local XEY_6 = gg.getResults
local XEY_7 = gg.clearResults
local XEY_8 = gg.searchAddress
local XEY_9 = gg.getResultCount
local XEY_10 = gg.REGION_BAD
local XEY_11 = gg.REGION_ANONYMOUS
local XEY_12 = gg.REGION_AXEYMEM
local XEY_13 = gg.REGION_C_ALLOC
local XEY_14 = gg.REGION_C_BSS
local XEY_15 = gg.REGION_C_code
local XEY_16 = gg.REGION_C_HEAP
local XEY_17 = gg.REGION_CODE_APP
local XEY_18 = gg.REGION_CODE_SYS
local XEY_19 = gg.REGION_JAVA
local XEY_20 = gg.REGION_JAVA_HEAP
local XEY_21 = gg.REGION_OTHER
local XEY_22 = gg.REGION_PPSSPP
local XEY_23 = gg.REGION_STACK
local XEY_24 = gg.TYPE_FLOAT
local XEY_25 = gg.SIGN_EQUAL
local XEY_26 = gg.TYPE_DWORD
local XEY_27 = gg.TYPE_BYTE
local XEY_28 = gg.TYPE_WORD
local XEY_29 = gg.REGION_VIDEO
local XEY_30 = gg.multiChoice
local XEY_31 = print
]=]
----替换涵数内容#小鳄鱼
code=code:gsub("gg.alert","XEY_1")
code=code:gsub("gg.toast","XEY_2")
code=code:gsub("gg.searchNumber","XEY_3")
code=code:gsub("gg.editAll","XEY_4")
code=code:gsub("gg.setRanges","XEY_5")
code=code:gsub("gg.getResults","XEY_6")
code=code:gsub("gg.clearResults","XEY_7")
code=code:gsub("gg.searchAddress","XEY_8")
code=code:gsub("gg.getResultCount","XEY_9")
code=code:gsub("gg.REGION_BAD","XEY_10")
code=code:gsub("gg.REGION_ANONYMOUS","XEY_11")
code=code:gsub("gg.REGION_AXEYMEM","XEY_12")
code=code:gsub("gg.REGION_C_ALLOC","XEY_13")
code=code:gsub("gg.REGION_C_BSS","XEY_14")
code=code:gsub("gg.REGION_C_code","XEY_15")
code=code:gsub("gg.REGION_C_HEAP","XEY_16")
code=code:gsub("gg.REGION_CODE_APP","XEY_17")
code=code:gsub("gg.REGION_CODE_SYS","XEY_18")
code=code:gsub("gg.REGION_JAVA","XEY_19")
code=code:gsub("gg.REGION_JAVA_HEAP","XEY_20")
code=code:gsub("gg.REGION_OTHER","XEY_21")
code=code:gsub("gg.REGION_PPSSPP","XEY_22")
code=code:gsub("gg.REGION_STACK","XEY_23")
code=code:gsub("gg.TYPE_FLOAT","XEY_24")
code=code:gsub("gg.SIGN_EQUAL","XEY_25")
code=code:gsub("gg.TYPE_DWORD","XEY_26")
code=code:gsub("gg.TYPE_BYTE","XEY_27")
code=code:gsub("gg.TYPE_WORD","XEY_28")
code=code:gsub("gg.REGION_VIDEO","XEY_29")
code=code:gsub("gg.multiChoice","XEY_30")
code=code:gsub("print","XEY_31")
--替换成功写入#小鳄鱼
io.open(LJ[1]..".LUA","w"):write(code):close()
file = io.open(LJ[1]..".LUA")
TC=file:read("*a")
file=io.open(LJ[1]..".LUA","w")
file:write(SST..TC)
--本脚本由小鳄鱼制作
--交流群：590854164
