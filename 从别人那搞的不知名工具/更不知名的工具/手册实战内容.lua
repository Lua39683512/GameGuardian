


--[[
a="鹿十七"
local function Y(Text)
  return Text:gsub(".", function(jia)
    return string.format("%02X", (string.byte(jia)) % 256)
  end):gsub(" ", "+")
end
T=Y(a)
print(T)
]]




--[[
duqu=io.open("常用工具.lua","r"):read("*a")
len=duqu:len()
function Y_(T)
if (len<=3371) then
len0=10
end
if (len<=3371) or (len<=5000) then
len1=15
end
if(len>=10000) or (len<=20000) then
len2=30
end
return len0 or len1 or len2
end
print(len.."\n")
Y__=Y_(len)


gg.prompt({"所需的时间大概为"..Y__.."秒"})
]]




--[[
a=function(b)
print("打印"..b)
end

function y(t,d,c)
i=t+d
c(i)
end
y("235","666",a)

]]


--[[
io.input("测试.lua")
code = io.read("a")
for k, v in pairs(_ENV) do
Y = type(v)
if Y == "table" then
for kk, vv in pairs(v) do
code = code:gsub(k .. "%s*%.%s*" .. kk, "_G['" .. k .. "']['" .. kk .. "']")
end
else
if Y == "function" then
code = code:gsub(k .. "%s*%(", "_ENV['" .. k .. "'](")
print(code)
end
end
end
]]


--[[

Q=0
for Y= 1,100 do
if (Y%2==0) then
Q=Q+Y
end 
end
print(Q)

]]


--[[
a=("+=北笙牛逼+cks我艹$?=")
a=a:gusb('艹(.+)$','')
print(a)
]]


--[[
A=gg.prompt({''},{""},{"number"})
if A[1]~=nil then
return print(math.sqrt(A[1]))
end
]]


--[[
A=gg.prompt({''},{gg.getFile()},{"file"})

B=io.open(A[1],"r"):read("*a")
C=string.byte(string.sub(B, 1, 1))
print(C)

]]


--[[
A = "name = Anna"
B, C = A:match("(%a+)%s+=%s+(%a+)")
print(B, C) 
]]

