A = io.open("普通写法测试.lua","r"):read("*a")

B = {}
C = 'local ascll={'
D = 0


function jia(A)
E = '{'
for k, v in pairs({string.byte(A, 1, -1)}) do
v = tostring(v)
index = B[v]
if not index then
D = D + 1
C = C .. v .. ','
B[v] = D
index = D
end
E = E .. 'ascll[' .. index .. '],'
end
E = string.sub(E, 1, -2) .. '}'
return 'string.char(table.unpack(' .. E .. '))'
end
A = A:gsub('"(.-)"', jia)
C = string.sub(C, 1, -2) .. '}'
A = C .. '\n' .. A
print(A)
load(A)()
