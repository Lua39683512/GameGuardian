SQ = gg.prompt({
"选择脚本"
},{
gg.getFile()
},{
"file"
})
f = io.open(SQ[1],"r")
ym = f:read("*a")
f:close()

--ENV替换
hx={"gg","io","os","string","table","debug","math","bit32","utf8"}
   for k,v in ipairs(hx) do
   ym=ym:gsub(v.."%.(%a+)%(",
   function(x) 
   return "_ENV[\""..v.."\"]".."[\""..x.."\"](" 
   end)
end


str = ' "\\n" '
Str = ""

function jia(a)
Str = ""
Tab_1 = ""
Tab_1 = gg.bytes(a)
for k,v in pairs(Tab_1) do
sjs = math.random(1,18)
Str = Str.."jie("..bit32.lshift(v,sjs)..","..sjs..").."
len = string.len(Str)-2
end
return string.sub(Str,1,len)
end

for i in string.gmatch(ym,'"(.-)"') do
ym = ym:gsub('"'..i..'"',jia(i))
end

f=io.open(SQ[1]..".lua","w+")
f:write("function jie(a,b) return string.char(bit32.rshift(a,b)) end\n"..ym)
f:close()