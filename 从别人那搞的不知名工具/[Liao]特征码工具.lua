--Liao撰写

function FunUI(Table1,Table2,String)
    local FunPlay=Table2
    local FunName=Table1
    local Qing=gg.choice(
        FunName,nil,String)
    if Qing then
        local begin=_G[FunPlay[Qing]]
        if begin then
            begin()
            return true
        else
            gg.alert("无此功能函数:"..FunName[Qing])
            return false
        end
    end
end

function Main()
    local FunName,Fun,String={},{},"[Liao]特征码工具"
    local getSaveList = gg.getResults(1)[1]
    if getSaveList then
        op = string.format("[%X]",getSaveList.address) 
    else
        op = "[未选择]"
    end
    FunName={
    "记录特征码"..op,
    "对比特征码"..op,
    "生成特征码",
    "删除旧数据",
    "退出脚本",
    }
    Fun={
    "Loggingsignature",
    "Comparesignatures",
    "GenerateSignature",
    "Deleteolddata",
    "Quitthegame",
    }
    FunUI(FunName,Fun,String)
end

function Quitthegame()
    os.exit(print("Liao制作"))
end

function Deleteolddata()
    if io.open("[特征码]Code1.txt" , "r") ~= nil then
        os.remove("[特征码]Code1.txt")
    end
    if io.open("[特征码]Code2.txt" , "r") ~= nil then
        os.remove("[特征码]Code2.txt")
    end
    if io.open("[特征码]GenerateCode.txt" , "r") ~= nil then
        os.remove("[特征码]GenerateCode.txt")
    end
    gg.toast("删除完成")
end

function JLPY( zdfw , zdlx )--记录数据
    time = os.clock()
    local Address = gg.getSelectedListItems()[1].address - (zdfw + 4)
    local addressr = gg.getSelectedListItems()[1].address
    local offset = {}
    for i=1, zdfw*2 do
        Address = Address + 4
        offset[ i ] = {
        address = Address,
        flags = zdlx,
        offsets = (Address - addressr)
        }
    end
    local Getoffset = gg.getValues(offset)
    JLoffset , chains = "" , 0
    for k,v in ipairs(Getoffset) do
        if v.value ~= 0 and v.value ~= -1 then
            chains = chains + 1
            JLoffset = JLoffset .. "offset : " .. offset[k].offsets .. " value : " .. v.value .. "\n"
        end
    end
    gg.toast( "记录了[" .. chains .. "]条数据\n耗时:" .. os.clock() - time )
end

config = gg.EXT_CACHE_DIR .. '/Liao[特征码].cfg'
Liaotzm = loadfile(config)
if Liaotzm then
    Liaotzm = Liaotzm()
end
if Liaotzm == nil then Liaotzm = { 5000 , 4 , 4 } end

function Loggingsignature()--记录特征码
    local Range = gg.prompt( { "输入范围" , "输入类型" } , Liaotzm , {} )
    if Range == nil then else
        if Range[1] ~= Liaotzm[1] or Range[2] ~= Liaotzm[2] then
            gg.saveVariable(Range, config)
        end
        JLPY( Range[1] , Range[2] )
        io.open("[特征码]Code1.txt" , "w+"):write(JLoffset)
    end
end

