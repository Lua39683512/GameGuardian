--原创月光群云云师傅
--月光论坛地址http://www.yunun.top/
--我做了点小改动

local Range = {
[gg.REGION_C_DATA]='CD内存',
[gg.REGION_ANONYMOUS]='A内存',
[gg.REGION_BAD]='B内存',
}
local Type = {
[gg.TYPE_DWORD]='D类型',
[gg.TYPE_FLOAT]='F类型',
}


--计算保存列表数值偏移结果
local kh = gg.getListItems(2)
aa = string.format("%X", kh[2].address)
ac = string.format("%X", kh[1].address)
kl = tonumber(aa,16)-tonumber(ac,16)
kl = kl+1


--获取搜索列表结果
local kk = gg.getResults(99999)
kx = gg.getValues(kk)
local sss = ""
for i=1, #kx do
sss = sss..kx[i].value..";"
end
sss = sss.."::"..kl


function MainUI()
    local addr = getAddr()
    local type = getType()
    local range = getRange()
    mc = getmcc()
    local num = getNumber()
    local result = getResult(num, type, addr)
    local S = getSearch(result, addr)
    local W = getWrite(result, addr)
    local src = creatSrc(S, W, type, range)
    gg.copyText(src, false)
    gg.toast("源码已复制到剪切板")
    print(src)
end

function Assert(data)
    if (data == nil) then
        return false
    else
        if (type(data) == 'table') then
            if (data[1] == '') then
                return false
            end
        end
    end
    return true
end

function getAddr()
    local prompts = {"输入搜索地址"}
    local defaults = {ac}
    local types = {'text',}
    
    local data = gg.prompt(prompts, defaults, types)
    if Assert(data) then
        return tonumber(data[1], 16)
    else
        os.exit()
    end
end

function getType()
    local items = Type
    local select = gg.TYPE_DWORD
    local message = "选择数据类型"
    gg.toast(message)
    local type = gg.choice(items, select)
    if Assert(type) then
        return type
    else
        gg.alert("未选择数据类型")
        MainUI()
    end
end

function getRange()
    local items = Range
    local select = gg.REGION_ANONYMOUS
    local message = "选择内存范围"
    gg.toast(message)
    local range = gg.choice(items, select)
    if Assert(range) then
        return range
    else
        gg.alert("未选择内存范围")
        MainUI()
    end
end

function getmcc()
    local mvv = {"输入功能名称"}
    local mnn = {"功能测试"}
    local mmm = {'text',}
    gg.toast("输入功能名称")
    
    local mcl = gg.prompt(mvv, mnn, mmm)
 if Assert(mcl) then
        return mcl[1]
    else
        gg.alert("未输入功能名称")
        MainUI()
    end
end

function getNumber()
    local prompts = {"输入要搜索的值"}
    local defaults = {sss}
    local types = {'text',}
    
    local data = gg.prompt(prompts, defaults, types)
    if Assert(data) then
        return data[1]
    else
        os.exit()
    end
end

function getResult(num, type, addr)
    gg.setVisible(false)
    gg.clearResults()
    local from = addr-addr%0x1000
    local to = addr-addr%0x1000+0x1000
    gg.searchNumber(num, type, false, gg.SIGN_EQUAL, from, to)
    local result = gg.getResults(gg.getResultCount())
    gg.clearResults()
    gg.setVisible(true)
    if Assert(result) then
        return result
    else
        gg.alert("未找到结果，请检查输入的值")
        MainUI()
    end
end
      
function getSearch(result, target)
    local prompts = {}
    local defaults = {}
    local types = {}
      
    for i=1, #result do
        local address = result[i].address
        local value = result[i].value
        local offset = address%0x1000
        local info = string.format("%08X",address).."               "..value.."             "..string.format("0x%X", offset)
        prompts[address] = info
        --    defaults[address] = true
        types[address] = 'checkbox'
    end
    defaults[target] = true
    data = gg.prompt(prompts, defaults, types)
    if (data == nil) then
        gg.alert("未选择特征码")
        data = gg.prompt(prompts, defaults, types)
    end
      
    local SEARCH = {}
    for i, v in ipairs(result) do
        if (data[v.address] == true) then
            SEARCH[#SEARCH + 1] ={v.value, v.address%0x1000}
        end
    end
    return SEARCH
end
      
function getWrite(result, target)
    local prompts = {}
    local defaults = {}
    local types = {}
      
    for i=1, #result do
        local address = result[i].address
        local value = result[i].value
        local offset = address%0x1000
        local info = string.format("%08X",address).."               "..value.."             "..string.format("0x%X", offset)
        prompts[address] = info
    end
    defaults[target] = ""
    local data = gg.prompt(prompts, defaults, types)
    if (data == nil) then
        gg.alert("未选择修改地址")
        data = gg.prompt(prompts, defaults, types)
    end
    local WRITE = {}
    for i, v in ipairs(result) do
        if (data[v.address] ~= '') then
            WRITE[#WRITE + 1] ={tonumber(data[v.address]), v.address%0x1000}
        end
    end
    return WRITE
end
      
function creatSrc(Search, Write, type, range)
    local SEARCH = "\nlocal tb1 = {"
    for i=1, #Search do
        SEARCH = SEARCH.."{"..Search[i][1]..","..string.format("0x%X", Search[i][2]).."}, "
    end
    SEARCH = SEARCH.."}"
    
    WRITE = "\nlocal tb2 = {"
    for i=1, #Write do
        WRITE = WRITE.."{"..Write[i][1]..","..string.format("0x%X", Write[i][2]).."}, "
    end
    WRITE = WRITE.."}"
      
local src ='function a()'..'\ngg.setRanges('..range..')\nlocal dataType = '..type..'\nName ='..'"'..mc..'"'..''..SEARCH..''..WRITE..'\nSearchWrite(tb1,tb2, dataType)'..'\nend'
    return src
end
      
MainUI()