LSQ=gg.prompt({""},{gg.getFile()},{"file"})
SQ = loadfile(LSQ[1])
arg=gg.searchNumber
function gg.searchNumber(...)
arg={...}
if #arg < 500 then
print(...)
end
end
SQ()