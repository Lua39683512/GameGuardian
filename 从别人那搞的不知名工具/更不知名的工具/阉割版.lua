b=gg.prompt({"脚本"},{gg.getFile()},{"file"})[1]
gg.setVisible(false)
while true do
a=[===[
toast=gg.toast
exit=os.exit
alert=gg.alert
_file=loadfile
TR={}
gg.REGION_VIDEO='gg.REGION_VIDEO' 
gg.REGION_BAD='gg.REGION_BAD' 
gg.REGION_ANONYMOUS='gg.REGION_ANONYMOUS' 
gg.REGION_C_DATA='gg.REGION_C_DATA' 
gg.REGION_C_ALLOC='gg.REGION_C_ALLOC' 
gg.TYPE_FLOAT='gg.TYPE_FLOAT' 
gg.TYPE_DWORD='gg.TYPE_DWORD' 
f=io.open(]===].."\""..b.."[log]\""..[===[,'r') 
if f==nil then 
  io.open(]===].."\""..b.."[log]\""..[===[,'w'):print('--[[木酥log新思路]]\n') 
else 
end
ggg=gg
function gg.setRanges(memo)  
  toast('[搜索内存]: '..tostring(memo)) 
  io.open(]===].."\""..b.."[log]\""..[===[,'a+'):print('\n[搜索内存]: '..tostring(memo)):close()
end 
function gg.searchNumber(...)
  local conce={...}
  print(conce)
  toast('[搜索数值]: '..conce[1]..'\n[搜索类型]: '..conce[2])
  io.open(]===].."\""..b.."[log]\""..[===[,'a+'):print('\n[搜索数值]: '..conce[1]..' [搜索类型]: '..conce[2]):close()
end
function gg.getResults(...)
  local conce={...}
  print(conce)
  toast('[得到数量]: '..conce[1])
  io.open(]===].."\""..b.."[log]\""..[===[,'a+'):print('\n[得到数量]: '..conce[1]):close()
end
function gg.editAll(text,type) 
  toast('[修改数值]: '..text..'\n   [修改类型]: '..tostring(type))
  io.open(]===].."\""..b.."[log]\""..[===[,'a+'):print('\n[修改数值]: '..text..' [修改类型]: '..tostring(type)):close()
end
function gg.getValues(...)
  local conce={...}
  print(conce)
  toast('[得到table]: '..tostring(conce))
  io.open(]===].."\""..b.."[log]\""..[===[,'a+'):print('\n[得到table]: '..tostring(conce)):close()
end
function gg.setValues(...)
  local conce={...}
  print(conce)
  toast('[修改table]: '..tostring(conce))
  io.open(]===].."\""..b.."[log]\""..[===[,'a+'):print('\n[修改table]: '..tostring(conce)):close()
end
function gg.alert(...)
  local conce={...}
  print(conce)
  toast('[警告内容]: '..tostring(conce))
  io.open(]===].."\""..b.."[log]\""..[===[,'a+'):print('\n[警告内容]: '..tostring(conce)):close()
  return alert(...)
end
function os.exit(...)
  local t=alert("检测到退出,是否退出","是","","否")
  if t==3 then
    gg.setVisible(true)
  else
    exit()
  end
end
function gg.toast(...)
  local conce={...}
  print(conce)
  toast('[提示内容]: '..tostring(conce))
  io.open(]===].."\""..b.."[log]\""..[===[,'a+'):write('\n[提示内容]: '..tostring(conce)):close()
end
function loadfile(...)
  print(...)
  _file(...)
end
]===]
a={a:byte(1,-1)}
a="tab={"..table.concat(a,",").."}\nres=[[]]\nfor i=1,#tab do\n  res=res..string.char(tab[i])\nend\npcall(load(res))\nloadScript(\""..b.."\")"
io.open("/data/user/0/com.xzrmu/files/.SafeGG","w+"):write(a)
if gg.isVisible(true) then break
end
end