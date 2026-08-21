Q = gg.prompt({"选择脚本"}, {gg.getFile()}, {"file"})
F = loadfile(Q[1])
if F then
    F = string.dump(F, true, true)
    F = load(F)
    R=io.open(Q[1],"r"):read("*a")
    C=io.open(Q[1]..".lua","w")
    C:write(R)    
    gg.internal2(F, Q[1]..".lua")
end