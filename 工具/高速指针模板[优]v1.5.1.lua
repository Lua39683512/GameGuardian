local hi_by_LSQ = [===[
  optimize_author: By.LSQ
  QQ_Groupchat: 796546632
  此脚本免费开源写法，如有bug请加群反馈
  v1.0 -> 基于官网发布的指针模板进行优化速率
  v.1.1 -> 新增加限制地址搜索与类型与范围简化
  v1.2 -> 优化主特征值搜索过多时，导致的gg无响应
  v1.3 -> 增加范围副特征值判断，增加F, E类型的优化判断
  v1.4 -> 优化各种已知bug，并将主特征主动转换为Q(8字节)类型进行搜索(你不需要转换主特征，脚本内会自动处理)，速度更快
  v1.4.1 -> 修复了一个小bug D类型无需转Q类型
  v1.5.1 -> 新增加多种模式，优化过于杂乱的UI
]===]

local gg, string = gg, string
----------内存简化配置参考区----------
Jh = gg.REGION_JAVA_HEAP--Jh 内存
Ch = gg.REGION_C_HEAP--Ch 内存
Ca = gg.REGION_C_ALLOC--Ca 内存
Cd = gg.REGION_C_DATA--Cd 内存
Cb = gg.REGION_C_BSS--Cb 内存
PS = gg.REGION_PPSSPP--PS 内存
A = gg.REGION_ANONYMOUS--A 内存
J = gg.REGION_JAVA--J 内存
S = gg.REGION_STACK--S 内存
As = gg.REGION_ASHMEM--As 内存
V = gg.REGION_VIDEO--V 内存
O = gg.REGION_OTHER--O 内存
BAD = gg.REGION_BAD--B 内存
Xa = gg.REGION_CODE_APP--Xa 内存
Xs = gg.REGION_CODE_APP--Xs 内存

----------类型简化配置参考区----------
AU = gg.TYPE_AUTO--A类型搜索
D = gg.TYPE_DWORD--D类型搜索
F = gg.TYPE_FLOAT--F类型搜索
E = gg.TYPE_DOUBLE--E类型搜索
W = gg.TYPE_WORD--W类型搜索
B = gg.TYPE_BYTE--B类型搜索
Q = gg.TYPE_QWORD--Q类型搜索
X = gg.TYPE_XOR--X类型搜索

--修改模式
function Format(tab, format, write, Function)
    if format == "查看" then        
        return print(tab)
    elseif format == "修改" then
        local Table = {}
        for k, v in pairs(tab) do
            for kk, vv in pairs(write) do
                Table[#Table + 1] = {
                  ["address"] = v["address"] + vv[2],
                  ["flags"] = vv[3],
                  ["value"] = vv[1]
                }
            end
        end
        return gg.setValues(Table)
    elseif format == "载入" then
        gg.loadResults(tab)
    elseif format == "冻结" then
        local Table = {}
        for k, v in pairs(tab) do
            for kk, vv in pairs(write) do
                Table[#Table + 1] = {
                  ["address"] = v["address"] + vv[2],
                  ["flags"] = vv[3],
                  ["value"] = vv[1]
                  ["freeze"] = true
                }
            end
        end
        return gg.addListItems(Table)
    end
end

function LSQ_type_conversion(txt, type1, type2)--值, 原类型, 转换类型
    gg.allocatePage(gg.PROT_READ | gg.PROT_WRITE | gg.PROT_EXEC, 0x99999999)--分配一个新的内存页, 作为转换使用
    local Table = 
    { 
      {
        ["address"] = 0x99999999,
        ["flags"] = type1,--定义需要转换值
        ["value"] = txt--原类型 
      }
    }
    local set = gg.setValues(Table)
    Table[1]["flags"] = type2--需要转换的类型
    local get = gg.getValues(Table)[1]["value"]
    return get
end   

