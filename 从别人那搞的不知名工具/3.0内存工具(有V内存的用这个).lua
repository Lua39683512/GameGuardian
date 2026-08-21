host="http://data.iapp.love"    --这里改成开发文档写的接口地址
appid="10015"  --这里改成你的后台ID
ver=1  --版本号(整数/小数)
file="yiyz"..appid..".xml"  --用户账号密码储存的文件名，建议默认
user = 159

function dashang()
shop = gg.multiChoice({
    "💰0.5元",
    "💰1.0元",
    "💰2.0元",
    "💎更多乐趣，点击这里"
  }, nil, "不强制打赏，求好心人投食\n\n推荐使用QQ或者支付宝打赏，微信有些问题！\n\n嘤嘤嘤~")
  if shop == nil then
  else
  if shop[1] == true then
  url=host.."/pay/app.php?appid="..appid.."&user="..user.."&v=2"
  
    end
  if shop[2] == true then 
  url=host.."/pay/app.php?appid="..appid.."&user="..user.."&v=3"
  end
  if shop[3] == true then 
  url=host.."/pay/app.php?appid="..appid.."&user="..user.."&v=4"
  end
  if shop[4] == true then 
  gg.copyText("700955760")
  gg.alert("已复制群号")
    end
  gg.copyText(url)
  gg.alert("已经复制链接，请前往浏览器打开链接打赏")
  end
XGCK = -1
end

toast = function(str)
gg.toast(tostring(str))
end

function Assert(data)
if data == nil or data == "" then
return false
else
return true
end
end

function Choiceedit(data)
local items = {}
local select = {}
local message = "选择要修改的特征码"
for i = 1, #data do
local tzm = "数值：" .. data[i].value .. "   偏移：" .. data[i].address
table.insert(items, i, tzm)
end
local edit = gg.prompt({"请输入要修改的值(默认0)"}, {""}, {"text"})
if edit == "" or edit == nil then
editdata = 0
elseif edit[1] == "" or edit[1] == nil then
editdata = 0
else
editdata = edit[1]
end
return gg.multiChoice(items, select, message), editdata
end

function Imitatexs(sort)
local edit = {}
local editsx = 0
local data = sort
local result, editdata = Choiceedit(data)
for i = 1, #data do
if result[i] == true then
editsx = editsx + 1
local ftzm = '{["value"] = ' .. editdata .. ', ["offset"] = ' .. data[i].address .. ', ["type"] = ' .. searchtype .. '},'
table.insert(edit, editsx, ftzm)
end
end
local editsz = edit[1] .. "\n"
for x = 2, #edit do
if x == #edit then
editsz = editsz .. edit[x]
else
editsz = editsz .. edit[x] .. "\n"
end
end
editsz = "qmxg = {\n" .. editsz .. "\n}"
local name = {"请输入功能名称(默认为测试)"}
local default = {""}
local form = {"text"}
local gnname = gg.prompt(name, default, form)
if gnname == "" or gnname == nil then
gnm = "测试"
elseif gnname[1] == "" or gnname[1] == nil then
gnm = "测试"
else
gnm = gnname[1]
end
local seatzm = {}
local seasx = 0
local fxssz = 'qmnb = {\n{["memory"] = ' .. searchrange .. '},\n' .. '{["name"] = "' .. gnm .. '"},\n' .. '{["value"] = ' .. data[1].value .. ', ["type"] = ' .. searchtype .. '},\n'
for n = 2, #data do
seasx = seasx + 1
local ftzm = '{["lv"] = ' .. data[n].value .. ', ["offset"] = ' .. data[n].address .. ', ["type"] = ' .. searchtype .. '},'
table.insert(seatzm, seasx, ftzm)
end
for z = 1, #seatzm do
if z == #seatzm then
fxssz = fxssz .. seatzm[z] .. "\n}\n" .. editsz .. "\nxqmnb(qmnb)"
else
fxssz = fxssz .. seatzm[z] .. "\n"
end
end
local xztc = gg.alert(fxssz .. "\n\n\n复制代码或者生成脚本", "复制代码", "生成脚本")
if xztc == 1 then
gg.copyText(fxssz, false)
toast("复制成功")
elseif xztc == 2 then
file = io.open("/storage/emulated/0/tencent/QQfile_recv/XQM生成/" .. gnm .. "仿XS生成.lua", "w")
file:write(fxssz .. "\n\n\n")
file:close()
toast("脚本保存在/storage/emulated/0/tencent/QQfile_recv/XQM生成/" .. gnm .. "仿XS生成.lua")
end
end

