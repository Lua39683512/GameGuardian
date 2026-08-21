string1 = "Lua"
print(string.upper(string1))
print(string.lower(string1))

--查找并反转
string2 = "Lua Tutorial"
-- 查找字符串
print(string.find(string2,"Tutorial"))
reversedString = string.reverse(string2)
print("新字符串为",reversedString)


--local custom_func = function ()
--    print("aswl")
--end
--local func_content = string.dump(custom_func) --将函数序列化为字符串

--将字符串func_content发送到远端

--local myfunc = loadstring(func_content) --将字符串转换为函数
--myfunc()
print(string)