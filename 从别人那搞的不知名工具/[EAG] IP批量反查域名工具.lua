--原创GXL小五，转载请留明作者。
--导入文件IP格式：
--[[
114.114.114
111.111.111
102.136.86.9
]]
--====================--
--下面添加你要的前缀
lh={
"114.114.114.114",
"58.20.127.283",
"10.149.207.20",
"127.0.0.1",
}
--====================--
--===请不要乱动===--
tail="127.0.0.1       localhost\n::1             ip6-localhost"
host="" host2="" wz="https://site.ip138.com/"
local P="\xE5\x8E\x9F\xE5\x88\x9B\x47\x58\x4C\x5F\xE5\xB0\x8F\xE4\xBA\x94\xEF\xBC\x8C\xE8\xBD\xAC\xE8\xBD\xBD\xE8\xAF\xB7\xE7\x95\x99\xE6\x98\x8E\xE4\xBD\x9C\xE8\x80\x85\xE3\x80\x82\xE8\xAF\xB7\xE4\xB8\x8D\xE8\xA6\x81\xE7\x94\xA8\xE4\xBA\x8E\xE9\x9D\x9E\xE6\xB3\x95\xE7\x94\xA8\xE9\x80\x94\xEF\xBC\x8C\xE5\x90\xA6\xE5\x88\x99\xE6\x8E\xA5\xE5\x8F\xA3\xE5\x92\x8C\xE8\xB0\x90\xEF\xBC\x8C\xE6\x97\xA0\xE6\xB3\x95\xE4\xBD\xBF\xE7\x94\xA8\xE3\x80\x82"
function make(ip)
local xw=gg.makeRequest(wz..ip).content
pd=string.find(xw,"暂无结果")
if pd == nil then
local jqfw=xw:match("绑定过的域名如下：</span></li>(.-)</ul>")
sx=1 ym=""
function as()
jqfw=string.gsub(jqfw,"%-","减号")
end
if not pcall(as) then print("运行错误x1") end
while true do
sz=string.match(jqfw,'"_blank">(.-)</a></li>')
if sz==nil then break end
jqfw=string.gsub(jqfw,'"_blank">'..sz..'</a></li>','')
--print(sz)
if ym=="" then 
ym=sz
else
ym=ym.."\n"..sz
end
end
pz=true
ym=string.gsub(ym,"减号","-")
else
pz=false
end
return ym
end
function pai(s)
qe="" st=""
for k,v in pairs(lh) do
if v == nil then break end
qe=v.." "..s
if st=="" then
st=qe
else
st=st.."\n"..qe
end
end
return st
end 
function split(str,delimiter)
local dLen = string.len(delimiter)
local newDeli = ''
for i=1,dLen,1 do
newDeli = newDeli .. "["..string.sub(delimiter,i,i).."]"
end
local locaStart,locaEnd = string.find(str,newDeli)
local arr = {}
local n = 1
while locaStart ~= nil do
if locaStart>0 then
arr[n] = string.sub(str,1,locaStart-1)
 n = n + 1
end
str = string.sub(str,locaEnd+1,string.len(str))
locaStart,locaEnd = string.find(str,newDeli)
end
if str ~= nil then
arr[n] = str
end
return arr
end gg.alert(P) function Main()
path=gg.prompt({"选择文件"},{gg.getFile()},{"file"})
if path==nil then os.exit() end
file=io.open(path[1],"r")
repeat
len=file:read("*l")
if len == nil then break end
h=make(len)
if pz==true then
if host=="" then
host=h
host2="#下方host所属ip为："..len.."\n"..h
else
host=host.."\n"..h
host2=host2.."\n#下方host所属ip为："..len.."\n"..h
end
end
until len==nil
fg=split(host,"\n")
localhost=""
for k,v in pairs(lh) do
u=""
for y,z in pairs(fg) do
if u=="" then
u=v.." "..z
else
u=u.."\n"..v.." "..z
end
end
if localhost=="" then
localhost=u
else
localhost=localhost.."\n"..u
end
end
--print("结果：\n",localhost)
f=io.open(path[1]..".域名.txt","w")
f2=io.open(path[1]..".反查详细日志.txt","w")
f3=io.open(path[1]..".localhost.txt","w")
f:write(host)
f2:write(host2)
f3:write(localhost.."\n"..tail)
--print(host)
--print(host2)
f:close()
f2:close()
f3:close()
print("已完成...")
end
Main()

