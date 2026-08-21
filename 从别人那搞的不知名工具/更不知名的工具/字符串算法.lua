function Delt(t)
  local tab={}
  local index=1
  while #t~=0 do
    local n=math.random(0,#t)
    if t[n]~=nil then
      tab[index]=t[n]
      table.remove(t,n)
      index=index+1
    end
  end
  return tab
end

local g = {}
g.last = gg.getFile()
g.info = nil
g.config = '/storage/emulated/0/Android/jl.cfg'
g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end

if g.info == nil then
	g.info = {g.last}
end
g.info=gg.prompt({"选择脚本"},g.info,{"file"})
if g.info==nil then
else
gg.saveVariable(g.info, g.config)
b=io.open(g.info[1],"r"):read("*a")
tab={b:byte(1,-1)}
table.sort(tab,function(a,b) return a>b end)
K={}
for i=1,#tab do
  if i==1 then
    table.insert(K,"\\x"..string.format("%02x",tostring(tab[i])))
  else
    if "\\x"..string.format("%02x",tostring(tab[i]))==K[#K] then
    else
      table.insert(K,"\\x"..string.format("%02x",tostring(tab[i])))
    end
  end
end
K=Delt(K)
--print(K)
q=""
tab={b:byte(1,-1)}
for i=1,#tab do
  for k,v in pairs(K) do
    if "\\x"..string.format("%02x",tostring(tab[i]))==v then
      I=",K["..k.."]"
    end
  end
  q=q..I
end
q=q:gsub(",","",1)
t=""
for i=1,#K do
  t=t..",\""..K[i].."\""
end
t="{"..t:gsub(",","",1).."}"
io.open(g.info[1]..".Lua","w"):write("K="..t.."  P={"..q.."} pcall(load(table.concat(P,\"\")))")
end
