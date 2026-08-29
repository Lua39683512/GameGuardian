local t=gg.prompt({"选择文件"},{"sdcard"},{"file"})--选择文件
if not t then os.exit()end--点击取消后打印退出
local input=t[1]
local folder=input:match("(.+)/")--提取目录
local name=input:match("([^/]+)%.lua$")--提取文件名
if not name then name="output"end
local output=folder.."/"..name.."(使用版).lua"--输出路径
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
--去换行换空格给end后加空格
--=========================
code=code:gsub("\r","")
code=code:gsub("\t","")
code=code:gsub("\n+","\n")
code=code:gsub("[\r\n\t]", " ")
code=code:gsub("endfunction","end function")
code=code:gsub("endlocal","end local")
code=code:gsub("endif","end if")
code=code:gsub("endwhile","end while")
code=code:gsub("endfor","end for")
code=code:gsub("endrepeat","end repeat")
code=code:gsub("untilfunction","until function")
--=========================
--连续空格
--=========================
code=code:gsub(" +"," ")
--=========================
--运算符
--=========================
code=code:gsub("%)%s+", ")")
code=code:gsub("%s*=%s*","=")
code=code:gsub("%s*%+%s*","+")
code=code:gsub("%s*%-%s*","-")
code=code:gsub("%s*%*%s*","*")
code=code:gsub("%s*/%s*","/")
code=code:gsub("%s*%%%s*","%%")
code=code:gsub("%s*%^%s*","^")
code=code:gsub("%s*==%s*","==")
code=code:gsub("%s*~=%s*","~=")
code=code:gsub("%s*>=%s*",">=")
code=code:gsub("%s*<=%s*","<=")
code=code:gsub("%s*>%s*",">")
code=code:gsub("%s*<%s*","<")
--=========================
--标点
--=========================
code=code:gsub("%s*,%s*",",")
code=code:gsub("%s*;%s*",";")
code=code:gsub("%s*:%s*",":")

code=code:gsub("\"%s+([%a_])","\"%1")
code=code:gsub("%s+\"","\"")
--=========================
--括号
--=========================
code=code:gsub("%(%s+","(")
code=code:gsub("%s+%)",")")
code=code:gsub("%[%s+","[")
code=code:gsub("%s+%]","]")
code=code:gsub("{%s+","{")
code=code:gsub("%s+}","}")
code=code:gsub("%)%s+(%a+%.)", ")%1")
--=========================
--常见语法
--=========================
code=code:gsub("%)%s+(%a+%.)", ")%1")
code=code:gsub("%)%s+gg%.", ")gg.")
code=code:gsub("%)%s+if",")if")
code=code:gsub("}%s+for","}for")
code=code:gsub("}%s+if","}if")
code=code:gsub("}%s+do","}do")
code=code:gsub("}%s+while","}while")
code=code:gsub("}%s*end","}end")
code=code:gsub(";%s*end",";end")
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
if not f then print("无法写入")return end
f:write(content)
f:close()end
local result=build()--执行打包
writeFile(output,result)
print("打包完成")--https://github.com/Lua39683512