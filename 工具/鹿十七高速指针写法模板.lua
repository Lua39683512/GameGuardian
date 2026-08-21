function LSQ_pointer(search, write)	
	if search[5] or search[6] then
	    local region_start = search[5]
        local region_end = search[6]
	    else
	    local region_start = 0
        local region_end = -1
    end
    gg.clearResults()
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2], false, gg.SIGN_EQUAL, region_start, region_end)
	gg.refineNumber(search[1][1], search[1][2], false, gg.SIGN_EQUAL, region_start, region_end)--优化搜索的数据		
	if gg.getResultsCount() == 0 then
		gg.toast("没有搜索到指针数据")
		return false
	else
		local result = gg.getResults(gg.getResultsCount())--获取搜索到的所有数据
		gg.clearResults()		
		for i = 2, #search do--遍历副特征码数据
			local offset_array = {}--存放偏移数组的表
			for k, v in ipairs(result) do
				offset_array[#offset_array + 1] = {
				["address"] = v["address"] + search[i][2],--把所有搜索出来的结果, 加上偏移量
				["flags"] = search[i][3] 
				}
			end			
			offset_array = gg.getValues(offset_array)--获取所有副特征数据
			local verify_array = {}--验证数组表	
			for k, v in ipairs(offset_array) do--遍历偏移后的数据			
				if v["value"] == search[i][1] then--如果值等于主特征
					verify_array[#verify_array + 1] = result[k]						
				end
			end					
			result = verify_array
		end						
		if #result > 0 then
			local Table = {
			{}, 
			{}
			}
			for k, v in ipairs(result) do				
				for kk, vv in ipairs(write) do
					local Modifythe_array = {
					["address"] = v["address"] + vv[2], 
					["flags"] = vv[3], 
					["value"] = vv[1], 
					["freeze"] = vv[4]
					}
					if vv[4] then
						Table[2][#Table[2] + 1] = Modifythe_array
					else
						Table[1][#Table[1] + 1] = Modifythe_array
					end
				end
			end			
			gg.addListItems(Table[2])
			gg.setValues(Table[1])			
			gg.toast("功能: [" .. search[1][4] .. "]开启成功共修改" .. (#Table[1] + #Table[2]) .. "条数据")
		else
			gg.toast("未找到偏移数据")
		end
	end
end


local Search_array = {
   {1, 4, 32, "测试"},--主特征码, 类型, 内存范围, 功能, 内存地址起始, 内存地址结束
   {600965120, 36, 4}, --副特征码, 偏移, 类型
   {-402020772, 40, 4}, --副特征码, 偏移, 类型
   {-402018724, 44, 4}--副特征码, 偏移, 类型
}
local Modifythe_array = {
   {1, 0, 4, false}--修改值, 偏移, 类型, 是否冻结
}

LSQ_pointer(Search_array, Modifythe_array)