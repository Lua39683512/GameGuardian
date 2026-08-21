--[[
由F,xs二改
默认Ca内存
默认F类
默认修改99
默认只看偏移65的数据
只需要输入地址勾起后立马生成源码
自用极速版
需要请自行修改]]


local Range = {[gg.REGION_C_ALLOC]='C++ alloc' }--只设置Ca内存
local Type = {[gg.TYPE_FLOAT] = 'Double',}--设置只搜索E类

 function MainUI()
	local target = getAddress()
	target = tonumber(target, 16)
	local type = selectType()
	local max = getOffset()
	local mode = getMode()
	local result, data = forEachData(target, type, max, mode)
	local val = getEdtVal()
	local src = creatSrc(result, data, target, val)
end




 function getAddress() local prompts = {"请输入目标地址"}
	local defaults = {"",}
	local types = {'number',}
	
	local addr = gg.prompt(prompts, defaults, types)
	if Assert(addr) then
		return addr[1]
	else
		MainUI()
	end
end
 function getMode()
--	local items = {['up'] = "上偏移", ['down'] = "下偏移"}
--	local select = {['down'] = true,}
--	local message = "选择偏移模式"
	
	local mode = {['up'] = true,['down'] = true}--默认下偏移都看
--	local mode = gg.multiChoice(items, select, message)
	if Assert(mode) then
		return mode
	else
		gg.alert("未选择偏移模式")
		MainUI()
	end
end
 function getOffset()
	local prompts = {"输入最大偏移"}
	local defaults = {64}
	local types = {'number',}
	
--	local off = 64
	local off = gg.prompt(prompts, defaults, types)
	if Assert(off) then
		--return  64 --默认只看上下各偏移96内的数值
		return off[1]
	else
		gg.alert("未输入偏移")
		MainUI()
	end
end
 function getEdtVal()
--	local prompts = {"输入修改值"}
--	local defaults = {99,}
--	local types = {'number',}
	
	local edtVal = 	99
	--local edtVal = gg.prompt(prompts, defaults, types)
	if Assert(edtVal) then
		return 99--默认特征码修改99
		--return  edtVal[1]
	else
		gg.alert("未输入修改值")
		MainUI()
	end
end
 function selectRange()
	local items = Range
	local select = gg.REGION_C_ALLOC
	local message = "选择内存范围"
	
	local range = gg.REGION_C_ALLOC--默认Ca内存
	--local range = gg.choice(items, select, message)
	if Assert(range) then
		return range
	else
		gg.alert("未选择内存范围")
		MainUI()
	end
end
 function selectType()
	local items = Type
	local select = gg.TYPE_FLOAT
	local message = "选择数据类型"
	
	local type = gg.TYPE_FLOAT--默认E类搜索
	--local type = gg.choice(items, select, message)
	if Assert(type) then
		return type
	else
		gg.alert("未选择数据类型")
		MainUI()
	end
end
 function forEachData(target, type, max, mode)
	local items = {}
	local select = {}
	local message = "选择特征码"
	
	local t = {}
	local data = {}
	local offset
	if mode.up then
		for offset = -max, max%4-4, 4 do
			t[#t+1] = {}
			t[#t].address = target + offset
			t[#t].flags = type
		end
	end
	t[#t+1] = {['address'] = target, ['flags'] = type}
	select = {[#t] = true}
	if mode.down then
		for offset = max%4+4, max+4, 4 do
			t[#t+1] = {}
			t[#t].address = target + offset
			t[#t].flags = type
		end
	end
	
	t = gg.getValues(t)
	for i, v in ipairs(t) do
		data[#data+1] = v.value
		local info = string.format("", v.address).."    "..v.value.."  偏移："..(v.address-target)
		items[#items+1] = info
	end
	
	return gg.multiChoice(items, select, message ), t
end
 function creatSrc(result, data, target, edtVal)
	local value = {}
	local offset = {}
	for i=1, #data do
		if (result[i] == true) then
			value[#value+1] = data[i].value
			offset[#offset+1] = data[i].address - target
		end
	end
	
	
	local SEARCH = "local tb1 = {"
	for i=1, #value do
		SEARCH = SEARCH.."{"..value[i]..","..offset[i].."}, "
	end
	SEARCH = SEARCH.."}"
	local edtOff = 0
	WRITE = "\nlocal tb2 = {"
	WRITE = WRITE.."{"..edtVal..","..edtOff.."}, "
	WRITE = WRITE.."}"
	EDIT = "\nlocal dataType = "..selectType().."\n".."gg.setRanges("..selectRange()..") \n SearchWrite(tb1,tb2, dataType)"
print(SEARCH,WRITE,EDIT)
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
 MainUI()
