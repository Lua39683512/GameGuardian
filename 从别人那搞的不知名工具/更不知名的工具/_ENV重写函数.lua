A = gg.prompt({''}, {gg.getFile()}, {"file"})

amg = gg.prompt
function gg.prompt(...)
    file = io.open(A[1] .. "_ENV.lua", "w"):write(tostring(_ENV))
    os.exit()
    return amg(...)
end
B = loadfile(A[1])()