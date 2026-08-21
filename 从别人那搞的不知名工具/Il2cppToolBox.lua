script_title = "Il2cppToolBox  \n进程名称: " .. gg.getTargetInfo().label .. "\n包名: " .. gg.getTargetPackage()
bc = {
    Toast = function(toast_string, emoji)
        local _ = utf8.char(9552)
        gg.toast(script_title .. "\n\n" .. emoji .. _ .. _ .. _ .. _ .. _ .. _ .. _ .. _ .. _ .. _
                     .. _ .. _ .. _ .. emoji .. "\n\n" .. toast_string .. "\n\n" .. emoji .. _ .. _
                     .. _ .. _ .. _ .. _ .. _ .. _ .. _ .. _ .. _ .. _ .. _ .. emoji)
    end,
    Alert = function(headerString, bodyString, emoji)
        if #bodyString > 0 then
            gg.alert(script_title .. "\n\n" .. emoji .. " " .. headerString .. " " .. emoji .. "\n\n" .. bodyString)
        else
            gg.alert(script_title .. "\n\n" .. emoji .. " " .. headerString .. " " .. emoji)
        end
    end,
    Choice = function(headerString, bodyString, emoji)
        if #bodyString > 0 then
            return script_title .. "\n\n" .. emoji .. " " .. headerString .. " " .. emoji .. "\n\n" .. bodyString
        else
            return script_title .. "\n\n" .. emoji .. " " .. headerString .. " " .. emoji
        end
    end,
    Prompt = function(headerString, emoji)
        return script_title .. "\n\n" .. emoji .. " " .. headerString .. " " .. emoji
    end
}

local file = io.open('Api.lua',"r")
local gg = gg
local info = gg.getTargetInfo()

local pointerSize = (info.x64 and 8 or 4)
local pointerType = (info.x64==true and gg.TYPE_QWORD or gg.TYPE_DWORD)

local libstart=0
local libil2cppXaCdRange
local metadata
local originalResults

local isFieldDump, isMethodDump
local deepSearch = false

local gg=gg
local info = gg.getTargetInfo()
local LibTable = {}

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

-------------------------Utils End-------------------------

-------------------------Get Metadata Start-------------------------
--Getting metadata normally
local function fastest()
    return gg.getRangesList("global-metadata.dat")
end

--Checking mscordlib in stringLiteral start
local function faster()
    local metadata = {}
    local allRanges = gg.getRangesList()
    local stringOffset = {} --0x18 of metadata, stringOffset
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
        --Every string table starts with mscorlib.dll in global-metadata.dat
        --So, if the first 4 bytes are "m(0x6D) s(0x73) c(0x63) o(0x6F)"
        if v.value==0x6F63736D then return {allRanges[i]} end
    end
    return {}
end

--Finding get_fieldOfView in Ca, A, O
local function fast()
    local searchMemoryRange = {
        gg.REGION_C_ALLOC,
        gg.REGION_ANONYMOUS,
        gg.REGION_OTHER,
        gg.REGION_C_HEAP,
    } --add regions where you want to search.
    
    --if you want to search all regions, use following value -1.
    --[[
    local searchMemoryRange = {
        -1,
    }
    --]]
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
        [1] = fastest, --Getting metadata normally
        [2] = faster, --checking mscordlib in stringLiteral
        [3] = fast, --Finding get_fieldOfView in Ca, A, O
    }
    local metadata = {}
    
    for i=1, 3 do
        metadata = findingMethods[i]()
        if #metadata>0 then return metadata end
    end
    return {}
end
-------------------------Get Metadata End-------------------------

local function getMainLib_Xa_Cd_Region()
    local packageName = info.packageName
    local libil2cppRanges = gg.getRangesList(packageName=="com.mobile.legends" and "liblogic.so" or "libil2cpp.so")
    if #libil2cppRanges==0 then return {} end
    local XaCdRange = {
        ["start"] = 0,
        ["end"] = 0,
    }
    for i, v in ipairs(libil2cppRanges) do
        local elfHeader = {
            ["magicValue"] = {address=v["start"], flags=gg.TYPE_DWORD},
            ["e_phoff"] = {address=v["start"]+(info.x64 and 0x20 or 0x1C), flags=gg.TYPE_WORD},
            ["e_phnum"] = {address=v["start"]+(info.x64 and 0x38 or 0x2C), flags=gg.TYPE_WORD},
        }
        elfHeader = gg.getValues(elfHeader)
        if elfHeader["magicValue"].value==0x464C457F and v.type:sub(3,3)=="x" then
            local PHstart = v["start"] + elfHeader["e_phoff"].value
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
                            libstart = v.start
                            XaCdRange.start = v.start
                        end
                    end
                    if programFlags==6 and fileSize<virtualSize then
                        XaCdRange["end"] = XaCdRange["start"] + virtualAddr + fileSize
                    end
                end
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
gg.alert("反查获得的字段会在退出脚本后打印,\n\n若出现bug无打印数据,请重启脚本再反查")
    print("\n字段")
    for i=1, #possibleThings, 4 do
        local fieldNamePtr = toUnsigned(possibleThings[i+1].value, pointerSize)
        local fieldTypePtr = toUnsigned(possibleThings[i+2].value, pointerSize)
        local field_offset = possibleThings[i+3].value
        
        if (deepSearch or (fieldNamePtr<metadata[1]["end"] and fieldNamePtr>metadata[1]["start"])) and (fieldTypePtr<libil2cppXaCdRange["end"] and fieldTypePtr>libil2cppXaCdRange["start"]) and field_offset>=0 then  
        print(getName(fieldNamePtr).." //0x"..tohex(field_offset))
        end
    end
end

