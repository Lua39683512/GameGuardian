local t=gg.prompt({"选择文件"},{"sdcard"},{"file"})--选择文件
if not t then os.exit()end--点击取消后打印退出
local input=t[1]
local folder=input:match("(.+)/")--提取目录
local name=input:match("([^/]+)%.lua$")--提取文件名
if not name then name="output"end
local output=folder.."/"..name.."(无注释).lua"--输出路径
print(output)--打印路径
local function readFile(path)--读取文件(GG环境用io有时不可用,这里做兼容)
local f=io.open(path,"r")
if not f then print("无法读取"..path)return""end
local content=f:read("*a")
f:close()
return content end
local function minify(code)
--=========================
--注释
--=========================
code=code:gsub("%-%-%[%[.-%]%]","")
code=code:gsub("%-%-[^\n]*","")
--=========================
--多余空行
--=========================
code=code:gsub("\n\n+","\n")
--=========================
--首尾空白
--=========================
code=code:gsub("^%s+","")
code=code:gsub("%s+$","")
return code end
local function build()--合并模块
local out={}
local code=readFile(t[1])
if code and code~=""then
code=minify(code)
table.insert(out,code)end
return table.concat(out,"\n")end
local function writeFile(path,content)--写入文件
local f=io.open(path,"w+")
if not f then
print("无法写入")
return end
f:write(content)
f:close()end
local result=build()--执行打包
writeFile(output,result)
print("打包完成")--https://github.com/Lua39683512