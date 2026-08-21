--原作者s686  豪哥二改
--S686 1.2加密
gg.toast("加载中......")
local re = {
a = function(...) return print(...) end,
b = function(...) return gg.alert(...) end,
c = function(a, b, c) return gg.choice(a, b, c) end,
d = function(a, b, c) return gg.prompt(a, b, c) end
}
function random() bn={"A","B","C","D","E","F","G","H","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"} x=math.random
    local e,f,g,h,i=x(1,25),x(1,25),x(1,25),x(1,25),x(1,25)
    a=bn[e]..bn[f]..bn[g]..bn[h]..bn[i]
   return a,b,c,d,e
end
local function sel(sz,str)
local strict=''
sz =sz or math.random(4,54)
local gotoc=' goto ccg '
  for s=1,sz do
   strict=strict..gotoc
 end
 strict=" if nil then "..strict.." ::ccg:: end _CCG=_CCG "
    return strict
end
local function main_info(nl)
  local str=""
  for s=1,nl do
    str=str.." if (function ()if nil then else goto CCG end local i ::CCG:: end)then end"..sel()
    end
    str=" if nil then "..str.." end "
    return str
end
local function line()
  local len=math.random(2,4)
  str=""
  for i=1,len do
    str=main_info(1)..str..sel(math.random(12,48))
  end
  return str
end
local function randtext()
  local strrr=random()
  txt=" if(nil)then if(true)then else goto "..strrr.." end if(nil)then else goto "..strrr.." end if(nil)then else goto "..strrr.." end ::"..strrr..":: end "
  return txt
end
local function signs(str)
  hen=" if nil then "
  if str==nil then str=math.random(70,90) end
  reg=str
  return randtext()..hen
end
local function sign()
  local str1=""
  local strrr=random()
  for i=1,reg do
    str1=str1.." local "..strrr..i.." if("..strrr..i..")then else goto "..strrr.." end\t"
  end
  return str1.." whlie(true)do end ::"..strrr..":: end "
end
local function ccgstr(str)
  local strr=""
  if str==nil then str=math.random(2,4) end
  for i=1,str do
  strr=strr..randtext()..signs()..sign()..randtext()
  end
 return strr
end
function dump(func)
  func=load(func)
  sel = gg.choice({'保留辣鸡文件','删除辣鸡文件'}) if sel == nil then sel=2 end
  return string.dump(func,sel==2,true)
end
function searandom(str)
  local dzshsf='function dzsh(x,Text)return (Text:gsub("..",function(x)return string.char((tonumber(x,16))%256)end))end\n'
  local s=''
  local data=str
  local k,kk='"',"'"
  local ii,iii=k.."(.-)"..k,kk.."(.-)"..kk
  for i in data:gmatch(ii) do
    function dzsh(Text)
    return Text:gsub(".", function(c)
    return string.format("%02X",(string.byte(c))%256)
    end):gsub(" ", "+")
  end
   zac = dzsh(i)
   local re=random()
    local s3=math.random(1000,2000)
    local jj=math.random(0,1)
    if jj==0 then jj="+" else jj="-" end
    sf=line()..'function '..re..'(s6) char={} for i=1,#s6 do table.insert(char,string.char(s6[i]'..jj..s3..')) end s1=table.concat(char,"") return dzsh(s6,s1) end'..ccgstr()..'\n'
    s=s..sf
    z={}
    string.gsub(zac,"[^,]+",function(s2)
       for ii=1,#zac do
          s1=string.sub(zac,ii,ii)
          s2=string.byte(s1)
          if jj=="+" then s2=s2-s3 else s2=s2+s3 end
          table.insert(z,s2) end end)
      i=re.."({"..table.concat(z, ',').."})"
      data = data:gsub(ii, i, 1)
    end
  for i in data:gmatch(iii) do
   function dzsh(Text)
    return Text:gsub(".", function(c)
    return string.format("%02X",(string.byte(c))%256)
    end):gsub(" ", "+")
  end
   zac = dzsh(i)
   local re=random()
    local s3=math.random(1000,2000)
    local jj=math.random(0,1)
    if jj==0 then jj="+" else jj="-" end
    sf=line()..'function '..re..'(s6) char={} for i=1,#s6 do table.insert(char,string.char(s6[i]'..jj..s3..')) end s1=table.concat(char,"") return dzsh(s6,s1) end'..ccgstr()..'\n'
    s=s..sf
    z={}
    string.gsub(zac,"[^,]+",function(s2)
       for ii=1,#zac do
          s1=string.sub(zac,ii,ii)
          s2=string.byte(s1)
          if jj=="+" then s2=s2-s3 else s2=s2+s3 end
          table.insert(z,s2) end end)
      i=re.."({"..table.concat(z, ',').."})"
      data = data:gsub(iii, i, 1)
    end
    data=dzshsf..s..data
    return data
  end
