local file=io.open("/storage/emulated/0/tencent/MobileQQ/.拦截器配置","r")
if file~=nil then
SSXGP=file:read("*a")
else
SSXGP="/sdcard"
end
YX=gg.prompt({
"逸辰原创\n神晴改动\n选择脚本",
"Log",
"Load",
"Table捕捉",
"Table捕捉范围",
"gg.alert",
"os.exit跳过",
"gg.sleep跳过",
"os.remove跳过",
"print打印｛优化｝",
"gg.copyText跳过",
"gg.isPackageInstalled跳过";
"防第三方加载脚本跳过"
},
{
SSXGP,
false,
false,
false,
"3000",
false,
false,
false,
false,
false,
false,
false,
false,
false
},
{
"file",
"checkbox",
"checkbox",
"checkbox",
"text",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox"
})
if YX==nil then
os.exit(print("结束"))
else
io.open("/storage/emulated/0/tencent/MobileQQ/.拦截器配置","w"):write(YX[1])
end

file=io.open(YX[1],"r")
if file==nil then
os.exit(print("选择的文件不存在"))
else
Debug=loadfile(YX[1])
if Debug==nil then
os.exit(print("选择的文件语法存在错误"))
end
end

if YX[6] then
hook = function (...)
return nil
end
gg.alert = hook
gg.toast("已跳过gg.alert的执行")
end

if YX[7] then
local orig=os.exit
local hook =1
hook = function (...)
ggfh=gg.alert("您的選擇已經觸發到了本功能函數,請選擇以下按鈕功能做出判断", "函數允許退出", "函數防止退出")
local arg = {...}					
if ggfh==1 then
select= orig(...)
else
select=gg.setVisible(true)
end
return select
end
os.exit=hook
end

if YX[8] then
local orig = gg.sleep
local hook = 1
hook = function (...)
local arg = {...}
return true
end
hook = orig
gg.sleep = hook
gg.toast("已跳过gg.sleep的执行")
end

if YX[9] then
remove=os.remove
function os.remove(...)
if gg.alert("检查到删除","删除","跳过")==1 then remove(...) end
end
end

if YX[10]== true then
hook = function (...)
return nil
end
gg.copyText = hook
gg.toast("已跳过gg.copyText的执行")
end

if YX[11] then
local orig = print
local hook = 1
hook = function (...)
local arg = {...}	
if arg[1] ~= printt  then
printt=arg[1] 
return orig(...)
else
return true
end
end
hook = orig
print= hook
end

if YX[12] then
isPackageInstalled=hook
function gg.isPackageInstalled(...)
if gg.alert("检查到验证","验证","跳过")==1 then hook(...) end
gg.toast("已跳过gg.isPackageInstalled的执行")
end
end

