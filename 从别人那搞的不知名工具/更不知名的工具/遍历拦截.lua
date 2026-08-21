   LSQ=gg.prompt({"脚本"},{gg.getFile()},{"file"})
   test = loadfile(LSQ[1])
   amg = string.gsub

   function zdyfh()
end

   for v,k in pairs(os) do
   local orig = _ENV.os[tostring(v)]
   local hook = function (...)
   local arg = {...}
   L = amg(tostring(orig),"function: ","")
   gg.alert("被调用函数	"..L.."\n"..tostring(arg))
   return zdyfh(arg)
end

    _ENV.os[tostring(v)] = hook
end

   for v,k in pairs(table) do
   local orig = _ENV.table[tostring(v)]
   local hook = function (...)
   local arg = {...}
   L = amg(tostring(orig),"function: ","")
   gg.alert("被调用函数	"..L.."\n"..tostring(arg))
   return zdyfh(arg)
end

   _ENV.table[tostring(v)] = hook
end

    for v,k in pairs(io) do
    local orig = _ENV.io[tostring(v)]
    local hook = function (...)
    local arg = {...}
    L = amg(tostring(orig),"function: ","")
    gg.alert("被调用函数	"..L.."\n"..tostring(arg))
    return zdyfh(arg)
end

   _ENV.io[tostring(v)] = hook
end

for v,k in pairs(bit32) do
   local orig = _ENV.bit32[tostring(v)]
   local hook = function (...)
   local arg = {...}
   L = amg(tostring(orig),"function: ","")
   gg.alert("被调用函数	"..L.."\n"..tostring(arg))
   return zdyfh(arg)
end

   _ENV.bit32[tostring(v)] = hook
end

   for v,k in pairs(math) do
   local orig = _ENV.math[tostring(v)]
   local hook = function (...)
   local arg = {...}
   L = amg(tostring(orig),"function: ","")
   gg.alert("被调用函数	"..L.."\n"..tostring(arg))
   return zdyfh(arg)
end

   _ENV.math[tostring(v)] = hook
end

   for v,k in pairs(string) do
   local orig = _ENV.string[tostring(v)]
   local hook = function (...)
   local arg = {...}
   L = amg(tostring(orig),"function: ","")
   gg.alert("被调用函数	"..L.."\n"..tostring(arg))
   return zdyfh(arg)
end

   _ENV.string[tostring(v)] = hook
end
return test()