function AddKey(str,key)
   mima='MIMA="替换密码" mm={} a=0 function alert(i) a=gg.choice({"1","2","3","4","5","6","7","8","9"},a,"正在输入第"..i.."位密码！") if a==nil then os.exit() end return a end for i=1,#MIMA do mm[i]=alert(i) end mima="" for i=1,#mm do if mm[i]~=nil then mima=mima..mm[i] else end end if mima==MIMA then else print("[错误]你输入密码:",mima) while(true) do os.exit() end end '
   mima=string.gsub(mima,"替换密码",key)
 return mima..str
end
function xname(file,names)
  namecoh=' name="文件名称" if gg.getFile():match("[^/]+$")~= name then os.exit(print("验证失败！")) while true do os.exit(print("违规")) end else print("●保护: 验证成功！") end '
  namecoh=string.gsub(namecoh,"文件名称",names)
 return namecoh..file
end
function Prevent(file)
local r=""
files=io.open(file)
repeat
text=files:read('*l')
if text~=nil then
 returns=string.find(text,"return",1)
 search=string.find(text,"gg.searchNumber",1)
 ranges=string.find(text,"gg.setRanges",1)
 editAll=string.find(text,"gg.editAll",1)
 toast=string.find(text,"gg.toast",1)
 prints=string.find(text,"print",1)
 sleep=string.find(text,"gg.sleep",1)
 r=r..text.."\n"
for i=1,2 do
if string.find(text, ";", 1) and not returns then
   r=line()..r..ccgstr().."\n"
end
if string.find(text, "function", 1) and not returns then
   r=line()..r..ccgstr().."\n"
end
if search and not returns then
   r=line()..r..ccgstr().."\n"
 end
if ranges and not returns then
   r=line()..r..ccgstr().."\n"
 end
if editAll and not returns then
   r=line()..r..ccgstr().."\n"
 end
if toast and not returns then
   r=line()..r..ccgstr().."\n"
 end
if prints and not returns then
   r=line()..r..ccgstr().."\n"
 end
if sleep and not returns then
   r=line()..r..ccgstr().."\n"
 end
   end
  end
 until text==nil
 return r
end
local function replace(func)
files=func:gsub('gg%.searchNumber','S686_'):gsub('gg%.clearResults','S686_'):gsub('os%.exit','Exit')
txt=[=[--豪哥二改  s686编译1.2
]=]
  return txt..files
end
function pathname()
if io.open("/storage/emulated/0/Android/.filename")~=nil then
 filename=io.open("/storage/emulated/0/Android/.filename"):read("*a")
 else
  filename="sdcard"
end
  return filename
end
function Main()
  s1=pathname():gsub('/[^/]+$','')
  s_u={"脚本保存文件路径","脚本保存文件名称:","防止更改名","脚本添加数字密码","密码(必须<4位且只能使用数字0~9)"}
  s_f={s1,pathname():gsub(s1..'/','')..'.S686'}
  s_c={"path","text","checkbox","checkbox","text","number"}
  info=re.d(s_u,s_f,s_c)
  if not info then
    x=re.b('返回选择脚本界面?','退出','返回')
  if x==1 then os.exit(re.a('退出')) end
  end
   if info and loadfile(pathname()) then
    transfer=Prevent(pathname()).."\n"
    transfer=transfer:gsub("%-%-%[%[.-%]%]",""):gsub("%-%-[^\n]+","")
    enctime=os.clock()
    number=tonumber(info[5])
    if info[4] then
    if info[5]:len()>4 then
      re.b('密码过长!不能超过4位！')
     else
     if number~=info[5] then
      re.b('密码只能为1~9的数字!')
      else
      transfer=AddKey(transfer,info[5])
      end
    end
  end
  if info[6] then
   transfer=xname(transfer,info[2])
  end
  transfer=searandom(transfer)
  transfer=dump(transfer)
  file = io.open(info[1].."/"..info[2], 'w'):write(transfer):close()
 print("加密成功！\n脚本保存在：\n"..info[1].."/"..info[2].."\n加密共时长:"..os.clock()-enctime..'s')
 os.exit()
 end
end
::S686Tool::
gg.alert[[注意
该加密不支持Xs写法！
脚本加密后\n会无法换行！
该加密较慢请耐心等待
普通脚本加密后5~10MB
防御请自备，本加密仅编译]]
s686=re.d({'选择需要加密的脚本:'},{pathname()},{'file'})
if s686 and io.open(s686[1]) then
last=s686[1]
io.open("/storage/emulated/0/Android/.filename","w"):write(last)
test,error=loadfile(last)
  if test then Main()
  else
  re.b('脚本错误!\n\n╾╾╾╾╾╾╾╾╾⚠ 存 在 问 题 ️⚠╾╾╾╾╾╾╾╾╾\n错误:\n'..error) goto S686Tool end
  else
  os.exit(re.a('退出'))
 end
goto S686Tool