if YX[4] then
local arm=gg.searchNumber
function gg.searchNumber(a,b,c,d,e,f)
a=a:gsub("%d",function(x) return "神晴"..x.."神晴" end)
a=a:gsub(";",function(x) return "神晴"..x.."神晴" end)
a=a:gsub("%-",function(x) return "神晴"..x.."神晴" end)
a=a:gsub("e",function(x) return "神晴"..x.."神晴" end)
for i in a:gmatch("神晴(.-)神晴") do
print(i)
end
return arm(a,b,c,d,e,f)
end
for i, v in pairs(gg) do
if type(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then
gg[i] = function (...)
local f = io.open(YX[1]..".table捕捉.lua", 'a')
if string.find(i,'addListItems')==nil then
--f:write('gg.'..i..'：\n')
for j, a in ipairs({...}) do
if j ~= 1 then f:write(', ') end
if type(a) == 'string' then f:write('"') end
if string.len(tostring(a))< tonumber(YX[5]) then f:write(tostring(a))
f:write(tostring(a)) end
if type(a) == 'string' then f:write('"') f:write('"')end
end
f:write("\n")
f:close()
end
return v(...)
end
end
end
end

if YX[3] then
A=gg.choice({
"load{一}",
"load{二}",
"退出拦截"},nil,"load{一}为恶魔原创,文件路径为:\n"..YX[1])
if A==1 then
local SS = gg.alert
local io_open = io.open
local tr = {}
local load_cnt = 0
local fname = YX[1]..'.{SSS.TooL}.lua'
for i, v in pairs({load=1, loadfile=0, dofile=0}) do
local orig = _G[i]
local hook = 1
local type = v
hook = function (...)
local arg = {...}
local content = arg[1]
if type == 0 then
content = nil
local f = io_open(arg[1], "rb")
if f ~= nil then
content = f:read("*a")
f:close()
end
end
if content ~= nil then
local file = fname..load_cnt..'.lua'
local f = io_open(file, 'w')
f:write(content)
f:close()
gg.toast('拦截文件：'..load_cnt.."次")
load_cnt = load_cnt + 1
end
return orig(...)
end
tr[hook] = orig
_G[i] = hook
end
end
end
if A==2 then
o=0-- 赋值
local xgp=load-- 创建原函数备份
local ssx=function(...)-- 敲黑板，在这里，hook=function(.. )其实就是相当于function hook(...)而括号内的三个点指的是可变参数，这样就不需要一个一个输入参数了
local arg={...}
local result=xgp(...)
local data=tostring(arg[1])
if result and string.len(data)>500 and #data<200000 then
if data:match("gg%.") then
gg.alert("=>=>脚本解密成功！<=<=\n内容如下：\n"..data)
end
o=o+1
f=io.open(YX[1].."[load_"..o.."].lua","w")--打开文件
f:write(data)-- 写入文件
f:close()-- 关闭文件
end--结束
return result-- 返回load参数转成一个表
end-- 结束
load=ssx
end
if A==3 then
os.exit()
end

if YX[2] then
awq=gg.setRanges
function gg.setRanges(...)
q = gg.prompt({"新思路Log","无钩子拦截"},{},{"checkbox","checkbox",})
if q[1] then
local orig = gg.searchNumber
hook = 1
local hook = function (...)
local arg={...}
print(...,"\n-----搜索数据\n\n➖➖➖➖➖➖➖➖➖➖➖➖\nLog完毕")
return orig("神晴\n"..arg[1])
end
gg.searchNumber = hook
end

if q[2] then
yx2={}
local orig=gg.multiChoice
local hook=function(...)
local arg={...}
table.insert(yx2,arg[1])
print(arg[1])
return orig(...)
end
gg.multiChoice=hook
yx={}
local orig=gg.choice
local hook=function(...)
local arg={...}
table.insert(yx,arg[1])
print(arg[1])
return orig(...)
end
gg.choice=hook
local orig=os.rename
local hook=function(...)
local arg={...}
xy=gg.prompt({"原","重命名为"},{arg[1],arg[2]},{"text","text"})
return true
end
os.rename=hook
if yx or yx2 ~= nil then
local orig=gg.getValues
local hook=function(...)
local arg={...}
return true
end
gg.getValues=hook
local orig=debug.getinfo
local hook=function(...)
local arg={...}
xy=gg.prompt({"返回"},nil,{"text"})
a={short_src=xy[1]}
return a
end
debug.getinfo=hook
ss={}
local orig=gg.searchNumber
local hook=function(...)
local arg={...}
if tonumber(arg[1]) ~= nil then
print("改善数据:"..arg[1])
return orig(...)
else
if string.find(arg[1],";")~=nil then
print("搜索数据:"..arg[1])
return orig(...)
end
end
end
gg.searchNumber=hook
xg={}
local orig=gg.getResults
local hook=function(...)
local arg={...}
print("内存范围:"..arg[1])
return orig(...)
end
gg.getResults=hook
sy={}
local orig=awq
local hook=function(...)
local arg={...}
print("类型范围:"..arg[1])
return orig(...)
end
gg.setRanges=hook
local orig=gg.editAll
local hook=function(...)
local arg={...}
if tonumber(arg[1])~=nil then
print("修改数据"..arg[1])
return orig(...)
else
if string.find(arg[1],";")~=nil then
print("修改数据"..arg[1])
return orig(...)
end
end
end
gg.editAll=hook
awq(...)
end
end
end
loadfile(YX[1])()

if YX[13] then
gg.toast("可过部分load防御")
local xgp=loadfile
local ssx=function(...)
return nil
end
loadfile=ssx
end
return Debug()
end