local function dumpMethods(possibleThings)
gg.alert("反查获得的方法会在退出脚本后打印,\n\n若出现bug无打印数据,请重启脚本再反查")
    print("\n方法")
    for i=1, #possibleThings, 4 do
        local functionPtr = toUnsigned(possibleThings[i].value, pointerSize)
        local invokePtr = toUnsigned(possibleThings[i+1].value, pointerSize)
        local methodNamePtr = toUnsigned(possibleThings[i+2].value, pointerSize)
        --local methodTypePtr = toUnsigned(possibleThings[i+3].value, pointerSize)
        
        if (functionPtr<libil2cppXaCdRange["end"] and functionPtr>libil2cppXaCdRange["start"]) and (invokePtr<libil2cppXaCdRange["end"] and invokePtr>libil2cppXaCdRange["start"]) and (deepSearch or (methodNamePtr<metadata[1]["end"] and methodNamePtr>metadata[1]["start"])) then -- and (methodTypePtr<libil2cppXaCdRange["end"] and methodTypePtr>libil2cppXaCdRange["start"]) then
        print(getName(methodNamePtr).."() //0x"..tohex(functionPtr-libstart))
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
        all[#all+1] = {address=v.address - (pointerSize*3), flags=pointerType} --function pointer
        all[#all+1] = {address=v.address - (pointerSize*2), flags=pointerType} --invoke function pointer or field name pointer
        all[#all+1] = {address=v.address - (pointerSize*1), flags=pointerType} --function name pointer or field type pointer
        all[#all+1] = {address=v.address + pointerSize, flags=gg.TYPE_DWORD} --function type pointer or field offset
    end
    all = gg.getValues(all)
    
    if isFieldDump then dumpFields(all) end
    if isMethodDump then dumpMethods(all) end
    gg.loadResults(originalResults)
end

require('Api')
Il2cpp()

arch = gg.getTargetInfo()

ggil2cppFrontend = {
    home = function()
        local checkSaveList = gg.getSelectedListItems()
        if #checkSaveList > 0 then
            ggil2cppFrontend.handleClick()
        else
            local options = {
                "FindClass",
                "FindMethods", 
                "FindFields", 
                "FindObject",
                "PatchesAddress", 
                "Search", 
                "QueryTool",
                "DecryptFile",
                "ScriptCreator"
            }
            local optionsMenu = {
                " 📝 类の修改", 
                " 📝 方法修改",
                " 📝 字段修改", 
                " 📝 对象修改", 
                " ⚙️ 修补工具",
                " 🔍 模糊查找", 
                " 🔎 反查功能",
                " 🔓 解密文件",
                " ️🔥 写法生成", 
                " ❌ 退出脚本"
            }
            
            local menu = gg.choice(
                optionsMenu, 
                2022,"Il2cppToolBox  \n进程名称: " .. gg.getTargetInfo().label .. "\n包名: " .. gg.getTargetPackage())
            if menu ~= nil then
                if menu == #optionsMenu then
           print(os.date("%Y年-%m月-%d日 %H时:%M分:%S秒"))
                    os.exit()
                end
                _G["ggil2cppFrontend"][options[menu]]()
            end
        end
    end,
    mySplit = function(inputstr, sep)
        sep = sep or "%s"
        local t = {}
        for field, s in string.gmatch(inputstr, "([^" .. sep .. "]*)(" .. sep .. "?)") do
            table.insert(t, field)
            if s == "" then
            end
        end
        return t
    end,
    QueryTool = function()
    QueryTool()
    end,
    DecryptFile = function()
    DecryptFile()
    end,
    Search = function()
        ggil2cppEdits.getGlobalMetadataStrings()
        ggil2cppEdits.searchMenu()
    end,
    ScriptCreator = function()
        scriptCreator.scriptMenu()
    end,

    retrievedClasses = {},
    FindClass = function()
        local menu = gg.prompt({
            bc.Prompt("📝类の修改\n", "") .. "\n 📝输入类名或地址",
            "🔎获取方法", 
            "🔎获取字段"
        }, {
            "", 
            true, 
            true
        }, {
            "text", 
            "checkbox", 
            "checkbox"
        })
        if menu ~= nil then
            local classesTable = ggil2cppFrontend.mySplit(menu[1], ",")
            local classesTableStatic = ggil2cppFrontend.mySplit(menu[1], ",")
            for i, v in pairs(classesTable) do
                if v:find("^0x") then
                    classesTable[i] = tonumber(classesTable[i])
                end
            end
            local tempTable = {}
            for i, v in pairs(classesTable) do
                tempTable[i] = {
                    Class = v,
                    MethodsDump = menu[2],
                    FieldsDump = menu[3]
                }
            end
            local result = Il2cpp.FindClass(tempTable)
            local tempTable = {}
            for index, value in pairs(result) do
                for i, v in pairs(value) do
                    ggil2cppFrontend.retrievedClasses[classesTableStatic[index]] = v
                    tempTable[i] = {
                        address = tonumber(v.ClassAddress, 16),
                        flags = gg.TYPE_DWORD,
                        name = "Class: " .. classesTableStatic[index] .. "\n" .. tostring(v)
                    }
                end
            end
            gg.addListItems(tempTable)
            bc.Alert("📝类の修改", #tempTable .. " 类添加到了保存列表", "")
        end
    end,
    retrievedMethods = {},
    FindMethods = function(methodNames)
        local menu = gg.prompt({
            bc.Prompt("📝方法修改\n", "") .. "\n 📝输入方法名"
        }, {
            methodNames
        }, {
            "text"
        })
        if menu ~= nil then
            local methodsTable = ggil2cppFrontend.mySplit(menu[1], ",")
            for i, v in pairs(methodsTable) do
                if v:find("^0x") then
                    methodsTable[i] = tonumber(methodsTable[i])
                end
            end
            local result = Il2cpp.FindMethods(methodsTable)
            local tempTable = {}
            for index, value in pairs(result) do
                for i, v in pairs(value) do
                    ggil2cppFrontend.retrievedMethods[#ggil2cppFrontend.retrievedMethods + 1] = v
                    local prepName = "[" .. #ggil2cppFrontend.retrievedMethods .. "]\n"
                    for k, val in pairs(v) do
                        prepName = prepName .. "\n" .. k .. ": " .. tostring(val)
                    end
                    tempTable[i] = {
                        address = tonumber(v.AddressInMemory, 16),
                        flags = gg.TYPE_DWORD,
                        name = prepName
                    }
                end
            end
            gg.addListItems(tempTable)
            bc.Alert("📝方法修改 ", #tempTable .. " 方法添加到了保存列表", "")
        end
    end,
    retrievedFields = {},
    FindFields = function(fieldNames)
        local menu = gg.prompt({
            bc.Prompt("📝字段修改\n", "") .. " \n 📝输入字段名"
        },
            fieldNames, 
        {
            "text"
        })
        if menu ~= nil then
            local fieldsTable = ggil2cppFrontend.mySplit(menu[1], ",")
            local result = Il2cpp.FindFields(fieldsTable)
            local tempTable = {}
            for index, value in pairs(result) do
                for i, v in pairs(value) do
                    ggil2cppFrontend.retrievedFields[#ggil2cppFrontend.retrievedFields + 1] = v
                    local prepName = "[" .. #ggil2cppFrontend.retrievedFields .. "]\n"
                    for k, val in pairs(v) do
                        prepName = prepName .. "\n" .. k .. ": " .. tostring(val)
                    end
                    tempTable[i] = {
                        address = tonumber(v.ClassAddress, 16),
                        flags = gg.TYPE_DWORD,
                        name = prepName
                    }
                end
            end
            gg.addListItems(tempTable)
            bc.Alert("📝字段修改", #tempTable .. " 字段添加到了保存列表.", "")
        end
    end,
    FindObject = function()
        local menu = gg.prompt({
            bc.Prompt("📝对象修改\n", "") .. "\n 📝输入类名或地址"
        }, {
            ""
        }, {
            "text"
        })
        if menu ~= nil then
            local classesTable = ggil2cppFrontend.mySplit(menu[1], ",")
            local classesTableStatic = ggil2cppFrontend.mySplit(menu[1], ",")
            for i, v in pairs(classesTable) do
                if v:find("^0x") then
                    classesTable[i] = tonumber(classesTable[i])
                end
            end
            local result = Il2cpp.FindObject(classesTable)
            local tempTable = {}
            for index, value in pairs(result) do
                for i, v in pairs(value) do
                    tempTable[i] = {
                        address = v.address,
                        flags = gg.TYPE_DWORD,
                        name = "Class Instance: " .. classesTableStatic[index]
                    }
                end
            end
            gg.addListItems(tempTable)
            bc.Alert("📝对象修改 ", #tempTable .. " 类の实例添加到了保存列表.", "")
        end
    end,
    PatchesAddress = function(className, methodName)
        local edit
        local createEdit = gg.choice({
            " ✔️ 是", 
            " ❌ 否"
        }, 
            nil, 
            bc.Choice("📝创建编辑", " 📌是否要先创建十六进制编辑？", "")
        )
        if createEdit ~= nil then
            if createEdit == 1 then
                edit = ggil2cppEdits.createEdit()
            end
        end
        local menu = gg.prompt({
            bc.Prompt("⚙️修补工具\n", "") .. "\n 📝类名", 
            " 📝方法名",
            " 📝修改值(\\x20\\x00\\x80\\x52\\xc0\\x03\\x5f\\xd6)"
        }, {
            className, 
            methodName, 
            edit
        }, {
            "text", 
            "text", 
            "text"}
        )
        if menu ~= nil then
            local Method1 = Il2cpp.FindMethods({menu[2]})[1]
            local s = menu[3]
            s = s:gsub("\\x(%x%x)", function(x)
                return string.char(tonumber(x, 16))
            end)
            for k, v in ipairs(Method1) do
                if v.ClassName == menu[1] then
                    ggil2cppFrontend.createRestore(tonumber(v.AddressInMemory, 16), #s)
                    Il2cpp.PatchesAddress(tonumber(v.AddressInMemory, 16), s)
                end
            end
        end
    end,
    restoreTable = {},
    restoreValues = function(address)
        gg.setValues(ggil2cppFrontend.restoreTable[tostring(address)])
        ggil2cppFrontend.restoreTable[tostring(address)] = nil
    end,
    createRestore = function(address, byteCount)
        ::create::
        if not ggil2cppFrontend.restoreTable[tostring(address)] or ggil2cppFrontend.restoreTable[tostring(address)] == nil then
            local tempTable = {}
            local offset = 0
            for i = 1, byteCount do
                tempTable[i] = {
                    address = address + offset,
                    flags = gg.TYPE_BYTE
                }
                offset = offset + 1
            end
            tempTable = gg.getValues(tempTable)
            ggil2cppFrontend.restoreTable[tostring(address)] = tempTable
        elseif #ggil2cppFrontend.restoreTable[tostring(address)] < byteCount then
            ggil2cppFrontend.restoreValues(address)
            goto create
        end
    end,
    handleClick = function()
        local saveList = gg.getSelectedListItems()
        local classes = {}
        local classInstances = {}
        local fields = {}
        local methods = {}
        local instanceFields = {}
        for i, v in pairs(saveList) do
            if v.name:find("Class:") then
                table.insert(classes, v)
            end
            if v.name:find("Class Instance:") then
                table.insert(classInstances, v)
            end
            if v.name:find("MethodName") then
                table.insert(methods, v)
            end
            if v.name:find("FieldName") then
                table.insert(fields, v)
            end
            if v.name:find("Instance Header:") then
                table.insert(instanceFields, v)
            end
        end
        local menu = gg.choice({
            "🔎类 (" .. ggil2cppFrontend.menuCount(classes) .. ")",
            "🔎类の实例 (" .. ggil2cppFrontend.menuCount(classInstances) .. ")",
            "🔎方法 (" .. ggil2cppFrontend.menuCount(methods) .. ")",
            "🔎字段 (" .. ggil2cppFrontend.menuCount(fields) .. ")",
            "🔎实例字段 (" .. ggil2cppFrontend.menuCount(instanceFields) .. ")"
        }, 
            nil,
            bc.Choice("📝编辑菜单", " \n 📝选择类型", "")
        )
        if menu ~= nil then
            if menu == 1 then
                ggil2cppFrontend.classMenu(classes)
            end
            if menu == 2 then
                ggil2cppFrontend.classInstanceMenu(classInstances)
            end
            if menu == 3 then
                ggil2cppFrontend.methodMenu(methods)
            end
            if menu == 4 then
                ggil2cppFrontend.fieldMenu(fields)
            end
            if menu == 5 then
                ggil2cppFrontend.instanceFieldMenu(instanceFields)
            end
        end
    end,
    menuCount = function(countTable)
        if countTable ~= nil and #countTable > 0 then
            return #countTable
        else
            return "0"
        end
    end,
    instanceFieldMenu = function(instanceTable)
        local menu = gg.choice({
            " ✔️ 是", 
            " ❌ 否"
        }, 
            nil, 
            bc.Choice("📝删除实例", " 📌是否从保存列表中删除这些实例字段？", "")
        )
        if menu ~= nil and menu == 1 then
            local saveList = gg.getListItems()
            for i, v in pairs(instanceTable) do
                local address = v.name:gsub(".+(Instance Header: .+)", "%1")
                for index, value in pairs(saveList) do
                    if value.name:find(address) then
                        saveList[index] = nil
                    end
                end
            end
            gg.clearList()
            gg.addListItems(saveList)
        end
    end,
    classMenu = function(classTable)
        local menuItems = {}
        local classesTable = {}
        for i, v in pairs(classTable) do
            local className = v.name:gsub("Class: ([A-Za-z0-9]+).+", "%1")
            menuItems[i] = className
            classesTable[i] = ggil2cppFrontend.retrievedClasses[className]
        end
        local menu = gg.choice(
            menuItems, 
            nil,
            bc.Choice("📝类の菜单", " 📝选择一个类", "")
        )
        if menu ~= nil then
            local classOptions = gg.choice({
                " 📝复制数据",
                " 📝方法 (" .. ggil2cppFrontend.menuCount(classesTable[menu].Methods) .. ")",
                " 📝字段 (" .. ggil2cppFrontend.menuCount(classesTable[menu].Fields) .. ")",
                " 📝创建脚本编辑/功能"
            }, 
                nil,
                bc.Choice("📝类の菜单", " 📝选择一项功能", "")
            )
            if classOptions ~= nil then
                if classOptions == 1 then
                    gg.copyText(classTable[menu].name)
                end
                if classOptions == 2 then
                    local classMethodsMenuItems = {}
                    for i, v in pairs(classesTable[menu].Methods) do
                        classMethodsMenuItems[i] = v.ReturnType .. " " .. v.MethodName
                    end
                    local classMethodsMenu = gg.choice(
                        classMethodsMenuItems, 
                        nil,
                        bc.Choice("📝方法菜单", " 📝选择一个方法", "")
                    )
                    if classMethodsMenu ~= nil then
                        local doWithMenu = gg.choice({
                            " 📝转储到保存列表", 
                            " 📝编辑方法"
                        }, 
                            nil, 
                            bc.Choice("📝方法菜单", " 📝选择一项功能", "")
                        )
                        if doWithMenu ~= nil then
                            if doWithMenu == 1 then
                                ggil2cppFrontend.FindMethods(classesTable[menu].Methods[classMethodsMenu].MethodName)
                            end
                            if doWithMenu == 2 then
                                ggil2cppFrontend.PatchesAddress(classesTable[menu].ClassName, classesTable[menu].Methods[classMethodsMenu].MethodName)
                            end
                        end
                    end
                end
                if classOptions == 3 then
                    local classFieldsMenuItems = {}
                    for i, v in pairs(classesTable[menu].Fields) do
                        classFieldsMenuItems[i] = v.Offset .. " " .. v.Type .. " " .. v.FieldName
                    end
                    local classFieldsMenu = gg.choice(
                        classFieldsMenuItems, 
                        nil, 
                        bc.Choice("📝字段菜单", " 📝选择一个字段.", "")
                    )
                    if classFieldsMenu ~= nil then
                        local doWithMenu = gg.choice({
                            " 📝转储到保存列表",
                            " 📝加载类和字段的实例到保存列表"
                        }, 
                            nil, 
                            bc.Choice("📝字段菜单", " 📝选择一项功能.", "")
                        )
                        if doWithMenu ~= nil then
                            if doWithMenu == 1 then
                                ggil2cppFrontend.FindFields(classesTable[menu].Fields[classFieldsMenu].FieldName)
                            end
                            if doWithMenu == 2 then
                                local result = Il2cpp.FindObject({classesTable[menu].ClassName})[1]
                                local tempTable = {}
                                for i, v in pairs(result) do
                                    tempTable[#tempTable + 1] = {
                                        address = v.address,
                                        flags = gg.TYPE_DWORD,
                                        name = "Class Instance: " .. classesTable[menu].ClassName
                                    }
                                    tempTable[#tempTable + 1] = {
                                        address = v.address + tonumber(classesTable[menu].Fields[classFieldsMenu].Offset, 16),
                                        flags = gg.TYPE_DWORD,
                                        name = "Field Name: " .. classesTable[menu].Fields[classFieldsMenu].FieldName .. 
                                            "\nOffset: " .. classesTable[menu].Fields[classFieldsMenu].Offset .. 
                                            "\nInstance Header: " .. v.address
                                    }
                                end
                                gg.addListItems(tempTable)
                                bc.Alert("📝添加实例 ", #tempTable .. " 类和字段实例添加到了保存列表", "")
                            end
                        end
                    end
                end
                if classOptions == 4 then
                    scriptCreator.handleClass(classesTable[menu])
                end
            end
        end
    end,
    classInstanceMenu = function(classInstanceTable)
        local menu = gg.choice({
            " 📝转储实例字段"
        }, 
            nil,
            bc.Choice("📝类の实例菜单", "", "")
        )
        if menu ~= nil then
            local classes = {}
            local headers = {}
            for i, v in pairs(classInstanceTable) do
                headers[i] = v.address
                classes[v.name:gsub("Class Instance: (.+)", "%1")] = v.address
            end
            local fixedClasses = {}
            for k, v in pairs(classes) do
                table.insert(fixedClasses, k)
            end
            local tempTable = {}
            for i, v in pairs(fixedClasses) do
                tempTable[i] = {
                    Class = v,
                    MethodsDump = false,
                    FieldsDump = true
                }
            end
            local result = Il2cpp.FindClass(tempTable)
            local tempTable = {}
            for index, value in pairs(result) do
                for i, v in pairs(value[1].Fields) do
                    for ind, val in pairs(headers) do
                        table.insert(tempTable, {
                            address = val + tonumber(v.Offset, 16),
                            flags = gg.TYPE_DWORD,
                            name = "Field Name: " .. v.FieldName .. 
                                "\nOffset: " .. v.Offset .. 
                                "\nInstance Header: " .. val
                        })
                    end
                end
            end
            gg.addListItems(tempTable)
            bc.Alert("📝添加了字段值 ", #tempTable .. " 字段值添加到了保存列表", "")
        end
    end,
    methodMenu = function(methodTable)
        local menuItems = {}
        local methodsTable = {}
        for i, v in pairs(methodTable) do
            local methodIndex = v.name:gsub("^.([0-9]+).+", "%1")
            methodIndex = tonumber(methodIndex)
            methodsTable[i] = ggil2cppFrontend.retrievedMethods[methodIndex]
            menuItems[i] = methodsTable[i].MethodName
        end
        local mainMenu = gg.choice(
            menuItems, 
            nil,
            bc.Choice("📝方法菜单", " 📝选择一个方法", "")
        )
        if mainMenu ~= nil then
            local mainMenuItems = {" 📝复制数据", " 📝编辑方法", " 📝创建脚本编辑/功能"}
            if ggil2cppFrontend.restoreTable[tostring(tonumber(methodsTable[mainMenu].AddressInMemory, 16))] then
                mainMenuItems[4] = "恢复原始值"
            end
            local menu = gg.choice(
                mainMenuItems, 
                nil,
                bc.Choice("📝方法菜单", " 📝选择一项功能", "")
            )
            if menu ~= nil then
                if menu == 1 then
                    gg.copyText(methodTable[mainMenu].name)
                end
                if menu == 2 then
                    ggil2cppFrontend.PatchesAddress(methodsTable[mainMenu].ClassName, methodsTable[mainMenu].MethodName)
                end
                if menu == 3 then
                    local tempTable = {}
                    local addToTable = scriptCreator.handleMethods({methodsTable[mainMenu]})
                    table.insert(tempTable, addToTable)
                    scriptCreator.createFunction(tempTable)
                end
                if menu == 4 then
                    ggil2cppFrontend.restoreValues(tonumber(methodsTable[mainMenu].AddressInMemory, 16))
                    bc.Alert("📌提示", " 📝已恢复原始值", "")
                end
            end
        end
    end,
    fieldMenu = function(fieldTable)
        local menuItems = {}
        local fieldsTable = {}
        for i, v in pairs(fieldTable) do
            local fieldIndex = v.name:gsub("^.([0-9]+).+", "%1")
            fieldIndex = tonumber(fieldIndex)
            fieldsTable[i] = ggil2cppFrontend.retrievedFields[fieldIndex]
            menuItems[i] = fieldsTable[i].FieldName
        end
        local mainMenu = gg.choice(
            menuItems, 
            nil, 
            bc.Choice("📝字段选择菜单", " 📝选择一个字段", "")
        )
        if mainMenu ~= nil then
            local menu = gg.choice({
                " 📝复制数据", 
                " 📝获取字段实例",
                " 📝创建脚本编辑/功能"
            }, 
                nil,
                bc.Choice("📝字段菜单", " 📝选择一项功能.", "")
            )
            if menu ~= nil then
                if menu == 1 then
                    gg.copyText(fieldTable[mainMenu].name)
                end
                if menu == 2 then
                    local result = Il2cpp.FindObject({fieldsTable[mainMenu].ClassName})[1]
                    for i, v in pairs(result) do
                        result[i].address = result[i].address + tonumber(fieldsTable[mainMenu].Offset, 16)
                    end
                    gg.loadResults(result)
                    bc.Alert("📝字段菜单 ", #result .. " 字段实例添加到了搜索列表.", "")
                end
                if menu == 3 then
                    local tempTable = {}
                    local addToTable = scriptCreator.handleFields({fieldsTable[mainMenu]})
                    table.insert(tempTable, addToTable)
                    scriptCreator.createFunction(tempTable)
                end
            end
        end
    end
}
ggil2cppEdits = {
    searchMenu = function()
        local searchPrompt = gg.prompt({
            bc.Prompt("📝模糊查找\n", "") .. "\n 📝输入关键词", 
            " 📝次要关键字",
            "📝区分大小写", 
            "🔎搜索类の", 
            "🔎搜索字段",
            "🔎搜索方法"
        }, {
            "", 
            "",
            true, 
            true, 
            true, 
            true
        }, {
            "text",
            "text", 
            "checkbox", 
            "checkbox", 
            "checkbox", 
            "checkbox"
        })
        if searchPrompt ~= nil then
            local resultsTable = {}
            local resultsTable2 = {}
            local resultsTable3 = {}
            local fieldResultCount = 0
            local methodResultCount = 0
            local classResultCount = 0
            local multiChoiceValues = {}
            for i, v in pairs(ggil2cppEdits.globalMetadataStrings) do
                if searchPrompt[3] == false then
                    local lowerSearch = string.lower(searchPrompt[1])
                    local lowerSearch2 = string.lower(searchPrompt[2])
                    local lowerString = string.lower(v)
                    if lowerString:find(lowerSearch) and lowerString:find(lowerSearch2) then
                        table.insert(resultsTable, v)
                        table.insert(resultsTable2, v)
                        if searchPrompt[4] == true then
                            table.insert(resultsTable3, v)
                        end
                        multiChoiceValues[#multiChoiceValues + 1] = true
                    end
                elseif v:find(searchPrompt[1]) and v:find(searchPrompt[2]) then
                    table.insert(resultsTable, v)
                    table.insert(resultsTable2, v)
                    if searchPrompt[4] == true then
                        table.insert(resultsTable3, v)
                    end
                    multiChoiceValues[#multiChoiceValues + 1] = true
                end
            end
            local results = gg.multiChoice (resultsTable, multiChoiceValues,"🔗取消选中你不想查找的值")
            if results ~= nil then
                local tempTable1 = {}
                local tempTable2 = {}
                local tempTable3 = {}
                for i,v in pairs (results) do
                    table.insert(tempTable1, resultsTable[i])
                    table.insert(tempTable2, resultsTable[i])
                    table.insert(tempTable3, resultsTable[i])
                end
                resultsTable = tempTable1
                resultsTable2 = tempTable2
                if searchPrompt[4] == true then
                    resultsTable3 = tempTable3
                end
            end
            local classLimit = #resultsTable
            if searchPrompt[5] == true then
                local result = Il2cpp.FindFields(resultsTable)
                local tempTable = {}
                for index, value in pairs(result) do
                    if not value.Error then
                        for i, v in pairs(value) do
                            fieldResultCount = fieldResultCount + 1
                            table.insert(resultsTable3,v.ClassName)
                        end
                    end
                end
            end
            if searchPrompt[6] == true then
                local result = Il2cpp.FindMethods(resultsTable2)
                local tempTable = {}
                for index, value in pairs(result) do
                    if not value.Error then
                        for i, v in pairs(value) do
                            methodResultCount = methodResultCount + 1
                            table.insert(resultsTable3,v.ClassName)
                        end
                    end
                end
            end
            local classResultsTable = {}
            local classResultsAdded = {}
            for i, v in pairs(resultsTable3) do
                if not classResultsAdded[v]  then
                    classResultsAdded[v] = true
                    classResultsTable[#classResultsTable + 1] = {
                        Class = v,
                        MethodsDump = true,
                        FieldsDump = true
                    }
                end
            end
            local result = Il2cpp.FindClass(classResultsTable)
            local tempTable = {}
            for index, value in pairs(result) do
                if not value.Error then
                    for i, v in pairs(value) do
                        if index <= classLimit then
                            classResultCount = classResultCount + 1
                        end
                        ggil2cppFrontend.retrievedClasses[v.ClassName] = v
                        tempTable[#tempTable + 1] = {
                            address = tonumber(v.ClassAddress, 16),
                            flags = gg.TYPE_DWORD,
                            name = "Class: ".. v.ClassName .. "\n" .. tostring(v)
                        }
                    end
                end
            end
            gg.addListItems(tempTable)
            bc.Alert("搜索结果", "字段 ("..fieldResultCount..")\n方法 ("..methodResultCount..")\n类の (".. classResultCount..")\n"..#tempTable .. " 类添加到了保存列表.", "")
        end
    end,
    s_b_s = ":" .. string.char(0) .. "mscorlib.dll" .. string.char(0),
    e_b_s = "00h;00h;0~~0;0~~0;0~~0;00h;0~~0;00h;0~~0;00h;FFh;FFh::12",
    getMetadataStringsRange = function()
        gg.setRanges(gg.REGION_OTHER)
        gg.clearResults()
        ::try_ca::
        gg.searchNumber(ggil2cppEdits.s_b_s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, nil, nil, 1)
        if gg.getResultsCount() == 0 and ca_range ~= true then
            ca_range = true
            gg.setRanges(gg.REGION_C_ALLOC)
            goto try_ca
        end
        if gg.getResultsCount() == 0 and ca_range == true then
            print("未发现Global-Metadata")
        end
        local start_search = gg.getResults(1)
        gg.clearResults()
        ggil2cppEdits.range_start = start_search[1].address
        for i, v in pairs(gg.getRangesList()) do
            if v["start"] < ggil2cppEdits.range_start and v["end"] > ggil2cppEdits.range_start then
                metadata_end = v["end"]
                break
            end
        end
        gg.searchNumber(ggil2cppEdits.e_b_s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, ggil2cppEdits.range_start, nil, 1)
        local end_search = gg.getResults(1)
        ggil2cppEdits.range_end = end_search[1].address
        gg.clearResults()
    end,
    getGlobalMetadataStrings = function()
        if ggil2cppEdits.globalMetadataStrings then
            return
        else
            ggil2cppEdits.globalMetadataStrings = {}
        end
        ggil2cppEdits.getMetadataStringsRange()
        bc.Toast("正在转储字符串数据", "")
        local dump_start = 0
        local dump_end = 0
        gg.dumpMemory(ggil2cppEdits.range_start, ggil2cppEdits.range_end, gg.EXT_STORAGE .. "/bc/", gg.DUMP_SKIP_SYSTEM_LIBS)
        for i, v in pairs(gg.getRangesList()) do
            if ggil2cppEdits.range_start > v.start and ggil2cppEdits.range_start < v["end"] then
                local dwordValueToHex = string.format('%x', v.start)
                if #dwordValueToHex == 8 or #dwordValueToHex == 10 or #dwordValueToHex == 12 then
                    dump_start = dwordValueToHex
                else
                    local sub = #dwordValueToHex / 2
                    sub = tonumber("-" .. sub)
                    dwordValueToHex = dwordValueToHex:sub(sub)
                    dump_start = dwordValueToHex
                end
                local dwordValueToHex = string.format('%x', v["end"])
                if #dwordValueToHex == 8 or #dwordValueToHex == 10 or #dwordValueToHex == 12 then
                    dump_end = dwordValueToHex
                else
                    local sub = #dwordValueToHex / 2
                    sub = tonumber("-" .. sub)
                    dwordValueToHex = dwordValueToHex:sub(sub)
                    dump_end = dwordValueToHex
                end
                break
            end
        end
        local BUFSIZE = 4 ^ 13
        local f = io.input(gg.EXT_STORAGE .. "/bc/" .. gg.getTargetPackage() .. "-" .. dump_start .. "-" .. dump_end .. ".bin")
        local start_capture = false
        trimmed_content = ""
        local trim_until = 31886460
        local current_size = 0
        while true do
            local rest = f:read(BUFSIZE)
            current_size = current_size + 67108864
            if rest and string.find(rest, "mscorlib.dll.<Module>") then
                start_capture = true
                bc.Toast("找到了字符串", "")
            end
            if start_capture == true then
                if rest then
                    trimmed_content = trimmed_content .. rest
                    if current_size >= trim_until then
                        trimmed_content = trimmed_content:gsub(".+(mscorlib.dll.<Module>.+)", "%1")
                        trimmed_content = string.sub(trimmed_content, 1, ggil2cppEdits.range_end - ggil2cppEdits.range_start)
                        break
                    end
                else
                    trimmed_content = trimmed_content:gsub(".+(mscorlib.dll.<Module>.+)", "%1")
                end
            end
        end
        ggil2cppEdits.globalMetadataStrings = ggil2cppFrontend.mySplit(trimmed_content, "\x00")
        trimmed_content = nil
    end,
    editSpace = gg.allocatePage(gg.PROT_READ | gg.PROT_WRITE, Il2cpp.globalMetadataEnd),
    createEdit = function()
        local menu_type = {" Boolean", " Integer", " Single (float)", " Double", " End Function"}
        local edit_type = gg.choice(
            menu_type, 
            nil, 
            bc.Choice("📝选择编辑类型", "", "")
        )
        if edit_type ~= nil then
            if edit_type == 1 then
                edits = ggil2cppEdits.getBoolEdit()
            end
            if edit_type == 2 then
                edits = ggil2cppEdits.getIntEdit()
                if arch.x64 then
                    edits = {nil, ggil2cppEdits.setValues(ggil2cppEdits.editSpace, edits[2])}
                else
                    edits = {ggil2cppEdits.setValues(ggil2cppEdits.editSpace, edits[1]), nil}
                end
            end
            if edit_type == 3 then
                local floatType = gg.choice({
                    " 📝精确 Float (0 - 429503284)", 
                    " 📝简单 Float (单行编辑)"
                }, 
                    nil,
                    bc.Choice("📝Float菜单", " 📝选择一个项目", "")
                )
                if floatType ~= nil then
                    if floatType == 1 then
                        edits = ggil2cppEdits.getComplexFloatEdit("Single")
                        if arch.x64 then
                            edits = {nil, ggil2cppEdits.setValues(ggil2cppEdits.editSpace, edits[2])}
                        else
                            edits = {ggil2cppEdits.setValues(ggil2cppEdits.editSpace, edits[1]), nil}
                        end
                    end
                    if floatType == 2 then
                        edits = ggil2cppEdits.getSimpleFloatEdit()
                    end
                end
            end
            if edit_type == 4 then
                edits = ggil2cppEdits.getComplexFloatEdit("Double")
                if arch.x64 then
                    edits = {nil, ggil2cppEdits.setValues(ggil2cppEdits.editSpace, edits[2])}
                else
                    edits = {ggil2cppEdits.setValues(ggil2cppEdits.editSpace, edits[1]), nil}
                end
            end
        end
        if edit_type == 5 then
            edits = {"\\x1E\\xFF\\x2F\\xE1", "\\xC0\\x03\\x5F\\xD6"}
        end
        if arch.x64 then
            return edits[2]
        else
            return edits[1]
        end
    end,
    setValues = function(address, edits)
        local address_table = {}
        local offset = 0
        local count = 1
        repeat
            address_table[count] = {}
            address_table[count].address = address + offset
            address_table[count].flags = gg.TYPE_DWORD
            address_table[count].value = edits[count]
            offset = offset + 4
            count = count + 1
        until (count == #edits + 1)
        gg.setValues(address_table)
        return ggil2cppEdits.getBytes(address, #address_table * 4)
    end,
    getBytes = function(address, numberOfBytes)
        local hexBytes = ""
        local offset = 0
        local bytesTable = {}
        for i = 1, numberOfBytes do
            bytesTable[i] = {
                address = address + offset,
                flags = gg.TYPE_BYTE
            }
            offset = offset + 1
        end
        bytesTable = gg.getValues(bytesTable)
        for i, v in pairs(bytesTable) do
            hexBytes = hexBytes .. "\\x" .. string.format('%02X', v.value):gsub("FFFFFFFFFFFFFF", "")
        end
        return hexBytes
    end,
    getBoolEdit = function()
        local arm7Edit = {
            isTrue = "\\x01\\x00\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
            isFalse = "\\x00\\x00\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1"
        }
        local arm8Edit = {
            isTrue = "\\x20\\x00\\x80\\x52\\xC0\\x03\\x5F\\xD6",
            isFalse = "\\x00\\x00\\x80\\x52\\xC0\\x03\\x5F\\xD6"
        }
        local menu = gg.choice({
            " ✔️ true", 
            " ❌ false"
        }, 
            nil, 
            bc.Choice("选择Bool编辑", "", "")
        )
        if menu ~= nil then
            if menu == 1 then
                return {arm7Edit.isTrue, arm8Edit.isTrue}
            end
            if menu == 2 then
                return {arm7Edit.isFalse, arm8Edit.isFalse}
            end
        end
    end,
    getIntEdit = function()
        local edits_arm7 = {}
        local edits_arm8 = {}
        ::set_val::
        local menu = gg.prompt({
            bc.Prompt("📝输入数字：-255到65535", "")
        }, {
        }, {
            "text"
        })
        if menu ~= nil then
            if tonumber(menu[1]) < -256 or tonumber(menu[1]) > 65535 then
                bc.Alert("📌提示", " 📝设置一个-255到65535之间的有效数字", "️")
                goto set_val
            end
            if tonumber(menu[1]) == 0 then
                edits_arm8[1] = "~A8 MOV W0, WZR"
            else
                edits_arm8[1] = "~A8 MOV W0, #" .. menu[1]
            end
            edits_arm8[2] = "~A8 RET"
            if menu[1]:find("[-]") then
                edits_arm7[1] = "~A MVN R0, #" .. menu[1]:gsub("[-]", "")
                edits_arm7[2] = "~A BX LR"
            else
                edits_arm7[1] = "~A MOVW R0, #" .. menu[1]
                edits_arm7[2] = "~A BX LR"
            end
            return {edits_arm7, edits_arm8}
        end
    end,
    getComplexFloatEdit = function(method_type)
        local max_value = 429503284
        ::set_value::
        local set_val = gg.prompt({
            bc.Prompt("⚙️设置 " .. method_type .. " 📝修改值 (最大值 " .. max_value .. ")", "")
        }, {
        }, {
            "text"
        })
        if set_val ~= nil and tonumber(set_val[1]) <= max_value then
            target = tonumber(set_val[1])
            local float_edits_arm7 = {}
            local float_edits_arm8 = {}
            if target <= 65535 and target >= 0 then
                if method_type == "Single" then
                    float_edits_arm7[1] = "~A MOVW R0, #" .. target
                    float_edits_arm7[2] = "100A00EEr" -- VMOV S0, R0
                    float_edits_arm7[3] = "C00AB8EEr" -- VCVT.F32.S32 S0, S0
                    float_edits_arm7[4] = "100A10EEr" -- VMOV R0, S0
                    float_edits_arm7[5] = "1EFF2FE1r" -- BX LR
                    if target == 0 then
                        float_edits_arm8[1] = "~A8 MOV W0, WZR"
                    else
                        float_edits_arm8[1] = "~A8 MOV W0, #" .. target
                    end
                    float_edits_arm8[2] = "0000271Er" -- FMOV S0, W0
                    float_edits_arm8[3] = "00D8215Er" -- SCVTF S0, S0
                    float_edits_arm8[4] = "0000261Er" -- FMOV W0, S0
                    float_edits_arm8[5] = "C0035FD6r" -- RET
                elseif method_type == "Double" then
                    float_edits_arm7[1] = "~A MOVW R0, #" .. target
                    float_edits_arm7[2] = "~A VMOV S0, R0"
                    float_edits_arm7[3] = "~A VCVT.F64.U32 D0, S0"
                    float_edits_arm7[4] = "~A VMOV R0, R1, D0"
                    float_edits_arm7[5] = "1EFF2FE1r" -- BX LR
                    if target == 0 then
                        float_edits_arm8[1] = "~A8 MOV W0, WZR"
                    else
                        float_edits_arm8[1] = "~A8 MOV W0, #" .. target
                    end
                    float_edits_arm8[2] = "~A8 SCVTF D0, W0"
                    float_edits_arm8[3] = "C0035FD6r" -- RET
                end
            end
            if target <= 131072 and target >= 65537 then
                float_val_2 = target - 65535
                if method_type == "Single" then
                    float_edits_arm7[1] = "~A MOVW R0, #65535"
                    float_edits_arm7[2] = "~A MOVW R1, #" .. float_val_2
                    float_edits_arm7[3] = "010080E0r" -- ADD R0, R0, R1
                    float_edits_arm7[4] = "100A00EEr" -- VMOV S0, R0
                    float_edits_arm7[5] = "C00AB8EEr" -- VCVT.F32.S32 S0, S0
                    float_edits_arm7[6] = "100A10EEr" -- VMOV R0, S0
                    float_edits_arm7[7] = "1EFF2FE1r" -- BX LR
                    float_edits_arm8[1] = "~A8 MOV W0, #65535"
                    float_edits_arm8[2] = "~A8 MOV W1, #" .. float_val_2
                    float_edits_arm8[3] = "0000010Br" -- ADD W0, W0, W1
                    float_edits_arm8[4] = "0000271Er" -- FMOV S0, W0
                    float_edits_arm8[5] = "00D8215Er" -- SCVTF S0, S0
                    float_edits_arm8[6] = "0000261Er" -- FMOV W0, S0
                    float_edits_arm8[7] = "C0035FD6r" -- RET
                elseif method_type == "Double" then
                    float_edits_arm7[1] = "~A MOVW R0, #65535"
                    float_edits_arm7[2] = "~A MOVW R1,  #" .. float_val_2
                    float_edits_arm7[3] = "~A ADD R0, R0, R1"
                    float_edits_arm7[4] = "~A VMOV S0, R0"
                    float_edits_arm7[5] = "~A VCVT.F64.U32 D0, S0"
                    float_edits_arm7[6] = "~A VMOV R0, R1, D0"
                    float_edits_arm7[7] = "1EFF2FE1r" -- BX LR
                    float_edits_arm8[1] = "~A8 MOV W0, #65535"
                    float_edits_arm8[2] = "~A8 MOV W1,  #" .. float_val_2
                    float_edits_arm8[3] = "~A8 ADD W0, W0, W1"
                    float_edits_arm8[4] = "~A8 SCVTF D0, W0"
                    float_edits_arm8[5] = "C0035FD6r" -- RET
                end
            end
            if target > 131072 and target < 429503284 then
                for i = 2, 65536 do
                    rem = target % i
                    mult = i
                    sub_total = rem * mult
                    add_to = target - sub_total
                    if add_to <= 65536 and add_to > 0 then
                        if method_type == "Single" then
                            float_edits_arm7[1] = "~A MOVW R0, #" .. rem
                            float_edits_arm7[2] = "~A MOVW R1, #" .. mult
                            float_edits_arm7[3] = "900100E0r" -- MUL R0, R0, R1
                            float_edits_arm7[4] = "~A MOVW R1, #" .. add_to
                            float_edits_arm7[5] = "010080E0r" -- ADD R0, R0, R1
                            float_edits_arm7[6] = "100A00EEr" -- VMOV S0, R0
                            float_edits_arm7[7] = "C00AB8EEr" -- VCVT.F32.S32 S0, S0
                            float_edits_arm7[8] = "100A10EEr" -- VMOV R0, S0
                            float_edits_arm7[9] = "1EFF2FE1r" -- BX LR
                            float_edits_arm8[1] = "~A8 MOV W0, #" .. rem
                            float_edits_arm8[2] = "~A8 MOV W1, #" .. mult
                            float_edits_arm8[3] = "007C011Br" -- MUL W0, W0, W1
                            float_edits_arm8[4] = "~A8 MOV W1, #" .. add_to
                            float_edits_arm8[5] = "0000010Br" -- ADD W0, W0, W1
                            float_edits_arm8[6] = "0000271Er" -- FMOV S0, W0
                            float_edits_arm8[7] = "00D8215Er" -- SCVTF S0, S0
                            float_edits_arm8[8] = "0000261Er" -- FMOV W0, S0
                            float_edits_arm8[9] = "C0035FD6r" -- RET
                        elseif method_type == "Double" then
                            float_edits_arm7[1] = "~A MOVW R0, #" .. rem
                            float_edits_arm7[2] = "~A MOVW R1,  #" .. mult
                            float_edits_arm7[3] = "~A MUL R0, R0, R1"
                            float_edits_arm7[4] = "~A MOVW R1,  #" .. add_to
                            float_edits_arm7[5] = "~A ADD R1, R0, R1"
                            float_edits_arm7[6] = "~A VMOV S0, R0"
                            float_edits_arm7[7] = "~A VCVT.F64.U32 D0, S0"
                            float_edits_arm7[8] = "~A VMOV R0, R1, D0"
                            float_edits_arm7[9] = "1EFF2FE1r" -- BX LR
                            float_edits_arm8[1] = "~A8 MOV W0, #" .. rem
                            float_edits_arm8[2] = "~A8 MOV W1,  #" .. mult
                            float_edits_arm8[3] = "~A8 MUL W0, W0, W1"
                            float_edits_arm8[4] = "~A8 MOV W1,  #" .. add_to
                            float_edits_arm8[5] = "~A8 ADD W0, W0, W1"
                            float_edits_arm8[6] = "~A8 SCVTF D0, W0"
                            float_edits_arm8[7] = "C0035FD6r" -- RET
                        end
                        break
                    end
                end
            end
            if float_edits_arm7 and float_edits_arm8 then
                return {float_edits_arm7, float_edits_arm8}
            end
        elseif target > 429503283 then
            bc.Alert("📌修改值太大了", " 📝设置<429503283的值", "")
            goto set_value
        elseif target < 0 then
            bc.Alert("📌修改值太小了", " 📝设置≥0的值", "️")
            goto set_value
        end
    end,
    simpleFloatsTable = {
        ["ARM7"] = {
            {
                ["hex_edits"] = "\\x01\\x01\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 2
            }, {
                ["hex_edits"] = "\\x41\\x04\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 8
            }, {
                ["hex_edits"] = "\\42\\04\\A0\\E3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 32
            }, {
                ["hex_edits"] = "\\x43\\x04\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 128
            }, {
                ["hex_edits"] = "\\x11\\x03\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 512
            }, {
                ["hex_edits"] = "\\x45\\x04\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 2048
            }, {
                ["hex_edits"] = "\\x46\\x04\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 8192
            }, {
                ["hex_edits"] = "\\x47\\x04\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 32768
            }, {
                ["hex_edits"] = "\\x12\\x03\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 131072
            }, {
                ["hex_edits"] = "\\x49\\x04\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 524288
            }, {
                ["hex_edits"] = "\\x05\\x02\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 8589934592
            }, {
                ["hex_edits"] = "\\x51\\x04\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 34359738368
            }, {
                ["hex_edits"] = "\\x52\\x04\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 137438953472
            }, {
                ["hex_edits"] = "\\x53\\x04\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 549755813888
            }, {
                ["hex_edits"] = "\\x15\\x03\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 2199023255552
            }, {
                ["hex_edits"] = "\\x55\\x04\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 8796093022208
            }, {
                ["hex_edits"] = "\\x56\\x04\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 35184372088832
            }, {
                ["hex_edits"] = "\\x57\\x04\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 140737488355328
            }, {
                ["hex_edits"] = "\\x16\\x03\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 562949953421312
            }, {
                ["hex_edits"] = "\\x59\\x04\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 2251799813685248
            }, {
                ["hex_edits"] = "\\x06\\x02\\xA0\\xE3\\x1E\\xFF\\x2F\\xE1",
                ["float_value"] = 36893488147419103000
            }},
        ["ARM8"] = {
            {
                ["hex_edits"] = "\\x00\\x00\\xA8\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 2
            }, {
                ["hex_edits"] = "\\x00\\x20\\xA8\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 8
            }, {
                ["hex_edits"] = "\\x00\\x40\\xA8\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 32
            }, {
                ["hex_edits"] = "\\x00\\x60\\xA8\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 128
            }, {
                ["hex_edits"] = "\\x00\\x80\\xA8\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 512
            }, {
                ["hex_edits"] = "\\x00\\xA0\\xA8\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 2048
            }, {
                ["hex_edits"] = "\\x00\\xC0\\xA8\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 8192
            }, {
                ["hex_edits"] = "\\x00\\xE0\\xA8\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 32768
            }, {
                ["hex_edits"] = "\\x00\\x00\\xA9\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 131072
            }, {
                ["hex_edits"] = "\\x00\\x20\\xA9\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 524288
            }, {
                ["hex_edits"] = "\\x00\\x00\\xAA\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 8589934592
            }, {
                ["hex_edits"] = "\\x00\\x20\\xAA\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 34359738368
            }, {
                ["hex_edits"] = "\\x00\\x40\\xAA\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 137438953472
            }, {
                ["hex_edits"] = "\\x00\\x60\\xAA\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 549755813888
            }, {
                ["hex_edits"] = "\\x00\\x80\\xAA\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 2199023255552
            }, {
                ["hex_edits"] = "\\x00\\xA0\\xAA\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 8796093022208
            }, {
                ["hex_edits"] = "\\x00\\xC0\\xAA\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 35184372088832
            }, {
                ["hex_edits"] = "\\x00\\xE0\\xAA\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 140737488355328
            }, {
                ["hex_edits"] = "\\x00\\x00\\xAB\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 562949953421312
            }, {
                ["hex_edits"] = "\\x00\\x20\\xAB\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 2251799813685248
            }, {
                ["hex_edits"] = "\\x00\\x00\\xAC\\x52\\xC0\\x03\\x5F\\xD6",
                ["float_value"] = 36893488147419103000
            }}
    },
    getSimpleFloatEdit = function()
        local edits_arm7
        local edits_arm8
        local menu_table = {}
        for i, v in pairs(ggil2cppEdits.simpleFloatsTable["ARM7"]) do
            menu_table[#menu_table + 1] = v.float_value
        end
        local menu = gg.choice(
            menu_table, 
            nil, 
            bc.Choice("📝选择Float(浮点值)", "", "")
        )
        if menu ~= nil then
            edits_arm7 = Il2Cpp.simpleFloatsTable["ARM7"][menu].hex_edits
            edits_arm8 = Il2Cpp.simpleFloatsTable["ARM8"][menu].hex_edits
            return {edits_arm7, edits_arm8}
        end
    end
}

scriptCreator = {
    scriptMenu = function()
        local menu = gg.choice({
            " 📝编辑功能 (" .. #scriptCreator.createdFunctions .. ")", 
            " 📝菜单编辑", 
            " 📤导出脚本"
        },
            nil, 
            bc.Choice("📝写法生成", "", "")
        )
        if menu ~= nil then
            if menu == 1 then
                scriptCreator.functionsMenu()
            end
            if menu == 2 then
                scriptCreator.menuEditor()
            end
            if menu == 3 then
                scriptCreator.generateScript()
            end
        end
    end,
    menuEditor = function()
        local menu = gg.choice({
            " 📝编辑功能名称", 
            " 📝编辑菜单顺序"
        }, 
            nil, 
            bc.Choice("📝菜单编辑", "", "")
        )
        if menu ~= nil then
            if menu == 1 then
                local menuItems = {}
                local menuType = {}
                for i, v in pairs(scriptCreator.createdFunctions) do
                    menuItems[i] = v.functionName
                    menuType[i] = "text"
                end
                local renameFunctions = gg.prompt(
                    menuItems, 
                    menuItems, 
                    menuType
                )
                if renameFunctions ~= nil then
                    for i, v in pairs(scriptCreator.createdFunctions) do
                        v.functionName = renameFunctions[i]
                    end
                end
            end
            if menu == 2 then
                local menuItems = {}
                local menuType = {}
                local currentPosition = {}
                local isSet = {}
                for i, v in pairs(scriptCreator.createdFunctions) do
                    menuItems[i] = v.functionName .. " [1; " .. #scriptCreator.createdFunctions .. "]"
                    currentPosition[i] = i
                    menuType[i] = "text"
                    isSet[i] = false
                end
                ::setorder::
                local reorderMenu = gg.prompt(
                    menuItems, 
                    currentPosition, 
                    menuType
                )
                if reorderMenu ~= nil then
                    for i, v in pairs(reorderMenu) do
                        isSet[tonumber(v)] = true
                    end
                    for i, v in pairs(isSet) do
                        if v == false then
                            for index, value in pairs(isSet) do
                                value = false
                            end
                            goto setorder
                        end
                    end
                    local tempTable = {}
                    for i, v in pairs(scriptCreator.createdFunctions) do
                        tempTable[tonumber(reorderMenu[i])] = v
                    end
                    scriptCreator.createdFunctions = tempTable
                end
            end
        end
    end,
    functionsMenu = function()
        local menuItems = {}
        for i, v in pairs(scriptCreator.createdFunctions) do
            menuItems[i] = v.functionName
        end
        local menu = gg.choice(
            menuItems, 
            nil, 
            bc.Choice("📝编辑功能", " 📝选择要编辑的功能", "")
        )
        if menu ~= nil then
            local functionMenu = gg.choice({
                " 📝删除字段编辑", 
                " 📝删除方法编辑", 
                " 📝删除功能"
            }, 
                nil, 
                bc.Choice("📝编辑功能", "", "")
            )
            if functionMenu ~= nil then
                if functionMenu == 1 then
                    local editsItems = {}
                    for i, v in pairs(scriptCreator.createdFunctions[menu].edits) do
                        editsItems[i] = ""
                        for index, value in pairs(v.fieldEdits) do
                            editsItems[i] = editsItems[i] .. value.FieldName .. "\n"
                        end
                    end
                    local editsIndex = gg.choice(
                        editsItems, 
                        nil, 
                        bc.Choice("📝字段菜单", "📝选择“编辑”从中删除字段编辑。", "")
                    )
                    local fieldEditsItems = {}
                    for i, v in pairs(scriptCreator.createdFunctions[menu].edits[editsIndex].fieldEdits) do
                        fieldEditsItems[i] = v.FieldName
                    end
                    local fieldEdits = gg.multiChoice(
                        fieldEditsItems,
                        nil,
                        bc.Choice(" 📝选择要删除的字段编辑", "", "")
                    )
                    if fieldEdits ~= nil then
                        for i, v in pairs(fieldEdits) do
                            table.remove(scriptCreator.createdFunctions[menu].edits[editsIndex].fieldEdits, i)
                        end
                        bc.Alert("📌已删除", " 📝已从功能中删除字段编辑 "..menuItems[menu], "")
                    end
                end
                if functionMenu == 2 then
                    local editsItems = {}
                    for i, v in pairs(scriptCreator.createdFunctions[menu].edits) do
                        editsItems[i] = ""
                        for index, value in pairs(v.methodEdits) do
                            editsItems[i] = editsItems[i] .. value.MethodName .. "\n"
                        end
                    end
                    local editsIndex = gg.choice(
                        editsItems, 
                        nil, 
                        bc.Choice("📝方法菜单", " 📝选择“编辑”从中删除方法编辑", "")
                    )
                    local methodEditsItems = {}
                    for i, v in pairs(scriptCreator.createdFunctions[menu].edits[editsIndex].methodEdits) do
                        methodEditsItems[i] = v.MethodName
                    end
                    local methodEdits = gg.multiChoice(
                        methodEditsItems,
                        nil,
                        bc.Choice("📝选择要删除的方法编辑", "", "")
                    )
                    if methodEdits ~= nil then
                        for i, v in pairs(methodEdits) do
                            table.remove(scriptCreator.createdFunctions[menu].edits[editsIndex].methodEdits, i)
                        end
                        bc.Alert("📌已删除", " 📝已从功能中删除方法编辑 "..menuItems[menu], "")
                    end
                end
                if functionMenu == 3 then
                    local confirmDelete = gg.choice({
                        " ✔️ 是", 
                        " ❌ 否"
                    }, 
                        nil,
                        bc.Choice("📌删除功能", " 📝你确定要删除此功能吗？", "")
                    )
                    if confirmDelete ~= nil and confirmDelete == 1 then
                        table.remove(scriptCreator.createdFunctions, menu)
                        bc.Alert("📌已删除", menuItems[menu] .. " 已被删除" , "")
                    end
                end
            end
        end
    end,
    exportScript = function(scriptString)
        file = io.open(gg.EXT_STORAGE .. "/下载/脚本导出" .. ".lua", "w+")
        file:write(scriptString)
        file:close()
        bc.Alert("📤导出脚本", " 📝脚本已保存到/下载/文件夹", "")
    end,
    createdFunctions = {},
    handleClass = function(classTable)
        local tempTable = {}
        ::continue::
        local menu = gg.choice({
            " 📝字段", 
            " 📝方法", 
            " 📝完成"
        }, 
            nil, 
            bc.Choice("📝创建编辑", " 📝选择要创建的编辑类型", "")
        )
        if menu ~= nil then
            if menu == 1 then
                local addToTable = scriptCreator.handleFields(classTable.Fields)
                table.insert(tempTable, addToTable)
                bc.Alert("📌提示", "📝已创建字段编辑", "")
                goto continue
            end
            if menu == 2 then
                local addToTable = scriptCreator.handleMethods(classTable.Methods)
                table.insert(tempTable, addToTable)
                bc.Alert("📌提示", "📝已创建方法编辑", "")
                goto continue
            end
            if menu == 3 then
                scriptCreator.createFunction(tempTable)
            end
        end
    end,
    createFunction = function(tempTable)
        local createNew
        if #scriptCreator.createdFunctions > 0 then
            local addOrNew = gg.choice({
                "📝创建新功能", 
                "📝添加到现有功能"
            },
                nil, 
                bc.Choice("📝功能菜单", "📌创建新功能还是添加到现有功能?", "")
            )
            if addOrNew ~= nil then
                if addOrNew == 1 then
                    createNew = true
                end
                if addOrNew == 2 then
                    createNew = false
                end
            end
        else
            createNew = true
        end
        if createNew ~= nil then
            if createNew == true then
                local nameFunction = gg.prompt({
                    bc.Prompt("📝输入功能名称", "")
                }, {
                }, {
                    "text"
                })
                if nameFunction ~= nil then
                    table.insert(scriptCreator.createdFunctions, {
                        functionName = nameFunction[1],
                        edits = tempTable
                    })
                    bc.Alert("📌提示", "📝已将编辑添加到新功能 "..nameFunction[1], "")
                end
            end
            if createNew == false then
                local menuItems = {}
                for i, v in pairs(scriptCreator.createdFunctions) do
                    menuItems[i] = v.functionName
                end
                local funcMenu = gg.choice(
                    menuItems, 
                    nil,
                    bc.Choice("📌选择功能", "📝选择要插入编辑的功能", "")
                )
                if funcMenu ~= nil then
                    for i, v in pairs(tempTable) do
                        for index, value in pairs(
                            scriptCreator.createdFunctions[funcMenu].edits) do
                            local classFound = false
                            if v.Class == value.Class then
                                classFound = true
                                if v.methodEdits then
                                    if v.methodEdits and value.methodEdits then
                                        for editIndex, editValue in pairs(v.methodEdits) do
                                            table.insert(value.methodEdits, editValue)
                                        end
                                    else
                                        value.methodEdits = v.methodEdits
                                    end
                                elseif v.fieldEdits then
                                    if v.fieldEdits and value.fieldEdits then
                                        for editIndex, editValue in pairs(v.fieldEdits) do
                                            table.insert(value.fieldEdits, editValue)
                                        end
                                    else
                                        value.fieldEdits = v.fieldEdits
                                    end
                                end
                                break
                            end
                            if classFound == false then
                                table.insert(scriptCreator.createdFunctions[funcMenu].edits, v)
                                bc.Alert("📌提示", "📝编辑添加到了 "..scriptCreator.createdFunctions[funcMenu].functionName, "")
                            end
                        end
                    end
                end
            end
        end
    end,
    handleFields = function(fieldsTable)
        local menuItems = {}
        for i, v in pairs(fieldsTable) do
            menuItems[i] = v.FieldName
        end
        local menu = gg.multiChoice(
            menuItems, 
            nil, 
            bc.Choice("📝选择字段", " 📝选择要为其创建编辑的字段", "")
        )
        if menu ~= nil then
            local promptItems = {}
            local promptTypes = {}
            for i, v in pairs(menu) do
                promptItems[#promptItems + 1] = "📝输入修改值"
                promptTypes[#promptTypes + 1] = "text"
            end
            ::set_edits::
            local editMenu = gg.prompt(
                promptItems, 
                nil, 
                promptTypes
            )
            if editMenu ~= nil then
                local edits = {}
                for i, v in pairs(editMenu) do
                    table.insert(edits, {
                        FieldName = promptItems[i],
                        edit = v
                    })
                    if #v == 0 then
                        goto set_edits
                    end
                end
                return {
                    Class = fieldsTable[1].ClassName,
                    fieldEdits = edits
                }
            end
        end
    end,
    handleMethods = function(methodsTable)
        local menuItems = {}
        local functionEdits = {}
        for i, v in pairs(methodsTable) do
            menuItems[i] = v.MethodName
        end
        local menu = gg.multiChoice(
            menuItems, 
            nil, 
            bc.Choice("📝选择方法", " 📝选择要为其创建编辑的方法", "")
       )
        if menu ~= nil then
            local menuItems2 = {}
            for i, v in pairs(menu) do
                menuItems2[#menuItems2 + 1] = menuItems[i]
            end
            ::set_edits::
            local selectedMenu = gg.choice(
                menuItems2, 
                nil, 
                bc.Choice("📝选择方法", " 📝选择要为其创建编辑的方法", "")
            )
            if selectedMenu ~= nil then
                local edit
                local createEdit = gg.choice({
                    " ✔️ 是", 
                    " ❌ 否"
                }, 
                    nil, 
                    bc.Choice("📝创建编辑", " 📌是否先创建十六进制编辑？", "")
                )
                if createEdit ~= nil then
                    if createEdit == 1 then
                        edit = ggil2cppEdits.createEdit()
                    end
                end
                local editMenu = gg.prompt({
                    bc.Prompt("📝编辑菜单", "") .. "\n 📝要修改的值 (\\x20\\x00\\x80\\x52\\xc0\\x03\\x5f\\xd6)"
                }, {
                    edit
                }, {
                    "text"
                })
                if editMenu ~= nil then
                    functionEdits[selectedMenu] = editMenu[1]
                end
            end
            if #menuItems2 == #functionEdits then
                local edits = {}
                for i, v in pairs(functionEdits) do
                    table.insert(edits, {
                        MethodName = menuItems2[i],
                        edit = v
                    })
                end
                return {
                    Class = methodsTable[1].ClassName,
                    methodEdits = edits
                }
            else
                goto set_edits
            end
        end
    end,
    generateScript = function()
        local menu = gg.prompt({
            bc.Prompt("📝输入脚本的标题", "") 
        }, {
        }, {
            "text"
        })
        if menu ~= nil then
            local scriptTitle = menu[1]
            local scriptTable = {
                'functionTable = ' .. tostring(scriptCreator.createdFunctions),
                '',
                'scriptTitle = "' .. scriptTitle .. '"',
                '',
                'require("Api")',
                'Il2cpp()',
                '',
                'restoreFields = {}',
                'restoreMethods = {}',
                '',
                'function handleClick(editsTable, functionIndex)',
                '    if restoreFields[functionIndex] or restoreMethods[functionIndex] then',
                '        if restoreFields[functionIndex] then',
                '            gg.setValues(restoreFields[functionIndex])',
                '            restoreFields[functionIndex] = nil',
                '        end',
                '        if restoreMethods[functionIndex] then',
                '            gg.setValues(restoreMethods[functionIndex])',
                '            restoreMethods[functionIndex] = nil',
                '        end',
                '        gg.alert(functionTable[functionIndex].functionName .. " 已关闭")',
                '    else',
                '        for i, v in pairs(editsTable) do',
                '            local getMethods = false',
                '            local getFields = false',
                '            if v.fieldEdits then',
                '                getFields = true',
                '            end',
                '            if v.methodEdits then',
                '                getMethods = true',
                '            end',
                '            local classTable = Il2cpp.FindClass({',
                '                {',
                '                    Class = v.Class,',
                '                    MethodsDump = getMethods,',
                '                    FieldsDump = getFields',
                '                }})[1][1]',
                '            if v.fieldEdits then',
                '                restoreFields[functionIndex] = {}',
                '                handleFieldEdits(v.Class, v.fieldEdits, classTable, functionIndex)',
                '            end',
                '            if v.methodEdits then',
                '                restoreMethods[functionIndex] = {}',
                '                handleMethodEdits(v.Class, v.methodEdits, classTable, functionIndex)',
                '            end',
                '        end',
                '        gg.alert(functionTable[functionIndex].functionName .. " 已开启")',
                '    end',
                'end',
                '',
                'function handleFieldEdits(className, fieldEditsTable, classTable, functionIndex)',
                '    local classInstances = Il2cpp.FindObject({className})[1]',
                '    local tempTable = {}',
                '    for i, v in pairs(classInstances) do',
                '        for index, value in pairs(fieldEditsTable) do',
                '            for fieldIndex, fieldData in pairs(classTable.Fields) do',
                '                if value.FieldName == fieldData.FieldName then',
                '                    tempTable[#tempTable + 1] = {',
                '                        address = v.address + tonumber(fieldData.Offset, 16),',
                '                        flags = gg.TYPE_DWORD,',
                '                        value = value.edit',
                '                    }',
                '                end',
                '            end',
                '        end',
                '    end',
                '    restoreFields[functionIndex] = gg.getValues(tempTable)',
                '    gg.setValues(tempTable)',
                'end',
                '',
                'function handleMethodEdits(className, methodEditsTable, classTable, functionIndex)',
                '    for i, v in pairs(methodEditsTable) do',
                '        for index, value in pairs(classTable.Methods) do',
                '            if v.MethodName == value.MethodName then',
                '                restoreMethods[functionIndex] = backupValues(tonumber(value.AddressInMemory, 16), #v.edit)',
                '                Il2cpp.PatchesAddress(tonumber(value.AddressInMemory, 16), v.edit)',
                '            end',
                '        end',
                '    end',
                'end',
                '',
                'function backupValues(address, byteCount)',
                '    local tempTable = {}',
                '    local offset = 0',
                '    for i = 1, byteCount do',
                '        tempTable[i] = {',
                '            address = address + offset,',
                '            flags = gg.TYPE_BYTE',
                '        }',
                '        offset = offset + 1',
                '    end',
                '    tempTable = gg.getValues(tempTable)',
                '    return tempTable',
                'end',
                '',
                'function home()',
                '    local menuItems = {}',
                '    for i, v in pairs(functionTable) do',
                '        menuItems[i] = v.functionName',
                '    end',
                '    local menu = gg.choice(menuItems, nil, scriptTitle)',
                '    if menu ~= nil then',
                '        handleClick(functionTable[menu].edits, menu)',
                '    end',
                'end',
                '',
                'home()',
                '',
                'while true do',
                '    if gg.isVisible() then',
                '        gg.setVisible(false)',
                '        home()',
                '    end',
                '    gg.sleep(100)',
                'end'
            }
            local scriptString = ""
            for i, v in pairs(scriptTable) do
                scriptString = scriptString .. v .. "\n"
            end
            scriptCreator.exportScript(scriptString)
        end
    end
}


function QueryTool()
    libil2cppXaCdRange = getMainLib_Xa_Cd_Region()
    if libstart==0 then gg.alert("未发现libil2cpp.so\n如果游戏是分裂的，反分裂它") end
    metadata = get_metadata()
    if #metadata==0 then return gg.alert("未发现global-metadata.dat") end
    originalResults = gg.getResults(gg.getResultsCount()) --checking results in search list(tab)
    if #originalResults==0 then return gg.alert("搜索列表无数据") end
    gg.alert("只有第一次点击反查,数据才可打印,是个bug\n需要第二次反查则重启脚本再点击反查")
    local menu = gg.prompt({"Il2cppToolBox\n若点击确定后无效请参考: \n1.类名必须勾选  2.可能偏移太短  3.无对应的数据\n📝输入偏移范围","🔎反查字段", "🔎反查方法","🔎反查类名","🔎命名空间"}, {"2000"}, {"text", "checkbox", "checkbox", "checkbox","checkbox"})
    if not menu then return end
    local off_range = tonumber(menu[1])
    isFieldDump = menu[2]
    isMethodDump = menu[3]
    isClassDump = menu[4]
    isNamespace = menu[5]
    
    
    for i, v in ipairs(originalResults) do
        local found = false
        local fixedPointer = fixAddressForPointer(v.address, pointerSize)
        print(i..". 地址:  0x"..tohex(v.address))
        
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
                if isNamespace == true then
                print("命名空间: "..getName(namespacePtr[i_].value))
                gg.alert("命名空间: "..getName(namespacePtr[i_].value))
                end
                if tmp_class_name~=""
                and isClassDump==true
                then
                    gg.alert("类名: "..tmp_class_name)
                    print("类名: "..tmp_class_name)  
                    
                    if isFieldDump or isMethodDump==true then
                        Dump({parentPtr[i_]})
                    end
                    print(string.rep("-", 25))
                    found = true
                    break
                end
            end
        end
    end
  end

function toHex(val)
    if info.x64==false then val=val&0xffffffff end
    return string.format('%x', val)
end

function get_libs()
    local allLibRange = gg.getRangesList(info.packageName..'*.so')
    if #allLibRange==0 then return -1 end
    local libs = {}
    for i, v in ipairs(allLibRange) do
        local is_exist = false
        local shortName = string.gsub(v.internalName, '.+/', '')
        shortName = string.gsub(shortName, ':.*', '')
        for a, b in ipairs(libs) do
            if b.shortName==shortName then b['end']=v['end'] b.size=b['end']-b.start break end
        end
        if is_exist==false and v.type:sub(3,3)=='x' and gg.getValues({{address=v.start, flags=4}})[1].value==0x464C457F then
            libs[#libs+1]=v libs[#libs].shortName=shortName
        end
    end
    return libs
end

function renameFile(starting, ending, pathing, naming)
    local oldPath = pathing..'/'..info.packageName..'-'..toHex(starting)..'-'..toHex(ending)..'.bin'
    local newPath = pathing..'/'..naming
    os.rename(oldPath, newPath)
    gg.alert('\n💎解密成功\n\n输出文件保存在 \n '..newPath)
end

function getLib(lib, path)
    if not os.rename(path, path) then
        return gg.alert('无效路径')
    end
    local outputPath=path..'/'..lib.shortName
    local old = io.open(lib.internalName, "rb")
    local new = io.open(outputPath, "wb")
    local old_size, new_size = 0, 0
    while true do
        local block = old:read(2^13)
        if not block then 
            old_size = old:seek( "end" )
        break
    end
    new:write(block)
    end
    old:close()
    new_size = new:seek( "end" )
    new:close()
    gg.alert('\n💎解密成功\n\n输出文件保存在 \n '..outputPath)
end

function dumpLib(lib, path)
    if not os.rename(path, path) then
        return gg.alert('无效路径')
    end
    local starting = lib.start
    local ending = lib['end']
    local naming = '(start address- '..toHex(starting)..')'..lib.shortName
    gg.dumpMemory(starting, ending-1, path)
    renameFile(starting, ending, path, naming)
end

function dumpMetadata(path)
    if not os.rename(path, path) then return print('无效路径') end
    local metadata = gg.getRangesList('global-metadata.dat')
    if #metadata==0 then return gg.alert('游戏 \"'..info.label..'\" 不含有global-metadata.dat文件(或者被隐藏了)') end
    
    local starting = metadata[1].start
    local ending = metadata[1]['end']
    gg.dumpMemory(starting, ending-1, path)
    
    local str = ''
    local metadata_version = gg.getValues({{address=metadata[1].start+4, flags=4}})[1].value
    if metadata_version>=27 then str='(start address- '..toHex(metadata[1].start)..')' end
    
    renameFile(starting, ending, path, str..'global-metadata.dat')
end

function Lib()
    LibTable = get_libs()
    if LibTable==-1 then return print('未发现任何lib，游戏可能是分裂的(也可能是Java应用程序)') end
    local names = {}
    local il2cpp
    local il2cpp_success = false
    local BiggestLib
    local biggestSize = 0
    
    gg.setRanges(-1)
    for i, v in ipairs(LibTable) do
        if il2cpp_success==false then
            gg.clearResults()
            gg.searchNumber("Q 00'Assembly-CSharp.dll' 00", 4, false, gg.SIGH_EQUAL, v.start, v['end'])
            if gg.getResultsCount()>0 then gg.clearResults() il2cpp=i il2cpp_success=true end
        end
        if biggestSize<v.size then biggestSize=v.size BiggestLib=i end
        
        local str = ''
        if (v.size/(1024*1024))<1 then str=(v.size/1024)..'kb'
        else str=(v.size/(1024*1024))..'mb' end
        names[#names+1] = v.shortName..' | '..str
    end
    if il2cpp_success==false then il2cpp=BiggestLib end
    
    ::menuAgain::
    local menu = gg.choice(names, il2cpp, '建议解密:  '..LibTable[il2cpp].shortName)
    if not menu then return DecryptFile() end
    ::there::
    local output = gg.prompt({'📝选择输出路径','🔐方法1','🔐方法2', '📌点击了解两种方法'},{'/sdcard'}, {'path','checkbox','checkbox', 'checkbox'})
    if not output then goto menuAgain end
    if output[4] then gg.alert('1. 直接从游戏中提取libil2cpp.so\n\n2. 从内存进程中提取libil2cpp.so+获取正常的lib值(输出两个文件)\n\n建议使用方法2') goto there end
    if output[2] then getLib(LibTable[menu], output[1]) end
    if output[3] then dumpLib(LibTable[menu], output[1]) end
end

function Metadata()
    local output = gg.prompt({'🔑选择输出文件路径'},{'/sdcard'}, {'path'})
    if not output then return DecryptFile() end
    dumpMetadata(output[1])
end

function DecryptFile()
    local menu = gg.choice({'🔏libil2cpp.so', '🔏global-metadata.dat'}, 0, "Il2cppToolBox  \n进程名称: " .. gg.getTargetInfo().label .. "\n包名: " .. gg.getTargetPackage())
    if not menu then return  end
    if menu==1 then Lib()
    elseif menu==2 then Metadata()
end
end

ggil2cppFrontend.home()
gg.showUiButton()

while true do
    if gg.isClickedUiButton() then
        ggil2cppFrontend.home()
    end
    gg.sleep(100)
end
