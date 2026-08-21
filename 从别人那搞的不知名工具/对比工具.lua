
--作者:Endless QQ:523321293
--想过吧两个工具写在一起，但是这个对比用的不是本地运行。
--这可能导致有人恶意使用，感觉跟自己打了自己服务器差不多，所以自行解决吧。
--对比速度比lua快了很多6000*40000也就10秒左右完事。


function http_build_query(data,form)
	if type(data) ~= "table" then
		return 
	end 
	i,str=1,"?"
	if form then
		str=""
	end
	for k,v in pairs(data) do
		if type(v) ~= "table" then
			if i==1 then
				str=str..k.."="..v
			else
				str=str.."&"..k.."="..v
			end
			i=i+1
		end
	end
	return str
end

function decodeURI(s)
    s = string.gsub(s, '%%(%x%x)', function(h) return string.char(tonumber(h, 16)) end)
    return s
end

function encodeURI(s)
    s = string.gsub(s, "([^%w%.%- ])", function(c) return string.format("%%%02X", string.byte(c)) end)
    return string.gsub(s, " ", "+")
end

local path=gg.getFile():gsub("[^/]*$","")
local filePath=gg.prompt({"选择文件1","选择文件2"},{path,path},{"file","file"})
if not filePath or not filePath[1] or not filePath[2] then os.exit() end
local file1=io.open(filePath[1],"r")
local dat1=file1:read("*a")
file1:close()
local file2=io.open(filePath[2],"r")
local dat2=file2:read("*a")
file2:close()
--post表单
local data={
  raw=encodeURI(dat1),
  data=encodeURI(dat2)
}
local start = os.clock()
--这里对字符进行URL编码花费了大量时间，如果不编码6000*40000的数据3秒左右就对比完了。
--但进行URL编码多耗费了7秒的时间，没办法不进行URL编码会丢失+好等特殊符号。
local result=gg.makeRequest('http://IP路径/ChainContrast.php',nil,http_build_query(data,true)).content

if result=="无匹配" then gg.alert("没有对比结果") os.exit() end
local i=1
while io.open("过滤基址"..i..".lua") do
  i=i+1
end
local f=io.open("过滤基址"..i..".lua","w")
f:write(result)
f:close()
print("耗时"..os.clock()-start)