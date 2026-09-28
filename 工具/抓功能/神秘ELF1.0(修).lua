function shenmi()
xz=gg.choice({'解析ELF',
'其它解析',
'设置so(务必先设置)',
'dump dll',
'获取所有dll',
'退出'},nil,'一只神秘制作，没什么好说的，全部功能都支持64位和32位，超级适配。')
if xz==nil then else
if xz==1 then ym1() end
if xz==2 then ym2() end
if xz==3 then ym3() end
if xz==4 then ym4() end
if xz==5 then ym5() end
if xz==6 then os.exit(print('我为神秘，当镇压世间一切敌\nQQ群917242964'))
end
end
end
local function fastest()
    return gg.getRangesList("global-metadata.dat")
end
local function faster()
    local metadata = {}
    local allRanges = gg.getRangesList()
    local stringOffset = {} 
    local strStart = {} 
    for i, v in ipairs(allRanges) do
        stringOffset[i] = {address=v.start+0x18, flags=gg.TYPE_DWORD}
    end
    stringOffset = gg.getValues(stringOffset)
    for i, v in ipairs(allRanges) do
        strStart[i] = {address=v.start+stringOffset[i].value, flags=gg.TYPE_DWORD}
    end
    strStart = gg.getValues(strStart)
    for i, v in ipairs(strStart) do 
        if v.value==0x65737341 and 0x6F63736D then return {allRanges[i]} end
    end
    return {}
end
local function fast()
    local searchMemoryRange = {
        gg.REGION_C_ALLOC,
        gg.REGION_ANONYMOUS,
        gg.REGION_OTHER,
    } 
    gg.clearResults()
    for i, v in ipairs(searchMemoryRange) do
        gg.setRanges(v)
        gg.searchNumber("h 00 67 65 74 5F 66 69 65 6C 64 4F 66 56 69 65 77 00", gg.TYPE_BYTE, false, gg.SIGH_EQUAL, 0, -1, 1)
        local res = gg.getResults(gg.getResultsCount())
        gg.clearResults()
        if #res>0 then
            for ii, vv in ipairs(gg.getRangesList()) do
                if res[1].address < vv["end"] and res[1].address > vv["start"] then
                    return {vv}
                end
            end
        end
    end
    return {}
end
local function get_metadata()
    local findingMethods = {
        [1] = fastest, 
        [2] = faster,
        [3] = fast, 
    }
    local metadata = {}
    for i=1, 3 do
        metadata = findingMethods[i]()
        if #metadata>0 then return metadata end
    end
    return {}
end
function edas(avv)
local ddk = {{address = avv,flags = 4}}
    ddk = gg.getValues(ddk)
    local ggoo = ddk[1].value
    return ggoo
    end
function eded(ass)
local ddw = {{address = ass,flags = 32}}
    ddw = gg.getValues(ddw)
    local ggyy = ddw[1].value
    return ggyy
    end
function zz ( Pointer , ranges )
	gg.setRanges ( ranges )
	results = gg.getResults ( gg.getResultsCount ( ) )
	gg.loadResults ( results )
	gg.searchPointer ( Pointer )
end
local function getName(addr)
    local str = ""
    local t = {}
    for i=1, 128 do 
        t[i] = {address=addr+i-1, flags=gg.TYPE_BYTE}
    end
    t = gg.getValues(t)

    for i, v in ipairs(t) do
        if v.value==0 then break end
        if v.value<0 then return "" end
        str = str..string.char(v.value&0xFF)
    end
    return str
end

function ym4()
gg.alert("dump出的内容将在工具退出后打印")

local shenmi=gg.getResults(gg.getResultsCount())
local gg = gg
local info = gg.getTargetInfo()

local pointerSize = (info.x64 and 8 or 4)
local fangh = (info.x64 and 0x10 or 0x8)
local ooi = (info.x64 and 0x18 or 0x10)
local uhu = (info.x64 and 0x58 or 0x2c)
local baba = (info.x64 and 0x68 or 0x34)
local ggy = (info.x64 and 0x1c or 0xe)
local oiok = (info.x64 and 306 or 153)
local ihu = (info.x64 and 74 or 37)
local lok = (info.x64 and 32 or 16)
local bfs = (info.x64 and 0xa8 or 0x54)
local rmu = (info.x64 and 2 or 1)
local pointerType = (info.x64==true and gg.TYPE_QWORD or gg.TYPE_DWORD)

local libstart=0
local libil2cppXaCdRange
local metadata
local originalResults

local isFieldDump, isMethodDump
local deepSearch = false

local searchRanges = {
    ["Ca"] = gg.REGION_C_ALLOC,
    ["A"] = gg.REGION_ANONYMOUS,
    ["O"] = gg.REGION_OTHER,
}

local unsignedFixers = {
    [1] = 0xFF,
    [2] = 0xFFFF,
    [4] = 0xFFFFFFFF,
    [8] = 0xFFFFFFFFFFFFFFFF,
}

local function toUnsigned(value, size)
    if value<0 then
        value = value & unsignedFixers[size]
    end
    return value
end

local function tohex(val)
  return string.format("%X", val)
end

local function fixAddressForPointer(address, size)
    local remainder = address%size
    if remainder==0 then
        return address
    else
        return address - remainder
    end
end


local function fastest()
    return gg.getRangesList("global-metadata.dat")
end


local function faster()
    local metadata = {}
    local allRanges = gg.getRangesList()
    local stringOffset = {}
    local strStart = {}
    
    for i, v in ipairs(allRanges) do
        stringOffset[i] = {address=v.start+0x18, flags=gg.TYPE_DWORD}
    end
    stringOffset = gg.getValues(stringOffset)
    
    for i, v in ipairs(allRanges) do
        strStart[i] = {address=v.start+stringOffset[i].value, flags=gg.TYPE_DWORD}
    end
    strStart = gg.getValues(strStart)
    
    for i, v in ipairs(strStart) do
       
        if v.value==0x6F63736D then return {allRanges[i]} end
    end
    return {}
end


