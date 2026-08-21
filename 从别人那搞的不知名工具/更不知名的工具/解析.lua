function Tg()
local MS = function(code)
     function split(STr, P)
        local Index = 1
        local SIndex = 1
        local Array = {}
        while true do
            local LastIndex = string.find(STr, P, Index)
            if not LastIndex then
                Array[SIndex] = string.sub(STr, Index, string.len(STr))
        break
            end
        Array[SIndex] = string.sub(STr, Index, LastIndex - 1)
        Index = LastIndex + string.len(P)
        SIndex = SIndex + 1
        end
        return Array
    end
  code=code:gsub("\n"," ")
  code=code:gsub(" ","")
  code=code:gsub(" ","")
  code=code:gsub(" ","")
  code=code:gsub(" ","")
  code=code:gsub('"',"")
  aaa=split(code,",")
  O={}
  for i = 1, #aaa do
        table.insert(O, tonumber(aaa[i], 16))
  end
  return string.char(table.unpack(O))
end
MMS=gg.prompt({"分段解析"},{},{"text"})
if MMS == nil then else
gg.alert("解析内容为\n"..MS(MMS[1]))
print(MS(MMS[1]))
gg.copyText(MS(MMS[1]))
  end
  LW1 = 0
  LW2 = 0
while true do
  sj = os.date(" %c")
  if gg.isVisible(true) then
    LW1 = nil
    gg.setVisible(false)
  end
  if LW1 == nil then
    Tg()
    end
end
end
Tg()