function Pointer(sort)
local edit = {}
local editsx = 0
local data = sort
local result, editdata = Choiceedit(data)
for i = 1, #data do
if result[i] == true then
editsx = editsx + 1
local ftzm = '{' .. editdata .. ', ' .. data[i].address .. '}, '
table.insert(edit, editsx, ftzm)
end
end
local editsz = edit[1]
for x = 2, #edit do
editsz = editsz .. edit[x]
end
editsz = "local tb2 = {" .. editsz .. "}\nSearchWrite(tb1, tb2, dataType)"
local seatzm = {}
local seasx = 0
local fxssz = 'gg.setRanges(' .. searchrange .. ')\nlocal dataType = ' .. searchtype .. '\n' .. 'local tb1 = ' .. '{{' .. data[1].value .. ', ' .. 0 .. '}, '
for n = 2, #data do
seasx = seasx + 1
local ftzm = '{' .. data[n].value .. ', ' .. data[n].address .. '}, '
table.insert(seatzm, seasx, ftzm)
end
for z = 1, #seatzm do
if z == #seatzm then
fxssz = fxssz .. seatzm[z] .. "}\n" .. editsz
else
fxssz = fxssz .. seatzm[z]
end
end
local xztc = gg.alert(fxssz .. "\n\n\n复制代码或者生成脚本", "复制代码", "生成脚本")
if xztc == 1 then
gg.copyText(fxssz, false)
toast("复制成功")
elseif xztc == 2 then
file = io.open("/storage/emulated/0/tencent/QQfile_recv/XQM生成/指针生成.lua", "w")
file:write(fxssz .. "\n\n\n")
file:close()
toast("脚本保存在/storage/emulated/0/tencent/QQfile_recv/XQM生成/指针写法生成.lua")
end
end

function selectRange()
local Range = {[gg.REGION_JAVA_HEAP] = "Jh   Java_heap", [gg.REGION_C_HEAP] = "Ch   C++ heap", [gg.REGION_C_ALLOC] = "Ca   C++ alloc", [gg.REGION_C_DATA] = "Cd   C++ .data", [gg.REGION_C_BSS] = "Cb   C++ .bss", [gg.REGION_PPSSPP] = "PS   PPSSPP", [gg.REGION_ANONYMOUS] = "A   Anonymous", [gg.REGION_JAVA] = "J   Java", [gg.REGION_STACK] = "S   Stack", [gg.REGION_ASHMEM] = "As   Ashmem", [gg.REGION_VIDEO] = "V   Video", [gg.REGION_OTHER] = "O   Other", [gg.REGION_BAD] = "B   Bad", [gg.REGION_CODE_APP] = "Xa   Code app", [gg.REGION_CODE_SYS] = "Xs   Code system"}
local datamemory = gg.choice(Range, "", "请选择内存")
if Assert(datamemory) then
return datamemory
else
gg.alert("请选择的内存")
srdz()
end
end

function selectType()
local Type = {[gg.TYPE_AUTO] = "A   Auto", [gg.TYPE_DWORD] = "D   Dword", [gg.TYPE_FLOAT] = "F   Float", [gg.TYPE_DOUBLE] = "E   Double", [gg.TYPE_WORD] = "W   Word", [gg.TYPE_BYTE] = "B   Byte", [gg.TYPE_QWORD] = "Q   Qword", [gg.TYPE_XOR] = "X   Xor"}
local datatype = gg.choice(Type, "", "请选择类型")
if Assert(datatype) then
return datatype
else
gg.alert("请选择的类型")
srdz()
end
end