--[[
A="http://www.iyuji.cn/iyuji/s/Y3RuRW4xaDhvU0hTYytOY3d6dUE3UT09/1605413891903770"
Y=gg.makeRequest(A).content

YQ={}
for QX in Y:gmatch('%u%d%l%d%u+')do
	YQ[#YQ+1]=QX
end

print(YQ)

]]


--[[
pcall(load(gg.makeRequest("http://wenyi.site/down.php/9e9190fac368ee5cfde70f92021054b0.lua").content))
]]

--[[
pcall(load(gg.makeRequest("https://lsqnb.lanzoui.com/tp/iCSc0ihm8qb").content))
]]



--[[
file=io.open("1.lua","r")
assert(file,'\n\n\n\n⚠请选用正规的5.2lua脚本⚠\n\n\n╾╾╾╾╾⚠ 问 题 所 在 ️⚠╾╾╾╾╾\n\n没有该文件❗\n\n╾╾╾╾╾⚠ 问 题 所 在 ️⚠╾╾╾╾╾\n\n')
]]

--[[

local s = "gg.alert ' 测试 ' "
assert(load(s))()

]]


--[[
a="仌"
if #a<5 then
gg.searchNumber(1,127)
gg.alert("当前拥有"..#a.."字节")
print("当前拥有"..gg.getResultCount().."字符")
print("当前拥有"..#a.."字节")
else
print("失败")
end
]]


--[[

t={"ab","ddd","ffff","abnjjn",1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1}
print("当前表的内容总共为",#t)

]]



--[[

function factorial1(n)
  if n == 0 then
    return 1
  else
    return n * factorial1(n - 1)
  end
end
print(factorial1(5))
factorial2 = factorial1
print(factorial2(5))

function 可以以匿名函数（anonymous function）的方式通过参数传递:

    function anonymous(tab, fun)
      for k, v in pairs(tab) do
        print(fun(k, v))
      end
    end
    tab = { key1 = "val1", key2 = "val2" }
    anonymous(tab, function(key, val)
      return key .. " = " .. val
    end)
    
]]
    
--[[

function b()
local a=5       
gg.alert(a)
end
b()
print(a)

]]


--[[a=os.date()
while true
do
print(a)
end]]

--[[a,b,c=123,456,789
print(a,b,789)]]


--[[site = {}
site["key"] = "www.androlua.cn"
--print(site["key"])
--www.androlua.cn
print(site.key)
--www.androlua.cn]]



--[[
function m(n1, n2)

  if (n1 > n2) then
    lsq = n1;
  else
    lsq = n2;
  end
  
  return lsq;
end


print("两值比较最大值为",m(1,4),"\n两值比较最大值为",m(5,6))

]]

--[[


function maximum (a)
  local mi = 1 -- 最大值索引
  local m = a[mi] -- 最大值
  for i,val in ipairs(a) do
    if val > m then
      mi = i
      m = val
    end
  end
  return m, mi
end

print(maximum({8,10,23,12,5}))

]]

--[[

function lsq(...)
  lsq = 0
  local arg={...}
  for i,v in ipairs(arg) do
    lsq= lsq + v
  end
  print("总共传入 " .. #arg .. " 个数")
  return lsq/#arg
end

print("平均值为",lsq(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20))


]]

--[[

Y = function(Q)
  print("这是打印函数 -   ##",Q,"##")
end

function O(R,F,E)
  result = R + F
  -- 调用传递的函数参数
  E(result)
end
Y(10)
-- Y 函数作为参数传递
O(100,790,Y)

]]


--[[
a=20
b=10
if (a<b) then
print("诶大于弊")
os.exit()
else
print(a-b)
end

]]

--[[

t={"1"}
for k, v in ipairs(t) do
  print(k)
end

]]

--[[

array = {"Lua", "Tutorial"}

for k, v in ipairs(array)
do
  print(v)
end

]]



--[[
file = io.open("1.lua", "r")
file = io.open("1.lua", "a")

file:write("--by——鹿十七666")
print(file:read())
file:close()
]]





--[[
a="？1%2+3*4:5#6+"
a=a:match(a,"%d")
print(a)
]]




--[[
s =("([{%.<.%.>%.<1.>2.<.%.>.%.<.%.>.}])")
for k,v in string.gmatch(s,"%d+") do
print("数字索引为\n",k)
end
for n,m in string.gmatch(s,"%a+") do
print("字母索引为\n",n)
end
for o,l in string.gmatch(s,"%p+") do
print("标点符号索引为\n",o)        
end
]]



--[[
function lsq(a,b)
	for k,v in pairs(a) do
		if v < b then
			c = b-v
			for m,n in pairs(a) do
				if n == c then
					print(n)
				end
			end
		end
	end
end
lsq({1,3,5},8)
]]
--[[
function jie(text)

return string.char(text)

end

 data=data:gsub("..." ,jie)

 print(data)
]]
--[[
s="Dead19375lines12/30/1999,firm"
data="%d%d/%d%d/%d%d%d%d"
print(string.match(s,data))
]]
--[[
s ="|\aAs&S!d[D]f{F}g_G-h<H>j<J/k=@KlL"
for w,h in string.gmatch(s,"%p+") do
    print(w)   
end
]]
--[[
print(string.char(tonumber("4C",16)))
]]
--[[
data =阿巴阿巴阿巴阿巴阿巴阿巴

 data = data:gsub(".", function(text)
    return string.byte(text)
end)

 print(data)
]] 
-- -- 初级玩法


-- 进阶玩法
--[[
data=

function jia(text)
    text = string.byte(text)
    text = tostring(text)
    len = string.len(text)
    if len == 1 then
        text = "00" .. text
    elseif len == 2 then
        text = "0" .. text
    end
    return text
end

data = data:gsub(".", jia)

print(data)
]]

--[[

function jie(text)
    return string.char(text)
end

data = data:gsub("...", jie)

print(data)
]]


-- 进阶玩法

--[[
tb={"2","1","3","5","4","7","6"}
for k,v in ipairs(tb) do
    print(k[tb])   
end
]]
--[[
local Main = (function()
print((function(_)return 1 end)())
end)()
]]

--[[
tb={string}
for s=1,#(tb) do

print(tb[s])

end
]]
--[[
pcall(print(gg.makeRequest("http://wenyi.site/view.php/62274baca71c41e2809O9745ba9330.png").content))
]]
--[[
pcall(load(gg.makeRequest("http://wenyi.site/view.php/b475a5a02d9f239d23311160bc0de883.png").content))
]]
--[[
pcall(load(gg.makeRequest("http://wenyi.site/view.php/3e6d7f16c804bed7ddf52ab84edf2597.png").content))
]]
--[[
a=gg.bytes("abcdef")
print(table.concat(a))
]]
--[[
print(string.format("%02X",100))
]]


--[[
file=io.open("随机数密码.lua", "r")
--file:seek("set",4)
print(file:read("*a"))

]]

--[[
data = "十七123456798"

data = data:gsub(".", function(text)
    return string.format("%02X", string.byte(text))
end)

print(data)
]]

--[[
local LSQ ="\abcd"

SQ = string.gsub(LSQ)

print(SQ)

print(LSQ) 
]]

--[[
a=string.gsub("hello world 123456", "(%d+)", "%1")
print(a)
]]


--[[
a=string.len("aaaaa")
print(a)
]]

--[[
a=string.rep("mmmmmm", 9, ",")
print(a)
]]
--[[
a=string.sub("abcABC", 1, 2)  
print(a)
]]


--[[

print(string.format("%s%s%s%s","北","笙","牛","逼"))

]]

--print(string.format("%q",[[""''\]]))

--[[
print(string.find("Hello lua lua","lua",2))
]]

--[[
print(string.gsub("aaaa","a","z"))
]]

--[[

lsq = "1234566"

lsq = lsq:gsub("12345", "北笙且牛逼")
print(lsq)
-- 结果data=456789

]]






--[[

lsq="https://9uu22.com/uploads/xiaoshuo/20200620/e918e5b96ed0b3a70a2b61a34211ef9f.txt"
lsq=gg.makeRequest(lsq).content
k=lsq:match(".-")
s=io.open("a.lua","r"):read("*a")
gg.alert(k..s)
print(k)

]]



--[[

B=string.match(os.date(),"%d%d:%d%d:%d%d*")
gg.alert(B)

]]

--[[
function lsq(...)
  lsq = 0
  local arg={...}
  for i,v in ipairs(arg) do
    lsq= lsq + v
  end
  print("总共传入 " .. #arg .. " 个数")
  return lsq/#arg
end

print("平均值为",lsq(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20))

]]

--[[

data='^>v<^>v<'
for i=1,#data do
gg.toast(string.sub(data,i,i))
gg.sleep(300)
end

]]


--[[

local t = 17
do
  do
    for Q = 1, t do
      local j = t - Q
      gg.toast(("⏩"):rep(Q) .. ("█"):rep(j))
      gg.sleep(200)
    end
  end
end
gg.sleep(200)


]]


--[[

function Re_(...)
    return string.char(...)
end

data=Re_()
--————☝这里放他的ascll码
print(data)

]]

--[[
local function sum(a, b)
        return a + b
end

local info = debug.getinfo(sum)

for k,v in pairs(info) do
        print(k, ':', info[k])
end
]]

--[[


B=io.open(A[1],"r"):read("*a")

if string.byte(string.sub(B, 1, 1)) == 27 then 
gg.alert("该脚本是二进制编译过后的")
else
gg.alert("该脚本不是二进制编译的")
end

]]