local function fast()
    local searchMemoryRange = {
        gg.REGION_C_ALLOC,
        gg.REGION_ANONYMOUS,
        gg.REGION_OTHER,
    } 
    gg.clearResults()
    for i, v in ipairs(searchMemoryRange) do
        gg.setRanges(v)
        gg.searchNumber("h 00 67 65 74 5F 66 69 65 6C 64 4F 66 56 69 65 77 00", gg.TYPE_BYTE, false, gg.SIGH_EQUAL, 0, -1, 1)
        local res = gg.getResults(gg.getResultsCount())
        gg.clearResults()
        if #res>0 then
            for ii, vv in ipairs(gg.getRangesList()) do
                if res[1].address < vv["end"] and res[1].address > vv["start"] then
                    return {vv}
                end
            end
        end
    end
    return {}
end

local function get_metadata()
    local findingMethods = {
        [1] = fastest, 
        [2] = faster, 
        [3] = fast, 
    }
    local metadata = {}
    
    for i=1, 3 do
        metadata = findingMethods[i]()
        if #metadata>0 then return metadata end
    end
    return {}
end
function GetLibraryBase(lib)
local tgt =  (info.x64 and 32 or 4)
	for _, __ in pairs(gg.getRangesList(lib)) do
	if __["state"] == "Xa" or __["state"] == "Xs" or __["state"] == "Cd" or __["state"] == "O" then
	local mlok = {{address = __["start"],flags = 4}}
    mlok = gg.getValues(mlok)
    local vbvb = mlok[1].value
    if vbvb == 1179403647 then
    gg.clearResults()
    gg.setRanges(-2080896)
    gg.searchNumber(__["start"], tgt)
    sds = {}
    sds[#sds + 1] = gg.getResultCount()
    gg.clearResults()
    local ggg = sds[1]
		if ggg ~= 0 then 
		return __["start"], __["end"]
		end
	end
	end
	end
	return nil
end
local function getMainLib_Xa_Cd_Region()
    local packageName = info.packageName
    local libil2cppRanges = gg.getRangesList(packageName=="com.mobile.legends" and "liblogic.so" or "libil2cpp.so")
    if #libil2cppRanges==0 then return {} end
    local XaCdRange = {
        ["start"] = 0,
        ["end"] = 0,
    }
    
    
    as=GetLibraryBase("libil2cpp.so")
    
        local elfHeader = {
            ["magicValue"] = {address=as, flags=gg.TYPE_DWORD},
            ["e_phoff"] = {address=as+(info.x64 and 0x20 or 0x1C), flags=gg.TYPE_WORD},
            ["e_phnum"] = {address=as+(info.x64 and 0x38 or 0x2C), flags=gg.TYPE_WORD},
        }
        elfHeader = gg.getValues(elfHeader)
        
            local PHstart = as + elfHeader["e_phoff"].value
            local PHcount = elfHeader["e_phnum"].value
            for index=1, PHcount do
                local offsetDiff =  (index-1)*(info.x64 and 0x38 or 0x20)
                local programHeader = {
                    ["p_type"] = {address = PHstart + offsetDiff, flags = gg.TYPE_DWORD},
                    ["p_vaddr"] = {address = PHstart + offsetDiff + (info.x64 and 0x10 or 0x8), flags = pointerType},
                    ["p_filesz"] = {address = PHstart + offsetDiff + (info.x64 and 0x20 or 0x10), flags = pointerType},
                    ["p_memsz"] ={address = PHstart + offsetDiff + (info.x64 and 0x28 or 0x14), flags = pointerType},
                    ["p_flags"] = {address = PHstart + offsetDiff + (info.x64 and 0x4 or 0x18), flags = gg.TYPE_DWORD},
                }
                programHeader = gg.getValues(programHeader)
                local programType = programHeader["p_type"].value
                local virtualAddr = programHeader["p_vaddr"].value
                local fileSize = programHeader["p_filesz"].value
                local virtualSize = programHeader["p_memsz"].value
                local programFlags = programHeader["p_flags"].value
                if programType==1 then
                    if programFlags==5 then
                        if libstart==0 then
                            libstart = as
                            XaCdRange.start = as
                        end
                    end
                    if programFlags==6 and fileSize<virtualSize then
                        XaCdRange["end"] = XaCdRange["start"] + virtualAddr + fileSize
                    end
                end
            
        
    end
    return XaCdRange
end


local function getName(addr)
    local str = ""
    local t = {}
    for i=1, 128 do
        t[i] = {address=addr+(i-1), flags=gg.TYPE_BYTE}
    end
    t = gg.getValues(t)
    
    for i, v in ipairs(t) do
        if v.value==0 then break end
        if v.value<0 then return "" end
        str = str..string.char(v.value&0xFF)
    end
    return str
end

local function dumpFields(possibleThings)
    print("\n\n\n字段信息")
    for i=1, #possibleThings, 4 do
        local fieldNamePtr = toUnsigned(possibleThings[i+1].value, pointerSize)
        local fieldTypePtr = toUnsigned(possibleThings[i+2].value, pointerSize)
        local cccy = toUnsigned(possibleThings[i+2].address, pointerSize)
        local field_offset = possibleThings[i+3].value
        
        if (deepSearch or (fieldNamePtr<metadata[1]["end"] and fieldNamePtr>metadata[1]["start"])) and (fieldTypePtr<libil2cppXaCdRange["end"] and fieldTypePtr>libil2cppXaCdRange["start"]) and field_offset>=0 then
        
        local dbys = {{address = cccy,flags = 32}}--字段类型1
    dbys = gg.getValues(dbys)
    local njng = dbys[1].value
    
    local cccy = njng + pointerSize
    
    local dbbb = {{address = cccy,flags = 1}}--字段修饰符1
    dbbb = gg.getValues(dbbb)
    local lkoo = dbbb[1].value
    
      local function gethhh(fff)
    if fff == 6 then
        return "public"
    elseif fff == 2 or fff == 3 then
        return "internal"
    elseif fff == 1 then
        return "private"
    elseif fff == 4 then
        return "protected"
    elseif fff == 5 then
        return "protected internal"
    else
        
        return ""  
    end
end
local fff = lkoo
    
    
    local mlok = {{address = njng,flags = 32}}--字段类型2
    mlok = gg.getValues(mlok)
    local lhfs = mlok[1].value
    
    local bgyc = {{address = lhfs,flags = 4}}--字段类型3
    bgyc = gg.getValues(bgyc)
    local vtfc = bgyc[1].value
    
    local fcbn = metadata[1]["start"] + ooi
    
    local hgmn = {{address = fcbn,flags = 4}}--字符串区域
    hgmn = gg.getValues(hgmn)
    local gbcf = hgmn[1].value
    local miki = metadata[1]["start"] + gbcf
    
    local ijjo = miki + vtfc
    local vvb = getName(ijjo)
    
    local jnjk = {{address = lhfs,flags = 32}}--备用字段类型1
    jnjk = gg.getValues(jnjk)
    local okof = jnjk[1].value
    
    local mgkl = {{address = okof,flags = 4}}--备用字段类型
    mgkl = gg.getValues(mgkl)
    local ktgt = mgkl[1].value
    
    local kiuh = miki + ktgt
    local vddd = getName(kiuh)
    
    local mmkk = {{address = okof,flags = 32}}--备用字段类型2
    mmkk = gg.getValues(mmkk)
    local kokd = mmkk[1].value
    
    local mgfd = {{address = kokd,flags = 4}}--备用字段类型3
    mgfd = gg.getValues(mgfd)
    local kghg = mgfd[1].value
    
    local beih = miki + kghg
    local vvrr = getName(beih)
    
    if kghg == 0 or kghg == nil then
    vvrr = ""
    if ktgt == 0 or ktgt == nil then
    vddd = ""
    if vtfc == 0 or vtfc == nil then
    vvb = ""
end
end
end
   
            print("\n字段名："..gethhh(fff).." "..vvb..vddd..vvrr.." "..getName(fieldNamePtr).."\n字段偏移：0x"..tohex(field_offset))
        end
    end
end

local function dumpMethods(possibleThings)
    print("\n\n\n方法信息")
    for i=1, #possibleThings, 4 do
        local functionPtr = toUnsigned(possibleThings[i].value, pointerSize)
        local invokePtr = toUnsigned(possibleThings[i+1].value, pointerSize)
        local methodNamePtr = toUnsigned(possibleThings[i+2].value, pointerSize)
        local methodTypePtr = toUnsigned(possibleThings[i+3].address, pointerSize)
        
        if (functionPtr<libil2cppXaCdRange["end"] and functionPtr>libil2cppXaCdRange["start"]) and (invokePtr<libil2cppXaCdRange["end"] and invokePtr>libil2cppXaCdRange["start"]) and (deepSearch or (methodNamePtr<metadata[1]["end"] and methodNamePtr>metadata[1]["start"])) then -- and (methodTypePtr<libil2cppXaCdRange["end"] and methodTypePtr>libil2cppXaCdRange["start"]) then
        
        local cvcg = methodTypePtr + fangh--方法泛型
        
        local hhvv = {{address = cvcg,flags = 32}}--方法修饰符1
    hhvv = gg.getValues(hhvv)
    local mvvn = hhvv[1].value + ooi
    
    local vccl = hhvv[1].value + ggy--槽位
    
    local yhgk = {{address = vccl,flags = 4}}--槽位
    yhgk = gg.getValues(yhgk)
    local mbgt = yhgk[1].value
    if mbgt > 1000 then
    mbgt = ""
end
    
    local ddoo = {{address = mvvn,flags = 4}}--方法修饰符2
    ddoo = gg.getValues(ddoo)
    local kkgg = ddoo[1].value
  
    local function hjhj(ddd)
    local tglo = kkgg & 0x0010
    local ycml = kkgg & 0x0400
    local glpq = kkgg & 0x0100
    local phrc = kkgg & 0x0020
    local tgly = kkgg & 0x0040
    local hhoo = kkgg & 0x0100
    
    if tglo > 0 then
        return "static"
    elseif ycml > 0 then
        return "abstract"
    elseif glpq > 0 or glpq < 0 then
        return "override"
        elseif phrc > 0 and glpq == 0 then
        return "sealed override"
        elseif tgly > 0 and hhoo == 0x0100 then
        return "virtual"
        elseif tgly > 0 and hhoo ~= 0x0100 then
        return "override"
    else
        return ""  
    end
end


    local function getiidifier(okp)
    local okp = kkgg & 0x2000
    if okp > 0 then
        return "extern"
    else
        return ""  
    end
end



        local ddd = kkgg & 7
    local function getAccessModifier(ddd)
    if ddd == 6 then
        return "public"
    elseif ddd == 2 or ddd == 3 then
        return "internal"
    elseif ddd == 1 then
        return "private"
    elseif ddd == 4 then
        return "protected"
    elseif ddd == 5 then
        return "protected internal"
    else
        
        return ""  
    end
end
local ddd = kkgg & 7--位与运算
        
        local masz = {{address = methodTypePtr,flags = 32}}--方法类型1
    masz = gg.getValues(masz)
    local mobn = masz[1].value
    
    local asdz = {{address = mobn,flags = 32}}--方法类型2
    asdz = gg.getValues(asdz)
    local xcvf = asdz[1].value
    
    local ftgg = {{address = xcvf,flags = 32}}--备用方法类型1
    ftgg = gg.getValues(ftgg)
    local afok = ftgg[1].value
    
    local mrrf = {{address = afok,flags = 4}}--备用方法类型2
    mrrf = gg.getValues(mrrf)
    local oaas = mrrf[1].value
    
    local opof = {{address = xcvf,flags = 4}}--方法类型3
    opof = gg.getValues(opof)
    local herf = opof[1].value
    
    local fcdx = metadata[1]["start"] + ooi
    
    local hgvy = {{address = fcdx,flags = 4}}--字符串区域
    hgvy = gg.getValues(hgvy)
    local gvgp = hgvy[1].value
    local meta = metadata[1]["start"] + gvgp
    
    local leia = meta + herf
    local uhfq = meta + oaas
    
local tgcs = getName(uhfq)
if oaas == 0 or oaas == nil then
    tgcs = ""
end
   
            print("\n方法名："..getAccessModifier(ddd).." "..hjhj(ddd).." "..getiidifier(okp).." "..getName(leia)..tgcs.." "..getName(methodNamePtr).."()\n方法偏移：0x"..tohex(functionPtr-libstart).."\n参数数量："..mbgt)
            
        end
    end
end

local function Dump(class_parent)

    local selectedRange_shortname = gg.getValuesRange(class_parent)[1]
    gg.setRanges(searchRanges[selectedRange_shortname])
    gg.clearResults()
    gg.searchNumber(class_parent[1].address, pointerType)
    local res = gg.getResults(gg.getResultsCount())
    gg.clearResults()
    
    local all = {}
    local fields = {}
    local methods = {}
    
    for i, v in ipairs(res) do
        all[#all+1] = {address=v.address - (pointerSize*3), flags=pointerType} 
        all[#all+1] = {address=v.address - (pointerSize*2), flags=pointerType} 
        all[#all+1] = {address=v.address - (pointerSize*1), flags=pointerType}
        all[#all+1] = {address=v.address + pointerSize, flags=gg.TYPE_DWORD} 
    end
    all = gg.getValues(all)
    
    if isFieldDump then dumpFields(all) end
    if isMethodDump then dumpMethods(all) end
    gg.loadResults(originalResults)
end

local function main()

    libil2cppXaCdRange = getMainLib_Xa_Cd_Region()
    if libstart==0 then print("未发现libil2cpp.so\n如果游戏是分裂的,反分裂它") end
    metadata = get_metadata()
    if #metadata==0 then return print("未发现global-metadata.dat") end
    gg.clearResults()
    local abc = gg.prompt({'输入dll名'},{"Assembly-CSharp.dll"},{"text"})
gg.setRanges(4 | -2080896)--自己动内存
gg.searchNumber ("Q00'"..abc[1].."'00", gg.TYPE_BYTE , false , gg.SIGN_EQUAL)--自己动这个dll名
zz(0,32 | 4)
local ggg = gg.getResults(10000000)
local vvv = ggg[1].address
gg.clearResults()
gg.setRanges(32 | 4)
gg.searchNumber(vvv)
     
    originalResults = gg.getResults(gg.getResultsCount())
    if #originalResults==0 then return print("请在搜索列表加载您的地址.") end
    
    local menu = gg.prompt({"输入偏移(不建议使用深度搜索)", "dump字段", "dump方法", "深度搜索"}, {"1000"}, {"number", "checkbox", "checkbox", "checkbox"})
    if not menu then return end
    local off_range = tonumber(menu[1])
    isFieldDump = menu[2]
    isMethodDump = menu[3]
    deepSearch = menu[4]
    
    for i, v in ipairs(originalResults) do 
        local found = false
        local fixedPointer = fixAddressForPointer(v.address, pointerSize)
        
        
        
        local addrs = {} --
        for off=0, off_range, pointerSize do 
            addrs[#addrs+1] = {address = fixedPointer - off, flags = pointerType}
        end
        addrs = gg.getValues(addrs)
        
        local parentPtr = {}
        local namespacePtr = {}
        local classnamePtr = {}
        
        
        for i_, v_ in ipairs(addrs) do
            parentPtr[i_] = {address = v_.value, flags = pointerType}
            classnamePtr[i_] = {address = v_.value + (pointerSize*2), flags = pointerType}
            namespacePtr[i_] = {address = v_.value + (pointerSize*3), flags = pointerType}
        end
        parentPtr, classnamePtr, namespacePtr = gg.getValues(parentPtr), gg.getValues(classnamePtr), gg.getValues(namespacePtr)
        
        for i_, v_ in ipairs(parentPtr) do
            classnamePtr[i_].value = toUnsigned(classnamePtr[i_].value, pointerSize)
            namespacePtr[i_].value = toUnsigned(namespacePtr[i_].value, pointerSize)
            
            if deepSearch==true or (namespacePtr[i_].value>metadata[1].start and namespacePtr[i_].value<metadata[1]["end"]) then
                local tmp_class_name = getName(classnamePtr[i_].value)
                if tmp_class_name~="" then
                
    local ssss = {{address = addrs[i_].address,flags = 32}}--映射文件1
    ssss = gg.getValues(ssss)
    local tftf = ssss[1].value
    
    local aass = tftf + uhu--到类型定义
    local fcfo = tftf + baba--类型(各数据)
    local gvgl = tftf + oiok--枚举类判断
    local fcfy = tftf + lok--传值参数
    local tgc = tftf + bfs--接口类实现的类
    
    local mhrf = {{address = tgc,flags = 32}}--接口类1
    mhrf = gg.getValues(mhrf)
    local gtpk = mhrf[1].value
    
    
    
    local htfd = {{address = gtpk,flags = 32}}--接口类2
    htfd = gg.getValues(htfd)
    local mlxr = htfd[1].value + fangh
    
    local ycdq = {{address = mlxr,flags = 32}}--接口类3
    ycdq = gg.getValues(ycdq)
    local fkmn = ycdq[1].value
    local ctku = getName(fkmn)
    
    local skok = {{address = fcfy,flags = 32}}--class类1
    skok = gg.getValues(skok)
    local mfcg = skok[1].value + ihu
    
    local kihj = {{address = mfcg,flags = 1}}--class类2
    kihj = gg.getValues(kihj)
    local masg = kihj[1].value
    
    
    
    local tgyg = {{address = gvgl,flags = 1}}--枚举类1
    tgyg = gg.getValues(tgyg)
    local kigv = tgyg[1].value
   local rfhg = ((kigv >> 2) & 1)
    
    
    local ssse = {{address = fcfo,flags = 32}}--类型2
    ssse = gg.getValues(ssse)
    local oiuf = ssse[1].value + ggy
    
    local pigr = ssse[1].value + rmu--值类型
    local mtfl = {{address = pigr,flags = 1}}
    mtfl = gg.getValues(mtfl)
    local ytpc = mtfl[1].value
    
    
    local dxsz = {{address = oiuf,flags = 4}}
    dxsz = gg.getValues(dxsz)
    local sxcv = dxsz[1].value
    
    
    local function gjjjr(xxx)
   local rdr = sxcv & 0x00002000
    if rdr > 0 then
        return "类实例可序列化和反序列化"
  else
    return "类实例不可序列化和反序列化"
  end
end
local rdr = sxcv & 0x00002000
    
    local eee = sxcv & 0x00000020
    local fgh = sxcv & 0x00000080
    
local ggio = ytpc ~= 12
local ploh = ytpc ~= 11
local pdxi = rfhg ~= 1
local goon = fgh == 0

    local rrr = sxcv & 0x00000100
   local function gkker(iii)

    
    if fgh > 0 and rrr > 0 then
        return "static "
    elseif eee == 0 and fgh > 0 then
        return "abstract"
    elseif goon and ggio and ploh and pdxi then
        return "sealed"
    else
        return ""
    end
end

    local function geter(ggg)
    local ggg = sxcv & 0x00000020
  if ggg > 0 then
    return "interface"
  elseif rfhg == 1 then
    return "enum"
    elseif ytpc == 11 or ytpc == 12 then
    return "struct"
  else
    return "class"
  
  end
end
local ggg = sxcv & 0x00000020
    
    
    local ooo = sxcv & 7
    local function getAcier(ooo)
  if ooo == 1 or ooo == 2 then
    return "public"
  elseif ooo == 5 or ooo == 6 or ooo == 0 then
    return "internal"
  elseif ooo == 3 then
    return "private"
  elseif ooo == 4 then
    return "protected"
  elseif ooo == 7 then
    return "protected internal"
  else
    return ""
  end
end
local ooo = sxcv & 7
 
    local nmnm = {{address = aass,flags = 32}}--类型1
    nmnm = gg.getValues(nmnm)
    local bngv = nmnm[1].value + fangh
    
    local sxsx = {{address = bngv,flags = 32}}--类型2
    sxsx = gg.getValues(sxsx)
    local momo = sxsx[1].value
    
    local ssdd = {{address = tftf,flags = 32}}--映射文件2
    ssdd = gg.getValues(ssdd)
    local tttt = ssdd[1].value
    
    local slml = {{address = tttt,flags = 32}}--映射文件3
    slml = gg.getValues(slml)
    local bnbn = slml[1].value
               
                print("映射文件："..getName(bnbn))
                    print("命名空间: "..getName(namespacePtr[i_].value))
                    print("序列化："..gjjjr(xxx))
                    print("类名: "..getAcier(ooo).." "..gkker(iii).." "..geter(ggg).." "..tmp_class_name.."\n接口类："..ctku.."   \n继承类："..getName(momo))
                    
                    
                    if isFieldDump or isMethodDump then
                        Dump({parentPtr[i_]})
                    end
                    print(string.rep("=", 30))
                    found = true
                    break
                end
            end
        end
        if found==false then print("无法获取类名,可能是偏移太短.") end
        print("\n")
    end
end

main()
end






function ym5()
local gg = gg
local info = gg.getTargetInfo()
local masd = (info.x64 and 0x18 or 0x10)
local pkas = (info.x64 and 0x48 or 36)
local ijgy = (info.x64 and 0x38 or 28)
local iasd = get_metadata()[1].start + masd
local akll = edas(iasd)
    local maws = get_metadata()[1].start + akll
    local cvcf = edas(maws)
local aakj = getName(maws)
while true do
    maws = maws + 1  
    local kjkj = getName(maws)
    if kjkj == aakj..".dll" then
    local aaaw = maws
    gg.clearResults()
gg.setRanges(4 | 32)
gg.searchNumber(aaaw)
        break
    end
end
local vvv = gg.getResults(1000000)
local i = 0
for _, result in ipairs(vvv) do
local fgfg = result.address - pkas
local pocv = fgfg + ijgy
    local addr = fgfg + pkas  
    local vblo = pocv + pkas
    while true do
    local ghgp = eded(vblo)
    local rffl = eded(ghgp)
        local sssd = eded(addr)
        local eses = sssd
        local str = getName(eses)
        gg.addListItems({{address = eses, flags = gg.TYPE_DWORD, name = "该dll程序集地址：0x"..string.format("%x", addr).."\n该dll的xa字符串地址：0x"..string.format("%x", rffl).."\ndll名--".."序号："..i..". "..str}}) 
local file = io.open('获取的dll.txt', 'a+')
file:write("\n\n\n该dll程序集：0x"..string.format("%x", addr).."\ndll名--".."序号："..i..". "..str)
file:close()
        if str:find(".dll") == nil then
            break
        end
        addr = addr + pkas 
        vblo = vblo + pkas
        i = i + 1 
    end
    gg.clearResults()
end
end


local gg = gg
local info = gg.getTargetInfo()
gv	= gg.getValues
sv	= gg.setValues
sf	= string.format
_OSABI		= { "System V", "HP-UX", "NetBSD", "Linux", "GNU Hurd", "Solaris", "AIX", "IRIX", "FreeBSD", "Tru64", "Novell Modesto", "OpenBSD", "OpenVMS", "NonStop Kernel", "AROS", "Fenix OS", "CloudABI" }
_Type		= { [0] = "未知", [1] = "可重定位", [2] = "可执行", [3] = "动态链接库", [4] = "核心转储", [65024] = "起始值-特定操作系统", [65279] = "结束值-特定操作系统", [65280] = "起始值-特定处理器", [65535] = "结束值-特定处理器" }
_Machine	= { [0] = "无", [1] = "M32",  [2] = "SPARC", [3] = "x86", [4] = "68k", [5] = "88k", [6] = "486", [7] = "860", [8] = "MIPS", [10] = "MIPS_RS4_BE", [15] = "PARISC", [18] = "SPARC32PLUS", [20] = "PowerPC", [21] = "PowerPC64", [22] = "S390", [40] = "ARM32", [42] = "SuperH", [43] = "SPARCV9", [47] = "H8_300H", [48] = "H8S", [50] = "IA-64", [62] = "x86-64", [76] = "CRIS", [87] = "V850", [183] = "ARM64", [243] = "RISC-V", [0x9026] = "ALPHA", [0x9080] = "CYGNUS_V850", [0xA390] = "S390_OLD" }
_pHdrType	= { "空", "加载信息", "动态链接信息", "解释器路径", "注释信息", "共享库入口", "程序头本身", [1879048187] = "栈状态校验", [1879048188] = "校验缓冲区", [1879048192] = "高级别校验", [1879048193] = "处理器最小值", [2147483648] = "处理器最大值" }
_DT			= { "无效", "共享库字符串偏移", "PLT表重定位条目总大小", "PLT表地址", "哈希表地址", "字符串表地址", "符号表地址", "重定位表地址", "重定位表总大小", "每个重定位条目大小", "字符串表大小", "每个符号表条目大小", "初始化函数地址", "终止函数地址", "共享对象字符串偏移", "共享库路径字符串偏移量", "符号链接", "重定位地址", "重定位条目总大小", "每个重定位条目大小", "PLT表重定位条目类型", "调试器保留", "重定位表引用数据", "PLT表相关重定位地址", [1879047926] = "GNU哈希表", [1879048193] = "低级处理器信息", [2147483648] = "高级处理器信息" }
_Class			= { "未知", "32位", "64位" }
_Data			= { "未知", "小端格式", "大端格式" }
_Version			= { "未知", "最新版本", "版本2" }
_Flags			= { [0] = "无权限", [1] = "可执行", [2] = "可写", [4] = "可读", [6] = "可读可写", [7] = "可读可写可执行", [0xf0000000] = "保留" }
_p_align			= { "无对齐", "1字节对齐", "2字节对齐", "4字节对齐", "8字节对齐", "16字节对齐",  }
_st_other			= { [0] = "默认可见性", [1] = "隐藏可见性", [10] = "保护可见性", [12] = "内部可见性" }
_Elf_Flags			= { [0] = "无", [1] = "包含重定位代码", [2] = "有入口点", [4] = "混合工作模式", [8] = "ARM调用APCS", [0x10] = "APCS浮点指令", [0x20] = "包含位置无关代码", [0x40] = "使用八字节对齐", [0x80] = "使用新ABI", [0x100] = "使用旧ABI" }
--_STB			= {[0] = "本地符号", [1] = "全局符号", [2] = "弱符号"}
function rwmem(Address, SizeOrBuffer)
  _rw = {}
  if type(SizeOrBuffer) == "number" then
    _ = ""
    for _ = 1, SizeOrBuffer do _rw[_] = {address = (Address - 1) + _, flags = gg.TYPE_BYTE} end
    for v, __ in ipairs(gv(_rw)) do _ = _ .. sf("%02X", __.value & 0xFF) end
    return _
  end
  Byte = {} SizeOrBuffer:gsub("..", function(x) 
      Byte[#Byte + 1] = x _rw[#Byte] = {address = (Address - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. "h"} 
  end)
  sv(_rw)
end
function rdstr(Address, StrSize)
  if StrSize == nil or type(StrSize) ~= "number" then StrSize = 128 end
  local str = ""
  for _ in rwmem(Address, StrSize):gmatch("..") do
    if _ == "00" then break end
      str = str .. string.char(tonumber(_, 16))
  end
  return str
end
function GetLibraryBase(lib)
local tgt =  (info.x64 and 32 or 4)
	for _, __ in pairs(gg.getRangesList(lib)) do
	if __["state"] == "Xa" or __["state"] == "Xs" or __["state"] == "Cd" or __["state"] == "O" then
	local mlok = {{address = __["start"],flags = 4}}
    mlok = gg.getValues(mlok)
    local vbvb = mlok[1].value
    if vbvb == 1179403647 then
    gg.clearResults()
    gg.setRanges(-2080896)
    gg.searchNumber(__["start"], tgt)
    sds = {}
    sds[#sds + 1] = gg.getResultCount()
    gg.clearResults()
    local ggg = sds[1]
		if ggg ~= 0 then 
		return __["start"], __["end"]
		end
	end
	end
	end
	return nil
end
function GetLibInformation(LibName)
	local LibBase = GetLibraryBase(LibName)
	
	if LibBase ~= nil then
		_ = gv({
			{address = LibBase, flags = 4 },		-- Magic
			{address = LibBase + 0x4, flags = 1 },	-- Class
			{address = LibBase + 0x5, flags = 1 },	-- Data
			{address = LibBase + 0x6, flags = 1 },	-- Version
			{address = LibBase + 0x7, flags = 1 },	-- OS ABI
			{address = LibBase + 0x8, flags = 1 },	-- ABI Version
			{address = LibBase + 0x10, flags = 2 },	-- Type
			{address = LibBase + 0x12, flags = 2 },	-- Machine
			{address = LibBase + 0x14, flags = 4 },	-- Version
			{address = LibBase + 0x18, flags = 4 },	-- Entry Point
			{address = LibBase + (info.x64 and 0x20 or 0x1c), flags = 4 },	-- Program Header Table (PH) Offset
			{address = LibBase + (info.x64 and 0x28 or 0x20), flags = 4 },	-- Section Header Offset
			{address = LibBase + (info.x64 and 0x30 or 0x24), flags = 4 },	-- Flags
			{address = LibBase + (info.x64 and 0x34 or 0x28), flags = 2 },	-- Elf Header Size
			{address = LibBase + (info.x64 and 0x36 or 0x2a), flags = 2 },	-- Program Header Table (PH) Size Entry
			{address = LibBase + (info.x64 and 0x38 or 0x2c), flags = 2 },	-- Number Of Entries In Program Header Table (PH) 
			{address = LibBase + (info.x64 and 0x3a or 0x2e), flags = 2 },	-- Size Of Section Header Table Entry
			{address = LibBase + (info.x64 and 0x3c or 0x30), flags = 2 },	-- Number of Entries In Section Header Table
			{address = LibBase + (info.x64 and 0x3e or 0x32), flags = 2 },	-- Section Header String Index
			})
		local Elf = { 
			Magic		= _[1].value,
			Class		= _[2].value,
			Data		= _[3].value,
			Version		= _[4].value,
			OSABI		= _[5].value,
			ABIVer		= _[6].value,
			Type		= _[7].value,
			Machine 	= _[8].value,
			Version2	= _[9].value,
			EntryPoint 	= _[10].value,
			PHOffset 	= _[11].value,
			SHOffset	= _[12].value,
			Flags 		= _[13].value,
			HeaderSize 	= _[14].value,
			PHSize 		= _[15].value,
			PHNum		= _[16].value,
			SHSize 		= _[17].value,
			SHNum 		= _[18].value,
			SHStrIndex	= _[19].value,
			pHdr		= {},
			Dyn			= {},
			Sym			= {}
		}
		for _ = 1, Elf.PHNum do
			local _pHdr = LibBase + Elf.PHOffset + (_ * Elf.PHSize)
			local pHdr = gv({
				{ address = _pHdr, flags = 4 }, 		-- p_type
				{ address = _pHdr + (info.x64 and 0x8 or 0x4), flags = 4 }, 	-- p_offset
				{ address = _pHdr + (info.x64 and 0x10 or 0x8), flags = 4 }, 	-- p_vaddr
				{ address = _pHdr + (info.x64 and 0x18 or 0xc), flags = 4 },	-- p_paddr
				{ address = _pHdr + (info.x64 and 0x20 or 0x10), flags = 4 },	-- p_filesz
				{ address = _pHdr + (info.x64 and 0x28 or 0x14), flags = 4 },	-- p_memsz
				{ address = _pHdr + (info.x64 and 0x4 or 0x18), flags = 4 },	-- p_flags
				{ address = _pHdr + (info.x64 and 0x30 or 0x1c), flags = 4 },	-- p_align
			})
			Elf.pHdr[_] = { 
				p_type		= pHdr[1].value,
				p_offset	= pHdr[2].value,
				p_vaddr		= pHdr[3].value,
				p_paddr		= pHdr[4].value,
				p_filesz	= pHdr[5].value,
				p_memsz		= pHdr[6].value,
				p_flags		= pHdr[7].value,
				p_align		= pHdr[8].value
			}
		end
		for _ = 1, Elf.PHNum do  
			if Elf.pHdr[_].p_type == 2 then
				local DynCount = 0
				while true do
					local _Dyn = gv({
						{ address = LibBase + Elf.pHdr[_].p_vaddr + (DynCount * 8), flags = 4 }, -- d_tag
						{ address = LibBase + Elf.pHdr[_].p_vaddr + (info.x64 and 8 or 4) + (DynCount * 8), flags = 4 } -- d_ptr / d_val
					})
					if _Dyn[1].value == 0 and _Dyn[2].value == 0 then break end 
					DynCount = DynCount + 1					
					Elf.Dyn[DynCount] = { 
						d_tag = _Dyn[1].value, 
						d_val = _Dyn[2].value, 
						d_ptr = _Dyn[2].value 
					}				
				end
			end
		end		
		for _ = 1, #Elf.Dyn do
			if Elf.Dyn[_].d_tag == 4 then nChain = gv({{address = (Elf.Dyn[_].d_ptr + 4) + LibBase, flags = 4}})[1].value   print(string.format("%X", Elf.Dyn[_].d_ptr)) end
			if Elf.Dyn[_].d_tag == 5 and gv({{address =Elf.Dyn[_].d_ptr + LibBase, flags = 4}})[1].value~=1179403647 then strtab = Elf.Dyn[_].d_ptr + LibBase print(string.format("%X", strtab)) end
			if Elf.Dyn[_].d_tag == 6 then symtab = Elf.Dyn[_].d_ptr + LibBase  print(string.format("%X", symtab)) end
		end
		nChain=2000
		if nChain ~= nil then
			for _ = 1, nChain do
			
				local sym = symtab + (_ * (info.x64 and 0x18 or 0x10))
				__ = gv({
					{ address = sym, flags = 4 },		-- st_name
					{ address = sym + (info.x64 and 0x8 or 0x4), flags = 4 },	-- st_value
					{ address = sym + (info.x64 and 0x10 or 0x8), flags = 4 },	-- st_size
					{ address = sym + (info.x64 and 0x18 or 0xc), flags = 1 },	-- st_info
						{ address = sym + (info.x64 and 0x20 or 16), flags = 1 },	-- st_other
						{ address = sym + (info.x64 and 0x28 or 20), flags = 2 }   --st_shndx
				})
				
				Elf.Sym[_] = {
					name		= rdstr(strtab + __[1].value),
					st_name		= __[1].value,
					st_value	= __[2].value,
					st_size		= __[3].value,
					st_info		= __[4].value,
					st_other		= __[5].value,
					st_shndx		= __[6].value
				}				
			end
		end
		return Elf
	end
	return nil
end
function ym3()
xz=gg.choice({'选择so',
'输入so名'},nil,'选择一个获取so的方式，为了能更适配一些经过处理的so，所以会进行一些搜索拖慢速度，请忍耐')
if xz==nil then else
if xz==1 then so1() end
if xz==2 then so2() end
end
end
function so1()
ElfInsideMem = {}
for _, __ in pairs(gg.getRangesList("*.so")) do
	if __["state"] == "Xa" or __["state"] == "Xs" or __["state"] == "Cd" then 		ElfInsideMem[#ElfInsideMem + 1] = __["name"]:match ("[^/]+$")
	end
end
local seen = {} local uniqueValues = {} for _, value in ipairs(ElfInsideMem) do if not seen[value] then table.insert(uniqueValues, value) seen[value] = true end end ElfInsideMem = uniqueValues
_ = gg.choice(ElfInsideMem, nil, "选择一个库: ")
if _ == nil then return nil end
gg.toast("获取 "..ElfInsideMem[_].." 信息中 ...")
TargetLib	= ElfInsideMem[_]
LibBase		= GetLibraryBase(TargetLib)
Elf			= GetLibInformation(TargetLib) 
end
function so2()
local y = gg.prompt({'填一个so全名(如libil2cpp.so)'},{""},{"text"})
if y[1] == nil then return nil end
gg.toast("获取 "..y[1].." 信息中 ...")
TargetLib	= y[1]
LibBase		= GetLibraryBase(TargetLib)
Elf			= GetLibInformation(TargetLib) 
end
function ym2()
xz=gg.choice({'查看动态段',
'查看符号表',
'查看哈希表',
'一键dump符号'},nil,'部分so可能没有这些东西或者被抹去')
if xz==nil then else
if xz==1 then don1() end
if xz==2 then don2() end
if xz==3 then don3() end
if xz==4 then don4() end
end
end
function don1()
	__ = "" ___ = {{}} 
	for _ = 1, #Elf.Dyn do
		DynName = _DT[tonumber(Elf.Dyn[_].d_tag) + 1] ~= nil and _DT[tonumber(Elf.Dyn[_].d_tag) + 1] or Elf.Dyn[_].d_tag
		___[_] = {name = DynName, address = LibBase + Elf.Dyn[_].d_ptr, flags = 4}
		__ = __ .. sf("\n[%d] 类型: %s | 指针: 0x%08x\n", _, DynName, Elf.Dyn[_].d_val)
	end
	local a = gg.alert("动态段: \n"..__, "保存到列表", "返回")
	if a == 1 then
		gg.addListItems(___)
	end
	if a == 2 then
	return shenmi()
	end
end
function don2()
	__ = "" ___ = {{}} 
	for _ = 1, #Elf.Dyn do
		DynName = _DT[tonumber(Elf.Dyn[_].d_tag) + 1] ~= nil and _DT[tonumber(Elf.Dyn[_].d_tag) + 1] or Elf.Dyn[_].d_tag

	SymInfoChooser = {}
	for _=1, #Elf.Sym do SymInfoChooser[#SymInfoChooser + 1] = "["..tostring(_).."]: "..Elf.Sym[_].name end
	while true do
		_ = gg.choice(SymInfoChooser, nil, "选择符号: ")
		if _ == nil then break end
		local tgh = gg.alert(sf("#%d : %s\n符号地址: 0x%08X\n字符串地址: 0x%08X\n符号值: 0x%08X\n符号大小: 0x%08X\n符号信息: 0x%08X\n可见性：%s\n所在段号：0x%08X", 
		_, Elf.Sym[_].name, Elf.Sym[_].st_value + LibBase, strtab + Elf.Sym[_].st_name, Elf.Sym[_].st_value, Elf.Sym[_].st_size, Elf.Sym[_].st_info, _st_other[Elf.Sym[_].st_other], Elf.Sym[_].st_shndx), "跳转到符号", "读写汇编指令")
		local ghg = Elf.Sym[_].st_value + LibBase
		if tgh == 1 then
			gg.gotoAddress(ghg) break
			elseif tgh == 2 then
			local z = {{address = ghg,flags = 4}}z = gg.getValues(z)
local b = string.format("0x%04X", z[1].value)
local d = gg.disasm(5, ghg, b)
local g = gg.disasm(4, ghg, b)
local o = gg.disasm(6, ghg, b)
local y = gg.prompt({'ARM','TB'},{o,d},{"text","text"})
local r = {{address = ghg,flags = 4,value = y[1]}}
gg.setValues(r)
			
			else
			return shenmi()
		end
		end
		
	end
	end
	function don3()
		__ = "" ___ = {{}} 
	for _ = 1, #Elf.Dyn do		
	if Elf.Dyn[_].d_tag == 4 then
	local h_nbucket = {{address = LibBase + Elf.Dyn[_].d_ptr, flags = 4}}
	h_nbucketvass = gg.getValues(h_nbucket)
    local h_nbucketvalu = h_nbucketvass[1].value	
    local h_nchain = {{address = LibBase + Elf.Dyn[_].d_ptr + 4, flags = 4}}
	h_nchainvass = gg.getValues(h_nchain)
    local h_nchainvalu = h_nchainvass[1].value	
    local mmm = gg.alert(sf("哈希表槽数：0x%08X\n链表数：0x%08X", 
		h_nbucketvalu, h_nchainvalu), "跳转到哈希表")
		if mmm == 1 then	
			gg.gotoAddress(LibBase + Elf.Dyn[_].d_ptr) 			
	end
	return shenmi()
	end
	end
	end
function don4()
local file = io.output(TargetLib)
for _=1, #Elf.Sym do 
local name = Elf.Sym[_].name or ""
local s_value = s or 0
local ghg = Elf.Sym[_].st_value + LibBase
local z = {{address = ghg,flags = 4}}z = gg.getValues(z)
local b = z[1].value
local d = gg.disasm(5, ghg, b)

local g = gg.disasm(4, ghg, b)
local o = gg.disasm(6, ghg, b)
    file:write("\n\n函数名："..Elf.Sym[_].name.."\n函数偏移：0x"..string.format("%X", Elf.Sym[_].st_value).."\n函数字符串地址：0x"..string.format("%X", strtab + Elf.Sym[_].st_name).."\nARM64指令：~A8 "..o.."\nThumb指令：~T "..d)
end
file:close()
gg.alert("dump完毕，已输出"..TargetLib.."到本目录")
return shenmi()
end


function ym1()
::main::
while true do
_ = gg.alert(sf("神秘全位数解析ELF\nso名称: %s\nso地址: 0x%08x\nELF魔术头: 0x%08X\n位数: %s\n排列方式: %s\n当前版本号: %s\n需要ABI类型: %s\n需要ABI版本: 0x%02X\nELF类型: %s"..
"\n执行机器类型: %s\n规范版本号: 0x%04X\n程序入口: 0x%08X\n程序头表偏移: 0x%08X\n节头表偏移: 0x%08X\n标志: %s\nELF头大小: 0x%04X\n程序头表大小: 0x%04X"..
"\n程序头表数: 0x%04X\n节头表大小: 0x%04X\n节头表数: 0x%04X\n节头表字符串索引: 0x%04X", TargetLib, LibBase, Elf.Magic, _Class[Elf.Class + 1], _Data[Elf.Data + 1], _Version[Elf.Version + 1], _OSABI[Elf.OSABI + 1], Elf.ABIVer, _Type[Elf.Type], _Machine[Elf.Machine],
Elf.Version2, Elf.EntryPoint, Elf.PHOffset, Elf.SHOffset, _Elf_Flags[Elf.Flags], Elf.HeaderSize, Elf.PHSize, Elf.PHNum, Elf.SHSize, Elf.SHNum, Elf.SHStrIndex), "程序头信息", "节头信息", "返回主页")
if _ == 3 then
	break
end
if _ == 1 then 
	PHTInfoChooser = {}
	for _=1, Elf.PHNum do PHTInfoChooser[#PHTInfoChooser + 1] = "["..tostring(_).."]: "..(_pHdrType[Elf.pHdr[_].p_type + 1] ~= nil and _pHdrType[Elf.pHdr[_].p_type + 1] or "未知") end
	while true do
		_ = gg.choice(PHTInfoChooser, nil, "选择一个程序头表: ")
		if _ == nil then break end
		gg.alert(sf("[%d] 程序头表:\n类型: %s\n偏移: 0x%08x\n虚拟内存地址: 0x%08x"..
		"\n物理内存地址: 0x%08x\n文件中大小: 0x%08x\n内存中大小: 0x%08x\n权限: %s\n对齐方式: %s", 
		_, _pHdrType[Elf.pHdr[_].p_type + 1] ~= nil and _pHdrType[Elf.pHdr[_].p_type + 1] or "未知", Elf.pHdr[_].p_offset, 
		Elf.pHdr[_].p_vaddr, Elf.pHdr[_].p_paddr, Elf.pHdr[_].p_filesz, Elf.pHdr[_].p_memsz, _Flags[Elf.pHdr[_].p_flags], _p_align[Elf.pHdr[_].p_align + 1]))
	end
	goto main
end
if _ == 2 then
gg.alert("还没写")
end
end
end
while true do       	
  gg.showUiButton()
  if gg.isClickedUiButton(false) then
    gg.hideUiButton()   
    shenmi()
  end 
  end   