function Comparesignatures()--对比特征码
    JLPY( Liaotzm[1] , Liaotzm[2] )
    io.open("[特征码]Code2.txt" , "w+"):write(JLoffset)
    local code1 = io.open("[特征码]Code1.txt" , "r"):read("*a")
    local code2 = io.open("[特征码]Code2.txt" , "r"):read("*a")
    local key , ket = {} , {}
    for k,i in code1:gmatch("offset : (.-) value : (.-)\n") do
        key["offset : " .. k .. " value : " .. i] = 1
    end
    for k,i in code2:gmatch("offset : (.-) value : (.-)\n") do
        if key["offset : " .. k .. " value : " .. i] ~= nil then
            ket[ #ket + 1 ] = "offset : " .. k .. " value : " .. i .. "\n"
        end
    end
    io.open("[特征码]GenerateCode.txt" , "w+"):write(table.unpack(ket))
    gg.toast("对比完成剩余[" .. #ket .."]条数据")
end

function GenerateSignature()
    local codesc = io.open("[特征码]GenerateCode.txt" , "r")
    if codesc ~= nil then
        codesc = codesc:read("*a")
        local configsc = gg.EXT_CACHE_DIR .. '/Liao[生成特征码].cfg'
        Liaosc = loadfile(configsc)
        if Liaosc then
            Liaosc = Liaosc()
        end
        if Liaosc == nil then Liaosc = { 4 , 4 , 0 , -1 } end
        local Generate = gg.prompt( { "输入内存" , "输入类型" , "输入开始范围" , "输入最大范围" } , Liaosc , {} )
        if Generate == nil then else
            local offset , values , tzmgs , PlugSelection = {} , {} , {} , false
            if gg.alert("是否塞选特征码个数", "是", "否") == 1 then 
                PlugSelection = true 
            end
            for i , k in codesc:gmatch("offset : (.-) value : (.-)\n") do
                offset[ #offset + 1 ] = i
                values[ #values + 1 ] = k
                if PlugSelection then
                    gg.clearResults()
                	gg.setRanges(Generate[1])
                	gg.searchNumber(k,Generate[2],false,gg.SIGN_EQUAL,Generate[3],Generate[4])
                    tzmgs[ #tzmgs + 1 ] = "offset : " .. i .. " value : " .. k .. " Number of : " .. gg.getResultsCount()
                else
                    tzmgs[ #tzmgs + 1 ] = "offset : " .. i .. " value : " .. k
                end
            end
            gg.clearResults()
            local choose = gg.choice(tzmgs , nil , "选择主特征码")
            if choose == nil then else
                MasterSignature = values[ choose ]
                Primarysignatureoffset = offset[ choose ]
                local choose = gg.multiChoice(tzmgs , nil , "选择副特征码")
                if choose == nil then else
                    local Offset , Offset2 = {} , {}
                    for i=1, #tzmgs do
                        if choose[i] then
                            if offset[ i ] < Primarysignatureoffset then
                                offsets = offset[ i ] - Primarysignatureoffset
                            else
                                offsets = Primarysignatureoffset - offset[ i ]
                            end
                            Offset[ #Offset + 1 ] = { values[ i ] , offsets , Generate[ 2 ] }
                            Offset2[ #Offset2 + 1 ] = "{" .. values[ i ] .. "," .. offsets .. "," .. Generate[ 2 ] .. "}"
                        end
                    end
                    Searchvalues({MasterSignature,nil,Generate[3],Generate[4],Generate[2],Generate[1]},{table.unpack(Offset)},{{0,4}},true)
                    local SelectBuild = gg.alert("该组特征码获取到[" .. gg.getResultsCount() .. "]条数值是否生成" , "是" , "重新选择")
                    if SelectBuild == 1 then
                        sc = "Searchvalues({"..MasterSignature..",nil,"..Generate[3]..","..Generate[4]..","..Generate[2]..","..Generate[1].."},{"..table.concat(Offset2 , ",").."},{{0,4}},true)"
                        gg.toast("已生成")
                        io.open("生成特征码.lua" , "w+"):write(tzm .. "\n" .. sc)
                    else
                        GenerateSignature()
                    end
                end
            end
        end
    else
        gg.toast("未获取到对比后的文件\n请先对比完成特征码后再生成")
    end
end

function Searchvalues(lefo,office,tablepy,zdfs)
    time = os.clock()
    gg.clearResults()
	gg.setRanges(lefo[6])
	gg.setVisible(false)
	gg.searchNumber(lefo[1],lefo[5],false,gg.SIGN_EQUAL,lefo[3] or 0,lefo[4] or -1)
	if gg.getResultsCount() ~= 0 then
    	if lefo[2] then
    		gg.searchAddress(lefo[2],-1,lefo[5],gg.SIGN_EQUAL,lefo[3] or 0,lefo[4] or -1)
    	end
    	local Count , tablest , ker = gg.getResults(gg.getResultsCount()) , {} , {}
        if office ~= {} then
            for p,y in ipairs(office) do
                for i = 1, #Count do
                    tablest[i] = {address = Count[i].address + y[2] , flags = y[3]}
                end
                gg.loadResults(tablest)
                gg.searchNumber(y[1],y[3])
                local yt = gg.getResults(gg.getResultsCount())
                if #yt == 0 then
                    return os.exit(print("第:" .. p .. "组副特征码:" .. y[1] .. "\n搜索失败"))
                end
                for i = 1, #yt do
                    if y[2] >= 0 then
                        ytaddress = yt[i].address - y[2]
                    else
                        ytaddress = yt[i].address + y[2]
                    end
                    ker[#ker + 1] = {address = ytaddress , flags = y[3]}
                end
                Count , yt , tablest , ker = ker , nil , {} , {}
            end
        end
        gg.clearResults()
	    if #Count ~= 0 then
    	    for j = 1, #Count do
    	        for k = 1, #tablepy do
    	            tablest[#tablest + 1] = {address = Count[j].address + tablepy[k][1] , flags = tablepy[k][2]}
    	        end
    	    end
    	    if zdfs then
    	        hqfs = gg.loadResults
    	    else
    	        hqfs = gg.getValues
    	    end
    	    return (hqfs(tablest)),gg.toast('搜索完成[' .. #tablest .. ']\n耗时:' .. os.clock()-time)
    	else
    	    gg.toast('特征码搜索失败')
    	end
	else
	    gg.toast('主特征码搜索失败')
	end
end

tzm = [[
function Searchvalues(lefo,office,tablepy,zdfs)
    time = os.clock()
    gg.clearResults()
	gg.setRanges(lefo[6])
	gg.setVisible(false)
	gg.searchNumber(lefo[1],lefo[5],false,gg.SIGN_EQUAL,lefo[3] or 0,lefo[4] or -1)
	if gg.getResultsCount() ~= 0 then
    	if lefo[2] then
    		gg.searchAddress(lefo[2],-1,lefo[5],gg.SIGN_EQUAL,lefo[3] or 0,lefo[4] or -1)
    	end
    	local Count , tablest , ker = gg.getResults(gg.getResultsCount()) , {} , {}
        if office ~= {} then
            for p,y in ipairs(office) do
                for i = 1, #Count do
                    tablest[i] = {address = Count[i].address + y[2] , flags = y[3]}
                end
                gg.loadResults(tablest)
                gg.searchNumber(y[1],y[3])
                local yt = gg.getResults(gg.getResultsCount())
                if #yt == 0 then
                    return os.exit(print("第:" .. p .. "组副特征码:" .. y[1] .. "\n搜索失败"))
                end
                for i = 1, #yt do
                    if y[2] >= 0 then
                        ytaddress = yt[i].address - y[2]
                    else
                        ytaddress = yt[i].address + y[2]
                    end
                    ker[#ker + 1] = {address = ytaddress , flags = y[3]}
                end
                Count , yt , tablest , ker = ker , nil , {} , {}
            end
        end
        gg.clearResults()
	    if #Count ~= 0 then
    	    for j = 1, #Count do
    	        for k = 1, #tablepy do
    	            tablest[#tablest + 1] = {address = Count[j].address + tablepy[k][1] , flags = tablepy[k][2]}
    	        end
    	    end
    	    if zdfs then
    	        hqfs = gg.loadResults
    	    else
    	        hqfs = gg.getValues
    	    end
    	    return (hqfs(tablest)),gg.toast('搜索完成[' .. #tablest .. ']\n耗时:' .. os.clock()-time)
    	else
    	    gg.toast('特征码搜索失败')
    	end
	else
	    gg.toast('主特征码搜索失败')
	end
end
]]

while true do
	gg.showUiButton()
	if gg.isClickedUiButton() then
		gg.hideUiButton()
		Main()
	end
end