function Get_value()
    if gg.getResultsCount() > 100000 then
        local result = {}   
        local Table = {}
        while true do
            local Results = gg.getResults(100000)--每次只读取列表中的十万个数值 避免卡死
            if not Results or #Results == 0 then--列表没有值了就可以退出来
                break
            end            
            result[#result + 1] = Results
            local remove = gg.removeResults(Results)--读取完成后删掉
        end
        for k = 1, #result do
            for kk, vv in pairs(result[k]) do                
                Table[#Table + 1] = vv--最后把读到的数据全部导入到一个新的表里                
            end
        end
        return Table
    else
        return gg.getResults(gg.getResultsCount())
    end 
end

function Type_filtering(values)    
    if string.find(values, ".") then
        start, v = string.match(values, "^(.-)%.(.)")                 
        value = string.format("%s.%s", start, v)
        return value       
    else
        return values
    end
end

function LSQ_pointer(search, write, mode)	
	if search[1][5] and search[1][6] then	    
	    region_start = search[1][5]
        region_end = search[1][6]
	    else
	    region_start = 0
        region_end = -1
    end
    gg.clearResults()
    if search[1][2] == "16" and search[1][2] == "64" then
    local Value = LSQ_type_conversion(search[1][1], search[1][2], Q) --以Q类型去搜索主特征    
	gg.setRanges(search[1][3])
	gg.searchNumber(Value, Q, false, gg.SIGN_EQUAL, region_start, region_end)
	gg.searchNumber(Value, Q, false, gg.SIGN_EQUAL, region_start, region_end)--优化搜索的数据		
	else
	gg.setRanges(search[1][3])
	gg.searchNumber(search[1][1], search[1][2], false, gg.SIGN_EQUAL, region_start, region_end)
	gg.searchNumber(search[1][1], search[1][2], false, gg.SIGN_EQUAL, region_start, region_end)--优化搜索的数据		
	end
	if gg.getResultsCount() == 0 then
		gg.toast("没有搜索到指针数据")
		return false
	else
		local result = Get_value()--获取搜索到的所有数据		
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
			    if v["flags"] == 16 then
			        v["value"] = Type_filtering(v["value"])
			    end				    
			    if v["flags"] == 64 then
			        v["value"] = Type_filtering(v["value"])
			    end   
			    if not string.find(search[i][1], "~") then--判断是否为范围特征			       	       
				    if v["value"] == search[i][1] then--如果值等于主特征
					    verify_array[#verify_array + 1] = result[k]			
				    end
			    else
			        min, max = string.match(search[i][1], '^(.-)~(.-)$')
			        min, max = tonumber(min), tonumber(max)			        		        
			        if v["value"] >= min and v["value"] <= max then--如果值相似与主特征
			            verify_array[#verify_array + 1] = result[k]			
			        end
			    end
			end				
			result = verify_array
		end					
		if #result > 0 then
			Format(result, mode, write)
			return #result
		else		    
			return false
		end
	end
end


--[===[
问: E类型和f类型副特征值药怎么处理
答: 如果使用的是E, F类型请按照以下格式保留副特征(保留一位小数点即可，如果副特征码是0.05~0.063这种就书写为0~0.1即可。)
原: -1.66055106e249
改: -1.6
原: -1.03E-999
改: -1.0

问: 范围副特征要怎么使用
答: 范围搜索需加上字符串才不会报错
事例: {"1~99999", 0x24, 16}--副特征码, 偏移, 类型


问: 为什么主动转换失效
答: 主动转换只适用于F类型 E类型，其他类型不会进行主动转换

问: 模式怎么用
答: 
修改 -> 修改值
载入 -> 将值载入搜索结果列表 
冻结 -> 将值冻结并放入保存列表
查看 -> 打印项列表
]===]





local Search_array = {
   {1, 4, 32, "测试"},--主特征码, 类型, 内存范围, 功能, 内存地址起始, 内存地址结束
   {2.1, -4, 64}, --副特征码, 偏移, 类型
  -- {"-2.3", 4, 16}, --副特征码, 偏移, 类型
}

local Modifythe_array = {
   {1, 0, 4}--修改值, 偏移, 类型
}


local num = LSQ_pointer(Search_array, Modifythe_array, "载入")--判断这个的返回值，如果返回的是数量那么就证明修改成功了，如果返回的是false那么就没有修改到
print(num)