function ergodicMemory(data, ergodicrange)
local addrrange = ergodicrange / 4
local upnumber = 0
local downnumber = 0
local uppysl = 0
local downpysl = 0
local t = {}
local upaddr = {}
local downaddr = {}
local items = {}
local select = {}
local message = "选择特征码"
for up = 1, addrrange do
upnumber = upnumber - 4
upaddr[up] = {}
upaddr[up].address = data[1].address + upnumber
upaddr[up].flags = searchtype
end
for down = 1, addrrange do
downnumber = downnumber + 4
downaddr[down] = {}
downaddr[down].address = data[1].address + downnumber
downaddr[down].flags = searchtype
end
local upaddr = gg.getValues(upaddr)
local downaddr = gg.getValues(downaddr)
for i = 1, #upaddr do
uppysl = uppysl - 4
local td = {['address'] = string.format('%#x', upaddr[i].address), ['flags'] = upaddr[i].flags, ['value'] = upaddr[i].value, ['addr'] = uppysl}
local tzm = "地址：" .. string.format('%#x', upaddr[i].address) .. "   数值：" .. upaddr[i].value .. "   偏移：" .. uppysl
table.insert(t, #upaddr - i + 1, td)
table.insert(items, #upaddr - i + 1, tzm)
end
local td = {['address'] = string.format('%#x', data[1].address), ['flags'] = data[1].flags, ['value'] = data[1].value, ['addr'] = 0}
local tzm = "地址：" .. string.format('%#x', data[1].address) .. "   数值：" .. data[1].value .. "   偏移：" .. 0
table.insert(t, #upaddr + 1, td)
table.insert(items, #upaddr + 1, tzm)
for x = 1, #downaddr do
downpysl = downpysl + 4
local td = {['address'] = string.format('%#x', downaddr[x].address), ['flags'] = downaddr[x].flags, ['value'] = downaddr[x].value, ['addr'] = downpysl}
local tzm = "地址：" .. string.format('%#x', downaddr[x].address) .. "   数值：" .. downaddr[x].value .. "   偏移：" .. downpysl
table.insert(t, #upaddr + x + 1, td)
table.insert(items, #upaddr + x + 1, tzm)
end
return gg.multiChoice(items, select, message), t
end

function Choiceztzm(address, value, offset)
local sort = {}
local items = {}
local select = ""
local message = "选择主特征码"
for i = 1, #value do
local tzm = "地址：" .. address[i] .. "   数值：" .. value[i] .. "   偏移：" .. offset[i]
table.insert(items, i, tzm)
end
local ztzm = gg.choice(items, select, message)
if offset[ztzm] < 0 then
absoluteoffset = offset[ztzm] * -1
elseif offset[ztzm] == 0 then
absoluteoffset = offset[ztzm]
elseif offset[ztzm] > 0 then
absoluteoffset = offset[ztzm] * -1
end
local ztzmdata = {['address'] = offset[ztzm] + absoluteoffset, ['flags'] = searchtype, ['value'] = value[ztzm]}
table.insert(sort, 1, ztzmdata)
local xrwz = 0
for x = 1, #address do
if address[x] == address[ztzm] then
else
xrwz = xrwz + 1
local ftzm = {['address'] = offset[x] + absoluteoffset, ['flags'] = searchtype, ['value'] = value[x]}
table.insert(sort, xrwz + 1, ftzm)
end
end
local form = gg.choice({"仿XS", "指针"}, 1, "请选择模式，默认仿XS")
if form == 1 then
Imitatexs(sort)
elseif form == 2 then
Pointer(sort)
end
end

function main()
local XQM = gg.choice({
"️🚬内存工具️",
"💰打赏楼主️",
"💣退出工具️"
}, nil, "")
if XQM == 1 then
srdz()
end
if XQM == 2 then
dashang()
end
if XQM == 3 then
os.exit()
end
XGCK = -1
end

function mian(d)
if d == "" or d == nil then
gg.alert("不正确的地址")
main()
elseif d[1] == "" or d[1] == nil then
gg.alert("不正确的地址")
srdz()
elseif d[2] == "" or d[2] == nil then
gg.alert("不正确的偏移范围")
srdz()
else
searchrange = selectRange()
searchtype = selectType()
gg.setRanges(searchrange)
local search = gg.searchAddress(d[1], -1, searchtype)
local data = gg.getResults(1)
local ergodicrange = d[2]
if ergodicrange <= "0" then
gg.alert("偏移范围不得小于或等于0")
srdz()
else
local result, data = ergodicMemory(data, ergodicrange)
local address = {}
local value = {}
local offset = {}
for i = 1, #data do
if result[i] == true then
address[#address + 1] = data[i].address
value[#value + 1] = data[i].value
offset[#offset + 1] = data[i].addr
end
end
Choiceztzm(address, value, offset)
end
end
end

function srdz()
local a = {"请输入地址(不可空)", "默认偏移范围(四的倍数)"}
local b = {"", "100"}
local c = {"text", "text"}
local d = gg.prompt(a, b, c)
mian(d)
end



while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
gg.clearResults()
if XGCK == 1 then
main()
end
end


