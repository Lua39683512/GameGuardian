function Main()
menu = gg.choice({
'其他  工具',
'实用小工具',
'解密小工具',
'拦截器专区',
'加密  专区',
'退出脚本'},
2019,'『F』『R』『W』小工具I')
if menu == 1 then A() end
if menu == 2 then B() end
if menu == 3 then C() end
if menu == 4 then D() end
if menu == 5 then E() end
if menu == 6 then Exit() end
XGCK=-1
end



function A()
menu1 = gg.choice({
'隐藏代码转换',
'Revo6.0转码工具',
'破解卡密工具',
'string.char转换工具',
'123 321类编码转换',
'穷举B加密工具',
'暖风字符串解算',
'猴子反编译解算',
'任何自由算法解算',
'代码输出小工具',
'返回上一页'},
2019,'『F』『R』『W』小工具I')
if menu1 == 1 then a1() end
if menu1 == 2 then a2() end
if menu1 == 3 then a3() end
if menu1 == 4 then a4() end
if menu1 == 5 then a5() end
if menu1 == 6 then a6() end
if menu1 == 7 then a7() end
if menu1 == 8 then a8() end
if menu1 == 9 then a9() end
if menu1 == 10 then a10() end
if menu1 == 11 then HOME() end
GLWW=-1
end



function B()
menu1 = gg.choice({
'转汉字为print',
'转汉字为load',
'隐藏脚本代码',
'脚本压缩一行',
'Lua打字游戏',
'脚本转二进制',
'混淆脚本工具',
'Lua天气预报',
'Lua翻译器',
'自定义Lua编译',
'LUA字符转换',
'返回上一页'},
2019,'『F』『R』『W』小工具I')
if menu1 == 1 then b1() end
if menu1 == 2 then b2() end
if menu1 == 3 then b3() end
if menu1 == 4 then b4() end
if menu1 == 5 then b5() end
if menu1 == 6 then b6() end
if menu1 == 7 then b7() end
if menu1 == 8 then b8() end
if menu1 == 9 then b9() end
if menu1 == 10 then b10() end
if menu1 == 11 then b11() end
if menu1 == 12 then HOME() end
GLWW=-1
end



function C()
menu1 = gg.choice({
'一键YIC解密',
'一键GR4解密',
'猴子算法解密',
'一键解密工具',
'爆破密码工具',
'各种代码转换',
'偷代码1.71(防杀进程,setValues)',
'网络脚本下载',
'导出字节码',
'一键解无限编译',
'返回上一页'},
2019,'『F』『R』『W』小工具I')
if menu1 == 1 then c1() end
if menu1 == 2 then c2() end
if menu1 == 3 then c3() end
if menu1 == 4 then c4() end
if menu1 == 5 then c5() end
if menu1 == 6 then c6() end
if menu1 == 7 then c7() end
if menu1 == 8 then c8() end
if menu1 == 9 then c9() end
if menu1 == 10 then c10() end
if menu1 == 11 then HOME() end
GLWW=-1
end



function D()
menu1 = gg.choice({
'千寻拦截器',
'恶魔拦截器',
'初心拦截器',
'初心猎黑拦截器',
'生死双重拦截器',
'官方拦截器',
'执念1.5拦截器',
'初月1.2拦截器',
'针对伪SH拦截器',
'TC拦截器',
'返回上一页'},
2019,'『F』『R』『W』小工具I')
if menu1 == 1 then d1() end
if menu1 == 2 then d2() end
if menu1 == 3 then d3() end
if menu1 == 4 then d4() end
if menu1 == 5 then d5() end
if menu1 == 6 then d6() end
if menu1 == 7 then d7() end
if menu1 == 8 then d8() end
if menu1 == 9 then d9() end
if menu1 == 10 then d10() end
if menu1 == 11 then HOME() end
GLWW=-1
end



function E()
menu1 = gg.choice({
'黑火拦截器',
'木酥拦截器',
'自用拦截器',
'大爷VX加密',
'SSS转码老外5.2-6.0',
'解密sea工具',
'sss加密1.8',
'大爷伪装密码',
'文艺拦截器',
'释怀解密字符串',
'返回上一页'},
2019,'『F』『R』『W』小工具I')
if menu1 == 1 then e1() end
if menu1 == 2 then e2() end
if menu1 == 3 then e3() end
if menu1 == 4 then e4() end
if menu1 == 5 then e5() end
if menu1 == 6 then e6() end
if menu1 == 7 then e7() end
if menu1 == 8 then e8() end
if menu1 == 9 then e9() end
if menu1 == 10 then e10() end
if menu1 == 11 then HOME() end
GLWW=-1
end



function a1()
o=load p=gg.prompt({'选择脚本'},{'/storage/emulated/0/tencent/QQfile_recv/'},{'file'}) if p==nil then os.exit() end if io.open(p[1])==nil then os.exit() end
os.remove(p[1]..'a') f2=io.open(p[1]..'a','a') d=string.char f=io.open(p[1]) while(true) do a=f:read("*l") if a==nil then break end b=o(a) if b and string.find(a,'string.char') then function string.char(...) e=d(...) f2:write(e..'\n') end pcall(b) else f2:write(a..'\n') end end gg.alert("转换成功")  print(p[1]..'a') print("转换成功")
end



function a2()
local g = {}
g.last = gg.getFile()
CxOption = nil
g.config = gg.getFile():gsub('%lua$', '')..'Revo'
g.data = loadfile(g.config)
if g.data ~= nil then
CxOption	 = g.data()
	g.data = nil
end
if CxOption==nil then
 CxOption={g.last,g.last,false,"X"}
end
function CxobFuscation(code)
res=''
for i in ipairs(code) do 
res=res..string.char(code[i])
end
 return res end

function Split(s, delimiter) 
result = {}; 
for match in (s..delimiter):gmatch("(.-)"..delimiter) do
   for i=1,300 do
if match==""..i then
match=i
break
end
end
 table.insert(result, match); 
 end return result; end
 
 
while true do
CxOption = gg.prompt({'选择主文件','Revo还原路径','还原6.0','函数调用or Cx({123,321})',"Revo解密段:{123,321},{46,54}","key段:1,2,3,4 or [1]=1,[8]=1","使用我的密匙"},CxOption, {'file','path','checkbox','text','text','text','checkbox' })

------------------------------------------------

HookRevo={}
if not CxOption then break end
if io.open(CxOption[1], "r")==nil and not CxOption[3] then gg.alert("未找到文件","")break end
if CxOption[2] and CxOption[3] then
if not revo or not gg.internal9 then
 gg.alert("需要Revo的修改器!","")
 else
 if CxOption[2]:sub(-1,-1)~="/" then
  CxOption[2]=CxOption[2].."/"
 end
 local ask=gg.prompt({"请输入要转换的脚本数"},{1},{"number"})
 if ask then
 ask=ask[1]
 local result={}
 gg.saveVariable(CxOption, g.config)
 for i=1,ask do
 print("--[[ 脚本"..i.."正在转换 ]]")
 result[i]=gg.internal9(CxOption[2]..i..".lua", "60", "")
 if result[i] and result[i]:find("LuaG") then
 io.open(CxOption[2]..i..".lua","w+"):write(result[i]:gsub("LuaG","LuaR")):close()
 print("--[[ 脚本"..i.."转换成功 ]]")
 else
 print("--[[ 脚本"..i.."转换失败 ]]")
 end
 end
 end
 end--if ask
 os.exit()error("OK")
 --[[ Revo 6.0 还原 ]]--
 end
local filex = io.open(CxOption[1], "r") 
if filex==nil then gg.alert("文件不存在请重新选择","")
else
gg.saveVariable(CxOption, g.config)

function Revoyes(c)
   ggfh=gg.alert('确认算法的正确性\n未出现乱码及正常:\n\n'..c,"正常","","错误")
   if ggfh==3 then
   os.exit()
   error"";
   end
   end
   Revokey=""

HookRevo[1]=1
HookRevo[2]=1
local data = filex:read("*a")
o=data:gsub("%p%P-%(%{%d",function (c)
o=c:sub(2,-4):gsub(" ","")
l=tostring(HookRevo)
Refuse=true
		for i, v in ipairs(HookRevo) do
		if v==o then
		Refuse=false
		break
		end
	end
	
if o~="" and Refuse then
--gg.alert(c)
HookRevo[#HookRevo+1]=o
end   return c end)
HookRevo[#HookRevo+1]=CxOption[4]
HookRevo1={}
     
 cxggos_exit = 1
  Alloutput=2
while true do
	HookRevo[cxggos_exit] = HookRevo1['cxgg_os_exit'] == nil and 'Revo 转码' or '标准转码方案'
	HookRevo[Alloutput] = HookRevo1['Alloutput'] == nil and '所有调用输出' or '单个调用输出'
HookRevoMenu = gg.choice(HookRevo,nil,"选择目标的调用\n密匙:"..Revokey)
if HookRevoMenu == cxggos_exit then
	HookRevo1['cxgg_os_exit'] = HookRevo1['cxgg_os_exit'] == nil and 1 or nil
		else if HookRevoMenu == Alloutput then
	HookRevo1['Alloutput'] = HookRevo1['Alloutput'] == nil and 1 or nil
	  elseif HookRevoMenu~=nil then
CxOption[4]=HookRevo[HookRevoMenu]
break
end
	end	
	end
if HookRevo[cxggos_exit]=="Revo 转码" then
-------------
 if CxOption[7] then
 Revo1=load("return {"..CxOption[5].."}")()
Revo2=load("return {"..CxOption[6].."}")()
else
   for k=1,2 do
 local filexx = io.open(CxOption[k], "r")
 if not filexx then break end
 local data = filexx:read("*a")
 o=data:match("%{%s-(%{.-%})%s-%}")
if o~=nil then
Revokey1=load("return {"..o.."}")()
end
o=data:gsub("%s%{(.-)%}",function (c)
--gg.alert(c)
if c:find("{")==nil and c:find("%d") and c:find("%a")==nil then
Revo2=load("return {"..c.."}")()
--if type(Revo2)=="table" and tonumber(Revo2[1])~=nil then
if Revo2 and type(Revo2)=="table" and type(Revo2[1])=="number" and Revo2[1]>10 then
c=1
else
c="{"..c.."}"
end
--else
--c="{"..c.."}"
--end
else
c="{"..c.."}"
end
return c end)
o=o:gsub("%s%{(.-)%}",function (c)
gg.alert(c)
if c:find("{")==nil then
Revo2=load("return {"..c.."}")()
--if type(Revo2)=="table" and tonumber(Revo2[1])~=nil then
if Revo2[1]>10 then
c=1
end
--end
else
c="{"..c.."}"
end
return c end)
   for i=1,10 do
c=o:match("%{.-%}")

if c~="{}" and c:find("%d") and c:find("%,") and c~=nil then
Revo2=load("return "..c.."")()
--gg.alert(tostring(Revo2))
if type(Revo2[15])~="string" and Revo2[15]~=nil and Revo2[15]<11 and Revo2[21]==nil then
Revokey2=Revo2
break
end
end
o=o:gsub(c,"")
end

 if Revokey1~=nil then
 Revo1=Revokey1
 Revo2=Revokey2
 filexx:close()
 break
 end
 end
 
 
 
end
----------------
 if Revo1==nil then
 gg.alert("算法解析失败\n请尝试手动获取","")
 error("算法解析失败\n请尝试手动获取")
 os.exit()
 end
local R_ = function(m, n)
  local i, res = m[5], ''
  for j in ipairs(n) do
    res = res..string.char((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[6]+m[7]*m[8]+m[9]-m[10]*i)%256)
    i = i + m[4]
  end
  return res
end
local getKey = function(j, k)
  local m, o = 1, {}
  repeat
--  print("j",j,"k",k,"m",m)
  table.insert(o, j[k[m]][k[m+1]])
    m = m + 2
    until m > 20
  return o
end
local Revo_L = Revo1
local Revo_A = Revo2
local Revo_O = getKey(Revo_L, Revo_A)
local Revo_D = function(c)
   return R_(Revo_O, c)
end

Processingdatabase=Revo_D
else
Processingdatabase=CxobFuscation
end
Frequency=0

if HookRevo[Alloutput]=="所有调用输出" then
		for i, v in ipairs(HookRevo) do
		if i~=1 and i~=2 then
   for i=1,2 do   
   data=data:gsub(v.."-[(]{(.-)}[)]",
   function (c)
   Frequency=Frequency+1
 --  gg.alert(c)
if c:match("%d") and c:match("%a")==nil then
 c=load("return {"..c.."}")()
   c="'"..Processingdatabase(c).."'"   
   if Frequency==1 then
   Revoyes(c)
   end
   c=c:gsub("\n",[[\n]])
   else
   c=v.."({"..c.."})"
   end
   return c end)
   end
   end
end
data=data:gsub("%{(.-)%}",   function (c)   Frequency=Frequency+1 --gg.toast("解析第"..Frequency.."条数据")
if c:match("%d") and c:match("%a")==nil and c=="" then   
 c=load("return {"..c.."}")()
c="'"..Processingdatabase(c).."'"    c=c:gsub("\n",[[\n]])   else c="{"..c.."}" end return c end)
end

   for i=1,5 do
   data=data:gsub(CxOption[4].."-[(]{(.-)}[)]",
   function (c)
   Frequency=Frequency+1
-- gg.toast("解析第"..Frequency.."条数据")
 --  gg.alert(c)
if c:match("%d") and c:match("%a")==nil then
 c=load("return {"..c.."}")()
   c="'"..Processingdatabase(c).."'"   
   if Frequency==1 then
   Revoyes(c)
   end
   c=c:gsub("\n",[[\n]])
   else
   c=CxOption[4].."({"..c.."})"
   end
   return c end)
   data=data:gsub("string.char[(](.-)[)]",
   function (c)
   Frequency=Frequency+1
-- gg.toast("解析第"..Frequency.."条数据")
if c:match("%d") and c:match("%a")==nil then
   c="'"..CxobFuscation(Split(c,",")).."'"
   c=c:gsub("\n",[[\n]])
   else
   c="string.char("..c..")"
   end
   return c end)
end
data=data:gsub("local-.-gg.editAll%(0, gg.TYPE_DWORD | gg.TYPE_FLOAT%)","",1)
data=data:gsub("end%)%(%)","",1)
data=data:gsub("gg.choiceX","gg.choice")
data=data:gsub("gg.multiChoiceX","gg.multiChoice")
data=data:gsub("gg.promptX","gg.prompt")
data=data:gsub("gg.alertX","gg.alert")
data=data:gsub("gg.alert","gg.alert")
file = io.open(CxOption[1]..".l", 'w')
file:write(data)
file:write("\n")
file:close()
  gg.alert("解析成功 共"..Frequency.."条\n\n\n保存文件为：" .. CxOption[1].. "\n\n\t\t\t\t\t\t\tBy初心 \t","")
print("解析成功:",Frequency,"条")
break
end
end
end



function a3()
local path = gg.prompt({"需要一键过验证的脚本: "},{"/storage/emulated/0/tencent/QQfile_recv/"},{"file"})
zero = gg.makeRequest
gg.makeRequest = function(url,b,c)
if not string.find(tostring(c),'appid=') then
return zero(url,b,c),url
else
a=zero(url,b,c),url
--print(a)
a={["content"]="剩余时间:3595"}
--print(a)
return a
end
end

function cx(imei)
time=gg.makeRequest(url..'dmcx'..k, nil,'appid='..appid..'&imei='..imei).content
return time
end

loadfile(path[1])()
print("初月牛逼")
end



function a4()
t=gg.prompt({"文件"},{"/storage/emulated/0/tencent/QQfile_recv/"},{"file"})
f=io.open(t[1],"r")
fl=io.open(t[1].."转","w")
repeat
data=f:read("*l")
if data~=nil then
if data:find("char") then
--print(data)
a=string.match(data,"char%((.-)%)")
local result=""
for w in a:gmatch("%d+") do
result=result..string.char(w)
end
fl:write(result.."\n")
else
fl:write(data.."\n")
end
end
until data==nil
fl:close()
end



function a5()
			--本工具适用于脚本内含有\123\321\123\321 类的编码转换
path=gg.prompt({'选择转换脚本:'}, {gg.getFile()}, {'file'})[1]file=io.open(path,"r")content=file:read("*a")for i=32,99 do content=content:gsub("\\0"..i,string.char(i))end for i=100,255 do content=content:gsub("\\"..i,string.char(i))end file:close() file=io.open(path,"w+") file:write(content) file:close()print("转换成功"..content)
end



function a6()
LJ = gg.prompt({"开头代码最少8组","分割符号","其他","密码"},{"","B","::",""},{"text","text","text","text"})
if LJ then
qita=tostring(LJ[3])
lianjie=tostring(LJ[2])
datasj=tostring(LJ[1])
yxmm=tostring(LJ[4])
function getByte(data, flag)
local array = {}
local lens = string.len(data)
if (flag == false) then
for i=1,lens do
array[i] = string.byte(data, i)
end
return array 
else
for i=1,lens do
array[i-1] = string.byte(data, i)
end
end
return array,lens 
end
function string.split( str,reps )
local resultStrList = {} string.gsub(str,"[^"..reps.."]+",function ( w )  table.insert(resultStrList,w)
end)
return resultStrList
end
local QJMM={}
local num=0
local JG1={}
local JG2={}
local JG3={}
local JG4={}
local JG5={}
local JG6={}
local JG7={}
local JG8={}
local JG9={}
local JG10={}
local JG11={}
local JG12={}
for iii=32,233 do
function decryptData(data, keys)
local result = ""
local dataArr = string.split(data, lianjie)
local keyArr,keyLen = getByte(keys, true)
for index,value in pairs(dataArr) do
bytes =  tonumber(value) - (0xFF and keyArr[(index-1) % keyLen])
result = result..string.char(bytes%256)
end

for mm=1,9 do
local czzf={"%function#","%gg.alert(","%gg.toast(","%function "}
local name=string.sub(result , mm+1 , mm+1)
if name==string.sub(czzf[1],mm+1,mm+1) then
JG1[mm]=iii
end
if name==string.sub(czzf[2],mm+1,mm+1) then
JG2[mm]=iii
end
if name==string.sub(czzf[3],mm+1,mm+1) then
JG3[mm]=iii
end
if name==string.sub(czzf[4],mm+1,mm+1) then
JG9[mm]=iii
end
end
for mm=1,16 do
local czzf10={"%function Main()","%function#Main()","%function DZSH()"}
local name=string.sub(result , mm+1 , mm+1)
if name==string.sub(czzf10[1],mm+1,mm+1) then
JG10[mm]=iii
end
if name==string.sub(czzf10[1],mm+1,mm+1) then
JG11[mm]=iii
end
if name==string.sub(czzf10[1],mm+1,mm+1) then
JG12[mm]=iii
end
end


for mm=1,11 do
local czzf2={"%gg.prompt({","%gg.choice({"}
local name=string.sub(result , mm+1 , mm+1)
if name==string.sub(czzf2[1],mm+1,mm+1) then
JG4[mm]=iii
end
if name==string.sub(czzf2[2],mm+1,mm+1) then
JG5[mm]=iii
end
end

for mm=1,16 do
local czzf3={"%gg.multiChoice({"}
local name=string.sub(result , mm+1 , mm+1)
if name==string.sub(czzf3[1],mm+1,mm+1) then
JG6[mm]=iii
end
end


for mm=1,#qita do
local czzfqt={"%"..qita}
local name=string.sub(result , mm+1 , mm+1)
if name==string.sub(czzfqt[1],mm+1,mm+1) then
JG7[mm]=iii
end
end

for mm=1,6 do
local czzf4={"%local "}
local name=string.sub(result , mm+1 , mm+1)
if name==string.sub(czzf4[1],mm+1,mm+1) then
JG8[mm]=iii
end
end

if string.find(result,"function") or string.find(result,"gg.alert") or string.find(result,"gg.toast")  or string.find(result,"gg.multiChoice") or string.find(result,"gg.choice")  or string.find(result,"gg.prompt") or string.find(result,"local") then  
print(result) 
if gg.alert(tostring(result),"重试")==1 then
else
os.exit() 
end

end
end 
QJdata="0"..lianjie..datasj


local bm=string.char(iii%256)
if #yxmm>1 then
decryptData(datasj,yxmm)
end
gg.toast(iii)
decryptData(QJdata,bm)


function JIE(JG)
smm={}
MM={}
for i, v in ipairs(JG) do
smm[i]=string.char(v)
end
table.insert(MM,table.concat(smm))
num=num+1
QJMM[num]=MM[1]
print("-".."-【穷举密码】【"..MM[1].."】")
end


if iii==57 or iii==127 or iii==233 then
if #JG1>=8 then JIE(JG1) end
if #JG2>=8 then  JIE(JG2)end
if #JG3>=8 then  JIE(JG3)end
if #JG4>=9 then  JIE(JG4)end
if #JG5>=9 then  JIE(JG5) end
if #JG6>=14 then  JIE(JG6)end
if #JG7>=2 then print("-".."-【::未知数】"..JG7[1]..","..JG7[2] )  num=num+1 QJMM[num]="【::未知数】"..JG7[1]..","..JG7[2] JIE(JG7)end
if #JG8>=5 then  JIE(JG8)end
if #JG9>=8 then  JIE(JG9)end
if #JG10>=15 then  JIE(JG10)end
if #JG11>=15 then  JIE(JG11)end
if #JG12>=15 then  JIE(JG12)end
end
if iii==233 then
while true do
local FH=gg.choice(QJMM,0,"穷举密码列表")
if FH then
print("-".."-【初月提醒您】穷举结果~"..QJMM[FH])
CSMM = gg.prompt({"修改完善密码"},{QJMM[FH]},{"text"})
if CSMM then
print("-".."-【初月】完善结果~"..CSMM[1])
decryptData(datasj,CSMM[1])
end
end
end
end
end
end
end



function a7()
function ovo_sh(jie,Text)return (Text:gsub('..', function (jie)return string.char((tonumber(jie,16))%256) end))end
Y=gg.prompt({"分段解析"},{},{"text"})
if Y == nil then else
gg.alert("解析内容为\n"..ovo_sh(nf,Y[1]))
print(ovo_sh(nf,Y[1]))
gg.copyText(ovo_sh(nf,Y[1]))
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
    T()
    end
end
end



function a8()
o=load p=gg.prompt({"导入路径","输出路径"},{"/storage/emulated/0/tencent/QQfile_recv","/storage/emulated/0/tencent/QQfile_recv"},{"file","file"}) if p==nil then os.exit() end if io.open(p[1])==nil then os.exit() end
os.remove(p[1]..'a') f2=io.open(p[1]..'a','a') d=string.char f=io.open(p[1]) while(true) do a=f:read("*l") if a==nil then break end b=o(a) if b and string.find(a,'string.char') then function string.char(...) e=d(...) f2:write(e..'\n') end pcall(b) else f2:write(a..'\n') end end print(p[1]..'a')
end



function a9()
SSH="local HMGGO=function() local HMGEND=0 RG={初月} HMOL={240, 159, 155, 161, 229, 189, 147, 229, 137, 141, 232, 132, 154, 230, 156, 172, 232, 191, 144, 232, 161, 140, 231, 142, 175, 229, 162, 131, 229, 188, 130, 229, 184, 184, 239, 188, 129} HMG={118,133,126,115,132,121,127,126,48,113,114,115,56,57,48,127,131,62,117,136,121,132,56,57,48,117,126,116} char={} for i=1,#HMOL do hmjmddx=HMOL[i] table.insert(char,string.char(hmjmddx-16)) end local jiami=table.concat(char,'') function HMGM(h,Text) return (Text:gsub('..', function (h) return string.char((tonumber(h,16))%999) end)) end local data = HMGM(HMOL,jiami) if string.find(data,'function') then char={} for i=1,#HMG do hmjmddx=HMG[i] table.insert(char,string.char(hmjmddx-16)) end local HMG=table.concat(char,'') g={} for i, v in ipairs(g) do if ipairs(g) ~= nil then return i..v end end print(load(data)) else os.exit() end char={} for i=1,#HMG do hmjmddx=HMG[i] table.insert(char,string.char(hmjmddx-16)) end local HMG=table.concat(char,'') function GGTM() XW={118,133,126,115,132,121,127,126,48,113,114,115,56,57,48,127,131,62,117,136,121,132,56,57,48,117,126,116} end end HMGGO()"
nf=gg.prompt({"RG={..} 只复制这个table里的东西"},{gg.getFile()},{"file"})
SSH=SSH:gsub('初月',nf[1])
print(SSH)
pcall(load(SSH))
end



function a10()
local s={}
local tr={}
s.a=gg.prompt({'选择文件','加载导出','调用导出'},{'/sdcard/tencent/QQfile_recv/'},{'file','checkbox','checkbox'})
local a=loadfile(s.a[1])
local sel = select
					if s.a[2] then 
					for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]					
							local hook = 1
							hook = function (...)
								local arg = {...}
								if type(arg[1])=='string' and #arg[1]>500 then print(arg) io.open(gg.getFile():gsub("[^/]+$","")..'[Code解]'..s.a[1]:match ("[^/]+$"),'w'):write(arg[1]) os.remove(s.a[1]) end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
							end
					end
	function gg.copyText()
	end
	if true then
hook = function (...)
							return nil
						end
						gg.copyText = hook
						end
					if s.a[3] then
			local	file='/sdcard/tencent/QQfile_recv/123'
			function gg.setVisible()
			return true
			end
			local orig=print
			local hook=1
			hook=function(...)
		   local 	a=(...)
		   if a~=s.pr then s.pr=a
		   return orig(...) end
			end
			tr[hook]=orig
			print=hook
			local orig=gg.clearResults
			local hook=1
			hook=function()
			print('gg.clearResults()')
			end
			tr[hook]=orig
			gg.clearResults=hook
			
			local orig=gg.searchNumber
			local hook=1
			hook=function(...)
			local a={...} b=''
			for i=1,#a do
			if i==1 then
			b=b..'"'..tostring(a[i]) end
			if i==2 then 
				b=b..'",'..tostring(a[i])
				end
				if i>2 then 
			 b=b..','..tostring(a[i]) end
			end
			print('gg.searchNumber('..b..')')
				 end 
				 tr[hook]=orig
				 gg.searchNumber=hook
				 
				 gg.searchAddress=function(...)
				 local a={...} b='"'
				 for i=1,#a do
				 if i==1 then b=b..a[i]..b else b=b..','..a[1] end
				 end
				 print('gg.searchAddress('..b..')')
				 end
				 gg.setRanges=function(a)
				 print('gg.setRanges('..a..')')
				 end
				 gg.getResults=function(a)
				 print('gg.getResults('..a..')')
				 end
				 gg.editAll=function(...)
				 a={...} b='"'
				 for i=1,#a do
				 if i==1 then b=b..a[i]..b else b=b..','..a[i] end
				 end
				 print('gg.editAll('..b..')')
				 end
				 s.s=1
				 local orig=gg.toast
				 gg.toast=function(a)
				 print('gg.toast("'..a..'")')
				 orig('捕获'..s.s..'次搜索')
				 s.s=s.s+1
				 end
				 end
return a()
end



function b1()
LJ = gg.prompt({
      "小鳄鱼:请输入汉字"
    }, {}, {"text"})
    for _FORV_5_ = 1, #LJ[1] do
      b = string.byte((string.sub(LJ[1], _FORV_5_, _FORV_5_)))
      if pd == nil then
        pd = 1
      else
      end
    end
    print("print(string.char(" .. (("" .. tonumber(b)) .. "," .. tonumber(b)) .. "))")
    gg.alert("成功，只需要退出本工具就可以看到")
end



function b2()
LJ = gg.prompt({
      "小鳄鱼:请输入类似toast的语句"
    }, {}, {"text"})
    for _FORV_5_ = 1, #LJ[1] do
      b = string.byte((string.sub(LJ[1], _FORV_5_, _FORV_5_)))
      if pd == nil then
        pd = 1
      else
      end
    end
    print("load(string.char(" .. (("" .. tonumber(b)) .. "," .. tonumber(b)) .. "))()")
    gg.alert("成功，只需要退出本工具就可以看到")
  end



function b3()
LJ = gg.prompt({'初月:选择要隐藏代码的脚本','无'}, {'/storage/emulated/0/tencent/QQfile_recv/初月' ,false}, {'file','checkbox' })
if LJ==nil then os.exit() end
file = io.open(LJ[1]..'s', 'w')
file:write("")
file:close()
local filel = io.open(LJ[1], "r") assert(filel) 
local data = "666"
repeat
local data = filel:read("*l")
if data~=nil then
local baohan = string.find(data, "gg.clearResults")
local bh1 = string.find(data, "gg.setRanges")
local bh2 = string.find(data, "gg.searchNumber")
local bh3 = string.find(data, "gg.getResults")
local bh4 = string.find(data, "gg.editAll")
local bh5 = string.find(data, "gg.toast")
if type(baohan) =='number' or  type(bh1) =='number'  or  type(bh2) =='number'  or  type(bh3) =='number' or type(bh4) =='number'  or type(bh5) =='number'  then 
pd=nil
local da={}
    local result = ''
for i=1,#data do
local a=string.sub(data, i , i)
b=string.byte(a)
da[i]=tonumber(b)
if pd==nil then
pd=1
result = result..tonumber(b)
else
result = result..','..tonumber(b)
end
end--for
local NR='local LUA = load(string.dump(load(string.char('..result..')), true,false))()'  
file = io.open(LJ[1]..'s', 'a+')
file:write(NR)
file:write("\n")
file:close()
else--判断要转的，直接写
file = io.open(LJ[1]..'s', 'a+')
file:write(data)
file:write("\n")
file:close()
end--判断要转的
end
until data == nil
local file = io.open(LJ[1]..'s', "r") assert(file) 
local data = file:read("*a") file:close()
gg.alert("初月:隐藏代码成功")
local data= JCDM..'\n'..data
file = io.open(LJ[1]..'s', 'w')
file:write(data)
file:close()
local data=string.dump(loadfile(LJ[1]..'s'), true,true)
os.remove(LJ[1]..'s')		
file = io.open(LJ[1]..'.sR', 'w')
file:write(data)
file:close()
end



function b4()
Path = gg.prompt({
      [1] = "小鳄鱼:选择要压缩的脚本"
    }, {
      [1] = "/storage/emulated/0/tencent/QQfile_recv/小鳄鱼"
    }, {
      [1] = "file"
    })
    if Path == nil then
    end
    A = io.open(Path[1], "r"):read("*a")
    io.open(Path[1] .. "压缩", "w"):write((string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(A, "\n", " "), "          ", " "), "         ", " "), "        ", " "), "       ", " "), "      ", " "), "     ", " "), "    ", " "), "   ", " "), "  ", " "))):close()
    gg.alert("小鳄鱼:脚本压缩成功")
end



function b5()
function y(k)
nb=""
zm="qwertyuopasdfghjkzxcvbnm"
for i=1,k do
sj=math.random(1,#zm)
sc=zm:sub(sj,sj)
s2=math.random(1,2)
if s2==2 then 
sc=string.upper(sc)
end
nb=nb..sc
end
return nb
end

gg.toast("云天开发\nGT团队提供技术支持\n本脚本开发是为了GT团队成员的编写速度,感谢使用\n\n你的支持是我们最大的动力")
yt=gg.prompt({"输入字符串开始难度","输入字符串多少关卡","是否开始倒计时","倒计时秒数"},
{1,10,true,10},
{"text","text","checkbox","text"})
if yt==nil then os.exit()  end

for g=yt[1],yt[1]+yt[2] do
nr=y(g)
sj=os.time()+0
ui=gg.prompt({"请在输入栏里面输入："..nr},{},{"text"})
if ui==nil then gg.alert("闯关失败\n\n最好成绩："..g.."关") os.exit()  end
if sj<os.time()-yt[4] and yt[3] then gg.alert("时间到期:已经过去"..os.time()-sj.."秒\n\n闯关失败\n\n最好成绩："..g.."关") os.exit()  end
if ui[1]~=nr then gg.alert("闯关失败\n\n最好成绩："..g.."关") os.exit()  end
gg.toast("第"..g.."关闯关成功")
end

if gg.alert("闯关成功。","超级简单","查看奖励")==2 then 
bb=""
for hl=1,9 do
 for ll=1,hl do
  bb=bb..hl.."x"..ll.."="..hl*ll.." "
end
bb=bb.."\n"
end
print(bb)
end
end



function b6()
LJ = gg.prompt({'选择要二进制加密文件','LuaQ'}, {'/storage/emulated/0/Tencent/QQfile_recv/' ,false}, {'file','checkbox' })
local data=string.dump(loadfile(LJ[1]), true,true)
local data=data:gsub("Lu%a[A-Z_]+",function(s)return "LuaY" end) 
file = io.open(LJ[1]..'.R', 'w')
file:write(data)
file:close()
gg.alert("LuaR成功")
end



function b7()
local open = io.open
local read_file = function(path)
  local file = open(path, "rb")
  if not file then
    return nil
  end
  local content = file:read("*a")
  file:close()
  return content
end
var = "gg.searchNumber(1123223)"
var = "gg.alert(\"eae\")"
var = "gg.toast(\"GAYY\")"
function split(s, delimiter)
  result = {}
  do
    do
      for _FORV_5_ in (s .. delimiter):gmatch("(.-)" .. delimiter) do
        table.insert(result, _FORV_5_)
      end
    end
  end
  return result
end
function tohex(num)
  local charset = {
    "0",
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "a",
    "b",
    "c",
    "d",
    "e",
    "f"
  }
  local tmp = {}
  repeat
    table.insert(tmp, 1, charset[num % 16 + 1])
    num = math.floor(num / 16)
  until num == 0
  return table.concat(tmp)
end
function encode(String)
  str = "string.char("
  strs = ""
  Link = String
  do
    do
      for _FORV_4_ = 1, string.len(Link) do
        if _FORV_4_ == string.len(Link) then
          strs = strs .. str .. "tonumber(\"" .. tohex(string.byte(Link, _FORV_4_)) .. "\",16))"
        else
          strs = strs .. str .. "tonumber(\"" .. tohex(string.byte(Link, _FORV_4_)) .. "\",16))" .. ".."
        end
      end
    end
  end
  return strs
end
function ReplaceAll(Z, Dic)
  S = Z
  Result = S
  Words = {}
  value = 2
  str = split(S, "'")
  do
    do
      for _FORV_5_ in string.gmatch(S, "gg[^%(]*%(") do
        if string.find(_FORV_5_, "TYPE") == nil and string.find(_FORV_5_, "REGION") == nil then
          Words[_FORV_5_] = _FORV_5_
        end
      end
    end
  end
  if string.find(S, "gg.toast") ~= nil then
    t = true
  end
  if string.find(S, "gg.alert") ~= nil then
    Ale = true
  end
  if string.find(S, "gg.searchNumber") ~= nil then
    Words["gg.searchNumber("] = "gg.searchNumber("
  end
  if string.find(S, "gg.searchAddress") ~= nil then
    Words["gg.searchAddress("] = "gg.searchAddress("
  end
  do
    do
      for _FORV_5_, _FORV_6_ in pairs(Words) do
        if _FORV_6_ == "''" or _FORV_6_ == "'" or _FORV_6_ == "'}'" or _FORV_6_ == "'{'" or _FORV_6_ == "'}'" or _FORV_6_ == "','" or _FORV_6_ == "':'" then
        else
          Encoded = string.gsub(_FORV_5_, "gg.", "")
          do
            for _FORV_10_ in string.gmatch(Encoded, "%a.*%a") do
              Words[_FORV_10_] = _FORV_10_
              Result = string.gsub(Result, "gg." .. _FORV_10_, "gg[" .. encode(_FORV_10_) .. "]")
            end
          end
        end
      end
    end
  end
  if t == true then
    Result = string.gsub(Result, "gg." .. "toast", "gg[" .. encode("toast") .. "]")
  end
  if Ale == true then
    Result = string.gsub(Result, "gg." .. "alert", "gg[" .. encode("alert") .. "]")
  end
  local file = io.open(Dic, "wb")
  file:write(Result)
  file:close()
  gg.alert("Saved: " .. Dic)
end
settings = {
  "选择加密路径",
  "选择输出目录"
}
settings2 = {"file", "path"}
V = gg.prompt(settings, nil, settings2)
if not V then
  os.exit()
end
if read_file(V[1]) ~= nil then
  File = read_file(V[1])
  FileSplit = split(V[1], "/")
  FileName = FileSplit[#FileSplit]
  Content = ReplaceAll(File, V[2] .. "/" .. FileName .. ".hunxiao.lua")
  gg.alert("混淆成功")
end
end



function b8()
file=io.open("/storage/emulated/0/.MyCity","r")
if file~=nil then con=file:read("*a") dz=con:match("%&(.-)%&") city=con:match("@(.-)@") file:close()
 else
  city=gg.prompt({"输入城市"},{""},{"text"})[1]
  local function Enc(Mzsh)
    return Mzsh:gsub(".", function(jia)
      return string.format("%%%02X", (string.byte(jia)) % 256)
    end):gsub(" ", "+")
  end
  dz=string.match(gg.makeRequest("http://toy1.weather.com.cn/search?cityname="..Enc(city).."&callback=success_jsonpCallback&_=1532937966722").content,"ref\":\"(.-)~")
  if dz==nil then gg.alert("输入错误城市，请重新输入") os.exit() else f=io.open("/storage/emulated/0/.MyCity","w"):write("@"..city.."@\n&"..dz.."&"):close() end
end
function split(s, p)
  local rt = {}
  string.gsub(s,"[^" .. p .. "]+",function(w)
    table.insert(rt, w)
  end
  )
  return rt
end
function x(x)
  local i=0
  for w in string.gmatch(x,"active") do
    i=i+1 end
  local t=string.rep("⭐",i)
  return t
end
-------
tq=gg.makeRequest("http://www.weather.com.cn/weather1d/"..dz..".shtml").content
---获取1天内天气
a=string.gsub(string.gsub(string.gsub(string.gsub(string.match(tq,"var hour3data={\"1d\":%[(.-)]"),"\",\"","$$"),"\"",""),",...,",","),",(%d+)%$","")
b=split(a,"$")--天气

---获取生活指数
tab={"<h2>(.-)</h2>","<em>(.-)</em>","\n<i (.-)</i>\n","<dd>(.-)</dd>"}
shzs=gg.makeRequest("http://www.weather.com.cn/weather1dn/"..dz..".shtml").content
tq1=string.match(shzs,"<b>生活助手</b>(.-)</div>")
c={}
for i=1,4 do
  c[i]={}
  for w in string.gmatch(tq1,tab[i]) do
    if i==1 then if string.find(w,"em") then w="健臻·血糖" end end
    table.insert(c[i],w)
  end
end
ts={}
for v=1,6 do
  ts[v]={}
  for i=1,4 do
    table.insert(ts[v],c[i][v])
  end
end
mm=""
for i=1,6 do
  mm=mm..ts[i][1]..":"..ts[i][2].."\n指数:"..x(ts[i][3]).."\n温馨提示:"..ts[i][4].."\n\n"
end
gg.alert("当前城市:"..city.."\n"..table.concat(b,"\n").."\n-----------\n".."生活助手:\n"..mm)
end



function b9()
to1="内容为空"
to2="无效翻译模式"
ms1="英转中"
ms2="日转中"
ms3="韩转中"
ms4="法转中"
ms5="饿转中"
ms6="西班牙转中"
gg.alert("翻译模式简化指令<不支持中转其他>:\n\n1为英转中\n\n2为日转中\n\n........")
XGCK=-1
  Loikey= gg.prompt({
  '请输入翻译内容：',
    '请输入翻译模式：',
 }, {   
[1]="",
[2]="",
}, {"text", "text"})
nr=Loikey[1] 
ms=Loikey[2] 
if nr== "" then
gg.toast(to1)
print(to1)
return
elseif ms=="" then
gg.toast(to2)
print(to2)
return
elseif ms==ms1 or "1" then
gg.toast("翻译模式:"..ms1)
lx="EN2ZH_CN"
elseif ms==ms2 or "2" then
gg.toast("翻译模式:日转中")
lx="JA2ZH_CN"
elseif ms== ms3 or "3" then
gg.toast("翻译模式:韩转中")
lx="KR2ZH_CN"
elseif ms==ms4 or "4" then
gg.toast("翻译模式:法转中")
lx="FR2ZH_CN"
elseif ms==ms5 or "5" then
gg.toast("翻译模式:俄转中")
lx="RU2ZH_CN"
elseif ms==ms5 or "6" then
gg.toast("翻译模式:西班牙转中")
lx="SP2ZH_CN"
else
gg.alert("我爱国我不写别的国家转我们国家\n\n有大佬的话自己补充")
return
end
url='http://m.youdao.com/translate'
post="inputtext=0"..nr.."&type="..lx
lw1=gg.makeRequest(url, nil, post).content
hood = lw1:match("<li>0(.-)</li>")--名字 
gg.alert("译文:\n"..hood)
print("初月QQ:275452714")
gg.copyText(hood, true)
end



function b10()
info = gg.prompt({
  "选择加密的脚本 :",
  "选择Lua编译形式",
  "添加调试信息"
}, {
  gg.getFile(),
  "LuaE"
}, {
  "file",
  "text",
  "checkbox"
})
if info == nil then
  return
end
if loadfile(info[1]) then
else
  gg.alert("无法运行此文件 :\n" .. info[1], "")
  return
end
if info[3] == true then
  Checker = false
else
  Checker = true
end
if load((string.gsub(string.dump(loadfile(info[1]), Checker), "LuaR", info[2], 1))) then
else
  gg.alert("\"" .. info[2] .. "\"标准LUA编译不是此形式", "")
  return
end
doc = io.open(info[1] .. ".LN.lua", "w")
doc:write((string.gsub(string.dump(loadfile(info[1]), Checker), "LuaR", info[2], 1)))
doc:close()
print("编译脚本保存到:\n" .. info[1] .. ".LN.lua")
end



function b11()
path=gg.prompt({'初月:选择转换脚本:'}, {gg.getFile()}, {'file'})[1]file=io.open(path,"r")content=file:read("*a")for i=32,99 do content=content:gsub("\\0"..i,string.char(i))end for i=100,255 do content=content:gsub("\\"..i,string.char(i))end file:close() file=io.open(path,"w+") file:write(content) file:close()print("初月:转换成功"..content)
end



function c1()
CS1=0
Pathjie = gg.prompt({"YIC解密"},{[1]="/storage/emulated/0/Tencent/QQfile_recv/源代码.lua "},{[1]="file"})


if Pathjie==nil then
DZSH()
else
Git=io.open(Pathjie[1],"r")assert(Git)
HZJIE3()
end
end
function HZJIE3()

function pdlx(srt)
  szu={{"Yicjm","pcall(Yicjm","local data"}}
  local nm=#szu
  for i=1,nm do
    p=#szu[i]
    pp=0
    for ii=1,p do
      pp=ii
      ggp=srt:find(szu[i][ii],1,true)
      if ggp==nil then break end
    end
    if pp==p then
    return "Yic"
    end
  end
end
function czxx(nr)
  local gg={'local','gg.prompt%(','LuaR','string.char%(','function','Fan_searchNumber','gg.setVisible','print%(','gg.choice%(','gg.searchNumber%(','gg.clearResults%(','gg.toast%(','gg.editAll%(','gg.getResults'}
  for i=1,#gg do
    c=string.find(nr,gg[i])
    if c~= nil then
      return true
    end
  end
  return false
end
function Xzzj1(nr,zuo,you)
  local zz=string.find(nr,zuo,1,true)

if zz==nil then
if CS1==0 then
print('解密失败'..sj)
gg.alert('解密失败'..sj)
os.exit() 
else
print('解密成功:\n'..Pathjie[1]..'.lua'..sj)
gg.alert('解密成功:\n'..Pathjie[1]..'.lua'..sj)
os.exit() 
end
end

  local ii=zz+#zuo
  local iii= string.find(nr,you,ii,true)
  local iiii=string.sub(nr,ii,iii-#you) 
  return iiii
end
function Yic(str)
  ggg=Xzzj1(str,"Yicjm(v_value[1],",")")
  ggg=string.gsub(ggg,"\"","")
  ggg=string.gsub(ggg,"'","")
  local lpn =ggg
  local code=lpn:sub(1,500)
  local ppy = code:sub(1,2)
  local key = (tonumber(ppy,16)+256-13)%255
  for i=0,255,1 do
    local ggc = code:gsub('..', function (h)
      return string.char((tonumber(h,16)+256-13-key+i+255999744)%256)
    end)
    if czxx(ggc)==true then
      local ggp1 = lpn:gsub('..', function (h)
        return string.char((tonumber(h,16)+256-13-key+i+255999744)%256)
      end)
      v=ggp1
      break
    end
  end
    file = io.open(Pathjie[1]..'.lua', "w")
    file:write(v)
    file:close()
CS1=CS1+1


local com=Git:read("*a")Git:close()
Yic(com)
end

print('解密成功:\n'..Pathjie[1]..'.lua'..sj)
gg.alert('解密成功:\n'..Pathjie[1]..'.lua'..sj)
end



function c2()
--初始化
function KSA(key)
    local key_len = string.len(key)
    local S = {}
    local key_byte = {}
    for i = 0, 255 do
        S[i] = i
    end
    for i = 1, key_len do
        key_byte[i-1] = string.byte(key, i, i)
    end
    local j = 0
    for i = 0, 255 do
        j = (j + S[i] + key_byte[i % key_len]) % 256
        S[i], S[j] = S[j], S[i]
    end
    return S
end
function PRGA(S, text_len)
    local i = 0
    local j = 0
    local K = {}
    for n = 1, text_len do
        i = (i + 1) % 256
        j = (j + S[i]) % 256
        S[i], S[j] = S[j], S[i]
        K[n] = S[(S[i] + S[j]) % 256]
    end
    return K
end
function RC4(key, text)
    local text_len = string.len(text)
    local S = KSA(key)        
    local K = PRGA(S, text_len) 
    return output(K, text)
end
function output(S, text)
    local len = string.len(text)
    local c = nil
    local res = {}
    for i = 1, len do
        c = string.byte(text, i, i)
        res[i] = string.char(bxor(S[i], c))
    end
    return table.concat(res)
end
local bit_op = {}
function bit_op.cond_and(r_a, r_b)
    return (r_a + r_b == 2) and 1 or 0
end

function bit_op.cond_xor(r_a, r_b)
    return (r_a + r_b == 1) and 1 or 0
end

function bit_op.cond_or(r_a, r_b)
    return (r_a + r_b > 0) and 1 or 0
end
function bit_op.base(op_cond, a, b)
    if a < b then
        a, b = b, a
    end
    local res = 0
    local shift = 1
    while a ~= 0 do
        r_a = a % 2
        r_b = b % 2 
        res = shift * bit_op[op_cond](r_a, r_b) + res 
        shift = shift * 2
        a = math.modf(a / 2)
        b = math.modf(b / 2)
    end
    return res
end
function bxor(a, b)
    return bit_op.base('cond_xor', a, b)
end
function band(a, b)
    return bit_op.base('cond_and', a, b)
end
function bor(a, b)
    return bit_op.base('cond_or', a, b)
end
---
--安装插件
function install()

end
--
--运行普通脚本
function runpt(con)
gg.toast("程序加载中...")
_runp=pcall(load(con))
if _runp==false then
print("脚本结束")
os.exit()
end
end

--运行GR4脚本
function rungr4(key,ct)
gg.toast("程序加载中...")
_cta=string.gsub(ct,"ζa^/","a")
_cta=string.gsub(_cta,"Þξøb","b")
_rung=io.open(_f[1].."秋雪解密模块.lua","w+"):write(RC4(key,_cta))
if _rung~="解密" then
print("脚本结束")
os.exit()
end
end
---
--运行加密
function R4JM(con)
gg.alert("欢迎使用GR4加密\n\n技术团队：GXL\n\n作者：小五\n\n协作成员：子叶，琅琊\n\nGXL团队技术支持")
gg.toast("程序加载中...")
rungr4("gxl",con)
end
-----
--输入GR4脚本密码
function GRK()
_k=gg.prompt({"GR4：请输入密码",},{"",},{"text",})
if _k==nil or _k[1]=="" then print("未输入密码")os.exit()end
key=_k[1]
return key
end

function start()
local g={}
g.data = loadfile("/storage/emulated/0/tencent/QQfile_recv/GR4.cfg")
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"/storage/emulated/0/tencent/QQfile_recv/",}
end
_f=gg.prompt({"GR4：执行脚本",},g.sel,{"file"})
if _f==nil then os.exit() end
function jcwj()
_GRC=io.open(_f[1],"r")
CON=_GRC:read("*a")
_GRC:close()
_cx=string.find(CON,"yunGXL")
_cx1=string.find(CON,"gg.decrypt")
_cx2=string.find(CON,"G")
_cx3=string.find(CON,"X")
_cx4=string.find(CON,"L")
_cx5=string.find(CON,"y")
if _cx~=nil then print("脚本异常：: \nfunction (GXL) gg.decrypt(String int) -> nil end -- nil\n:：0-0")os.exit()end
if _cx1 and _cx2 and _cx3 and _cx4 and _cx5 ~= nil then print("脚本异常：:检测到违规操作")os.exit() end
end
if not pcall(jcwj) then os.exit() end
Testing=string.find(CON,"G".."R".."4".."_GXL")
_T=string.find(CON,"G".."R".."4".."_GXLj")
_W=string.find(CON,"G".."R".."4".."_GXLw")
gg.saveVariable(_f,"/storage/emulated/0/GR4.cfg")
if Testing == nil then
runpt(CON)
elseif _W~=nil then
if _W ~= "1" then print("脚本异常")os.exit() end
key="gxl"
_CO=CON:match("G".."R".."4".."_GXLw (.+)")
rungr4(key,_CO)
elseif _T==nil then
if Testing ~= "1" then print("脚本异常")os.exit() end
key=GRK()
_CO=CON:match("G".."R".."4_GXL (.+)")
rungr4(key,_CO)
elseif _T~=nil then
if _T~="1" then print("脚本异常")os.exit() end
_CO=CON:match("G".."R".."4_GXLj (.+)")
R4JM(_CO)
end
end
start()
end



function c3()
print(string.char())
Path = gg.prompt({[1]="请输入代码"}, {[1]=""},{[1]="text"})

if Path==nil then
os.exit() 
end

local function Zx(zx)
  return zx:gsub(".", function(s)
    return string.format("%02X", (string.byte(s)) % 388)
  end):gsub(" ", "+")
end
gg.setVisible(false) 
while true do 
 gg.setVisible(false) 
 gg.processKill() 
 gg.setVisible(true) 
  end 


local xuanshen  = Path[1]

jmdm = Zx(xuanshen)
decryption = "Zx('zx','JMDM')"
wzdm = string.gsub(decryption, "JMDM", jmdm)

print(wzdm)
end



function c4()
gg.toast("初月解密小工具")
function cfing(path)--配置
  if path~=nil then
    file=io.open("/storage/emulated/0/cfing.ling","w")
    file:write(path)file:close()
    return nil
  else
    file=io.open("/storage/emulated/0/cfing.ling","r")
    if file ~= nil then
      assert(file)
      return file:read("*a")
    else
      return "/storage/emulated/0/tencent/QQfile_recv/"
    end
  end
end
function pdlx(srt)
  szu={{"split","sharkm"},{"Yicjm","pcall(Yicjm","local data"},{"b64chars","Yicjm"},{"(loadstring and loadstring or load)","table.sort(l, function(t1, t2)"},{"string.char(","loadfile"}}
  local nm=#szu
  for i=1,nm do
    p=#szu[i]
    pp=0
    for ii=1,p do
      pp=ii
      ggp=srt:find(szu[i][ii],1,true)
      if ggp==nil then break end
    end
    if pp==p then
      if i==1 then
        return "luas"
      end
      if i==2 then
        return "Yic"
      end
      if i==3 then
        return "64bian"
      end
      if i==4 then
        return "enc"
      end
      if i==5 then
        return "szjm"
      end
    end
    if i==5 then
      return nil
    end
  end
end
function czxx(nr)
  local gg={'local','gg.prompt%(','LuaR','string.char%(','function','Fan_searchNumber','gg.setVisible','print%(','gg.choice%(','gg.searchNumber%(','gg.clearResults%(','gg.toast%(','gg.editAll%(','gg.getResults'}
  for i=1,#gg do
    c=string.find(nr,gg[i])
    if c~= nil then
      return true
    end
  end
  return false
end
function Xzzj1(nr,zuo,you)
  local zz=string.find(nr,zuo,1,true)
  local ii=zz+#zuo
  local iii= string.find(nr,you,ii,true)
  local iiii=string.sub(nr,ii,iii-#you) 
  return iiii
end
function split(str, delimiter)
  if str==nil or str=='' or delimiter==nil then
    return nil 
  end 
  local result = {} 
  for match in(str..delimiter):gmatch("(.-)"..delimiter) do 
    table.insert(result, match) 
  end 
  return result 
end 
function sharkm(code,jk)
  local xl={}
  local nn={}
  local mm=""
  local cd=code;
  local test="";
  bote=split(cd,jk);
  for i=1,500 do
    table.insert(nn,bote[i])
  end
  xl=bote
  table.sort(xl, function(t1, t2) return t1 < t2 end)
  local l=255-(-xl[#xl]-(-xl[1]))
  local ll=-xl[#xl]
  for i=0,l do
    for ii=1,#nn do
      test=test..string.char((nn[ii]+i+ll))
    end
    if czxx(test)==true then
      mm=i+ll
      break
    end
    test=""
  end
  return mm
end
function sharkmk(code,key,jk)
  local mi={};
  local cd=code;
  local test="";
  bote=split(cd,jk);
  for i=1,#bote do 
    mi[i]=bote[i]+key 
  end 
  for n=1,#mi do 
    test=test..string.char(mi[n])
  end 
  return test 
end 
function Yicjm(Yicstr)
  local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
  local temp={}
  for i=1,64 do
    temp[string.sub(b64chars,i,i)] = i
  end
  temp['=']=0
  local str=''
  for i=1,#Yicstr,4 do
    if i>#Yicstr then
      break
    end
    local data = 0
    local str_count=0
    for j=0,3 do
      local str1=string.sub(Yicstr,i+j,i+j)
      if not temp[str1] then
        return
      end
      if temp[str1] < 1 then
        data = data * 64
      else
        data = data * 64 + temp[str1]-1
        str_count = str_count + 1
      end
    end
    for j=16,0,-8 do
      if str_count > 0 then
        str=str..string.char(math.floor(data/math.pow(2,j))) data=math.fmod(data,math.pow(2,j))
        str_count = str_count - 1
      end
    end
  end
  local last = tonumber(string.byte(str, string.len(str), string.len(str)))
  if last == 0 then
    str = string.sub(str, 1, string.len(str) - 1)
  end
  return str
end
function Xzzj(nr,zuo,you)
  local zxc=""
  local zz=string.find(nr,zuo,1,true)
  while zz~=nil do
    local ii=zz+zuo:len()
    local iii= string.find(nr,you,ii,true)
    local iiii=string.sub(nr,ii,iii-you:len())
    zz=string.find(nr,zuo,iii+1,true)
    zxc=zxc..","..iiii
  end
  zxc=string.gsub(zxc,",","",1)
  return "{"..zxc.."}"
end
local path=cfing()
v_value = gg.prompt({"支持:yic,64编码,数字加密,enc,luas。"},{[1]=path},{[1]="file"})Git=io.open(v_value[1],"r")assert(Git)
if v_value == nil then print("文件打开失败") end
cfing(v_value[1])
path=v_value[1]
function luas(str)
  local jk=string.gsub(Xzzj1(str,".","-"),"52","")
  ggg=Xzzj1(str,"shark=\"","\"")
  local jj =sharkm(ggg,jk)
  sharkexk=sharkmk(ggg,jj,jk) 
  file = io.open(path..".初月解密", "w")file:write(sharkexk)file:close()
  gg.toast('请查看你的路径:'..path..'.初月解密')
end
function szjm(str)
  local ggg="(loadstring and loadstring or load)((function(t) local ii='' for i=1,#t do ii=ii..string.char(t[i]) end file=io.open('"..path..".初月解密','w')file:write(ii)file:close() return '' end)((loadstring and loadstring or load)('return "..Xzzj(str,'string.char(',')').."')()))()"
  file=io.open('/storage/emulated/0/tm.lua','w')file:write(ggg)file:close()
  pcall(loadfile('/storage/emulated/0/tm.lua'))
  os.remove('/storage/emulated/0/tm.lua')
  gg.toast('请查看你的路径:'..path..'.初月解密')
end
function enc(str)
  ggg=string.gsub(str,"return a","file = io.open('"..path..".初月解密', 'w')file:write(a)file:close() return ''")
  file=io.open('/storage/emulated/0/tm.lua','w')file:write(ggg)file:close()
  pcall(loadfile('/storage/emulated/0/tm.lua'))
  os.remove('/storage/emulated/0/tm.lua')
  gg.toast('请查看你的路径:'..path..'.初月解密')
end
function Yic(str)
  ggg=Xzzj1(str,"Yicjm(v_value[1],",")")
  ggg=string.gsub(ggg,"\"","")
  ggg=string.gsub(ggg,"'","")
  local lpn = ggg
  local code=lpn:sub(1,500)
  local ppy = code:sub(1,2)
  local key = (tonumber(ppy,16)+256-13)%255
  --下面不要改
  for i=0,255,1 do
    local ggc = code:gsub('..', function (h)
      return string.char((tonumber(h,16)+256-13-key+i+255999744)%256)
    end)
    if czxx(ggc)==true then
      local ggp1 = lpn:gsub('..', function (h)
        return string.char((tonumber(h,16)+256-13-key+i+255999744)%256)
      end)
      v=ggp1
      break
    end
  end
  if v=="" then
    os.exit()
  end 
  if string.find(v,"LuaR")==nil then
    file = io.open(path..".初月解密", "w")
    file:write("--初月解密 QQ:275452714".."\n"..v)
    file:close()
  else
    file = io.open(path..".初月解密", "w")
    file:write(v)
    file:close()
  end
  gg.toast('请查看你的路径:'..path..'.初月解密')
end
function bian64(str)
  local hhh=Xzzj1(str,"write(",")")
  local hui=Xzzj1(str,hhh,"(")
  local vb=Xzzj1(str,hhh..hui.."(",")")
  local vv=Xzzj1(str,vb.." = \"","\"")
  xrjb = Yicjm(vv)
  xrjb = string.gsub(xrjb,'&#39;','\'')
  file=io.open(path..".初月解密",'w')file:write(xrjb)file:close()
  gg.toast('请查看你的路径:'..path..'.初月解密')
end
local com=Git:read("*a")Git:close()
if pdlx(com)=="luas" then
   luas(com)
end
if pdlx(com)=="Yic" then
  Yic(com)
end
if pdlx(com)=="64bian" then
  bian64(com)
end
if pdlx(com)=="enc" then
  enc(com)
end
if pdlx(com)=="szjm" then
  szjm(com)
end
end



function c5()
abc = gg.prompt({
  "选择文件"
}, {"/storage/emulated/0/tencent/QQfile_recv/"}, {"file"})
if abc == nil then
  os.exit()
end
pm = loadfile(abc[1])
if pm == nil then
  gg.alert("脚本有误")
  os.exit()
end
pr = print
print = gg.getFile
function gg.toast(...)
  local L0_2, L1_3
  L0_2 = true
  return L0_2
end
function gg.multiChoice(...)
  pm = nil
  return os.exit()
end
function gg.alert(...)
  local L0_4, L1_5
  L0_4 = {L1_5}
  L1_5 = ...
  arg = L0_4
  L0_4 = true
  return L0_4
end
function gg.choice(...)
  pm = nil
  return os.exit()
end
for _FORV_3_ = 1, 99999999 do
  function gg.prompt(...)
    local L0_6
    L0_6 = {
      tostring(_UPVALUE1_)
    }
    o = L0_6
    L0_6 = o
    return L0_6
  end
  if pm then
    pcall(pm)
  else
    pr(abc[1] .. "的key：" .. _FORV_3_ - 1)
    break
  end
end
end



function c6()
LJ = gg.prompt({'文本'}, {   }, {'text'})
local data = LJ[1]
    local result = ''
for i=1,#data do
local a=string.sub(data, i , i)
b=string.byte(a)
if pd==nil then
pd=1
result = result..tonumber(b)
else
result = result..','..tonumber(b)
end
end
local NR='string.char('..result..')'  
gg.copyText(NR)
end



function c7()
result = "Ztcsx代码记录中心\n--------------\n"
print("内存范围数据类型会显示数字\n可以自己查gg函数\n查询方法print(gg)")
function debug.sethook()
  gg.sleep(1)
end
function gg.copyText()
  gg.sleep(1)
end
function gg.processKill()
  gg.sleep(1)
end
function gg.getTargetPackage()
  local L0_0, L1_1
  packge = "com.tencent.tmgp.pubgmhd"
  L0_0 = packge
  return L0_0
end
function gg.setRanges(A0_2)
  if A0_2 == 32 then
    A0_2 = "A内存"
  end
  if A0_2 == 524288 then
    A0_2 = "As内存"
  end
  if A0_2 == 131072 then
    A0_2 = "B内存"
  end
  if A0_2 == 16384 then
    A0_2 = "Xa内存"
  end
  if A0_2 == 32768 then
    A0_2 = "Xs内存"
  end
  if A0_2 == 4 then
    A0_2 = "Ca内存"
  end
  if A0_2 == 16 then
    A0_2 = "Cb内存"
  end
  if A0_2 == 8 then
    A0_2 = "Cd内存"
  end
  if A0_2 == 1 then
    A0_2 = "Ch内存"
  end
  if A0_2 == 65536 then
    A0_2 = "J内存"
  end
  if A0_2 == -1032320 then
    A0_2 = "O内存"
  end
  if A0_2 == 262144 then
    A0_2 = "Rs内存"
  end
  if A0_2 == 64 then
    A0_2 = "S内存"
  end
  if A0_2 == 2 then
    A0_2 = "Jh内存"
  end
  result = result .. "内存范围：'" .. A0_2 .. "'\n"
  gg.setVisible(true)
end
function gg.searchNumber(A0_3, A1_4)
  if A1_4 == 127 then
    A1_4 = "A类型"
  end
  if A1_4 == 1 then
    A1_4 = "B类型"
  end
  if A1_4 == 64 then
    A1_4 = "E类型"
  end
  if A1_4 == 4 then
    A1_4 = "D类型"
  end
  if A1_4 == 16 then
    A1_4 = "F类型"
  end
  if A1_4 == 32 then
    A1_4 = "Q类型"
  end
  if A1_4 == 2 then
    A1_4 = "W类型"
  end
  if A1_4 == 8 then
    A1_4 = "X类型"
  end
  result = result .. "搜索数据：'" .. A0_3 .. "'\n"
  result = result .. "搜索类型：'" .. A1_4 .. "'\n"
end
function gg.searchAddress(A0_5, A1_6)
  result = result .. "搜索地址：'" .. A0_5 .. "'\n"
  result = result .. "地址蒙版：'" .. A1_6 .. "'\n"
end
function gg.setValues(A0_7)
  result = result .. "setValues数组：'" .. A0_7 .. "'\n"
  result = result .. "--------------" .. "\n"
  gg.setVisible(true)
end
function gg.editAll(A0_8, A1_9)
  if A1_9 == 127 then
    A1_9 = "A类型"
  end
  if A1_9 == 1 then
    A1_9 = "B类型"
  end
  if A1_9 == 64 then
    A1_9 = "E类型"
  end
  if A1_9 == 4 then
    A1_9 = "D类型"
  end
  if A1_9 == 16 then
    A1_9 = "F类型"
  end
  if A1_9 == 32 then
    A1_9 = "Q类型"
  end
  if A1_9 == 2 then
    A1_9 = "W类型"
  end
  if A1_9 == 8 then
    A1_9 = "X类型"
  end
  result = result .. "修改数据：'" .. A0_8 .. "'\n"
  result = result .. "修改类型：'" .. A1_9 .. "'\n"
  result = result .. "--------------" .. "\n"
  gg.setVisible(true)
end
function gg.getResultCount()
  local L0_10, L1_11
  jieguo = 5
  L0_10 = jieguo
  return L0_10
end
function os.exit()
  filel = path .. "[代码记录工具]" .. filename .. ".pilfer"
  io.open(filel, "w"):write(result):close()
  gg.setVisible(true)
end
function Zexit()
  filel = path .. "[代码记录工具]" .. filename .. ".pilfer"
  io.open(filel, "w"):write(result):close()
  gg.setVisible(true)
end
Path = gg.prompt({
  [1] = "你想偷啥"
}, {
  [1] = "/storage/emulated/0/tencent/QQfile_recv/"
}, {
  [1] = "file"
})
if Path == nil then
  os.exit()
end
filepath = Path[1]
path = filepath:gsub("[^/]+$", "")
filename = string.sub(filepath, #path + 1, #filepath)
dofile(Path[1])
end



function c8()
			JY = gg.prompt({"确认下载"	,"网址"},JY,{'checkbox','text'})
		if JY == nil then
	print("你选择了取消")
	os.exit()
	end
	if JY[1]		== true then
a=gg.makeRequest(JY[2]).content
ac=io.open("/storage/emulated/0/tencent/QQfile_recv/初月解密.lua","w")
ac:write(a)
ac:close()
gg.alert("已下载完成\n目录:/storage/emulated/0/tencent/QQfile_recv/初月解密.lua")
end
end



function c9()
hbnkk=gg.prompt({"选择需要导出字节码的文件"},{"/storage/emulated/0/tencent/QQfile_recv/"},{"file"}) if gg.internal2(loadfile( hbnkk[1]), hbnkk[1] ..".dump.txt") then gg.alert('转字节码保存到的文件:'..hbnkk[1]) else 	gg.alert('转字节码出错') end
end



function c10()
ty=[[function jie(fd,key)
	if key==nil then
		key='#2347'
	end
	return replace(fd,key,string.char(13))
end
function replace(from,fs,ts)
	local index
	local head,foot
	while 1 do
		index=string.find(from,fs)
		if index==nil then
			break
		end
		--print(string.byte(fs)..string.byte(ts))
		head=string.sub(from,1,index-1)
		foot=string.sub(from,index+#fs,-1)
		from=head..ts..foot
	end
	return from
end]]
file=io.open(gg.getFile().."1","r")
if file~=nil then 
nr = file:read('*a')
file:close()
load(nr)()
else
file=gg.getFile()
xz={file,file:gsub("/[^/]+$","")}
end


lx={'file','path'}
byyt=gg.prompt({"选择文件","选择输出文件夹(建议重新创建一个"},xz,lx)

if byyt==nil then os.exit()  end
file=io.open(gg.getFile().."1","w")
file:write("xz={'"..byyt[1].."','"..byyt[2].."'}")
file:close()
file=io.open(byyt[1],"r")
data = file:read('*a')
file:close()
pcall(load(ty))
bygt=gg.alert("请选择步骤","输出文件第一截","输出文件第二层")
 if bygt==nil or bygt==0 then os.exit()  end
if bygt==2 then goto bz2 end
data=data:gsub(ty,""):gsub("load%(jie","data = jie",1):gsub("%)%)%(%)$",")",1)
pcall(load(data))
file=io.open(byyt[2].."/bz1.lua","w")
file:write(data)
file:close()
gg.alert("步骤一，输出成功，请反编译之后，输出步骤2！")
os.exit() 
::bz2::
sz={}
data=data:gsub("load%(","")
data=data:gsub("%)%)\n",")\n")
data=data:gsub("%)%)%(%)",")")
yx=true
yxi=0
dav=data
while yx do
yx=dav:match("\n(.-)=.-jie")
if yx~=nil then yxi=yxi+1  sz[yxi]=yx
dav=dav:gsub("\n(.-)=.-jie","",1)
 else break end
end

file=io.open(byyt[2].."/cs.lua","w")
file:write(data)
file:close()
load(data)()
for ii=1,#sz do
file=io.open(byyt[2].."/bz2_"..ii..".lua","w")
pcall(load('file:write('..sz[ii]..') file:close()'))
print("第"..ii.."次文件输出成功")
end
end



function d1()
if gg.BUILD < 11630 then
	gg.alert('You are using an old version of GameGuardian. Some functions may not work, or work not as expected.')
end
environment=nil
local path="/data/user/0/"..gg.EXT_FILES_DIR:match("data/(.-)/").."/shared_prefs/"..gg.EXT_FILES_DIR:match("data/(.-)/").."_preferences.xml"
local ppath=gg.FILES_DIR:gsub("files","shared_prefs/"..gg.PACKAGE.."_preferences.xml")
local wz=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name="history-2">log地址</string>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="862" />
    <string name="history-1">log地址</string>
    <string name="com.ludashi.superboost-script">运行文件</string>
    <string name="hidden-dir">zIcC</string>
    <string name="script-debug">log地址</string>
    <int name="h-0" value="4" />
    <int name="h-2" value="4" />
    <int name="h-1" value="4" />
    <string name="history-0">运行文件</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="3" />
    <string name="script-path">文件夹</string>
    <int name="pos-y" value="1024" />
</map>]]


local wzdata="/storage/emulated/0/tencent/MobileQQ/diskcache/Cache_-53a566bd5f9fpb99_hd"


 g = {}
g.last = gg.getFile()
g.info = nil

g.config = gg.getFile():gsub('%lua$', '')..'Code'
g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end


qx=gg.alert("欢迎使用 By  Code 拦截器 \n\n\n\t➣ 采用全方面拦截机制\n\n\t➣ Code全局编写制作\n\n\t➣ 在Enyby拦截器上做的深度优化\n\n\t➣ 版权归 Code 所有 © \n\n\t➣ 感谢您的使用！\n\n","确定","","查看更新内容")
		if qx == 1 then 
		end
		if qx == 3 then 
		gg.alert("已是最新版本！\n\n在之前的版本做的改动:\n1.优化了拦截功能与log刷内存的现象\n2.增加了函数赋值与伪装log路径\n3.采用压缩输出load，无限编译不在话下\n4.拦截优化\n5.增加伪装和移除QQ存在\n6.增加了爆破功能\n7.增加了简单拦截输出\n\n若拦截器出现bug，请及时联系QQ:2732797595进行修复。","复制QQ")
gg.copyText(2732797595)
		end
		
		

function Main()
			g.sel = gg.choice({
				'设置跳过执行函数', -- 1
				'函数赋值调用', -- 2
				'简单拦截输出', -- 3
				'其他爆破', -- 4
				'开始拦截' ,--5
					'退出'},2019,'💀 By Code 拦截器   \n💀 禁止倒卖！原创QQ:3509175514©')
					
					if g.sel == 1 then tgzzhs() end---跳过执行函数
					if g.sel == 2 then hsfz() end---函数赋值
					if g.sel == 3 then jdljsc() end---简单拦截输出
				if	 g.sel == 4 then baopo() end---其他爆破
				if	 g.sel == 5 then kslj() end---开始拦截
					if	 g.sel == 6 then Exit() end
					
  XGCK = -1
end
			
--			if g.sel == nil then Main()  end
			









			
						
												
function tgzzhs()--跳过执行函数
if tg == nil then
	tg = {
	"getLine;isVisible;setVisible;getFile;addListItems",
	 false,
	  false,
	  
	  false,
	  false,
	  false,
	  
	  false,
	  false}
end

gg.toast("设置成功后请点击确定")

--tg(跳过)
				tg = gg.prompt({
				'请输入要跳过拦截的函数:(多个用;隔开)',
				'跳过alert', 
				'跳过toast',
				
		'跳过os.exit', 
		'跳过os.remove',
		'跳过sleep',
		
		'跳过包名检测',
		'跳过搜索',
		'print打印优化',
		
		'跳过copyText'}, tg, {"text","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
		
				if tg == nil then Main()  end
	end

 
			


























									
																		
																											
																																											
function hsfz()--函数赋值
--赋值
if fz == nil then
fz={
gg.VERSION,
gg.BUILD,
gg.PACKAGE,

	"/storage/emulated/0/Notes",
	false,
	
	"待添加...",
	"3509175514",
	
	false,
	false}
end

gg.toast("设置成功后请点击确定")

--赋值
	fz = gg.prompt({
				'VERSION版本号:',
				'BUILD版本号:', 
				'包名:',
				
				'伪装GGlog路径:',
				'io.open文件操作检测(弹出提示)',
				
				'伪装QQ号存在:(可添加多个使用;分隔)',
				'移除QQ号存在:(可添加多个使用;分隔)',
				
				'无视debug.sethook防拦截检测',
				'无视debug.getlocal防拦截检测'}, fz, {"path","number","text","path","checkbox","text","text","checkbox","checkbox"})
				
gglog = fz[4]--伪装log路径
wjczjc= fz[5]--文件操作检测
	
yesqq = fz[6]--伪装QQ存在
noqq = fz[7]--移除QQ存在

wssethook=fz[8]---无视sethook
wsgetlocal=fz[9]--无视getlocal
			
					if hsfz == nil then Main()  end
						end
					
						
							
								
















		
				
								
									
function jdljsc()--简单拦截输出
local s={}
local tr={}
s.a=gg.prompt({'选择文件','加载导出','调用导出'},{'/sdcard/tencent/QQfile_recv/'},{'file','checkbox','checkbox'})
local a=loadfile(s.a[1])
local sel = select
					if s.a[2] then 
					for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]					
							local hook = 1
							hook = function (...)
								local arg = {...}
								if type(arg[1])=='string' and #arg[1]>500 then print(arg) io.open(gg.getFile():gsub("[^/]+$","")..'[Code解]'..s.a[1]:match ("[^/]+$"),'w'):write(arg[1]) os.remove(s.a[1]) end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
							end
					end
	function gg.copyText()
	end
					if s.a[3] then
			local	file='/sdcard/123'
			function gg.setVisible()
			return true
			end
			local orig=print
			local hook=1
			hook=function(...)
		   local 	a=(...)
		   if a~=s.pr then s.pr=a
		   return orig(...) end
			end
			tr[hook]=orig
			print=hook
			local orig=gg.clearResults
			local hook=1
			hook=function()
			print('gg.clearResults()')
			end
			tr[hook]=orig
			gg.clearResults=hook
			
			local orig=gg.searchNumber
			local hook=1
			hook=function(...)
			local a={...} b=''
			for i=1,#a do
			if i==1 then
			b=b..'"'..tostring(a[i]) end
			if i==2 then 
				b=b..'",'..tostring(a[i])
				end
				if i>2 then 
			 b=b..','..tostring(a[i]) end
			end
			print('gg.searchNumber('..b..')')
				 end 
				 tr[hook]=orig
				 gg.searchNumber=hook
				 
				 gg.searchAddress=function(...)
				 local a={...} b='"'
				 for i=1,#a do
				 if i==1 then b=b..a[i]..b else b=b..','..a[1] end
				 end
				 print('gg.searchAddress('..b..')')
				 end
				 gg.setRanges=function(a)
				 print('gg.setRanges('..a..')')
				 end
				 gg.getResults=function(a)
				 print('gg.getResults('..a..')')
				 end
				 gg.editAll=function(...)
				 a={...} b='"'
				 for i=1,#a do
				 if i==1 then b=b..a[i]..b else b=b..','..a[i] end
				 end
				 print('gg.editAll('..b..')')
				 end
				 s.s=1
				 local orig=gg.toast
				 gg.toast=function(a)
				 print('gg.toast("'..a..'")')
				 orig('捕获'..s.s..'次搜索')
				 s.s=s.s+1
				 end
				 end
return a()

end





























function baopo()---其他爆破
function ks()
x=0
menu = gg.choice({
'B加密解密',
'YIC加密解密',
'无分段B加密解密',
'自定义算法',
'返回'
  },x,"Code爆破工具")
if menu == 1 then b() end
if menu == 2 then yic() end
if menu == 3 then wfd() end
if menu == 4 then gg.alert('还没写') end end
function b()
wj = gg.prompt({'选择加密代码\n请手动删掉多余部分','设置分隔符','设置开始','设置结尾'}, {'/storage/emulated/0/','B','0','1000'}, {'file','text','text','text'})
if wj==nil then os.exit() end
aaaaa = io.open(wj[1])
if aaaaa == nil then
gg.alert("加载字符失败")
b()
end
qqq=io.open(wj[1],"r")
eee=qqq:read("*a")
i=wj[3]
ii=wj[4]
for iii = i,ii do
gg.toast('正在尝试'..iii..'')
function getByte(data, flag)
local array = {}
local lens = string.len(data)
if (flag == false) then
for i=1,lens do
array[i] = string.byte(data, i)
end
return array 
else
for i=1,lens do
array[i-1] = string.byte(data, i)
end
end
return array,lens 
end
function getChars(bytes)
local array = {}
for key, val in pairs(bytes) do
array[key] = string.char(val) end
return array
end
function string.split( str,reps )
local resultStrList = {} string.gsub(str,"[^"..reps.."]+",function ( w )  table.insert(resultStrList,w)
end)
return resultStrList
end
function decryptData(data, keys)
local result = ""
local dataArr = string.split(data, wj[2])
local keyArr,keyLen = getByte(keys, true)
for index,value in pairs(dataArr) do
bytes =  tonumber(value) - (0xFF and keyArr[(index-1) % keyLen])
result = result..string.char(bytes)
end
if load(result)~=nil then print('代码：'..iii..'') 
io.open(wj[1]..'B解密',"w"):write(data):close() print('解密文件已生成到'..wj[1]..'B解密') gg.setVisible(true) os.exit() end
end
data = eee
decryptData(data,iii)end
end
function yic()
wj = gg.prompt({'选择加密代码\n请手动删掉多余部分','开始','结束'}, {'/storage/emulated/0/','0','1000'},{'file','text','text'})
if wj==nil then os.exit() end
aaaaa = io.open(wj[1])
if aaaaa == nil then
gg.alert("失败加载脚本")
yic()
end
qqq=io.open(wj[1],"r")
eee=qqq:read("*a")
i=wj[2]
ii=wj[3]
function Yicjm(key,code)
   return (code:gsub('..', function (h) return string.char((tonumber(h,16)+256-13 - key + 999999*256)%256) end))
end
for iii = i,ii do
gg.toast('正在尝试'..iii..'')
local data = Yicjm(iii,eee)
if load(data)~=nil then print('代码：'..iii..'') 
io.open(wj[1]..'YIC解密',"w"):write(data):close() print('解密文件已生成到'..wj[1]..'YIC解密') gg.setVisible(true) break end
end
end
function wfd()
wj = gg.prompt({'选择加密代码\n请手动删掉多余部分','开始','结束'}, {'/storage/emulated/0/','0','1000'},{'file','text','text'})
if wj==nil then os.exit() end
aaaaa = io.open(wj[1])
if aaaaa == nil then
gg.alert("失败加载脚本")
wfd()
end
qqq=io.open(wj[1],"r")
eee=qqq:read("*a")
i=wj[2]
ii=wj[3]
for iii = i,ii do
gg.toast('正在尝试'..iii..'')
function string.split( str,reps )
lens=string.len(str)
 str=string.sub(str, 48445,lens-46622)
   local resultStrList = {}
string.gsub(str,'[^'..reps..']+',function ( w )
table.insert(resultStrList,w)
    end)
    return resultStrList
end
function decryptData(data, key)
local result = ''
local dataArr = string.split(data, '‭')
for index,value in pairs(dataArr) do
bytes=(tonumber(value) + 256 - 220 - iii+ 255999744) % 256
result = result..string.char(bytes)
end
if load(result)~=nil then print('代码：'..iii..'') 
io.open(wj[1]..'无分段B解密',"w"):write(data):close() print('解密文件已生成到'..wj[1]..'无分段B解密') gg.setVisible(true) os.exit() end end
local data = eee
decryptData(data,iii)
end
end
ks()

end					






























																												
			
function kslj()--开始拦截
			

			
			if g.info == nil then
	g.info = {g.last, 
	g.last:gsub('/[^/]+$', ''), 
	"400",
	true,
	true,
	false,
	true,
	false,
	false}
end
if g.info[3] == nil then g.info[3] = "400" end

while true do
gg.toast('By Code compiler v1.5')				
	g.info = gg.prompt({'选择需要拦截的文件:', '选择输出的可写路径:',
		 '日志调用“load”的最小大小:','拦截load','拦截log','破解密码','拦截优化','反拦截追踪(核心)','log无视刷内存'}, g.info, {'file', 'path', 'number',"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})

		 
		if g.info == nil then Main()  end
			gg.saveVariable(g.info, g.config)
	gg.VERSION=fz[1]
	gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
		m = m:sub(2)
		if #m == 1 then m = '0'..m end
		return m
	end)))
	
--	print('Use GameGuardian version: '..gg.VERSION..' ['..gg.VERSION_INT..']')
	g.last = g.info[1]
	g.test = loadfile(g.last)
	g.loaded = g.last
		if g.test == nil then
		gg.alert('加载失败: '..g.last)
	else
	
		g.name = g.last:match('[^/]+$')		
local data=wz:gsub("运行文件",g.last)
local wc=g.last:gsub("/"..g.name," ")
local data=data:gsub("文件夹",wc)
local data=data:gsub("log地址",gglog)
local	file = io.open(wzdata, "w")
file:write(data)
file:close()
	
	
		g.name = g.last:match('[^/]+$')
		g.pathes = {g.info[2]:gsub('/?$', '')..'/'..g.name, g.last, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}
		
		g.file = nil
		g.out = ''
		g.try = ''
		for i, v in ipairs(g.pathes) do
			g.out = v..".tmp.lua"
			g.file = io.open(g.out, "w")
 			if g.file ~= nil then
 				g.last = v:gsub('%.lua$', '')
 				break
			end
			g.try = g.try..' '..v
		end
		if g.file == nil then
			gg.alert('Failed write to file. Checked:'..g.try)
		else
			g.file:close()
			os.remove(g.out)
			
			if true then
					local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
					
	
	
	
	
	
			 local cs1="0"
		g. youhua=g.info[7]--优化
		 fljzz=g.info[8] --反拦截追踪
		 wssnc=g.info[9]--无视刷内存

		 		 
tgzzhs = tg[1] --跳过执行函数
tgalert = tg[2] --跳过alert
tgtoast = tg[3] --跳过toast


tgtc = tg[4]--跳过os.exit
tgsc = tg[5] --跳过os.remove
tgsleep = tg[6]--跳过sleep


tgbmjc = tg[7]--跳过包名检测
tgss = tg[8] --跳过搜索
youhuaprint = tg[9]--print打印优化
tgcopy = tg[10]--跳过copyText


printt=false	--print打印优化




cs2=1
tx=true


					local wzlogdata=gglog.."/"..g.last:match('[^/]+$')..".log.txt"
					
					
					
					
					
					local sel = select
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local gg_getFile = gg.getFile
					local tr = {}
					local slen = string.len
					
					local msg = ''
					local rnd = g.last..'_'..os.time()..'_'..math.random()
					
					if g.info[4] == true then--load
					
					
					 local fname = g.info[2]..'/'..'[Code]'..g.name
     		local fnamee = g.info[2]..'/'..'[Code load]'..g.name
 						local wjm=g.name
 						local fnameee = g.info[2]..'/'..'[Code load_'
					
					
					
						local load_cnt = 0
						local fname = rnd..'.load.lua'
						
						local min_size = tonumber(g.info[3])
						
						local sfmt = string.format
						local sbyte = string.byte
						local ssub = string.sub
						
						local							filpe = io_open(wzlogdata, "w+")
						
						local tar_end = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
											
						local f = nil
						local tar_put = function (content)
							if f == nil then
								f = io_open(fname, 'wb')
								f:setvbuf('full', 8192)
							end
							if load_cnt ~= 0 then
								f:seek('end', -1024)
							end
							local size = slen(content)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end

							f:write("load_")---随机文件名输出
								:write(ch(sfmt('%07d', load_cnt)))
								:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
								:write(ch(sfmt('%011o', size)))
								:write("\x0000000000000\x00")
								:write(sfmt('%06o', checksum))
								:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")
								:write(content)
							
								if content~=contentt then
						if content:match("#2000") or content:match("#131") then
						else
							cs1=cs1+1					
							if tx then
				ggaiert=	gg.alert("已成功捕捉到"..cs1.."次load.\n将保存为 :\n[Code load_"..cs1.."]"..wjm.."\n\n〖"..content:sub(1,200000).."\n〗","确定","","不再提示")				
				if ggaiert==3 then tx=false end
				else
				gg.toast("已成功捕捉到"..cs1.."次load.\n将保存为:"..cs1.."]"..wjm.."")
				end
					contentt=content					
					f = io_open(fnameee..""..cs1.."]"..wjm, 'w')					
							end
								f:write(content)								
							end
							
							
							local pad = size % 512
							if pad > 0 then
								f:write(ssub(tar_end, 1, 512 - pad))
							end

							f:write(tar_end)
							f:flush()
							
							--echo('Hooked load '..load_cnt..' with size of '..size..' bytes')
							load_cnt = load_cnt + 1
						end
					
						for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]
							local hook = 1
							local type = v
							hook = function (...)
								local arg = {...}
								local content = arg[1]
								if content ~= nil and type == 0 then
									content = nil
									local f = io_open(arg[1], "rb")
									if f ~= nil then
										content = f:read("*a")
										f:close()
									end
								end
								if content ~= nil then
									local ret = nil
									local total = 0
									local file = fname..load_cnt..'.lua'
									if type == 1 and typ(content) == 'function' then
										local cache = ''
										local func = function (...)
											local ret = content(...)
											if ret ~= nil then
												if ret ~= '' then
													cache = cache + ret
													total = total + slen(ret)
												end
											else
												if total ~= 0 and slen(content) >= min_size then
													tar_put(cache)
												end
											end
											return ret
										end
										ret = orig(func, sel(2, ...))
									else
										if content ~= '' and slen(content) >= min_size then
											tar_put(content)
										end
										ret = orig(...)
									end
									return ret
								end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
						end
						
--						msg = msg..'\n\n来自调用“加载”的所有数据将被转储到tar存档中: '..fname
					end
					
							if g.info[5] == true then--拦截log
						local file = rnd..'.log.txt'
						local f = io_open(file, 'wb')
						f:write("-- By Code compiler v1.5\n-- QQ :3509175514 \n\n")
						f:close()
						local names = {
							allocatePage = {'^PROT_', '0x%X'},
							copyMemory = {'0x%X', '0x%X'},
							dumpMemory = {'0x%X', '0x%X'},
							gotoAddress = {'0x%X'},
							setRanges = {'^REGION_'},
							searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
							searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
							searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
							editAll = {nil, '^TYPE_'},
							loadList = {nil, '^LOAD_'},
							saveList = {nil, '^SAVE_'},
						}
						names.refineAddress = names.searchAddress
						names.refineNumber = names.searchNumber
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
						}
						local smatch = string.match
						local ssub = string.sub
						local sformat = string.format
						local toFlags = function (check, value)
							local ret = ''
							for k, v in pairs(ggg) do
								if smatch(k, check) ~= nil and (value & v) == v then
									if ret ~= '' then ret = ret..' | ' end
									ret = ret..'gg.'..k
									value = value & ~v
								end
							end
							if ret == '' or value ~= 0 then
								if ret ~= '' then ret = ret..' | ' end
								ret = ret..value
							end
							return ret
						end
						for i, v in pairs(ggg) do
--							if typ(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then
if type(v) == 'function' and tgzzhs:match(i)==nil then--跳过拦截函数
								local orig = v
								local name = i
								local hook = 1
								hook = function (...)
									local arg = {...}
									local f = io_open(file, 'ab')
									if i == 'choice' then--判断单选
          if rets[name] ~= nil then
            local f = io_open(file, 'a')
            local ret = orig(...)
            local arg = {...}
            f:write("\n --------------- ")
            f:write(arg[1][ret])
            f:write(" ---------------\n")
            return ret
          end
        end
        if i == 'multiChoice' then--判断多选
          if rets[name] ~= nil then
            local f = io_open(file, 'a')
            local ret = orig(...)
            local arg = {...}
            local gs = {}
            for w in string.gmatch(tostring(ret), "%[") do
              gs[#gs + 1] = w
            end
       --     print("一共选中" .. #gs .. "个选项")
            local date = tostring(ret)
            local sz = {}
            for i=1 ,#gs do
              kaishi = string.find(date, "%[")+1
              jiewei = string.find(date, "%]")-1
              nameshu=string.sub(date , kaishi , jiewei)
              date= string.gsub(date, "%[+", "", 1)
              date= string.gsub(date, "%]+", "", 1)
              sz[i]=tonumber(nameshu)
            end
            table.sort(sz)
            for j, a in ipairs(sz) do
              f:write("\n -------------- ")
              f:write(arg[1][a])
              f:write(" --------------\n")
            end
            return ret
          end
        end
									f:write('gg.'..name..'(')
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ') end
										if typ(a) == 'string' then f:write('"') end
										local b = a
										if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
											local check = names[name][j]
											if ssub(check, 1, 1) ~= '^' then
												if a == 0 or a == -1 then
													b = a
												else
													b = sformat(check, a)
												end
											else
												b = toFlags(check, a)
											end
										end
										b = str(b)
										f:write(b)
										if typ(a) == 'string' then f:write('"') end
									end
									f:write(")")
									if rets[name] ~= nil then
										local ret = orig(...)
										f:write(" --[[ ")
										f:write(str(ret))
										f:write(" ]]\n")
										f:close()
										return ret
									end
									f:write("\n")
									f:close()
									if tgss then
											if name=='searchNumber' or i=='searchNumber'then --跳过搜索
									 return true
									  end
									return orig(...)
								end
								end
								tr[hook] = orig
								gg[i] = hook
							end
						end
						
--						msg = msg..'\n\n所有GG呼叫都将被记录到文件中: '..file
					end
					
					ggg.prompt({'跳过检测:'}, {g.loaded}, {'file'})
--[[					
					echo('Hook started.'..msg..'\n')
					ggg.alert('钩子开始了。运行脚本、输入密码等 '..msg)
					msg = nil
]]					
					





		if youhuaprint then  --print打印优化
						local orig = print
						local hook = 1
						hook = function (...)
							local arg = {...}							
				if arg[1] ~= printt  then
						printt=arg[1] 
							return orig(...)
							else
							return true
						end
						end
						tr[hook] = orig
					print	 = hook
					end





if tgalert then---跳过alert
hook = function (...)
							return nil
						end
						gg.alert = hook
						gg.toast("已跳过gg.alert的执行")
						end





					if tgtoast then---跳过toast
						local orig = gg.toast
						local hook = 1
						hook = function (...)
							local arg = {...}
							if arg[1] ~= toast or cs2=="30"or cs2=="20" then
						toast=arg[1] 
							return orig(...)
							else
								cs2=cs2+1
							return true
						end
						end
						tr[hook] = orig
						gg.toast = hook
					end













if tgtc then--os.exit()跳过
local orig = os.exit
						local hook = 1
						hook = function (...)
							ggfh=ggg.alert('文件尝试调用os.exit函数',"禁止","","允许调用")
							local arg = {...}					
						if ggfh==3 then
 							select= orig(...)
							else
							select=gg.setVisible(true)
								end
								return select
						end
						tr[hook] = orig
					os.exit	 = hook
					end










if tgsc then --os.remove跳过
				local orig = os.remove
				local hook = 1 
				hook = function (...) 
					local arg = {...}
					gg.alert("已阻止文件:"..arg[1].."的删除")
					return true
				end 
				tr[hook] = orig 
				os.remove = hook
			end












							if tgsleep  then ----------------------跳过sleep
						local orig = gg.sleep
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.sleep		 = hook
					end











if tgbmjc then---跳过包名检测
hook = function (...)
							return nil
						end
						gg.isPackageInstalled = hook
						end
						
	
	
	
	
	
	
	
	
		if wjczjc then--文件操作检测
								 function x(s)
    if s==nil then t="读取" else
      if s:match("r") then t="读取"
       elseif s:match("w") or s:match("a") then t="写入" end end
    return t end
  local orig=io.open
  local hook=1
  local hook=function(...)
    local arg={...}
    local result=orig(...)
    local x=gg.alert("脚本尝试以"..x(arg[2]).."的方式打开文件:\n"..arg[1].."\n\n请选择执行操作:","忽略","返回nil","返回随机文件")
    if x==2 then--返回nil
     result=nil
                    else
                        return orig(...)
                    end
     
   if x==3 then---返回随机文件
     file=orig(g.info[2] ,"w")
						file:write("666")
						file:close()
                        return orig(g.info[2] ,arg[2])
                         end
    return result
  end
  tr[hook] = orig
  io.open=hook
end
--[[						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('io.open:', arg)
							return orig(...)
						end
						tr[hook] = orig
						io.open = hook
					end]]


					
					













if g.youhua then-----------------优化
						local orig = gg.setVisible
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						gg.setVisible = hook
					end
					if g.youhua then--------------优化
						local orig = gg.isVisible
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						gg.isVisible = hook
					end
			if g.youhua then---------------优化
						local orig = gg.sleep
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
						gg.sleep = hook
					end
if g.youhua then----------------------优化
						local orig = gg.getResultsCount
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
					gg.getResultsCount	 = hook
					end
			if g.youhua then----------------------优化
						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.addListItems		 = hook
					end














if fljzz then--反拦截追踪
						local orig = string.dump
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						string.dump = hook
					end
					if fljzz then--反拦截追踪
						local orig = tostring
						local rm = table.remove
						local store = {}
						local build_table = 1
						build_table = function (src, dst)
							local cnt = #store
							store[src] = dst
							for k, v in pairs(src) do
								if tr[v] ~= nil then
									dst[k] = tr[v]
								else
									if typ(v) == 'table' then
										if store[v] ~= nil then
											dst[k] = store[v]
										else
											local bt = {}
											store[v] = bt
											dst[k] = bt
											build_table(v, bt)
										end
									else
										dst[k] = v
									end
								end
							end
							if cnt == 0 then
								while #store > 0 do
									rm(store)
								end
							end
							return dst
						end
						local hook = 1
						hook = function (...)
							local old = tostring
							local arg = {...}
							if tr[arg[1]] ~= nil then
								arg[1] = tr[arg[1]]
							else
								if typ(arg[1]) == 'table' then
									arg[1] = build_table(arg[1], {})
								end
							end
							local ret = orig(arg[1], sel(2, ...))
							tostring = old
							return ret
						end
						tr[hook] = orig
						tostring = hook
					end
if fljzz then	--反拦截追踪
  local t="stack traceback:\n	"..g.info[1]..": in main chunk\n	[Java]: in ?"
  local orig = debug.traceback
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return t
  end
  tr[hook] = orig
  debug.traceback = hook
end
if fljzz then	--反拦截追踪
  local cg={
    [1]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = g.info[1],
      ['source'] = '@'..g.info[1],
      ['what'] = 'Lua',
    },
    [2]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = "wrap",
      ['source'] = '@'..g.info[1],
      ['what'] = 'Lua',
    }
  }
  local orig = debug.getinfo
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if str(arg[1])=="1"then return cg[1]
    elseif str(arg[1])=="3" then return nil 
    elseif str(arg[1]):find("storage") then return cg[2]
    
    else
      return result
    end
  end
  tr[hook] = orig
  debug.getinfo = hook
end

	
		
			
				







if wssnc then----LOG防刷内存
	local orig = gg.removeListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.removeListItems		 = hook
					end
if wssnc then----LOG防刷内存
						local orig = gg.bytes
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return nil
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.bytes = hook
					end
	if wssnc then----LOG防刷内存
						local orig = gg.searchNumber
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return true
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.searchNumber = hook
					end
	if wssnc then----LOG防刷内存
						local orig = gg.searchAddress
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return true
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.searchAddress = hook
					end
if wssnc then----LOG防刷内存
 						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
						gg.addListItems = hook
					end








	

if tgcopy then---跳过gg.copyText
hook = function (...)
							return nil
						end
						gg.copyText = hook
						end
		
													










if wssethook then --无视sethook
				local orig = debug.sethook
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				debug.sethook		 = hook
					end
if wsgetlocal then --无视debug.getlocal
				local orig = debug.getlocal
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						debug.getlocal = hook
					end













if true then------------移除和伪装QQ存在
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}			
--[[				if arg[2] ==nil then
filpe:write('\nio.open("'..arg[1]..'")')
else
filpe:write('\nio.open("'..arg[1],'",'..'"',arg[2]..'")')
end]]
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
	echo('io.open:', arg)--打印io.open的检测路径
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if noqq:match(ddd)then
							leve=false
							else		if yesqq:match(ddd)then
						leve=orig(gg_getFile():gsub('%lua$', '')..'Code',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.open = hook
					end
			if true then-----------移除和伪装QQ存在
						local orig = io.input
						local hook = 1
						hook = function (...)
							local arg = {...}
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
	echo('io.open:', arg)---打印io.open的检测路径
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if noqq:match(ddd)then
							leve=false
							else		if yesqq:match(ddd)then
						leve=orig(gg_getFile():gsub('%lua$', '')..'Code',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.input = hook
					end
					
												














																																																																
	
																																																																			
																																																																						
																								
									
						

if g.info[6] == true then 
local rnd = g.last..'_'..os.time()..'_'..math.random()
					local pa = math.random(10, 99)
					local ss = math.random(10, 99)
					local file = rnd..'.pass.log'
					local f = io.open(file, 'w')
					gg.alert('显示可能的密码。仅适用于简单的保护以及密码是否在代码中。在提供输入密码时，必须输入密码 "'..pa..ss..'", 没有空格或额外字符。')
					local cache = {}
					cache[pa..ss] = 1
					local debug_getlocal = debug.getlocal
					local type_ = type
					local print_ = print
					local pairs_ = pairs
					local hook = function ()
						local stack = {}
						for j = 1, 500 do
							local _, val = debug_getlocal(1, j)
							if val ~= nil then
								local t = type_(val)
								if t == 'string' then
									stack[val] = 1
								else
									if t == 'table' then
										for i, v in pairs_(val) do
											stack[v] = 1
										end
									end
								end
							end
						end
						if stack[pa..ss] ~= nil then
							for v, _ in pairs_(stack) do
								if cache[v] == nil then
									print_(v)
									cache[v] = 1
									if f ~= nil then f:write(v.."\n") end
								end
							end
						end
					end
					debug.sethook(hook, '', 1)
				end
				end


	print("➣ Code拦截器\n➣ QQ:3509175514\n➣ 足够用心才足够特别！\n-------------------------------------------------")

					
				end
						local test = g.test
				g = nil
				
				return test()
			end
		end
	end



function Exit()
	print("足够用心才足够特别")
print("足够用心才足够特别")
os.exit()
end --结束



while true do
  if gg.isVisible(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if XGCK == 1 then
    Main()
  end
end
end



function d2()
environment=nil
local path="/data/user/0/"..gg.EXT_FILES_DIR:match("data/(.-)/").."/shared_prefs/"..gg.EXT_FILES_DIR:match("data/(.-)/").."_preferences.xml"
local ppath=gg.FILES_DIR:gsub("files","shared_prefs/"..gg.PACKAGE.."_preferences.xml")
local wz=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name="history-2">log地址</string>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="862" />
    <string name="history-1">log地址</string>
    <string name="com.ludashi.superboost-script">运行文件</string>
    <string name="hidden-dir">zIcC</string>
    <string name="script-debug">log地址</string>
    <int name="h-0" value="4" />
    <int name="h-2" value="4" />
    <int name="h-1" value="4" />
    <string name="history-0">运行文件</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="3" />
    <string name="script-path">文件夹</string>
    <int name="pos-y" value="1024" />
</map>]]

local wzdata="/storage/emulated/0/tencent/MobileQQ/diskcache/Cache_-43a566bd5f9fpb11_hd"
if gg.BUILD < 11630 then
	gg.alert('You are using an old version of GameGuardian. Some functions may not work, or work not as expected.')
end

local g = {} 
g.last = gg.getFile() 
g.info = {g.last,g.last:gsub('[^/]+$', ''),
gg.VERSION,
gg.BUILD,
"/storage/emulated/0/Notes",
"123456789",
false,true}
while true do 
g.info = gg.prompt({
  '选择运行脚本:', --1
  '选择输出文件夹:', --2
  '使用VERSION版本:'..gg.VERSION,--3
  '使用BUILD版本:'..gg.BUILD,--4
  '伪装log路径',--5
  '使用QQ伪装',--6
  'QQ伪装',--8
  '[生成]Log',--9
  '🔰🔰🔰',--9
   }, 
g.info, {
   'file',
   'path', 
   'text',
   'text',
   'text',
   'number',
   'checkbox',
   'checkbox',
   'checkbox'
   })
     if g.info == nil then 
    break 
    end 
    if g.info[6] then
    local file = io.open( "/storage/emulated/0/tencent/MobileQQ/artfilter/" .. g.info[6] .. "artfilter.config", "rb")
     if file then 
      file:close()
     else file=io.open( "/storage/emulated/0/tencent/MobileQQ/artfilter/" .. g.info[6] .. "artfilter.config", "w+")
      end 
      end
     local filepath=g.info[1] 
     local path=filepath:gsub('[^/]+$', '')
     local filename=string.sub(filepath,#path+1,#filepath) 
     gg.VERSION = g.info[3] 
     gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+',
     function (m) m = m:sub(2)
     if #m == 1 then 
      m = '0'..m end return m end))) 
     gg.BUILD=g.info[4] 
     g.last = g.info[1] g.test = loadfile(g.last) 
     if g.test == nil then 
     gg.alert('载入脚本错误,请检查脚本是否错误.'..g.last) 
     else g.name = g.last:match('[^/]+$') 
    g.pathes = {g.info[2]..'/'..g.name, 
     g.last, '/sdcard/'..g.name, 
      gg.getFile():gsub('[^/]+$', '')..g.name,
      gg.EXT_FILES_DIR..'/'..g.name}
      g.file = nil 
      g.out = '' 
      g.try = '' for i, v in ipairs(g.pathes) 
      do g.out = v..".tmp.lua" 
      g.file = io.open(g.out, "w")
     if g.file ~= nil then 
      g.last = v:gsub('%.lua$', '')
      break
       end
       g.try = g.try..' '..v 
       end
      if g.file == nil then 
        gg.alert('写出文件失败,请检查:'..g.try) 
        else 
        g.file:close() 
        os.remove(g.out) 
        if g.info[8] then 
       local ggg = {}
       local funlist={{nil,nil}}
       local io_open = io.open 
       local oexit=os.exit
       local str =function(s)
      local ss= tostring(s)
      if ss=='nil' then ss='' 
      end
       return ss
       end
        if true then
        for k, v in pairs(gg) 
       do ggg[k] = v 
        end
       local sel = select
      local typ = type 
       local echo = print
      local tr = {}
       local msg = '' 
      local fun={} 
      local funindex=1 
       if true then 
      local file =path.."[Star dust]"..filename..".EM"
     local f = io_open(file, 'w') 
     f:write("-- 代码破解-来自恶魔拦截器.\n") 
     f:close() 
     local names = { setRanges = {'^REGION_'}, 
     startFuzzy = {'^TYPE_', '0x%X', '0x%X'}, 
     searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
     searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'}, 
     searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'}, 
     loadList = {nil, '^LOAD_'}, 
     saveList = {nil, '^SAVE_'},
     editAll = {nil, '^TYPE_'}, 
     copyMemory = {'0x%X', '0x%X'}, 
     dumpMemory = {'0x%X', '0x%X'}, }
     local rets = { alert = 1, 
     prompt = 1, 
     choice = 1, 
     multiChoice = 1, }
      local toFlags = function (check, value) 
      local ret = ''
      for k, v in pairs(ggg) do
       if k:match(check) ~= nil
       and 
       (value & v) == v then
       if ret ~= '' then ret = ret..' | ' 
       end ret = ret..'gg.'..k value = value & ~v 
       end
       end 
       if ret == '' or value ~= 0 then
       if ret ~= '' then ret = ret..' | ' 
       end
        ret = ret..value 
      end
      return ret 
     end 
     for i, v in pairs(ggg) do
     if typ(v) == 'function' and i ~= 'getLine' and i ~= 'isVisible' and i~='multichoice' and i~='prompt'  and i~='clearResults' then 
    local orig = v
     local name = i
     local hook = 1
      if i=='choice' then hook = function (...) 
     local arg = {...}
      local list=arg[1] 
      local f = io_open(file, 'a')
      local index= orig(...) 
      f:write("\n---"..list[index].."---\n")
       if funlist[funindex][2]==nil 
       or funlist[funindex][2]=='' then
      funlist[funindex][1]=list[index]
       elseif funlist[funindex][1]~=nil then 
       funindex=funindex+1
        funlist[funindex]={nil,nil} 
        funlist[funindex][1]=list[index] 
        end f:close()
         return
          index 
          end
           elseif i=='getFile' then hook= function() 
           return 
           filepath
            end 
           else hook = function (...) 
         local arg = {...}
         local f = io_open(file, 'a')
         f:write('gg.'..name..'(')
         if funlist[funindex][1]~=nil then
         funlist[funindex][2]=str(funlist[funindex][2])..'gg.'..name..'(' end for j, a in ipairs(arg) do 
        if j ~= 1 then 
        f:write(', ')
        if funlist[funindex][1]~=nil then
         funlist[funindex][2]=str(funlist[funindex][2])..',' 
         end 
         end 
         if typ(a) == 'string' then 
         f:write('"')
         if funlist[funindex][1]~=nil then
         funlist[funindex][2]=str(funlist[funindex][2])..'"' 
         end 
         end
         local b = a
         if typ(a) == 'number'
        and 
        names[name] ~= nil
       and 
      names[name][j] ~= nil then
      local check = names[name][j] 
      if check:sub(1, 1) ~= '^' then
      if a == 0 or a == -1 then b = a
      else
       b = check:format(a)
       end 
       else 
       b = toFlags(check, a)
       end 
      end
       b = str(b) f:write(b) 
       if funlist[funindex][1]~=nil then
       funlist[funindex][2]=str(funlist[funindex][2])..b
       end
      if typ(a) == 'string' then 
      f:write('"')
      if funlist[funindex][1]~=nil then 
      funlist[funindex][2]=str(funlist[funindex][2])..'"'
      end
     end
     end f:write(")") 
     if funlist[funindex][1]~=nil then
      funlist[funindex][2]=funlist[funindex][2]..")" 
      end
       if rets[name] ~= nil then
       local ret = orig(...)
       f:write(" --[[ ") f:write(str(ret)) 
       f:write(" ]]\n") f:close() 
       return ret 
       end f:write("\n")
       if funlist[funindex][1]~=nil then 
       funlist[funindex][2]=str(funlist[funindex][2]).."\n"
       end 
       f:close() 
       if name=='alert' or name=='getResults' or name=='setRanges' or name=='editAll' then return nil
      elseif name=='searchNumber' then 
       ggg.toast('已自动跳过搜索过程') return nil 
       else 
       return orig(...) 
       end
        return nil 
        end
         end 
       tr[hook] = orig gg[i] = hook 
       end 
       end 
       msg = msg..'\n拦截结果将写出到: '..path..'[Star dust]'..filename..".log"
       end 
       echo(msg) ggg.alert('运行脚本时,请输入密码'..msg) 
       msg = nil 
       if true then 
       local orig = os.exit 
       local hook = 1 
       if g.info[9] then hook = function (...)
       local Skr='666'
        end 
       else hook = function (...) SkrSkr(666) 
       end 
       end tr[hook] = orig os.exit = hook
        end
        if true then
        local orig = string.dump
        local hook = 1 hook = function (...)
        local arg = {...}
        if tr[arg[1]] ~= nil then
       arg[1] = tr[arg[1]] 
       end 
       return 
       orig(arg[1], sel(2, ...))
        end 
        tr[hook] = orig 
       string.dump = hook 
       end
       if true then
       local orig = tostring
       local hook = 1 hook = function (...)
      local old = tostring 
      local arg = {...} 
      if tr[arg[1]] ~= nil then arg[1] = tr[arg[1]]
      end
      local ret = orig(arg[1], sel(2, ...)) tostring = old 
      return ret
      end 
      tr[hook] = orig tostring = hook
     end 
     if true then
      local orig = debug.getupvalue 
      local hook = 1 hook = function (...)
       local arg = {...}
       if tr[arg[1]] ~= nil then 
      arg[1] = tr[arg[1]] 
      end 
      return orig(arg[1], sel(2, ...)) 
      end
       tr[hook] = orig debug.getupvalue = hook
      end
       if true then 
      local orig = debug.getinfo 
      local hook = 1 hook = function (...)
      local arg = {...} 
     if arg[1] ~= nil
     and 
     arg[1] > 1 then 
     arg[1] = arg[1] + 1
      end 
       return 
      orig(arg[1], sel(2, ...)) 
      end 
     tr[hook] = orig debug.getinfo = hook 
      end
      if name=='alert' then 
	echo(arg)
wzsh:write('gg.alert("'..arg[1]..'")\n--[[ return: 1 ]]\ndebug.traceback()\n')
end
	if name=='editAll' then
	echo(arg)
wzsh:write('gg.editAll("'..arg[1]..'", gg.TYPE_FLOAT)\n')
end		
 print(name)			 
												 
     if false then
     local orig = assert
				local hook = 1 
				hook = function (...) 
					local arg = {...}
					gg.alert("已阻止一个文件的存在检测")
					return true
				end 
				tr[hook] = orig 
				os.remove = hook
			end
     if false then
     local orig = gg.alert
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('gg.alert:', arg)
							return orig(...)
						end
						tr[hook] = orig
						gg.alert = hook
						end
     if false then
     local orig = os.exit
  local hook = 1
  hook = function (...)
    local arg = {...}
    gg.toast("已跳过os.exit")
    return true
  end
  tr[hook] = orig
  os.exit = hook
  end
     if false then 
     local orig = os.remove 
     local hook = 1 hook = function (...)
      local arg = {...} echo('os.remove:', arg)
      return true
       end 
       tr[hook] = orig
       os.remove = hook
       end    
      if false then
        local orig = assert
        local hook = 1 hook = function (...)      
        local arg = {...}
       echo('assert:', arg) 
      return orig(...)
      end
       tr[hook] = orig
      assert = hook
       end
       if false then
       local orig = io.open
       local hook = 1 hook = function (...) 
       local arg = {...} echo('io.open:', arg)
       return orig(...)
       end 
       tr[hook] = orig io.open = hook 
       end 
       end 
      local test = g.test g = nil pcall(test) 
      local function CreateLuaText(fl) fl[#fl+1]={'退出脚本','print(" By 恶魔")\nos.exit()\n'}
      local result='gg.alert("[LOG]阿鼻:脚本已生成")\nfunction Main()\nmenu = gg.choice({' 
        local index=1
       for
       index=1,#fl 
       do
      result=result..'"'
       result=result..fl[index][1] 
       result=result..'"' 
      if index~=#fl then 
      result=result..','
       end
       end 
       result=result..'},nil,"选择开启功能")\n' 
       for 
        index=1,#fl
        do 
       result=result..'if menu=='..index..' then '
       if index==#fl then 
      result=result..'Exit() end\n'
       else
         result=result..'F'..index..'() end\n' 
        end 
        end
        result=result..'vis=false\nend\n ' 
        for index=1,#fl 
       do 
       result=result..'\n---'..fl[index][1]..'---\nfunction ' 
        if index==#fl then
        result=result..'Exit()\n' 
      else 
      result=result..'F'..index..'()\n' 
      end 
     result=result..str(fl[index][2])..'end\n'
       end 
     result=result..'\nMain() \nwhile(true)do\n if gg.isVisible(true) then\n vis=true \n gg.setVisible(false) \n end \n gg.clearResults()\n if vis then\n Main() \n end \nend'
     return 
     result
       end 
     local luas=CreateLuaText(funlist) 
   local todo= ggg.alert(luas,"复制脚本","脚本导出","告辞")
     if todo==1 then 
    ggg.copyText(luas) 
   ggg.toast("已复制脚本")
    elseif todo==2 then 
    local file=io_open(path.."[LOG lua]阿鼻."..filename..".lua","w+") 
    file:write(luas)
     file:close() 
    ggg.toast("已写出到:"..path.."[LOG lua]阿鼻."..filename..".lua") 
     end 
	 break 
	 end
	 end
	 end
     end
if g.info[9] then
						local orig = assert
						local hook = 1
						hook = function (...)
							local arg = {...}
							abs=abs+1
							gg.toast("跳过"..abs.."次assert")
							return true
						end
						tr[hook] = orig
					assert	 = hook
						end
						if true then
os.time=function (...)
return 1 end
gg.getResultCount=function ()
return 8001 end
gg.isVisible=function ()
return "恶魔" end
end
end



function d3()
local g = {}
g.last = gg.getFile()
g.info = nil

--g.config = gg.getFile():gsub('%lua$', '')..'cfg'
g.config = gg.EXT_FILES_DIR:gsub('%lua$', '')..'CXGG'

g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end

if g.info == nil then
	g.info = {g.last, g.last:gsub('/[^/]+$', '')}
end

while true do
g.info = gg.prompt({
'载入脚本:',
 '载出文件夹:',
 'PCALL拦截',
 '搜索跳过',
 'alert弹窗跳过',
 'os.exit结束跳过',
 'os.remove删除跳过',
 'io.open打开查看',
 '反追踪拦截',
 '反拦截核心'}, g.info, {'file', 'path','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox'}) 
	if g.info == nil then break end
	if g.info[4] then CXGGTG = true else CXGGTG = false end
	gg.saveVariable(g.info, g.config)
	
	gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
		m = m:sub(2)
		if #m == 1 then m = '0'..m end
		return m
	end)))
	print('Use GameGuardian version: '..gg.VERSION..' ['..gg.VERSION_INT..']')
	g.last = g.info[1]

	g.test = loadfile(g.last)
	if g.test == nil then
		gg.alert('Failed load script: '..g.last)
	else
		g.name = g.last:match('[^/]+$')
		g.pathes = {g.info[2]..'/'..g.name, g.last, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}			
		g.file = nil
		g.out = ''
		g.try = ''
		for i, v in ipairs(g.pathes) do
			g.out = v..".tmp.lua"
			g.file = io.open(g.out, "w")
 			if g.file ~= nil then
 				g.last = v:gsub('%.lua$', '')
 				break
			end
			g.try = g.try..' '..v
		end		
		if g.file == nil then
			gg.alert('Failed write to file. Checked:'..g.try)
		else
			g.file:close()
			os.remove(g.out)
		LOG=0
			
				if true then
					local ggg = {}
					 local funlist={{nil,nil}} 
					for k, v in pairs(gg) do
						ggg[k] = v
					end
					local os_remove = os.remove
					local os_exit=os.exit
					local gg_alert = gg.alert
					local sel = select
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local gg_toast = gg.toast
					local tr = {}
                   local msg = '' 
                   local fun={}
                    local funindex=1
					local msg = ''
					if g.info[3] then
					if true then
						local load_cnt = 1
						local fname = g.info[2].."/[CXGG]"..g.name..".LOAD"
					
						for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]					
							local hook = 1
							local type = v
							hook = function (...)
								local arg = {...}
								local content = arg[1]
								if content ~= nil and type == 0 then
									content = nil
									local f = io_open(arg[1], "rb")
									if f ~= nil then
										content = f:read("*a")
										f:close()
									end
								end
								if content ~= nil then
									local ret = nil
									local total = 0
									local file = fname..load_cnt..'.lua'									
									if type == 1 and typ(content) == 'function' then
										local f = nil
										local func = function (...)
											local ret = content(...)
											if ret ~= nil then
												if ret ~= '' then
													if f == nil then
														f = io_open(file, 'w');
													end
													f:write(ret)
													total = total + #ret
												end
											else
												if f ~= nil then
													f:close()
												end
											end
											return ret
										end
										ret = orig(func, sel(2, ...))
									else
										if content ~= '' then
if typ(arg[1])=='number' or #arg[1]==0 or #arg[1]<=1000 then
											return true
else

											local f = io_open(file, 'w')
											f:write(content)
											total = #content
											f:close()
										end
end
										ret = orig(...)
									end
									if total ~= 0 then
										
gg_alert('pcallHOOK '..load_cnt..'次大小 '..total..'字节保存到 '..file)
										load_cnt = load_cnt + 1
									end
									return ret
								end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
						end
						
						msg = msg..'\n\nLOAD写出为: \n [CXGG]'..g.name..".LOAD"
					end
					end
					if true then
					 local file =g.info[2].."/[CXGG]"..g.name..".LOG"
						local f = io_open(file, 'w')
						f:write("-- CXGG拦截HOOK\n")
						f:close()
						local names = {
							setRanges = {'^REGION_'},
							startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
							searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
							searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							loadList = {nil, '^LOAD_'},
							saveList = {nil, '^SAVE_'},
							editAll = {nil, '^TYPE_'},
							copyMemory = {'0x%X', '0x%X'},
							dumpMemory = {'0x%X', '0x%X'},
							getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
						}
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
							print = 1,
						}
						local toFlags = function (check, value) 
							local ret = ''
							for k, v in pairs(ggg) do
								if k:match(check) ~= nil and (value & v) == v then 
									if ret ~= '' then ret = ret..' | ' end
									ret = ret..'gg.'..k
									value = value & ~v
								end
							end
							if ret == '' or value ~= 0 then
								if ret ~= '' then ret = ret..' | ' end
								ret = ret..value
							end
							return ret
						end
						for c, v in pairs(ggg) do
							if typ(v) == 'function' and c ~= 'getFile' and c ~= 'getLine' and c ~= 'isVisible' then
								local orig = v
								local name = c
								local hook = 1
							if name == "gg.addListItems" then
            return true
          end
          if name == "gg.isPackageInstalled" then
            return true
          end
          if name == "gg.clearList" then
            return true
          end
								hook = function (...)
									local arg = {...}
									local f = io_open(file, 'a')									
										

													if c == 'choice'  then------------判断单选功能列表
									if rets[name] ~= nil then
									local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
									 GUOXUAN = false									 
									 if ret ~= nil then					
										f:write("\n------LOG"..ret.."--单--")															
										f:write(arg[1][ret])
									
										f:write("---LOG----\n")
						end
				--						f:close()
										return ret
									end
									end

									if c == 'multiChoice'  then------------判断多选功能列表
									if rets[name] ~= nil then
									local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
									local gs = {}
									
									GUOXUAN = true
									for w in string.gmatch(str(ret), "%[") do
									gs[#gs + 1] = w
									end
									echo("一共选中" .. #gs .. "个选项") 
									local date = str(ret)
									local sz = {}

									for i=1 ,#gs do
									--查询字符位置
									kaishi = string.find(date, "%[")+1
									jiewei = string.find(date, "%]")-1
									--字节截取
									nameshu=string.sub(date , kaishi , jiewei)

									--	print(str(arg[1][tonumber(nameshu)]))
									--替换一次字符串
									 date= string.gsub(date, "%[+", "", 1)
									 date= string.gsub(date, "%]+", "", 1)
									sz[i]=tonumber(nameshu)
									end
									GNJ = arg[1]

									table.sort(sz)
								wz=sz  --默认从小到大排序
							
									for j, a in ipairs(sz) do								
									
											gn=(arg[1])
										f:write("\n------LOG"..a.."--多--")
										f:write(arg[1][a])
										f:write("---LOG----\n")
					--					f:close()
									end									
										return ret																													
									end																		
									end																																						
										
																		f:write('gg.'..name..'(')
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ') end
										if typ(a) == 'string' then f:write('"') end
										local b = a
										if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
											local check = names[name][j]
											if check:sub(1, 1) ~= '^' then
												if a == 0 or a == -1 then
													b = a
												else
													b = check:format(a)
												end
											else
												b = toFlags(check, a)
											end
										end
										
										b = str(b)
										f:write(b)
										if typ(a) == 'string' then f:write('"') end
									end
									f:write(")")
									f:write("\n")
									f:close()									
--[[									    if GUOXUAN then
          if c == "toast" then
																										local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
										f:write(" -- ")
										
										f:write(arg[1][ret])
										
          end
        end]]--
--[[ 					if GUOXUAN then
          if name == "toast" then 
          LOG=LOG+1          
										f:write("---LOG----\n")
										end
										return ret
	         end]]
	
 

	         if CXGGTG then
			if name == "searchNumber" then		
			LOG=LOG+1	
				   if LOG == 1 then 
	gg_alert("开始为您跳过搜索")end
	gg_toast("跳过"..LOG.."次搜索")
            return true
          end
          end    
									return orig(...)			
								end
								tr[hook] = orig
								gg[c] = hook
							end
						end
						msg = msg..'\n\nLOG写出为: \n[CXGG]'..g.name..".LOG"
					end
					echo('CXGG.'..msg..'\n')
					ggg.alert('CXGG.'..msg)
					msg = nil
					     

					g.last = g.info[1]
					if true then
						local orig = string.dump
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('string.dump:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						string.dump = hook
					end
					if true then
						local orig = tostring
						local hook = 1
						hook = function (...)
							local old = tostring
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--tostring = orig; echo('tostring:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							local ret = orig(arg[1], sel(2, ...))
							tostring = old
							return ret
						end
						tr[hook] = orig
						tostring = hook
					end

						if true then
						local orig = debug.getupvalue
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
							echo('德布勒格图普沃思:', tr[arg[1]], arg[1], arg[2])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getupvalue = hook
					end
	
if g.info[6] then					
		if true then
hook = function (...)
   			local arg = {...}
							echo('os.exit:', arg)
							return true
						end
						tr[hook] = orig
			  os.exit = hook
end
end
if g.info[5] then
if true then
hook = function (...)
   			local arg = {...}
							echo('gg.alert:', arg)
							return true
						end
						tr[hook] = orig
			  gg.alert = hook
end
end

if true then
hook = function (...)
   			local arg = {...}
							return true
						end
						tr[hook] = orig
			  gg.clearResults  = hook
end

					if true then
						local orig = gg.bytes
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return nil
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.bytes = hook
					end
					if true then
						local orig = gg.searchNumber
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return true
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.searchNumber = hook
					end
					if true then
						local orig = gg.searchAddress
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return true
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.searchAddress = hook
					end

					if true then
 						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
--						return orig(...)
						end
						tr[hook] = orig
						gg.addListItems = hook
					end
										if true then
 						local orig = gg.copyText
 				local hook = 1
						hook = function (...)
							local arg = {...}
							return true
--						return orig(...)
						end
						tr[hook] = orig
						gg.copyText = hook
					end
					
if true then
 						local orig = 
gg.clearList
						local hook = 1
						hook = function (...)
							local arg = {...}
							return nil
--						return orig(...)
						end
						tr[hook] = orig
						
gg.clearList = hook
					end



if g.info[4] then
						local orig = gg.setVisible(false)
						local hook = 1
						hook = function (...)
							return gg.isVisible(true)
						end
						tr[hook] = orig
						gg.setVisible = hook
					end
					
					if g.info[9] or g.info[10] then
						local orig = print
						local hook = 1
						hook = function (...)
							return orig("CXGG")
						end
						tr[hook] = orig
						print = hook
					end

					if g.info[7] then
						local orig = os.remove
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('os.remove:', arg)
							return true
						end
						tr[hook] = orig
						os.remove = hook
					end
						p=	g.last
							if g.info[9] then
							if g.info[10] == true then ggg.alert("请勿同时开启\n反拦截核心 or 反追踪拦截")  break end
						local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}										
							return 		p.."[[:"..math.random(20,150).." in main chunk[Java]: in ?]]"..p.."[[:"..math.random(20,150).." in main chunk[Java]: in ?]]"..p.."[[:"..math.random(20,150).." in main chunk[Java]: in ?]]"
						end
							tr[hook] = orig
						debug.traceback = hook
					end
			
										if g.info[10] then
								if g.info[9] == true then ggg.alert("请勿同时开启\n反拦截核心 or 反追踪拦截")  break end
						local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}				
							c=gg.getFile():match('[^/]+$')
								b=gg.getFile()							
								ll=[[:562 in function 'getinfo']]or[[ in function 'traceback']]
							
			return	orig(...):gsub(b,p)
										end
						tr[hook] = orig
						debug.traceback = hook
					end



										if true then
						local orig = debug.getinfo
						local hook = 1
						hook = function (...)
							local arg = {...}
							if arg[1] ~= nil and arg[1] > 1 then
								arg[1] = arg[1] + 1
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getinfo = hook
					end
					if false then
						local orig = assert
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('assert:', arg)
							return orig(...)
						end
						tr[hook] = orig
						assert = hook
					end
					if g.info[8] then
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('io.open:', arg)
							return nil
						end
						tr[hook] = orig
						io.open = hook
					end
				end
			
				local test = g.test
				g = nil
				
				test()
				break
				test()
				break
			end
		end
	end
end



function d4()
	environment=nil
local path="/data/user/0/"..gg.EXT_FILES_DIR:match("data/(.-)/").."/shared_prefs/"..gg.EXT_FILES_DIR:match("data/(.-)/").."_preferences.xml"
local ppath=gg.FILES_DIR:gsub("files","shared_prefs/"..gg.PACKAGE.."_preferences.xml")
local wz=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name="history-2">log地址   </string>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="862" />
    <string name="history-1">log地址</string>
    <string name="com.ludashi.superboost-script">运行文件</string>
    <string name="hidden-dir">zIcC</string>
    <string name="script-debug">log地址</string>
    <int name="h-0" value="4" />
    <int name="h-2" value="4" />
    <int name="h-1" value="4" />
    <string name="history-0">运行文件</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="3" />
    <string name="script-path">文件夹</string>
    <int name="pos-y" value="1024" />
</map>]]
local wzw=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="727" />
    <string name="history-1">运行文件</string>
    <string name="hidden-dir">Diz9</string>
    <string name="script-debug">log地址</string>
    <int name="root-ok" value="13913" />
    <int name="h-0" value="4" />
    <int name="h-1" value="4" />
    <string name="com.xiaomi.smarthome-script">运行文件</string>
    <string name="history-0">123</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="2" />
    <string name="script-path">log地址</string>
    <int name="pos-y" value="380" />
</map>]]
--print((tostring(_ENV)))

local wzdata="/storage/emulated/0/tencent/MobileQQ/diskcache/Cache_-53a566bd5f9fpb999_hd"



local g = {}
g.last = gg.getFile()
local wdata=gg.getFile()
g.info = nil
g.config = gg.getFile():gsub('%lua$', '')..'Skr'
g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end

local		config = {} 
	
if g.info == nil then
	g.info = {g.last, 
	g.last:gsub('/[^/]+$', ''),
	gg.VERSION,
	gg.BUILD,
	"/storage/emulated/0/tencent/QQfile_recv",
	
	true,false,
	"123456",
	"415249342",
	"无","sstool.only.com.sstool;",
	
	"400",true,true,true,true,true,true,false}
end

while true do
	g.info = gg.prompt({
	'🔐选择文件:', 
	'📁输出的文件夹:',
		'使用VERSION版本:'..gg.VERSION, 
		'使用BUILD版本:'..gg.BUILD,
		'伪装GGlog储存路径',
		
		'使用默认GGlog储存路径:\n/storage/emulated/0/Notes',
		'伪装GG存储所有代码加载',
		'伪装QQ存在可添加多个[;] 分隔 以下都可',
		'移除QQ存在',
		'伪装App包名存在',
		'移除App包名存在',
		
		'📋最小的输出环境 "load"',
		'[Load]拦截',
		'[Log]拦截',
		'[Char}拦截',
		'[Log]多选匹配',
		'[优化]调用bug.sethook',
		'[优化]切换核心',
		'[Log}prompt优化 开启则关闭密码破解',
		'[Bug]调试模式',
		'[灵魔]网络卡密验证破解' }, g.info, {
		'file', 'path', 'text','text','path',
		'checkbox','checkbox','text','text','text','text',
		'number','checkbox','checkbox','checkbox','checkbox',
		'checkbox','checkbox','checkbox','checkbox','checkbox','checkbox'})
	if g.info == nil then break end
	gg.saveVariable(g.info, g.config)
local	Name={
"fullName",
"Outputpath",
"VERSION",
"BUILD",
"Gglogstoragepath",

"GglogSwitch",
"StoragecodeLoad",
"Camouflageqqexist",
"CamouflageqqNonexistence",
"Camouflageappexist",
"CamouflageappNonexistence",

"Minimumoutput",
"LoadHook",
"LogHook",
"Hookchar",
"Multiselectionoptimization",
"Bugsethook",
"core",
"Prompt",
"BugDebugging",
"internet"
}

local ZZZZ={}
for i, v in ipairs(g.info) do
ZZZZ[Name[i]]=v
end
	gg.VERSION = ZZZZ.VERSION
	gg.BUILD=ZZZZ.BUILD

if  	ZZZZ.GglogSwitch then
 ZZZZ.Gglogstoragepath="/storage/emulated/0/Notes"
end
if ZZZZ.internet then



XX={}
XXJL={}
XX.makeRequest=gg.makeRequest
gg.makeRequest=function(a,b,c)
file=io.open(gg.getFile().."自动回复.cfg","r")
if file==nil then file=io.open(gg.getFile().."自动回复.cfg","w")
file:close()
end
dofile(gg.getFile().."自动回复.cfg")
for i,v in pairs(XXJL) do
if i==a then return v end
end
local XXNB={}
XXNB.HF=XX.makeRequest(a,b,c)
XXNB.aa={}
XXNB.bb={}
XXNB.cc={}
for k,v in pairs(XXNB.HF) do
XXNB.aa[k]=k
XXNB.bb[k]=v
XXNB.cc[k]="text"
end
XXNB.aa[1]="是否开启该链接自动回复"
XXNB.bb[1]=false
XXNB.cc[1]="checkbox"
XXNB.GB=gg.prompt(XXNB.aa,XXNB.bb,XXNB.cc)
if XXNB.GB[1]==true then
XXNB.GB.headers=nil
XXJL[a]=XXNB.GB
XXLSS="{"..tostring(XXJL):gsub('%table(.-%)',''):sub(6,-1)
XXLSS=XXLSS:gsub(tostring(string.char(92)),'')
XXLSS=XXLSS:gsub('-- ','')
XXLSS=XXLSS:gsub('\n',' ')
XXLSS=XXLSS:gsub('	','')
gg.toast("自动回复将会记录在"..gg.getFile().."自动回复.cfg")
io.open(gg.getFile().."自动回复.cfg","w"):write("XXJL="..XXLSS):close()
end
return XXNB.GB
end
gg.alert("代码网络改包已开启")



--[[


XX={}
XXJL={}
XX.makeRequest=gg.makeRequest
gg.makeRequest=function(a,b,c)
file=io.open(gg.getFile().."自动回复.cfg","r")
if file==nil then file=io.open(gg.getFile().."自动回复.cfg","w")
file:close()
end
dofile(gg.getFile().."自动回复.cfg")
for i,v in pairs(XXJL) do
if i==a then return v end
end
local XXNB={}
XXNB.HF=XX.makeRequest(a,b,c)
XXNB.aa={}
XXNB.bb={}
XXNB.cc={}
for k,v in pairs(XXNB.HF) do
XXNB.aa[k]=k
XXNB.bb[k]=v
XXNB.cc[k]="text"
end
XXNB.aa[1]="是否开启该链接自动回复"
XXNB.bb[1]=false
XXNB.cc[1]="checkbox"
XXNB.GB=gg.prompt(XXNB.aa,XXNB.bb,XXNB.cc)
if XXNB.GB[1]==true then
XXNB.GB.headers=nil
XXJL[a]=XXNB.GB
XXLSS="{"..tostring(XXJL):gsub('%table(.-%)',''):sub(6,-1)
XXLSS=XXLSS:gsub(tostring(string.char(92)),'')
XXLSS=XXLSS:gsub('-- ','')
XXLSS=XXLSS:gsub('\n',' ')
XXLSS=XXLSS:gsub('	','')
gg.toast("自动回复将会记录在"..gg.getFile().."自动回复.cfg")
io.open(gg.getFile().."自动回复.cfg","w"):write("XXJL="..XXLSS):close()
end
return XXNB.GB
end
gg.alert("代码网络改包已开启")]]
end
if  	ZZZZ.StoragecodeLoad then
local  p=gg.alert("代码\n  您开启了[伪装GG存储所有代码加载]\n 确认一下您是否误开启\n 应对一些某些验证\n 误开启 将会生成过多文件 导致崩溃和卡顿\n 正常情况下不建议开启","继续开启功能","","关闭功能并继续")
 if p==3 then
 ZZZZ.StoragecodeLoad=false
 g.info[7]=false
	gg.saveVariable(g.info, g.config)
 end
end
if  	ZZZZ.core then
 wz=wzw
end
	gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
	
	-----
		m = m:sub(2)
		if #m == 1 then m = '0'..m end
		return m
	end)))
	print('Use GameGuardian version: '..gg.VERSION..' ['..gg.VERSION_INT..']')
	g.test = loadfile(ZZZZ.fullName)

	g.loaded = ZZZZ.fullName
	if g.test == nil then
		gg.alert('Failed load script: '..ZZZZ.fullName)
	else
g.name = ZZZZ.fullName:match('[^/]+$')
local data=wz:gsub("运行文件",ZZZZ.fullName)
local wc=ZZZZ.fullName:gsub("/"..g.name," ")
local data=data:gsub("文件夹",wc)
local data=data:gsub("log地址",ZZZZ.Gglogstoragepath)
local	file = io.open(wzdata, "w")
file:write(data)
file:close()
		g.pathes = {ZZZZ.Outputpath:gsub('/?$', '')..'/'..g.name, ZZZZ.fullName, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}
		g.file = nil
		g.out = ''
		local io_open = io.open		
				if true then
					local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
local CXio = {}
local CXstring = {}
local ZZZZ = {}
for i, v in pairs(io) do CXio[i] = v end
for i, v in pairs(string) do CXstring[i] = v end
for i, v in pairs(gg) do ZZZZ[i] = v end

local get_file=gg.getFile()
local  save_filename = get_file..'.cfg'
	local chunk = loadfile(save_filename)
	if chunk == nil then 
local		config = {} 
	else
local		config = chunk()
	end


					local sel = select
					local Runningfunction=""
					local FunctionnameWarehouse={}
					local debugsethook=debug.sethook

					local	remove={{nil,nil}}
					local Functionnumber={{nil,nil}}
					local Erasable={}
					local ioopen={}
					local ioopen1={}
					local ioinput1={}
					local ioinput={}
					local	Funccount=0
					local Functionlibrary={}
			 local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
    local temp={}
    local Namerepetition=0
					local os_exit=os.exit
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}
					local slen = string.len
					local msg = ''
					local rnd = ZZZZ.fullName..'_'..os.time()..'_'..math.random()
					local load_cnt = 0
       local Removalofpolypus=g.name:gsub('.[^.]+$', '')..".lua"
       local Ggname=g.name
						local fname = ZZZZ.Outputpath..'/'..'Heyuan.'..Removalofpolypus
						local fnamee = ZZZZ.Outputpath..'/'..'[Load] 代码.'..Removalofpolypus
						local fnameeee = ZZZZ.Outputpath..'/'..'[Lua] 代码.'..Removalofpolypus						
						local fnchar = ZZZZ.Outputpath..'/'..'[Char] 代码.'..Removalofpolypus
						local wFilename=Removalofpolypus
						local fnameee = ZZZZ.Outputpath..'/'..'[Load] 代码.'
						local min_size = tonumber(ZZZZ.Minimumoutput)
						local sfmt = string.format
						local sbyte = string.byte
						local ssub = string.sub
						local os_remove = os.remove						
						local Camouflagelog=ZZZZ.Gglogstoragepath.."/"..ZZZZ.fullName:match('[^/]+$')..".log.txt"
						local Camouflageload=ZZZZ.Gglogstoragepath.."/"..ZZZZ.fullName:match('[^/]+$')..".load_"							
				local							filpe = io.open(Camouflagelog, "w+")			
				
						ggg.setVisible(false)
						
						
					
					if ZZZZ.LoadHook then
					local cs1=0
					local load_cnt1=0
					local tx=true
					local contentcs=0
						local tar_end = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"											
						local f = nil
						local tar_put = function (content)						
							if f == nil then
								f = io_open(fnamee, 'w')
								f:setvbuf('full', 8192)
							end
							if load_cnt ~= 0 then
								f:seek('end', -1024)
							end
							local size = slen(content)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end
													
						if content~=contentt then
						if content:match("#%d%d%d") or content:find("qword, q")~=nil  then											
						local							contentcs=contentcs+1
						else
							cs1=cs1+1					
							if tx then
local				ggaiert=	ggg.alert("成功获取"..cs1.."次Load.\n过滤"..contentcs.."次虚假Load\n将保存为 :\n[Load] 代码.("..cs1..")."..wFilename.."\n\n〖"..content:sub(1,10000).."\n〗","确定","","不再提示")				
				if ggaiert==3 then tx=false end
				else
				ggg.toast("成功获取"..cs1.."次load.\n将保存为[Load] 代码.("..cs1..")]"..wFilename.."")
				end
					contentt=content					
					f = io_open(fnameee.."("..cs1.."):"..wFilename, 'w')					
					
					end
								f:write(content)								
							end
							
										local pad = size % 512
							if pad > 0 then
								f:write(ssub(tar_end, 1, 512 - pad))
							end

							f:write(tar_end)
							f:flush()
							
							--echo('Hooked load '..load_cnt..' with size of '..size..' bytes')
							load_cnt = load_cnt + 1
						end
							
						for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]
							local hook = 1
							local type = v
							hook = function (...)							
								local arg = {...}
								if ZZZZ.StoragecodeLoad then
				--[[				local size = slen(...)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end							]]
							if load_cnt1>500  then
							ggg.alert(" ZZZZ.代码\n目标刷取"..load_cnt1.."次Load\n 为恶意刷取\n非正常脚本\n正在关闭")
								os_exit()
								end
local							f = io_open(Camouflageload..load_cnt1..".lua", 'w')							
load_cnt1 = load_cnt1 + 1
--[[															f:write("load_")
								:write(ch(sfmt('%07d', load_cnt1)))								
								:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
								:write(ch(sfmt('%011o', size)))
								:write("\x0000000000000\x00")
								:write(sfmt('%06o', checksum))
								:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")]]
								f:write(str(...))
end
								local content = arg[1]
								if content ~= nil and type == 0 then
									content = nil
									local f = io_open(arg[1], "rb")
									if f ~= nil then
										content = f:read("*a")
										f:close()
									end
								end
								if content ~= nil then
									local ret = nil
									local total = 0
									local file = fname..load_cnt..'.lua'
									if type == 1 and typ(content) == 'function' then
										local cache = ''
										local func = function (...)
											local ret = content(...)
											if ret ~= nil then
												if ret ~= '' then
													cache = cache + ret
													total = total + slen(ret)
												end
											else
												if total ~= 0 and slen(content) >= min_size then
													tar_put(cache)
												end
											end
											return ret
										end
										ret = orig(func, sel(2, ...))
									else
										if content ~= '' and slen(content) >= min_size then
											tar_put(content)
										end
										ret = orig(...)
									end
									return ret
								end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
						end
						
						msg = msg..'\n\nAll data from calls "load" will be dumped into tar archive: \n'..fnamee
					end
					
					if ZZZZ.LogHook then		
					local scripts = {}
					local options = {}
					local config = {}
					local multiChoicecx=1
      local stackcs=0
					local toastt=false					
					local cs4=1
					local menui=1
					local searchNumber=""
						local file = ZZZZ.Outputpath..'/'..'[Log] 代码..'..Removalofpolypus
						local f = io_open(file, 'wb')
						f:write("-- Hook started\n")
						f:close()
						gg.prompt({'Just press ok:'}, {g.info[1]}, {'file'})
						gg.prompt({'Just press ok:'}, {g.info[5]}, {'file'})
						

						
						
						
						local names = {
							allocatePage = {'^PROT_', '0x%X'},
							copyMemory = {'0x%X', '0x%X'},
							dumpMemory = {'0x%X', '0x%X'},
							gotoAddress = {'0x%X'},
							setRanges = {'^REGION_'},
							searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
							searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
							searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
							editAll = {nil, '^TYPE_'},
							loadList = {nil, '^LOAD_'},
							saveList = {nil, '^SAVE_'},
						}
						names.refineAddress = names.searchAddress
						names.refineNumber = names.searchNumber
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
							print = 1,
						}
						local smatch = string.match
						local ssub = string.sub
						local sformat = string.format
						local toFlags = function (check, value)
							local ret = ''
							for k, v in pairs(ggg) do
								if smatch(k, check) ~= nil and (value & v) == v then
									if ret ~= '' then ret = ret..' | ' end
									ret = ret..'gg.'..k
									value = value & ~v
								end
							end
							if ret == '' or value ~= 0 then
								if ret ~= '' then ret = ret..' | ' end
								ret = ret..value
							end
							return ret
						end
												for i, v in pairs(ggg) do
							if typ(v) == 'function'  and i ~= 'getLine' and i ~= 'isVisible' and i ~= 'clearResults' and i ~= 'addListItems' and i ~= 'getResultsCount' and i ~= "removeListItems" --and i ~= 'getFile' 
							then
								local orig = v
								local name = i
								local hook = 1
								hook = function (...)
									local arg = {...}
									local f = io_open(file, 'a')									
									-----
									if	 i == 'getFile' then
									local ret=orig(...)
								if filpe~=nil then				filpe:write('gg.getFile()\n')				
			--						filpe:write('getFile()\n')				
								end
									return ZZZZ.fullName
									end
		if	 i == 'processKill' then
									return true
									end
												 ------


												if name=='searchNumber' then 
									local arg = {...}
										if arg[1] ~= searchNumber  then
					searchNumber=arg[1] 					
					else
							return true
						end
						end
						
						if name=="getResultCount" then
						return 2
									end
--[[						  if				i == 'getFile'  then
						  if filpe~=nil then
				filpe:write('gg.getFile()\n')
				end
				return ZZZZ.fullName
				end]]
					  		
									  if name=='isPackageInstalled' then 									
									  local arg = {...}
							echo('包名:', arg[1])
							local leve=orig(...)
							if ZZZZ.CamouflageappNonexistence:match(arg[1])		then							
							return  false 
							else	if ZZZZ.Camouflageappexist:match(arg[1])		then							
							return  true
	       end
	       end
							end							
	
	if name=='prompt' and ZZZZ.Prompt then 	
	local arg = {...}
							if rets[name] ~= nil then
							local f = io_open(file, 'a')
										local ret = orig(...)
										if ret~=nil then
										for i=1,#ret do
		--								gg.alert(i)
									if ret[i] then
									f:write("\n-----------------------------LOG PromptData [",i.."]"..arg[1][i].."-----------------------------\n")
												Functionname=arg[1][i]
										Runningfunction=""
									end
									end
									return ret
									end
										end
										end
			  if name=='prompt' then 	
					local pa = math.random(10, 99)
					local ss = math.random(10,99)
			local	leoe=ggg.alert('破解prompt密码\n 在密码处输入['..pa..ss..']激活密码解析\n 对于嵌入代码解密段则无效\n 点击Yes将会复制:['..pa..ss..']并启动密码拦截\n粘贴即可',"Yes","","No")
			
			if leoe==1 then
			ggg.copyText(pa..ss)
					local cache = {}
					cache[pa..ss] = 1
					cache["text"]=1
					cache["table"]=1
					local debug_getlocal = debug.getlocal
					local type_ = type
					local print_ = print
					local pairs_ = pairs
					local hook = function (...)											
						local stack = {}
						for j = 1, 900 do
							local _, val = debug_getlocal(1, j)
							if val ~= nil then
								local t = type_(val)
								if t == 'string' then
									stack[val] = 1
								else
									if t == 'table' then	
										for i, v in pairs_(val) do
									stack[v] = 1			
										end
									end
								end
							end
						end				
						
						if stack[pa..ss] ~= nil then	
							for v, _ in pairs_(stack) do							
								if cache[v] == nil then	
								local v=tostring(v)
								if not (v:match("{") or v:match("function")   or v:match("]") or v:match("-") or v==")"
								or v=="")
								then
								 stackcsno=true
								 scripts[#scripts + 1]=v
ggg.toast("ZZZZ:\n成功激活密码破解\n解析共:"..#scripts.."条数据")
								print_(v)			
						cache[v] = 1						 
								end
								end
							end
						end
					end						
debugsethook(hook, '', 1)													
				echo("下列为解析的可疑密码\nResolution:\n-----------------------------") 
									  end								  
									  end
			if stackcsno then
			echo("-----------------------------\nResolution[",#scripts,"]")
			while true do
			local options={}
			for i, v in ipairs(scripts) do
		options[i] ="📌".. str(v):sub(1,50)
	end
	
			local ZZZZos_exit = #options + 1
	options[ZZZZos_exit] = config['ZZZZ_os_exit'] == nil and '复制后结束 [继续]' or '复制后继续  [结束]' 
	
	selected = ggg.choice(options, #options, "ZZZZ 拦截密码解析\n 选择复制可疑密码\n Resolution["..#scripts.."]")
	
	if scripts[selected] ~= nil then
	ggg.copyText(scripts[selected])
		echo("复制:",scripts[selected])
		pw=scripts[selected]
		if config['ZZZZ_os_exit'] then
		os_exit()
		else
		stackcsno=false
		stackcsn=true
		ggg.tmp= {scripts[selected]}
		break
		end
		end
		
		
	if selected == ZZZZos_exit then
		config['ZZZZ_os_exit'] = config['ZZZZ_os_exit'] == nil and 1 or nil
		ggg.saveVariable(config, save_filename)
	end
--
	end
--	return {scripts[selected]}
--	if true then
--							return ggg.prompt(...)
--					end -- true then
--	return 9420
echo("#####")
	end

									  -----------
														    if i == "multiChoice" or i== "choice" then
									local arg = {...}
									local gss = {}						
					if			 menui==1 then
					f:write("-----------------------------LOG GameGuardian LOG-----------------------------\n\n")
								for c=1,#arg[1] do 							
										f:write("-----------------------------LOG Menu[",c.."]"..arg[1][c].."-----------------------------\n")
										end										
										menui=2
										end
end

									if i == 'choice'  then
									if rets[name] ~= nil then
									local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
									if ret ~=nil then
										f:write("\n\n-----------------------------LOG Single [",ret.."]"..arg[1][ret].."-----------------------------\n")								
				--						f:close()
			 Functionname=arg[1][ret]
			 Runningfunction=""
										return ret
									end
									end
									end
						
			if i == 'multiChoice'  then
			if multiChoicecx==1 then 
			ggg.alert("ZZZZ.代码\n 由于函数的特性请勿一次性选择多个开启\n 选择过多将会压缩在一起\n if如果你并不想用Log脚本则无视")
			multiChoicecx=2
			end
									if rets[name] ~= nil then
									local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
									local gs = {}								
									for w in string.gmatch(str(ret), "%[") do
									gs[#gs + 1] = w
									end
--									echo("一共选中" .. #gs .. "个选项") 
									local date = str(ret)
									local sz = {}
									for i=1 ,#gs do
									--查询字符位置
									kaishi = string.find(date, "%[")+1
									jiewei = string.find(date, "%]")-1
									--字节截取
									nameshu=string.sub(date , kaishi , jiewei)
									--	echo(str(arg[1][tonumber(nameshu)]))
									--替换一次字符串
									 date= string.gsub(date, "%[+", "", 1)
									 date= string.gsub(date, "%]+", "", 1)
									sz[i]=tonumber(nameshu)
									end
									table.sort(sz)           --默认从小到大排序
									opo=sz
									pop=arg[1]
									csp=#gs									
										f:write("\n\n-----------------------------LOG Multiple menu LOG-----------------------------\n")
										Functionname=""
									for j, a in ipairs(sz) do				
										f:write("\n-----------------------------LOG A lot of [",a.."]"..arg[1][a].."-----------------------------\n")
										Functionname=arg[1][a]										
										Runningfunction=""
												fe=true
					--					f:close()
									end
										return ret
									end
									end									
									f:write('gg.'..name..'(')
									Runningfunction=Runningfunction..'\ngg.'..name..'('
									if filpe~=nil then
					--				filpe:write(name..'(')								
									filpe:write('gg.'..name..'(')								
									end
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ')
										Runningfunction=Runningfunction..', '
										 if filpe~=nil then		filpe:write(', ')		end		end
										if typ(a) == 'string' then f:write('"')
										Runningfunction=Runningfunction..'"'
										if filpe~=nil then		filpe:write('"')		end end
										local b = a
										if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
											local check = names[name][j]
											if ssub(check, 1, 1) ~= '^' then
												if a == 0 or a == -1 then
													b = a
												else
													b = sformat(check, a)
												end
											else
												b = toFlags(check, a)
											end
										end
										b = str(b)
										f:write(b)										
										Runningfunction=Runningfunction..b:gsub("\n",[[\n]])
										if filpe~=nil then		filpe:write(b)		end
										if typ(a) == 'string' then f:write('"')
										Runningfunction=Runningfunction..'"'
										if filpe~=nil then		filpe:write('"')		end end
									end
									f:write(")")
									Runningfunction=Runningfunction..")"
									if filpe~=nil then		filpe:write(")")		end
									if fe then
									if ZZZZ.Multiselectionoptimization then
										if name=="toast"  then	
										if cs4+1 > csp then cs4=csp end
										local ret = orig(...)
									local arg = {...}        --默认从小到大排序																															
												a=opo[cs4]
												cs4=cs4+1
												if a ~= nil then
										f:write("\n-----------------------------LOG Transport :[",a.."]"..pop[a].." Error in forced matching-----------------------------\n\n")					
										end
									end
									end
									end
									if rets[name] ~= nil then
										local ret = orig(...)
										f:write(" --[[ ")
										f:write(str(ret))
										f:write(" ]]\n")
										f:close()
										if filpe~=nil then			
										filpe:write("\n--[[ return: "..str(ret).." ]]\n")
					--					filpe:write("\n-- return:"..str(ret).."\n")	
						end
										return ret										
									end
									
									------------------------------------------------------------								
									
							
if Functionname~=nil and Runningfunction:match("searchNumber") then
--f Functionlibrary["Black"..Functionname]~= nil then
Functionlibrary["Hook"..Functionname]=Runningfunction

--else
--Functionlibrary["Black"..Namerepetition..Functionname]=Runningfunction
--end
end

				local  Menuname=""
   local  Hookitem=""
   local HookSelectandkeep=""
   local  i=0
   for i=1,52 do
        temp[i] = string.sub(b64chars,i,i)
    end
    p=1
    for k,v in pairs(Functionlibrary) do
    i=i+1
    p=i+1    
Menuname=Menuname..'\n"'..str(k)..'",'

HookSelectandkeep=HookSelectandkeep.."\nif menu=="..i.." then CX"..str(temp[i])..i.."() end"

Hookitem=Hookitem.."\n---[["..k.."]]\nfunction CX"..str(temp[i])..i.."()"..str(v).."\nend"
end
Hookscript="gg.alert('ZZZZ: 代码')\n\nfunction Main()\n"
-----启动脚本
Hookscript=Hookscript..'menu = gg.choice({'..Menuname..'"结束脚本 Exit"},nil,"选择开启功能[初心❤ 代码拦截生成]")'
-----功能名称
Hookscript=Hookscript..HookSelectandkeep.."\nif menu=="..p.." then Exit() end\nvis=false\nend"
-----调用功能
Hookscript=Hookscript..Hookitem
-----功能实体
Hookscript=Hookscript.."\nfunction Exit()\nprint('ZZZZ By 初心')\nos.exit()\nend\n\nMain() \nwhile(true)do\n if gg.isVisible(true) then\n vis=true \n gg.setVisible(false) \n end \n gg.clearResults()\n if vis then\n Main() \n end \nend"
-----结束项目
if #Hookscript >376 then
local fi = io_open(fnameeee, 'w')					
							fi:write(Hookscript)
							fi:close()
							end
------------------------------------------------------------------------------------
									f:write("\n")
									if filpe~=nil then		filpe:write("\n")		end
									f:close()
					if name=='searchNumber' then 
					function xqmnb(a)
aaaa=aaaa+1
print(aaaa.."！！！"..tostring(a))
print("\n")
print(aaaa.."！！！"..tostring(qmxg))
end
									ggg.toast('已自动跳过搜索过程')
									 return true
									  end
									return orig(...)									
								end
								tr[hook] = orig
								gg[i] = hook
							end
						end			
			msg = msg..'\n\nAll GG calls will be logged into file:\n '..file.."\n\nCreate and generate scripts to the:\n"..fnameeee.."\n\nSkip : clearResults 移除无用Lo \n已开启☑\nSkip : searchNumber 移除搜索过程 \n已开启☑"
					end

					
					
							if true then
						msg=msg.."\nSkip : os.exit 退出弹窗 \n已开启☑"		
						local orig = os.exit
						local hook = 1
						hook = function (...)
		--echogg.alert(Function..Functionname1..Function1..Function2..Function3..Function4..Function5)
		
		if str(Functionlibrary):match("searchNumber") then
local		Menuname=""
local i=0
		for k,v in pairs(Functionlibrary) do
		i=i+1
Menuname=Menuname.."["..str(k).."]\n"
end
							ggfh=ggg.alert('准备结束Hook\n\n拦截并生成项目.'..i..'条Data\n\n'..Menuname..'\n\n保存为.:\n[Lua] 代码.'..wFilename..'\n\n™项目简短\n'..Hookscript:sub(1,9000)..'',"No.继续拦截","","Yes.确认退出")							
							else
							ggfh=ggg.alert('结束Hook',"No.继续拦截","","Yes.确认退出")
							end
							local arg = {...}					
						if ggfh==3 then
						 if ZZZZ.BugDebugging==false then
							echo('io.open:', ioopen)
							echo('io.input:', ioinput)
							echo('os.remove:', remove)
	
							end
local 							sel= orig(...)
							else
local						sel=true
								end
								return sel
						end
						tr[hook] = orig
					os.exit	 = hook
					end

					
      
     
if true then
local ioopencs=0
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}											
												if arg[2]=="w" or arg[2]=="w+" then
												Erasable[#Erasable+1]=arg[1]
							end		
							if ioopencs>15 then
						local ioopenalert=	ggg.alert("短时间写出多个文件\n疑似拦截被检测\n谨慎考虑是否继续？\n截取最近的写出文件:\n"..arg[1],"继续","","结束拦截")
						if ioopenalert==1 then local ioopencs=0 else os_exit() end
						else
							if arg[2]=="w" or arg[2]=="w+" then
							local ioopencs=ioopencs+1
							end
							end
			if filpe~=nil then
			if arg[2] ==nil then
filpe:write('io.open("'..arg[1]..'")\n')
else
filpe:write('io.open("'..arg[1],'", '..'"',arg[2]..'")\n')
end
end
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
							ioopen[#ioopen+1]=str(arg[1]).."\nrun["..str(arg[2]).."]"
							ioopen1[#ioopen1+1]=str(arg[1])
							if ZZZZ.BugDebugging then
							echo('io.open:', arg)
							end
	--echo('io.open:', ioopen)
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if ZZZZ.CamouflageqqNonexistence:match(ddd) or arg[1]==wzdata then
							leve=nil
							else		if ZZZZ.Camouflageqqexist:match(ddd)then
						leve=orig(ggg.getFile():gsub('%lua$', '')..'Skr',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.open = hook
					end
					
					
					if true then
						local orig = io.input
						local ioinputcs=0
						local hook = 1
						hook = function (...)
							local arg = {...}
							if ioinputcs>15 then
						local ioinputalert=	ggg.alert("短时间写出多个文件\n疑似拦截被检测\n谨慎考虑是否继续？\n截取最近的写出文件:\n"..arg[1],"继续","","结束拦截")
						if ioinputalert==1 then local ioinputcs=0 else os_exit() end
						else
							if arg[2]=="w" or arg[2]=="w+" then
							local ioinputcs=ioinputcs+1
							end
							end
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
				ioinput[#ioinput+1]=str(arg[1]).."\nrun["..str(arg[2]).."]"
							ioinput1[#ioinput1+1]=str(arg[1])
							if ZZZZ.BugDebugging then
							echo('io.input:', arg)
							end
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if ZZZZ.CamouflageqqNonexistence:match(ddd)or arg[1]==wzdata then
							leve=nil
							else		if ZZZZ.Camouflageqqexist:match(ddd)then
						leve=orig(ggg.getFile():gsub('%lua$', '')..'Skr',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.input = hook
					end
									
										---------------------------------------------------------------------------------------------------------------------------------------
														if true then ----------------------删除
												local		removecs=0
							msg=msg.."\nSkip : os.remove 跳过删除文件 \n已开启☑"
						local orig = os.remove
						local hook = 1
						hook = function (...)
							local arg = {...}		
							remove[#remove+1]=arg[1]
			if filpe~=nil then
filpe:write('os.remove("'..arg[1]..'")\n')
end
							local leve=true
							if arg[1]==Camouflagelog or arg[1]:match("log") then
							leve=orig(...)
							end
										for i=1,#ioopen1 do
				if arg[1]==str(ioopen1[i]) or arg[1]:match(Ggname)then			
								remove[#remove]=arg[1].."\n已允许[⭕删除]"
								ioopen[i]=arg[1].."\n已[⭕删除]"
							leve=orig(...)
							else
							remove[#remove]=arg[1].."\n已拒绝[✅删除]"
							end
							end											
							if ZZZZ.BugDebugging then
							echo('os.remove:', arg)
							end
--							echo('os.remove:', remove)
							return leve
						end
						tr[hook] = orig
						os.remove = hook
					end

							
					
					if ZZZZ.Bugsethook then ----------------------gg.getFile
	local				roelsethook={}
	local ovei={}
						local orig = debug.sethook
						local hook = 1
						hook = function (...)												
						local arg = {...}	
				local		roel=str(arg[1])
				ovei[1]=roel:gsub("@", "")
				ovei[2]=arg[2]
			--	gg.alert(tostring((...)))
			if ZZZZ.BugDebugging then
			echo("debug.sethook:",ovei)
			end
							return ovei
						end
						tr[hook] = orig
					debug.sethook  = hook
					end
										
								if true  then						
					local orig = debug.getinfo 
				local hook = 1 
				local ggWarehouse={
'getFile','prompt','choice','toast','alert','getResultsCount','multiChoice','setSpeed','getSpeed','REGION_C_HEAP','clearResults','bytes','SAVE_AS_TEXT','require','removeResults','editAll','setValues','getValues','refineAddress','refineNumber','loadResults','getListItems','getTargetPackage','processKill','startFuzzy','getRanges','setRanges','getLine','unrandomizer','numberFromLocale','PROT_WRITE','skipRestoreState','allocatePage','getValuesRange','isVisible','gotoAddress','getSelectedPackage','saveList','addListItems','removeListItems','getTargetInfo','processResume','setVisible','searchNumber','getLocale','saveVariable','isPackageInstalled','timeJump','processToggle','numberToLocale','clearList','copyMemory','getResultCount','processPause','isProcessPaused','getRangesList','getResults','copyText','sleep','loadList','dumpMemory','searchFuzzy','searchAddress','load','pcall','xpcall'}
				hook = function (...) 
					local arg = {...}
				local 	roel=orig(...)
				local item=(orig(gg.getFile,"S"))
				local ppetinfo={}
			--		print("getinfo:"..OG.tostring(arg))
				--	echo('debug.getinfo:', orig(...))
		if tostring(arg[1]):sub(1,1):match("%d")  then			
		for k,v in pairs(roel) do
		 ppetinfo[k]=str(v):gsub(ggg.getFile(),ZZZZ.fullName)
		 end
		else		
		for k,v in pairs(ggWarehouse) do		
if tostring(arg[1]):match(str(v)) then
for i,o in pairs(roel) do
if i=="short_src" then
 ppetinfo[i]=v
 else if i=="source" then
 ppetinfo[i]="=[Java]"
 else
 ppetinfo[i]=o
 end
 end 
 	ppetinfo['lastlinedefined'] = item.lastlinedefined
	ppetinfo['linedefined'] = item.linedefined 
		 end		 
break
 end
end
end

--	roel=roel:gsub("['source'] = '","['source'] = '@")
--echo('debug.getinfo :',arg)
if ZZZZ.BugDebugging then
			echo("debug.getinfo:",ppetinfo)
			end
--			gg.alert(tostring(bugget))

				 return  ppetinfo
				end 
				tr[hook] = orig 
				debug.getinfo = hook
			end

				
				
							if true then---------外国加密
						local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}
local			roel=orig(...)
if filpe~=nil then
filpe:write('debug.traceback\n')
end
			if  roel:match("in function 'load'") then
 roel=roel:gsub(wdata..":(%d-) in function 'load'", "")
end
if roel:match("in function 'open'")then
 roel=roel:gsub(wdata..":(%d-) in function 'open'", "")
end
--echo('debug.traceback:', roel:gsub(":(.-)"..wdata..":(%d-) in function 'traceback'", ":"):gsub("+",""))
if roel:match(":(%d-) in function 'traceback'")then
 roel=roel:gsub(wdata..":(%d-) in function 'traceback'", "")
end
if roel:match(":(%d-) in function '?'")then
 roel=roel:gsub(wdata..":(%d-) in function '?'", "")
end
roel=roel:gsub([[stack traceback:
	]], "stack traceback:")
	roel=roel:gsub([[stack traceback:echo'
	]], "stack traceback:echo'")
	if ZZZZ.BugDebugging then
echo('traceback:\n', roel)
							end
							return roel
						end
						tr[hook] = orig
						debug.traceback = hook
					end
					
					


					
					if false then
			msg=msg.."\nOptimization : print 打印结束消息优化 \n已开启☑"
			local printt=""
						local orig = print
						local hook = 1
						hook = function (...)
							local arg = {...}							
				if arg[1] == printt or #arg[1]>1000 then						
							return true
							else
							printt=arg[1] 
							return orig(...)
						end
						end
						tr[hook] = orig
					print	 = hook
					end
					
	
					
					if ZZZZ.Hookchar then ----------------------gg.getFile
							local fof = io_open(fnchar, 'w')									
							fof:write("-- Hook char\n")
						fof:close()
						local orig = string.char
						local hook = 1
						hook = function (...)
							local arg = {...}
							local fof = io_open(fnchar, 'a')														
							if arg[1] ~= nil then
						fof:write((CXstring.char(arg[1])))															
						end
							return orig(...)
						end
						tr[hook] = orig
					string.char  = hook
					end
					
					
					-----------------------------------------------------------------------------------------拦截区---------------------------------------------------------
			
					
			
							if true then
						local orig = string.format
						local hook = 1
						hook = function (...)
							local arg = {...}
		local					leve=orig(...)
--					echo('string.format:', arg)
							if arg[2]==ggg.getFile() then
						leve=orig(arg[1],"prompt",arg[3])
							end
							return leve
						end
						tr[hook] = orig
					string.format	 = hook
					end
					
			
					
			
			



----------------------------------------------------------------------------------------------------------------------------------------------------------
	if true then
						local orig = string.dump
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('string.dump:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						string.dump = hook
					end
					if true then
						local orig = tostring
						
						local rm = table.remove
						local store = {}
						local build_table = 1
						build_table = function (src, dst)
							local cnt = #store
							store[src] = dst
							for k, v in pairs(src) do
								if tr[v] ~= nil then
									dst[k] = tr[v]
								else
									if typ(v) == 'table' then
										if store[v] ~= nil then
											dst[k] = store[v]
										else
											local bt = {}
											store[v] = bt
											dst[k] = bt
											build_table(v, bt)
										end
									else
										dst[k] = v
									end
								end
							end
							if cnt == 0 then
								while #store > 0 do
									rm(store)
								end
							end
							return dst
						end
						
						local hook = 1
						hook = function (...)
							local old = tostring
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
								arg[1] = tr[arg[1]]
							else
								if typ(arg[1]) == 'table' then
									arg[1] = build_table(arg[1], {})
								end
							end
							local ret = orig(arg[1], sel(2, ...))
							--tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
							tostring = old
							return ret
						end
						tr[hook] = orig
						tostring = hook
					end
					if false then
						local orig = debug.getupvalue
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('debug.getupvalue:', tr[arg[1]], arg[1], arg[2])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getupvalue = hook
					end
					echo('Hook GameGuardian ZZZZ拦截.'..msg..'\n--------------------------------\n')
					msg=nil				
					end
				local test = g.test 				
				g = nil
				aaaa=0
			return test()			
			end
		end
	   end



function d5()
environment=nil
local path="/data/user/0/"..gg.EXT_FILES_DIR:match("data/(.-)/").."/shared_prefs/"..gg.EXT_FILES_DIR:match("data/(.-)/").."_preferences.xml"
local ppath=gg.FILES_DIR:gsub("files","shared_prefs/"..gg.PACKAGE.."_preferences.xml")
local wz=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name="history-2">log地址</string>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="862" />
    <string name="history-1">log地址</string>
    <string name="com.ludashi.superboost-script">运行文件</string>
    <string name="hidden-dir">zIcC</string>
    <string name="script-debug">log地址</string>
    <int name="h-0" value="4" />
    <int name="h-2" value="4" />
    <int name="h-1" value="4" />
    <string name="history-0">运行文件</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="3" />
    <string name="script-path">文件夹</string>
    <int name="pos-y" value="1024" />
</map>]]


local wzdata="/storage/emulated/0/tencent/MobileQQ/diskcache/Cache_-53a566bd5f9fpb99_hd"
if gg.BUILD < 11630 then
	gg.alert('您正在使用旧版本的GameGuardian。有些函数可能不起作用,或者不按预期工作。')
end


local g = {}
g.last = gg.getFile()
local wdata=gg.getFile()
g.info = nil
g.config = gg.getFile():gsub('%lua$', '')..'恶魔'
g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end

if g.info == nil then
	g.info = {g.last, 
	g.last:gsub('/[^/]+$', ''),
	gg.VERSION,
	gg.BUILD,
	"/storage/emulated/0/tencent/QQfile_recv",
	"1725935400",
	"415249342",
	"无","sstool.only.com.sstool;",
	"400",true,true,true}
end

while true do				
	g.info = gg.prompt({
    	'选择文件:', --1
    	'输出的文件夹:',--2
		'使用VERSION版本:'..gg.VERSION, --3
		'使用BUILD版本:'..gg.BUILD,--4
		'伪装GGlog储存路径',--5
		'伪装QQ存在可添加多个[;] 分隔 以下都可',--6
		'移除QQ存在',--7
		'伪装App包名存在',--8
		'移除App包名存在',--9
		'最小的输出环境 "load"',--10
		'🍉revo6.0请联系恶魔破解',--11
		'[🍉Load]',--12
		'[🍉Log]',--13
		'[🍉SH模式]',--14
		'[🍓防止检测文件(密码跳过)]',--15
		'[🍓防止验证文件]',--16
		'[🍓防止删除文件]',--17
		'[🍓LUA藐视弹窗]',--18
		'[🍶本拦截小白模式]',--19
		'[🍚拦截LOG防刷内存]',--20
		'[🍓易游验证破解]',--21
		'[🍓调试模式『不懂勿开』]',--22
		'[🍓密码数据解析]',--23
		'[🐒佛门罗汉截]',--24
		'[一切验证跳过加强版]'}
		 ,g.info, {'file', 'path', 'text','text','text','text','text','text','text','number','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox'})
	if g.info == nil then break end
	gg.saveVariable(g.info, g.config)
local		fullName = g.info[1]
 	g.sucdz=g.info[2]
	gg.VERSION = g.info[3]
	gg.BUILD=g.info[4]
 	g.gglog=g.info[5]
	
--g.qq="/storage/emulated/0/tencent/MobileQQ/artfilter/"..g.info[6].."artfilter.config"
local yesqq=g.info[6]
local noqq=g.info[7]
local yesapp=g.info[8]
local	noapp=g.info[9]
 	g.acdax=g.info[10]
	g.youhua=g.info[11]
	g.load=g.info[12]
	g.log=g.info[13]
 	wzlog=g.info[14]
 	g.assert=g.info[15]
 	g.open=g.info[16]
 	g.remove=g.info[17]
 	g.alert=g.info[18]
 	g.xbms=g.info[19]
 	g.wssnc=g.info[20]
 	g.yiyou=g.info[21]
 	g.tiaoshi=g.info[22]
 	g.mima=g.info[23]
 	g.flj=g.info[24]
 	g.yz=g.info[25]
------------------------------------------------------------------------------------------------------------------------
local	fffile=io.open(fullName,"r")
local	contentt=fffile:read("*a")
	if 		 contentt:match("Revo")  then
		g.load=false
		g.youhua=false
		g.load=false
		g.open=false
		g.assert=false
		g.remove=false
		g.alert=false
		gg.alert("小白模式:\n检测到revo加密，已自动关闭会被检测到的功能")
		end

                      ----------------------------------------------------------------
if wzlog then
gg.alert("✅伪装修改器更多内置log功能，已开启！")
wzwj=io.open(fullName..".log.txt","w")
print(".\n\n✅伪装修改器更多内置log功能，已开启！\n\n.")
end

	gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
	
	-------------------------------------------------------------------
		m = m:sub(2)
		if #m == 1 then m = '0'..m end
		return m
	end)))
	print('\t\t\t\t您的GG版本: '..gg.VERSION..' ['..gg.VERSION_INT..']')
	g.test = loadfile(fullName)
	g.loaded = fullName
	if g.test == nil then
		gg.alert('GameGuardian: '..fullName)
	else
	gg.name = fullName:match('[^/]+$')		
local data=wz:gsub("运行文件",fullName)
local wc=fullName:gsub("/"..gg.name," ")
local data=data:gsub("文件夹",wc)
local data=data:gsub("log地址",g.gglog)
local	file = io.open(wzdata, "w")
file:write(data)
file:close()
g.name = fullName:match('[^/]+$')
		g.pathes = {g.sucdz:gsub('/?$', '')..'/'..g.name, fullName, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}

		g.file = nil
		g.out = ''
		g.try = ''
		for i, v in ipairs(g.pathes) do
			g.out = v..".tmp.lua"
			g.file = io.open(g.out, "w")
 			if g.file ~= nil then
 				fullName = v:gsub('%.lua$', '')
 				break
			end
			g.try = g.try..' '..v
		end
		if g.file == nil then
			gg.alert('写入文件失败。检查过了。:'..g.try)
		else
			g.file:close()
			os.remove(g.out)
			local cs1="0"
		local cs2="1"
		local cs3="1"
		local cs4="0"
		local cs5="1"
		local cs6=1
		local csp=1
		local menui = 1
		local lleve=""
		local wengin=fullName 
		local logdz=g.gglog
				if true then
					local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
					
						local slog=false
					local wzlogdata=g.gglog.."/"..fullName:match('[^/]+$')..".log"
					local sel = select
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}
					local slen = string.len
					local string_gsub=string.gsub
					local msg = ''
					local rnd = fullName..'_'..os.time()..'_'..math.random()
					local gg_getFile=gg.getFile
					local load_cnt = 0
						local fname = g.sucdz..'/'..'[恶魔]'..g.name
						local fnamee = g.sucdz..'/'..'[恶魔 Load]'..g.name
						local wjm=g.name
						local fnameee = g.sucdz..'/'..'[恶魔 Load]'
						local min_size = tonumber(g.acdax)
						local getResultsCount=false
						local searchNumber=false
						local printt=false
						local fe=false
						local tx=true
						local opo=""
						local sfmt = string.format
						local sbyte = string.byte
						local ssub = string.sub
					local lload = load
						local string_char=string.char
						local os_remove = os.remove
						
						local							filpe = io_open(wzlogdata, "w+")
					if g.load then
						local tar_end = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
											
						local f = nil
						local tar_put = function (content)
							if f == nil then
								f = io_open(fnamee, 'w')
								f:setvbuf('full', 8192)
							end
							if load_cnt ~= 0 then
								f:seek('end', -1024)
							end
							local size = slen(content)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end

				---[[			:write(ch(sfmt('%07d', load_cnt)))
						--[[		:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
	:write(ch(sfmt('%011o', size)))
    :write("\x0000000000000\x00")
	:write(sfmt('%06o', checksum))
	:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")]]
					
	
						if content~=contentt then
						if content:match("#2000") or content:match("#131") then
						else
							cs1=cs1+1					
							if tx then
				ggaiert=	ggg.alert("成功获取"..cs1.."次load.\n将保存为 :\n[恶魔 Load("..cs1..")]"..wjm.."\n\n〖"..content:sub(1,800000).."\n〗","写出并出源","")				
				if ggaiert==3 then tx=false end
				else
				ggg.toast("成功获取"..cs1.."次load.\n将保存为:("..cs1..")]"..wjm.."")
				end
					contentt=content					
					f = io_open(fnameee.."("..cs1..")]"..wjm, 'w')					
					
					end
								f:write(content)								
							end
							
							local pad = size % 512
							if pad > 0 then
								f:write(ssub(tar_end, 1, 512 - pad))
							end

							f:write(tar_end)
							f:flush()
							
							--echo('Hooked load '..load_cnt..' with size of '..size..' bytes')
							load_cnt = load_cnt + 1
						end
					
						for i, v in pairs({load=1, loadfile=0, dofile=0}) do
	    	local orig = _G[i]
			local hook = 1
			local type = v
			hook = function (...)
			local arg = {...}
			local content = arg[1]
			if content ~= nil and type == 0 then
			content = nil
			local f = io_open(arg[1], "rb")
			if f ~= nil then
			content = f:read("*a")
			f:close()
			end
			end
			if content ~= nil then
			local ret = nil
			local total = 0
			local file = fname..load_cnt..'.lua'
			if type == 1 and typ(content) == 'function' then
										local cache = ''
										local func = function (...)
											local ret = content(...)
											if ret ~= nil then
												if ret ~= '' then
													cache = cache + ret
													total = total + slen(ret)
												end
											else
												if total ~= 0 and slen(content) >= min_size then
													tar_put(cache)
												end
											end
											return ret
										end
										ret = orig(func, sel(2, ...))
									else
										if content ~= '' and slen(content) >= min_size then
											tar_put(content)
										end
										ret = orig(...)
									end
									return ret
								end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
						end
						
						msg = msg..'\n\n来自调用“load”的所有数据将被转储到tar存档中。: \n'..fnamee
					end
					ggg.prompt({'跳过检测:'}, {g.loaded}, {'file'})
					if g.log then
						local file = g.sucdz..'/'..'[Stardust Log]'..g.name
						local f = io_open(file, 'wb')
					f:write("--Star dust\n")
             		f:write("--来自恶魔的私人拦截器\n")
             		f:write("")
             		f:write("")
             		f:write("")
						f:close()
						local names = {
							allocatePage = {'^PROT_', '0x%X'},
							copyMemory = {'0x%X', '0x%X'},
							dumpMemory = {'0x%X', '0x%X'},
							gotoAddress = {'0x%X'},
							setRanges = {'^REGION_'},
							searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
							searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
							searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
							editAll = {nil, '^TYPE_'},
							loadList = {nil, '^LOAD_'},
							saveList = {nil, '^SAVE_'},
						}
						names.refineAddress = names.searchAddress
						names.refineNumber = names.searchNumber
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
							print = 1,
						}
						local smatch = string.match
						local ssub = string.sub
						local sformat = string.format
						local toFlags = function (check, value)
							local ret = ''
							for k, v in pairs(ggg) do
								if smatch(k, check) ~= nil and (value & v) == v then
									if ret ~= '' then ret = ret..' | ' end
									ret = ret..'gg.'..k
									value = value & ~v
								end
							end
							if ret == '' or value ~= 0 then
								if ret ~= '' then ret = ret..' | ' end
								ret = ret..value
							end
							return ret
						end
						for i, v in pairs(ggg) do
						if typ(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then
							local orig = v
							local name = i
							local hook = 1
							hook = function (...)
								local arg = {...}
								local f = io_open(file, 'a')
								-----
									if true then
							if name=='alert' then 
							local arg = {...}
										 end
							if name=='getFile' then 
							local arg = {...}
										 end
								if name=='editAll' then 
								local arg = {...}
												 end												 
												 end
												 ------
							if name=='searchNumber' then 
									local arg = {...}
						if arg[1] ~= searchNumber  then
					searchNumber=arg[1] 					
					else
	    		return true
	    		end								
	    	 	  end
			  	if name=='clearResults' then 					
				return true
				end
									  
									  -----------
				
  ----
			    if i == "multiChoice" or i== "choice" then
				local arg = {...}
				local gss = {}				
				if			 menui==1 then
	    		f:write("-----------------------------LOG 恶魔 LOG-----------------------------\n\n")
				for c=1,#arg[1] do 							
				f:write("-----------------------------LOG 恶魔[",c.."]"..arg[1][c].."-----------------------------\n")
				end										
				menui=2
				end
                end
				if i == 'choice'  then
				if rets[name] ~= nil then
				local f = io_open(file, 'a')
				local ret = orig(...)
				local arg = {...}
				if ret ~=nil then
				f:write("\n\n-----------------------------LOG 恶魔 [",ret.."]"..arg[1][ret].."-----------------------------\n")
				--		f:close()
				return ret
				end
				end
				end
	    		if i == 'multiChoice'  then
				if rets[name] ~= nil then
	    		local f = io_open(file, 'a')
				local ret = orig(...)
				local arg = {...}
				local gs = {}								
				for w in string.gmatch(str(ret), "%[") do
	    		gs[#gs + 1] = w
				end
--			echo("一共选中" .. #gs .. "个选项") 
				local date = str(ret)
	    		local sz = {}
    			for i=1 ,#gs do
									--查询字符位置
				kaishi = string.find(date, "%[")+1
									jiewei = string.find(date, "%]")-1
									--字节截取
									nameshu=string.sub(date , kaishi , jiewei)
									--	echo(str(arg[1][tonumber(nameshu)]))
									--替换一次字符串
									 date= string.gsub(date, "%[+", "", 1)
									 date= string.gsub(date, "%]+", "", 1)
									sz[i]=tonumber(nameshu)
									end
									table.sort(sz)           --默认从小到大排序
					opo=sz
					pop=arg[1]
		   			csp=#gs									
	       			  f:write("\n\n-----------------------------LOG 恶魔 LOG-----------------------------\n")
									for j, a in ipairs(sz) do				
										f:write("\n-----------------------------LOG A lot of [",a.."]"..arg[1][a].."-----------------------------\n")
										fe=true
					--					f:close()
									end
										return ret
									end
									end									
									f:write('gg.'..name..'(')
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ') end
										if typ(a) == 'string' then f:write('"') end
										local b = a
										if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
											local check = names[name][j]
											if ssub(check, 1, 1) ~= '^' then
												if a == 0 or a == -1 then
													b = a
												else
													b = sformat(check, a)
												end
											else
												b = toFlags(check, a)
											end
										end
										b = str(b)
										f:write(b)
										if typ(a) == 'string' then f:write('"') end
									end
									f:write(")")
									if fe then
										if name=="toast"  then	
										if cs4+1 > csp then cs4=csp end
										local ret = orig(...)
									local arg = {...}        --默认从小到大排序																			
												cs4=cs4+1
												a=opo[cs4]
												if a ~= nil then
										f:write("\n-----------------------------LOG 输送 [",a.."]"..pop[a].."-----------------------------\n\n")					
										end
									end
									end
									if rets[name] ~= nil then
										local ret = orig(...)
										f:write(" --[[ ")
										f:write(str(ret))
										f:write(" ]]\n")
										f:close()
										return ret
									end
									f:write("\n")
									f:close()
								if name=='searchNumber' or i=='searchNumber'then 
									ggg.toast('已自动跳过搜索过程')
									 return true
									  end
									return orig(...)
								end
								tr[hook] = orig
								gg[i] = hook
							end
						end			
			msg = msg..'\n\n您的GG拦截目录:\n '..file.."\n\n恶魔 : clearResults 移除无用Log \n已开启🍧\n恶魔 : searchNumber 移除搜索过程 \n已开启🍧"
					end
					
				
					
					
					
					
	---------------------------------------------------------------------------------------------------------------------------------------
							
		if g.youhua then  ---------------------- APP包名检测				
						msg=msg.."\n恶魔 : isPackageInstalled APP包名检测 \n已开启🍧"
						local orig = gg.isPackageInstalled
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('\n包名:', arg[1])
							local leve=orig(...)
							if noapp:match(arg[1])		then							
							leve=  false 
							else	if yesapp:match(arg[1])		then							
							leve=  true
	       end
	       end
							return leve
							end
						tr[hook] = orig
						gg.isPackageInstalled= hook
					end

					if g.youhua then
					msg=msg.."\n恶魔 : setVisible GGUI常显 \n已开启🍧"
						local orig = gg.setVisible
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						gg.setVisible = hook
					end
					
					if g.youhua then
					msg=msg.."\n恶魔 : isVisible GGUI常显 \n已开启🍧"
						local orig = gg.isVisible
						local hook = 1
						hook = function (...)
							local arg = {...}
							return orig(true)
						end
						tr[hook] = orig
						gg.isVisible = hook
					end
					
						if g.youhua then
						local orig = gg.sleep
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
						gg.sleep = hook
					end
					
					if g.youhua then
					msg=msg.."\n恶魔 : toast 消息优化删除重复 \n已开启🍧"
						local orig = gg.toast
						local hook = 1
						hook = function (...)
							local arg = {...}
							if arg[1] ~= toast or cs2=="30"or cs2=="20" then
						toast=arg[1] 
							return orig(...)
							else
								cs2=cs2+1
							return true
						end
						end
						tr[hook] = orig
						gg.toast = hook
					end
					
						if g.youhua then ----------------------log
						msg=msg.."\n恶魔 : getResultsCount 移除刷LOG \n已开启🍧"
						local orig = gg.getResultsCount
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
					gg.getResultsCount	 = hook
					end
					
						if g.youhua then ----------------------log
						msg=msg.."\n恶魔 : addListItems 移除刷LOG \n已开启🍧"
						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.addListItems		 = hook
					end
				
							if true then---------外国加密
						local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}
local			roel=orig(...)
			if  roel:match("in function 'load'") then
 roel=roel:gsub(wdata..":(%d-) in function 'load'", "")
end
if roel:match("in function 'open'")then
 roel=roel:gsub(wdata..":(%d-) in function 'open'", "")
end
--echo('debug.traceback:', roel:gsub(":(.-)"..wdata..":(%d-) in function 'traceback'", ":"):gsub("+",""))
if roel:match(":(%d-) in function 'traceback'")then
 roel=roel:gsub(wdata..":(%d-) in function 'traceback'", "")
end
if roel:match(":(%d-) in function '?'")then
 roel=roel:gsub(wdata..":(%d-) in function '?'", "")
end
roel=roel:gsub([[stack traceback:
	]], "stack traceback:")
echo('traceback:\n', roel)
							return roel
						end
						tr[hook] = orig
						debug.traceback = hook
					end
	----------------------------------------------------------------------------------------------------				
						if true then						
--[[
						if g.info[8]==true then--os.exit()跳过
				local orig = os.exit
  local hook = 1
  hook = function (...)
  qx2=qx2+1
  	ggfh=ggg.alert('文件准备结束.',"No","","Yes")
    local arg = {...}
    gg.toast("已跳过"..qx2.."次退出")
    gg.sleep(70)
    return true
  end
  tr[hook] = orig
  qx2=0
  os.exit = hook
  end		
]]  
if true then
os.time=function (...)
return 1 end
gg.getResultCount=function ()
return 8001 end
gg.isVisible=function ()
return "恶魔" end
end

						msg=msg.."\n恶魔 : os.exit 退出弹窗 \n已开启🍧"
						local orig = os.exit
						local hook = 1
						hook = function (...)
							ggfh=ggg.alert('文件准备结束.',"No","","Yes")
							local arg = {...}					
						if ggfh==3 then
 							sel= orig(...)
							else
							sel=gg.setVisible(true)
								end
								return sel
						end
						tr[hook] = orig
					os.exit	 = hook
					end

o=0
	if g.open then
							  function x(s)
    if s==nil then
 t="其他" else
      if s:match("r") then t="r"
       elseif s:match("w") or s:match("a") then t="w" end end
    return t end
  local orig=io.open
  local hook=1
  local hook=function(...)
    local arg={...}
    local result=orig(...)
    local x=ggg.alert("尝试以"..x(arg[2]).."的方式打开文件:"..arg[1].."\n请选择执行操作","忽略","返回nil","返回该文件")
    if x==2 then o=o+1 gg.toast("跳过"..o.."次io.open") result=zn return nil end
    if x==3 then o=o+1 gg.toast("跳过"..o.."次io.open") local file=io_open(arg[1],"w") file:write("--执念拦截器") file:seek("set") os_remove(arg[1]) result=file return file end
  return result
  end
  tr[hook] = orig
  io.open=hook
  end
  
  isc=0
                            if g.remove then
						local orig = os.remove
						local hook = 1
						hook = function (...)
							local arg = {...}
							isc=isc+1
							gg.toast("跳过"..isc.."次os.remove")
							return true
						end
						tr[hook] = orig
					os.remove	 = hook
					end
		
		abs=0
		               if g.assert then
						local orig = assert
						local hook = 1
						hook = function (...)
							local arg = {...}
							abs=abs+1
							gg.toast("跳过"..abs.."次assert")
							return true
						end
						tr[hook] = orig
					assert	 = hook
						end
						

als=0
                       if g.alert then
						local orig = gg.alert
						local hook = 1
						hook = function (...)
							local arg = {...}
							als=als+1
							gg.toast("跳过"..als.."次alert")
							return true
						end
						tr[hook] = orig
					gg.alert	 = hook
					end


					
					if true then
			msg=msg.."\nOptimization : print 打印结束消息优化 \n已开启🍧"
						local orig = print
						local hook = 1
						hook = function (...)
							local arg = {...}							
				if arg[1] ~= printt  then
						printt=arg[1] 
							return orig(...)
							else
							return true
						end
						end
						tr[hook] = orig
					print	 = hook
					end
					

					
					if false then ----------------------gg.getFile
						local orig = string.char
						local hook = 1
						hook = function (...)
							local arg = {...}
					local 		lleve=lleve..(string_char(arg[1]))			
							return orig(...)
						end
						tr[hook] = orig
					string.char  = hook
					end
					
					if false then ----------------------gg.getFile
						local orig = gg.alert
						local hook = 1
						hook = function (...)
							local arg = {...}								
					echo('gg.alert:',arg)
							return true
						end
						tr[hook] = orig
					gg.alert  = hook
					end
					
					
					if wzlog then
					local orig = gg.getFile
local hook = 1
hook = function (...)
local arg = {...}
wzwj:write('gg.getFile()\n')
return fullName
end
tr[hook] = orig
gg.getFile	 = hook

local orig = os.remove
local hook = 1
hook = function (...)
local arg = (...)
wzwj:write('os.remove("'..arg..'")\n')
return orig(...)
end
tr[hook] = orig
os.remove	 = hook

local orig = assert
local hook = 1
hook = function (...)
local arg = (...)
wzwj:write('assert("'..arg..'")\n')
return orig(...)
end
tr[hook] = orig
assert	 = hook

local orig = gg.toast
local hook = 1
hook = function (...)
local arg = (...)
wzwj:write('gg.toast("'..arg..'")\n')
return orig(...)
end
tr[hook] = orig
gg.toast	 = hook

local orig = gg.alert
local hook = 1
hook = function (...)
local arg = (...)
wzwj:write('gg.alert("'..arg..'")\n--[[ return: 1 ]]\n')
return orig(...)
end
tr[hook] = orig
gg.alert	 = hook
end
					-----------------------------------------------------------------------------------------拦截区---------------------------------------------------------
					if false then
						local orig = assert
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('assert:', arg)
							return orig(...)
						end
						tr[hook] = orig
						assert = hook
					end
			if wzlog then
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}			
				if arg[2] ==nil then
wzwj:write('io.open("'..arg[1]..'")\n')
else
wzwj:write('io.open("'..arg[1],'","'..arg[2]..'")\n')
end
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if noqq:match(ddd)then
							leve=false
							else		if yesqq:match(ddd)then
						leve=orig(gg_getFile():gsub('%lua$', '')..'em',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.open = hook
					end
					
					
					if wzlog then
						local orig = io.input
						local hook = 1
						hook = function (...)
							local arg = {...}
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if noqq:match(ddd)then
							leve=false
							else		if yesqq:match(ddd)then
						leve=orig(gg_getFile():gsub('%lua$', '')..'em',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.input = hook
					end
					
			
							if true then
						local orig = string.format
						local hook = 1
						hook = function (...)
							local arg = {...}
		local					leve=orig(...)
--					echo('string.format:', arg)
							if arg[2]==gg_getFile() then
						leve=orig(arg[1],"prompt",arg[3])
							end
							return leve
						end
						tr[hook] = orig
					string.format	 = hook
					end
					
			
					
										if false then
					local orig = debug.getinfo 
				local hook = 1 
				hook = function (...) 
					local arg = {...}
			--		print("getinfo:"..OG.tostring(arg))
				--	echo('debug.getinfo:', orig(...))
					local			roel=str(orig(...))
		if  roel:match(gg_getFile()) then  roel=roel:gsub(gg_getFile(), fullName) end
--	roel=roel:gsub("['source'] = '","['source'] = '@")
--echo('debug.getinfo :',roel)
				 return roel
				end 
				tr[hook] = orig 
				debug.getinfo = hook
			end
			
--------------------------------------------------------------------------------------------------------------------------------
if wssnc then----LOG防刷内存
	local orig = gg.removeListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.removeListItems		 = hook
					end
if wssnc then----LOG防刷内存
						local orig = gg.bytes
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return nil
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.bytes = hook
					end
	if wssnc then----LOG防刷内存
						local orig = gg.searchNumber
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return true
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.searchNumber = hook
					end
	if wssnc then----LOG防刷内存
						local orig = gg.searchAddress
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return true
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.searchAddress = hook
					end
if wssnc then----LOG防刷内存
 						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
						gg.addListItems = hook
					end
if yiyou then
  local orig = gg.makeRequest
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if arg[1]:match("w.eydata.net") and arg[3]:match("Single") then result={["content"]="A80F635542949B631E34156D32FF2AC0"}
     elseif arg[1]:match("w.eydata.net") and arg[3]:match("UserName") then result={["content"]="成功破解"}
     elseif arg[1]=="http://skyblade.top/ht/yh/login.php" then result={["content"]=""}
     elseif arg[1]=="http://skyblade.top/ht/yh/jk.php" then result={["content"]="成功破解"}    end
    -- echo(str(arg).."\n--------\n"..str(result))
    return result
  end
  tr[hook] = orig
  gg.makeRequest = hook
end
-------------
if false then
  local orig = os.clock
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return "0"
  end
  tr[hook] = orig
  os.clock = hook
end

----------
ttt=0
if false then
  local orig = string.gmatch
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
c=gg.alert("选择","第一次","第二次")
if c==1 then return orig(string.rep("=",347),"=")
else return orig("==","=") end
--[[
    if ttt==0 then
      ttt=1
      return orig(string.rep("=",347),"=")
     else
      ttt=0
      return orig("==","=")
    end--]]
  end
  tr[hook] = orig
  string.gmatch = hook
end
-------------

if false then
  local orig = gg.setVisible
  local hook = 1
  hook = function (...)
    return gg.isVisible(true)
  end
  tr[hook] = orig
  gg.setVisible = hook
end
-----------

---------------
-------------
if true then
  local orig = tostring
  local rm = table.remove
  local store = {}
  local build_table = 1
  build_table = function (src, dst)
    local cnt = #store
    for k, v in pairs(src) do
      if tr[v] ~= nil then
        dst[k] = tr[v]
       else
        if typ(v) == 'table' then
          if store[v] ~= nil then
            dst[k] = store[v]
           else
            local bt = {}
            store[v] = bt
            dst[k] = bt
            build_table(v, bt)
          end
         else
          dst[k] = v
        end
      end
    end
    if cnt == 0 then
      while #store > 0 do
        rm(store)
      end
    end
    return dst
  end
  local hook = 1
  hook = function (...)
    local old = tostring
    local arg = {...}
    if tr[arg[1]] ~= nil then
      --					tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
      arg[1] = tr[arg[1]]
     else
      if typ(arg[1]) == 'table' then
        arg[1] = build_table(arg[1], {})
      end
    end
    local ret = orig(arg[1], sel(2, ...))
    --				tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
    tostring = old
    return ret
  end
  tr[hook] = orig
  tostring = hook
end
if tiaoshi then
list={["io"]=io,["os"]=os,["table"]=table,["string"]=string,["debug"]=debug}
      for a,b in pairs(list) do
        for k,v in pairs(b) do
          local orig=b[k]
          hook=1
          local hook=function(...)
            local arg={...}
            local result=orig(...)
            if #str(arg)>3000 then arg={} end
            if #str(result)>3000 then result="" end
            if TSignore:match(k)==nil then
              local dy="--------调用函数:--------\n"..str(a).."."..k.."\n--------函数参数:---------\n"..str(arg).."\n---------返回结果:---------\n"..str(result).."\n\n"

              --   io_open(gg.getFile().."xxx","a"):write(dy):close()
              x=ggg.alert(dy,"确定",nil,"复制")
           --   if x==3 then ggg.copyText(dy) end
            end
            return orig(...)
          end
          b[k]=hook
        end
      end
    end
if mima then
  ggg.prompt({"点击确定"},{file},{"file"})
end
if flj then
local file = outpath.."[佛门菩萨解开始]"..filename..randomName..''
  local f = io_open(file, 'w')
  f:write("佛截代码如下:\n")
  f:close()
  local names = {
    allocatePage = {'^PROT_', '0x%X'},
    copyMemory = {'0x%X', '0x%X'},
    dumpMemory = {'0x%X', '0x%X'},
    gotoAddress = {'0x%X'},
    setRanges = {'^REGION_'},
    searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
    refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
    startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
    searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
    searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
    refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
    getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
    editAll = {nil, '^TYPE_'},
    loadList = {nil, '^LOAD_'},
    saveList = {nil, '^SAVE_'},
  }
  names.refineAddress = names.searchAddress
  names.refineNumber = names.searchNumber
  local rets = {
    alert = 1,
    prompt = 1,
    choice = 1,
    multiChoice = 1,
  }
  --------------------
  local toFlags = function (check, value)
    local ret = ''
    for k, v in pairs(ggg) do
      if k:match(check) ~= nil and (value & v) == v then
        if ret ~= '' then ret = ret..' | ' end
        ret = ret..'gg.'..k
        value = value & ~v
      end
    end
    if ret == '' or value ~= 0 then
      if ret ~= '' then ret = ret..' | ' end
      ret = ret..value
    end
    return ret
  end
  -------------------
  local f = io_open(file, 'a')
  local write=function(content)
    if nowfunc~=lastfunc then
      f:write(content):flush() end end
  for i, v in pairs(ggg) do

if type(v) ~= "function" then --constants
      if i == "PACKAGE" then _G.gg[i] = VPACKAGE
       elseif i == "VERSION" then _G.gg[i] = "73.4"
      -- elseif i == "VERSION_INT" then _G.gg[i] = getVERSION_INT()
      -- elseif i == "BUILD" then _G.gg[i] = VBUILD
      end
     else
    end--]]
    if typ(v) == 'function' and ignoreHook:match(i)==nil
      then
      local orig = v
      local name = i
      local hook = 1
      hook = function (...)
        local arg = {...}
        lastfunc=nowfunc
        nowfunc=name

        if i == 'choice' then---判断单选功能列表
          if rets[name] ~= nil then
            local ret = orig(...)
            local arg = {...}
            write(" -- ")
            write(arg[1][ret])
            write(" --\n")
            return ret
          end
        end

        if i == 'multiChoice' then--判断多选功能列表

          if rets[name] ~= nil then
            local ret = orig(...)
            local arg = {...}
            local num={}
            for w in gmatch(str(ret), "%[(%d+)%] =") do
              insert(num,arg[1][tonumber(w)])
            end
            for j, a in ipairs(num) do
              write(" -- ")
              write(a)
              write(" --\n")
            end
            return ret
          end
        end

        --]]
        write('gg.'..name..'(')
        for j, a in ipairs(arg) do
          if (typ(a) == 'string' or typ(a) == 'table') and #str(a)>3000 then
            a=""
          end
          if j ~= 1 then write(', ') end
          if typ(a) == 'string' then write('"') end
          local b = a
          if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
            local check = names[name][j]
            if check:sub(1, 1) ~= '^' then
              if a == 0 or a == -1 then
                b = a
               else
                b = check:format(a)
              end
             else
              b = toFlags(check, a)
            end
          end
          b = str(b)
          write(b)
          if typ(a) == 'string' then write('"') end
        end
        write(")")
        write("\n")
        --   f:close()
        local result = 1
        if ignoreInvoke:match(name) then
          ggg.toast("已自动跳过函数gg." .. name .. "()的执行")
         elseif name=="getResults" then result={{['address'] = 0xbd102a74,['flags'] = 4,['value'] = 10}}  
         else
          result=orig(...)
        end
        return result
      end
      tr[hook] = orig
      gg[i] = hook
    end
  end
end
if yz then
  local orig = os.exit
  local hook = 1
  hook = function (...)
    local arg = {...}
    ggg.toast("已跳过os.exit的执行")
    return true
  end
  tr[hook] = orig
  os.exit = hook
end
if true then
os.time=function (...)
return 1 end
gg.getResultCount=function ()
return 8001 end
gg.isVisible=function ()
return "恶魔" end
end
----------------------------------------------------------------------------------------------------------------------------
if true then
						local orig = string.dump
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('string.dump:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						string.dump = hook
					end
					if true then
						local orig = tostring						
						local rm = table.remove
						local store = {}
						local build_table = 1
						build_table = function (src, dst)
							local cnt = #store
							store[src] = dst
							for k, v in pairs(src) do
								if tr[v] ~= nil then
									dst[k] = tr[v]
								else
									if typ(v) == 'table' then
										if store[v] ~= nil then
											dst[k] = store[v]
										else
											local bt = {}
											store[v] = bt
											dst[k] = bt
											build_table(v, bt)
										end
									else
										dst[k] = v
									end
								end
							end
							if cnt == 0 then
								while #store > 0 do
									rm(store)
								end
							end
							return dst
						end
						
						local hook = 1
						hook = function (...)
							local old = tostring
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
								arg[1] = tr[arg[1]]
							else
								if typ(arg[1]) == 'table' then
									arg[1] = build_table(arg[1], {})
								end
							end
							local ret = orig(arg[1], sel(2, ...))
							--tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
							tostring = old
							return ret
						end
						tr[hook] = orig
						tostring = hook
					end
					if true  then
						local orig = debug.getupvalue
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('debug.getupvalue:', tr[arg[1]], arg[1], arg[2])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getupvalue = hook
					end
---------------------------------------------------------------------------------------------------------------------------
					echo('\t\t\t\t恶魔.'..msg..'\n--------------------------------\n')
					msg=nil
					end
				local test = g.test
				g = nil
			return test()			
			end
		end
	end
end



function d6()
gg.toast('Script compiler v3.1')
-- https://gameguardian.net/forum/files/file/146-script-compiler/

if gg.BUILD < 15270 then
	gg.alert('You are using an old version of GameGuardian. Some functions may not work, or work not as expected.')
end

local g = {}
g.last = gg.getFile()
g.info = nil

g.config = gg.getFile():gsub('%lua$', '')..'cfg'
g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end

if g.info == nil then
	g.info = {g.last, g.last:gsub('/[^/]+$', ''), nil}
end
if g.info[3] == nil then g.info[3] = gg.VERSION end
if g.info[4] == nil then g.info[4] = 400 end

while true do
	g.info = gg.prompt({'Select script/assemble file:', 'Select writable path for output:',
		'Use GameGuardian version:', 'Min size for log call "load"'}, g.info, {'file', 'path', 'text', 'number'})
	if g.info == nil then break end
	gg.saveVariable(g.info, g.config)
	gg.VERSION = g.info[3]
	gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
		m = m:sub(2)
		if #m == 1 then m = '0'..m end
		return m
	end)))
	print('Use GameGuardian version: '..gg.VERSION..' ['..gg.VERSION_INT..']')
	g.last = g.info[1]
	g.test, g.err = loadfile(g.last)
	g.loaded = g.last
	if g.test == nil then
		if g.err == nill then g.err = 'Unknown error' end
		print(g.err)
		gg.alert('Failed load/assemble script: '..g.last..'\n\n'..g.err)
	else
		g.name = g.last:match('[^/]+$')
		g.pathes = {g.info[2]:gsub('/?$', '')..'/'..g.name, g.last, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}
		g.file = nil
		g.out = ''
		g.try = ''
		for i, v in ipairs(g.pathes) do
			g.out = v..".tmp.lua"
			g.file = io.open(g.out, "w")
 			if g.file ~= nil then
 				g.last = v:gsub('%.lua$', '')
 				break
			end
			g.try = g.try..' '..v
		end
		if g.file == nil then
			gg.alert('Failed write to file. Checked:'..g.try)
		else
			g.file:close()
			os.remove(g.out)
		
			g.sel = gg.choice({
				'使用调试信息编译（使用删除垃圾代码)', -- 1
				'编译时不带调试信息（带删除垃圾代码)', -- 2
				'拆卸', -- 3
				'记录所有GG调用并转储调用“加载”的所有数据', -- 4
				'记录所有GG呼叫', -- 5
				'转储调用“加载”的所有数据', -- 6
				'密码破解器', -- 7
			})
			if g.sel == nil then break end
			
			if g.sel == 1 or g.sel == 2 then
				g.warn = gg.alert('Scripts in binary form may not work on other versions of GameGuardian', 'Agree', 'Disagree')
				if g.warn ~= 1 then break end
				
				g.out = g.last..".bin.lua"
				g.file = io.open(g.out, "w")
				g.file:write(string.dump(g.test, g.sel == 2, true))
				g.file:close()
				gg.alert('The binary script is saved to the file:\n'..g.out)
				break
			elseif g.sel == 3 then
				g.out = g.last..".lasm"
				g.res = gg.internal2(g.test, g.out)
				if g.res then
					gg.alert('The disassemble of the script is saved to the file:\n'..g.out)
					break
				else
					gg.alert('An error occurred while disassembling the script:\n'..g.res)
				end
			elseif g.sel == 4 or g.sel == 5 or g.sel == 6 then
				if true then
					local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
					
					local sel = select
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}
					local slen = string.len
					
					local msg = ''
					local rnd = g.last..'_'..os.time()..'_'..math.random()
					
					if g.sel == 4 or g.sel == 6 then
						local load_cnt = 0
						local fname = rnd..'.load.tar'
						
						local min_size = tonumber(g.info[4])
						
						local sfmt = string.format
						local sbyte = string.byte
						local ssub = string.sub
						
						local tar_end = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
											
						local f = nil
						local tar_put = function (content)
							if f == nil then
								f = io_open(fname, 'wb')
								f:setvbuf('full', 8192)
							end
							if load_cnt ~= 0 then
								f:seek('end', -1024)
							end
							local size = slen(content)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end

							f:write("load_")
								:write(ch(sfmt('%07d', load_cnt)))
								:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
								:write(ch(sfmt('%011o', size)))
								:write("\x0000000000000\x00")
								:write(sfmt('%06o', checksum))
								:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")
								:write(content)
							
							local pad = size % 512
							if pad > 0 then
								f:write(ssub(tar_end, 1, 512 - pad))
							end

							f:write(tar_end)
							f:flush()
							
							--echo('Hooked load '..load_cnt..' with size of '..size..' bytes')
							load_cnt = load_cnt + 1
						end
					
						for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]
							local hook = 1
							local type = v
							hook = function (...)
								local arg = {...}
								local content = arg[1]
								if content ~= nil and type == 0 then
									content = nil
									local f = io_open(arg[1], "rb")
									if f ~= nil then
										content = f:read("*a")
										f:close()
									end
								end
								if content ~= nil then
									local ret = nil
									local total = 0
									local file = fname..load_cnt..'.lua'
									if type == 1 and typ(content) == 'function' then
										local cache = ''
										local func = function (...)
											local ret = content(...)
											if ret ~= nil then
												if ret ~= '' then
													cache = cache + ret
													total = total + slen(ret)
												end
											else
												if total ~= 0 and slen(content) >= min_size then
													tar_put(cache)
												end
											end
											return ret
										end
										ret = orig(func, sel(2, ...))
									else
										if content ~= '' and slen(content) >= min_size then
											tar_put(content)
										end
										ret = orig(...)
									end
									return ret
								end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
						end
						
						msg = msg..'\n\nAll data from calls "load" will be dumped into tar archive: '..fname
					end
					
					if g.sel == 4 or g.sel == 5 then
						local file = rnd..'.log'
						local f = io_open(file, 'wb')
						f:write("-- Hook started\n")
						f:close()
						local names = {
							allocatePage = {'^PROT_', '0x%X'},
							copyMemory = {'0x%X', '0x%X'},
							dumpMemory = {'0x%X', '0x%X'},
							gotoAddress = {'0x%X'},
							setRanges = {'^REGION_'},
							searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
							searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
							searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
							editAll = {nil, '^TYPE_'},
							loadList = {nil, '^LOAD_'},
							saveList = {nil, '^SAVE_'},
						}
						names.refineAddress = names.searchAddress
						names.refineNumber = names.searchNumber
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
						}
						local smatch = string.match
						local ssub = string.sub
						local sformat = string.format
						local toFlags = function (check, value)
							local ret = ''
							for k, v in pairs(ggg) do
								if smatch(k, check) ~= nil and (value & v) == v then
									if ret ~= '' then ret = ret..' | ' end
									ret = ret..'gg.'..k
									value = value & ~v
								end
							end
							if ret == '' or value ~= 0 then
								if ret ~= '' then ret = ret..' | ' end
								ret = ret..value
							end
							return ret
						end
						for i, v in pairs(ggg) do
							if typ(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then
								local orig = v
								local name = i
								local hook = 1
								hook = function (...)
									local arg = {...}
									local f = io_open(file, 'ab')
									f:write('gg.'..name..'(')
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ') end
										if typ(a) == 'string' then f:write('"') end
										local b = a
										if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
											local check = names[name][j]
											if ssub(check, 1, 1) ~= '^' then
												if a == 0 or a == -1 then
													b = a
												else
													b = sformat(check, a)
												end
											else
												b = toFlags(check, a)
											end
										end
										b = str(b)
										f:write(b)
										if typ(a) == 'string' then f:write('"') end
									end
									f:write(")")
									if rets[name] ~= nil then
										local ret = orig(...)
										f:write(" --[[ ")
										f:write(str(ret))
										f:write(" ]]\n")
										f:close()
										return ret
									end
									f:write("\n")
									f:close()
									return orig(...)
								end
								tr[hook] = orig
								gg[i] = hook
							end
						end
						
						msg = msg..'\n\nAll GG calls will be logged into file: '..file
					end
					
					ggg.prompt({'Just press ok:'}, {g.loaded}, {'file'})
					
					echo('Hook started.'..msg..'\n')
					ggg.alert('Hook started. Run script, input passwords and so on.'..msg)
					msg = nil
					
					if true then
						local orig = string.dump
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('string.dump:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						string.dump = hook
					end
					if true then
						local orig = tostring
						
						local rm = table.remove
						local store = {}
						local build_table = 1
						build_table = function (src, dst)
							local cnt = #store
							store[src] = dst
							for k, v in pairs(src) do
								if tr[v] ~= nil then
									dst[k] = tr[v]
								else
									if typ(v) == 'table' then
										if store[v] ~= nil then
											dst[k] = store[v]
										else
											local bt = {}
											store[v] = bt
											dst[k] = bt
											build_table(v, bt)
										end
									else
										dst[k] = v
									end
								end
							end
							if cnt == 0 then
								while #store > 0 do
									rm(store)
								end
							end
							return dst
						end
						
						local hook = 1
						hook = function (...)
							local old = tostring
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
								arg[1] = tr[arg[1]]
							else
								if typ(arg[1]) == 'table' then
									arg[1] = build_table(arg[1], {})
								end
							end
							local ret = orig(arg[1], sel(2, ...))
							--tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
							tostring = old
							return ret
						end
						tr[hook] = orig
						tostring = hook
					end
					if false then
						local orig = debug.getupvalue
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('debug.getupvalue:', tr[arg[1]], arg[1], arg[2])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getupvalue = hook
					end
					if true then
						local orig = debug.getinfo
						local hook = 1
						hook = function (...)
							local arg = {...}
							local arg1 = arg[1]
							if arg1 ~= nil and tr[arg1] ~= nil then
								arg1 = tr[arg1]
							end
							return orig(arg1, sel(2, ...))
						end
						tr[hook] = orig
						debug.getinfo = hook
					end
					if false then
						local orig = os.remove
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('os.remove:', arg)
							return true
						end
						tr[hook] = orig
						os.remove = hook
					end
					if false then
						local orig = assert
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('assert:', arg)
							return orig(...)
						end
						tr[hook] = orig
						assert = hook
					end
					if false then
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('io.open:', arg)
							return orig(...)
						end
						tr[hook] = orig
						io.open = hook
					end
				end
				local test = g.test
				g = nil
				
				return test()
			elseif g.sel == 7 then
				if true then
					local rnd = g.last..'_'..os.time()..'_'..math.random()
					local pa = math.random(10, 99)
					local ss = math.random(10, 99)
					local file = rnd..'.pass.log'
					local f = io.open(file, 'w')
					gg.alert('Displays possible passwords. Works only for simple protections and if the password is in the code. On the offer to enter the password, you must enter the number "'..pa..ss..'", without spaces or extra characters.')
					local cache = {}
					cache[pa..ss] = 1
					local debug_getlocal = debug.getlocal
					local type_ = type
					local print_ = print
					local pairs_ = pairs
					local hook = function ()
						local stack = {}
						for j = 1, 500 do
							local _, val = debug_getlocal(1, j)
							if val ~= nil then
								local t = type_(val)
								if t == 'string' then
									stack[val] = 1
								else
									if t == 'table' then
										for i, v in pairs_(val) do
											stack[v] = 1
										end
									end
								end
							end
						end
						if stack[pa..ss] ~= nil then
							for v, _ in pairs_(stack) do
								if cache[v] == nil then
									print_(v)
									cache[v] = 1
									if f ~= nil then f:write(v.."\n") end
								end
							end
						end
					end
					debug.sethook(hook, '', 1)
				end
				
				local test = g.test
				g = nil
				
				return test()
			end
		end
	end
end
end



function d7()
if gg.BUILD < 11630 then
	gg.alert('You are using an old version of GameGuardian. Some functions may not work, or work not as expected.')
end

local g = {}
g.last = gg.getFile()
ZN = nil

g.config = gg.EXT_FILES_DIR:gsub('%lua$', '')..'/执念拦截器.cfg'
g.data = loadfile(g.config)
if g.data ~= nil then
	ZN = g.data()
	g.data = nil
end

if ZN == nil then
	ZN = {g.last, g.last:gsub('/[^/]+$', ''), nil}
end
if ZN[3] == nil then ZN[3] = gg.VERSION end
if ZN[4] == nil then ZN[4] = 400 end

while true do
	ZN = gg.prompt({'选择加载脚本:', '选择输出文件夹:','ZN:GG版本号:', 'ZN:load大小','ZN:无视退出','ZN:无视删除文件','ZN:优化拦截，如果被检测到可关闭','ZN:无视验证','ZN:无视assert','ZN:无视alert弹窗','无视toast弹窗\n防止无限循环toast导致的卡死','移除QQ存在，不要和无视删除文件一起开'}, ZN, {'file', 'path', 'text', 'number','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','number'})
		print(".\n\n\n\n\n\n\n\n\n\n\n              ✅执念1.5拦截器❎\n\n\n\n\n\n              ✅执念QQ2984613883❎\n\n\n\n\n\n\n\n\n\n\n.")
		if ZN == nil then break end
	gg.saveVariable(ZN, g.config)
	gg.VERSION = ZN[3]
	gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
		m = m:sub(2)
		if #m == 1 then m = '0'..m end
		return m
	end)))
	print(''..gg.VERSION..' ['..gg.VERSION_INT..']')
	g.last = ZN[1]
	g.test = loadfile(g.last)
	g.loaded = g.last
	if g.test == nil then
		gg.alert('加载脚本失败: '..g.last)
	else
		g.name = g.last:match('[^/]+$')
		g.pathes = {ZN[2]:gsub('/?$', '')..'/'..g.name, g.last, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}
		g.file = nil
		g.out = ''
		g.try = ''
		for i, v in ipairs(g.pathes) do
			g.out = v..".tmp.lua"
			g.file = io.open(g.out, "w")
 			if g.file ~= nil then
 				g.last = v:gsub('%.lua$', '')
 				break
			end
			g.try = g.try..' '..v
		end
		if g.file == nil then
			gg.alert('写入文件失败:'..g.try)
		else
			g.file:close()
			os.remove(g.out)
			

			g.sel = gg.choice({
				'log和load同时加载', -- 1
				'log拦截', -- 2
				'load拦截', -- 3
				'导出嫌疑密码', -- 4
				'返回上一步',
			})
			if g.sel == nil then break end
			
			if g.sel == 1 or g.sel == 2 or g.sel == 3 then
				if true then
					local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
					
					
					local sel = select
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}
					local slen = string.len
					
					local msg = ''
					local rnd = g.last..''

										if g.sel == 1 or g.sel == 3 then
							local load_cnt = 0
						local fname = rnd..'_LOAD(自行解压查看源码).tar'
						
						local min_size = tonumber(ZN[4])
						
						local sfmt = string.format
						local sbyte = string.byte
						local ssub = string.sub
						
						local tar_end = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
											
						local f = nil
						local tar_put = function (content)
							if f == nil then
								f = io_open(fname, 'wb')
								f:setvbuf('full', 8192)
							end
							if load_cnt ~= 0 then
								f:seek('end', -1024)
							end
							local size = slen(content)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end

							f:write("load_")
								:write(ch(sfmt('%07d', load_cnt)))
								:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
								:write(ch(sfmt('%011o', size)))
								:write("\x0000000000000\x00")
								:write(sfmt('%06o', checksum))
								:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")

												:write(content)
							
							local pad = size % 512
							if pad > 0 then
								f:write(ssub(tar_end, 1, 512 - pad))
							end

							f:write(tar_end)
							f:flush()
							
							--echo('Hooked load '..load_cnt..' with size of '..size..' bytes')
							load_cnt = load_cnt + 1
						end
					
						for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]
							local hook = 1
							local type = v
							hook = function (...)
								local arg = {...}
								local content = arg[1]
								if content ~= nil and type == 0 then
									content = nil
									local f = io_open(arg[1], "rb")
									if f ~= nil then
										content = f:read("*a")
										f:close()
									end
								end
								if content ~= nil then
									local ret = nil
									local total = 0
									local file = fname..load_cnt..'.lua'
									if type == 1 and typ(content) == 'function' then
										local cache = ''
										local func = function (...)
											local ret = content(...)
											if ret ~= nil then
												if ret ~= '' then
													cache = cache + ret
													total = total + slen(ret)
												end
											else
												if total ~= 0 and slen(content) >= min_size then
													tar_put(cache)
												end
											end
											return ret
										end
										ret = orig(func, sel(2, ...))
									else
										if content ~= '' and slen(content) >= min_size then
											tar_put(content)
										end
										ret = orig(...)
									end
									return ret
								end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
						end
						
						msg = msg..'\n\n所有load加载都被保存到文件: '..fname
					end
					
					if g.sel == 1 or g.sel == 2 then
						local file = rnd..'.log.txt'
						local f = io_open(file, 'wb')
						f:write("-- 执念拦截器 转储LOG加载\n\n")
						f:close()
						local names = {
							allocatePage = {'^PROT_', '0x%X'},
							copyMemory = {'0x%X', '0x%X'},
							dumpMemory = {'0x%X', '0x%X'},
							gotoAddress = {'0x%X'},
							setRanges = {'^REGION_'},
							searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
							searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
							searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
							editAll = {nil, '^TYPE_'},
							loadList = {nil, '^LOAD_'},
							saveList = {nil, '^SAVE_'},
						}
						names.refineAddress = names.searchAddress
						names.refineNumber = names.searchNumber
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
						}
						local smatch = string.match
						local ssub = string.sub
						local sformat = string.format
						local toFlags = function (check, value)
							local ret = ''
							for k, v in pairs(ggg) do
								if smatch(k, check) ~= nil and (value & v) == v then
									if ret ~= '' then ret = ret..' | ' end
									ret = ret..'gg.'..k
									value = value & ~v
								end
							end
							if ret == '' or value ~= 0 then
								if ret ~= '' then ret = ret..' | ' end
								ret = ret..value
							end
							return ret
						end
						for i, v in pairs(ggg) do
							if typ(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then
								local orig = v
								local name = i
								local hook = 1
								hook = function (...)
									local arg = {...}
									local f = io_open(file, 'ab')
									f:write('gg.'..name..'(')
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ') end
										if typ(a) == 'string' then f:write('"') end
										local b = a
										if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
											local check = names[name][j]
											if ssub(check, 1, 1) ~= '^' then
												if a == 0 or a == -1 then
													b = a
												else
													b = sformat(check, a)
												end
											else
												b = toFlags(check, a)
											end
										end
										b = str(b)
										f:write(b)
										if typ(a) == 'string' then f:write('"') end
									end
									f:write(")")
									if rets[name] ~= nil then
										local ret = orig(...)
										f:write(" --[[ ")
										f:write(str(ret))
										f:write(" ]]\n")
										f:close()
										return ret
									end
									f:write("\n")
									f:close()
									return orig(...)
								end
								tr[hook] = orig
								gg[i] = hook
							end
						end
						
						msg = msg..'\n\n所有GG呼叫都被保存到文件: '..file
					end
					
					ggg.prompt({'不用更改，直接点确定即可(防检测用):'}, {ZN[1]}, {'file'})
					
					echo('Hook开始.'..msg..'\n')
					ggg.alert('Hook开始了请输入密码确保脚本正常进入.'..msg)
					msg = nil
					
		if true then  
						os.remove("/storage/emulated/0/tencent/MobileQQ/artfilter/"..ZN[12].."artfilter.config")
					end
					
				if ZN[5]==true then--os.exit()跳过
				local orig = os.exit
  local hook = 1
  hook = function (...)
    local arg = {...}
    gg.toast("已跳过os.exit")
    return true
  end
  tr[hook] = orig
  os.exit = hook
  end

if ZN[6]== true then --os.remove跳过
local orig = os.remove
local hook = 1 
hook = function (...) 
local arg = {...}
gg.alert("已阻止文件:"..arg[1].."的删除")
return true
end 
tr[hook] = orig 
os.remove = hook
end

if ZN[7]==true then
				local orig = string.dump 
				local hook = 1 
				hook = function (...) local arg = {...}
					if tr[arg[1]] ~= nil then
						arg[1] = tr[arg[1]]
					end 
					return orig(arg[1], select(2, ...))
				end  
				tr[hook] = orig 
				string.dump = hook
			end
			if ZN[7]== true then --tostring
				local orig = tostring 
				local hook = 1 
				hook = function (...) 
					local old = tostring 
					local arg = {...}
					if tr[arg[1]] ~= nil then
						arg[1] = tr[arg[1]]
					end 
					local ret = orig(arg[1], select(2, ...)) 
					tostring = old 
					return ret
				end 
				tr[hook] = orig 
				tostring = hook
			end
			if ZN[7]== true then --debug.getupvalue 
				local orig = debug.getupvalue 
				local hook = 1 
				hook = function (...) 
					local arg = {...}
					if tr[arg[1]] ~= nil then
						arg[1] = tostring[arg[1]]
					end 
					return orig(arg[1], select(2, ...))
				end 
				tr[hook] = orig 
				debug.getupvalue = hook
			end
			if ZN[7]== true then --debug.getinfo
				local orig = debug.getinfo 
				local hook = 1 
				hook = function (...) 
					local arg = {...}
			
				local sum=1
				local a=orig(sum)
					while a do
					sum=sum+1
					a=orig(sum)
					end
					
					if arg[1] ~= nil and arg[1] > 0  then
						arg[1] = arg[1] + 1
					end 
					
						local ret=1
					if arg[1]<=sum-4 then
					ret=orig(arg[1], select(2, ...))
					else
			  ret=nil
			  end
			  
					return ret
				end 
				tr[hook] = orig 
				debug.getinfo = hook
			end					


if ZN[8] == true then
  function x(s)
    if s==nil then t="读取" else
      if s:match("r") then t="读取"
       elseif s:match("w") or s:match("a") then t="写入" end end
    return t end
  local orig=io.open
  local hook=1
  local hook=function(...)
    local arg={...}
    local result=orig(...)
    local x=ggg.alert("尝试以"..x(arg[2]).."的方式打开文件:"..arg[1].."\n请选择执行操作","忽略","返回nil","返回随机文件")
    if x==2 then result=nil end
    if x==3 then local file=io.temfile() file:write("ZN") file:seek("set") result=file end
    return result
  end
  tr[hook] = orig
  io.open=hook
end


if false then
  local orig = os.remove
  local hook = 1
  hook = function (...)
    local arg = {...}
    return true
  end
  tr[hook] = orig
  os.remove = hook
end


if ZN[9] == true then
			local orig = assert
				local hook = 1 
				hook = function (...) 
					local arg = {...}
					gg.alert("已阻止一个文件的存在检测")
					return true
				end 
				tr[hook] = orig 
				os.remove = hook
			end
			
								if ZN[10] == true then --------无视gg.alert
						local orig = gg.alert
						local hook = 1
						hook = function (...)
							local arg = {...}								
					echo('gg.alert:',arg)
							return true
						end
						tr[hook] = orig
					gg.alert  = hook
			gg.clearResults("已无视一次alert弹窗")
					end

if ZN[11] == true then --------无视gg.toast
						local orig = gg.toast
						local hook = 1
						hook = function (...)
							local arg = {...}								
					echo('gg.alert:',arg)
							return true
						end
						tr[hook] = orig
					gg.toast  = hook
			gg.clearResults("已无视一次toast弹窗")
					end

					
					if true then
						local orig = string.dump
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('string.dump:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						string.dump = hook
					end
					if true then
						local orig = tostring
						
						local rm = table.remove
						local store = {}
						local build_table = 1
						build_table = function (src, dst)
							local cnt = #store
							store[src] = dst
							for k, v in pairs(src) do
								if tr[v] ~= nil then
									dst[k] = tr[v]
								else
									if typ(v) == 'table' then
										if store[v] ~= nil then
											dst[k] = store[v]
										else
											local bt = {}
											store[v] = bt
											dst[k] = bt
											build_table(v, bt)
										end
									else
										dst[k] = v
									end
								end
							end
							if cnt == 0 then
								while #store > 0 do
									rm(store)
								end
							end
							return dst
						end
						
						local hook = 1
						hook = function (...)
							local old = tostring
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
								arg[1] = tr[arg[1]]
							else
								if typ(arg[1]) == 'table' then
									arg[1] = build_table(arg[1], {})
								end
							end
							local ret = orig(arg[1], sel(2, ...))
							--tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
							tostring = old
							return ret
						end
						tr[hook] = orig
						tostring = hook
					end
					if false then
						local orig = debug.getupvalue
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('debug.getupvalue:', tr[arg[1]], arg[1], arg[2])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getupvalue = hook
					end
					if false then
						local orig = debug.getinfo
						local hook = 1
						hook = function (...)
							local arg = {...}
							if arg[1] ~= nil and arg[1] > 1 then
								arg[1] = arg[1] + 1
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getinfo = hook
					end
					if false then
						local orig = os.remove
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('os.remove:', arg)
							return true
						end
						tr[hook] = orig
						os.remove = hook
					end
					if false then
						local orig = assert
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('assert:', arg)
							return orig(...)
						end
						tr[hook] = orig
						assert = hook
					end
					if false then
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('io.open:', arg)
							return orig(...)
						end
						tr[hook] = orig
						io.open = hook
					end
				end
				local test = g.test
				g = nil
				
				return test()
			elseif g.sel == 4 then
				if true then
					local rnd = g.last..'_'..os.time()..'_'..math.random()
					local pa = math.random(10, 99)
					local ss = math.random(10, 99)
					local file = rnd..'.pass.log'
					local f = io.open(file, 'w')
					gg.alert('请输入密码："'..pa..ss..'", ')
					local cache = {}
					cache[pa..ss] = 1
					local debug_getlocal = debug.getlocal
					local type_ = type
					local print_ = print
					local pairs_ = pairs
					local hook = function ()
						local stack = {}
						for j = 1, 500 do
							local _, val = debug_getlocal(1, j)
							if val ~= nil then
								local t = type_(val)
								if t == 'string' then
									stack[val] = 1
								else
									if t == 'table' then
										for i, v in pairs_(val) do
											stack[v] = 1
										end
									end
								end
							end
						end
						if stack[pa..ss] ~= nil then
							for v, _ in pairs_(stack) do
								if cache[v] == nil then
									print_(v)
									cache[v] = 1
									if f ~= nil then f:write(v.."\n") end
								end
							end
						end
					end
					debug.sethook(hook, '', 1)
				end
				
								local test = g.test
				g = nil
				
				return test()
			end
								

		end
	end
end
end



function d8()
environment=nil
local path="/data/user/0/"..gg.EXT_FILES_DIR:match("data/(.-)/").."/shared_prefs/"..gg.EXT_FILES_DIR:match("data/(.-)/").."_preferences.xml"
local ppath=gg.FILES_DIR:gsub("files","shared_prefs/"..gg.PACKAGE.."_preferences.xml")
local wz=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name="history-2">hook地址</string>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="862" />
    <string name="history-1">hook地址</string>
    <string name="com.ludashi.superboost-script">运行文件</string>
    <string name="hidden-dir">zIcC</string>
    <string name="script-debug">hook地址</string>
    <int name="h-0" value="4" />
    <int name="h-2" value="4" />
    <int name="h-1" value="4" />
    <string name="history-0">运行文件</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="3" />
    <string name="script-path">文件夹</string>
    <int name="pos-y" value="1024" />
</map>]]

local wzdata="/storage/emulated/0/tencent/MobileQQ/diskcache/Cache_-43a566bd5f9fpb11_hd"
if gg.BUILD < 11630 then
	gg.alert('您使用的是旧版本的gameguardian。某些功能可能不工作，或者工作不符合预期。')
end


local g = {}
g.last = gg.getFile()
local wdata=gg.getFile()
g.info = nil
g.config = gg.getFile():gsub('%lua$', '')..''
g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end

if g.info == nil then
	g.info = {g.last, 
	g.last:gsub('/[^/]+$', ''),
	gg.VERSION,
	gg.BUILD,
	"/storage/emulated/0/Notes",
	"123456",
	"3263898284",
	"无","sstool.only.com.sstool;com.bpn.ntlaprxymyoq；com.gxlkj.tl；com.jvgliejujpafhscoli；com.koa",
	"400",true,true,true}
end

while true do

	g.info = gg.prompt({
	    '选择文件:', 
	    '输出的文件夹:',
		'使用VERSION版本:'..gg.VERSION, 
		'使用BUILD版本:'..gg.BUILD,
		'伪装GG HOOK储存路径',
		'伪装QQ存在',
		'移除QQ存在',
		'伪装App包名存在',
		'移除App包名存在',
		'最小的输出环境 "load"',
		'[优化]Revo5.2加密',
		'[LOAD]终源',
		'[HOOK]拦截'
		}, 
		g.info, 
		{
		'file', 'path', 'text','text','text','text','text','text','text','number','checkbox','checkbox','checkbox','checkbox'})
	if g.info == nil then break end
	gg.saveVariable(g.info, g.config)
local		fullName = g.info[1]
 	g.sucdz=g.info[2]
	gg.VERSION = g.info[3]
	gg.BUILD=g.info[4]
 	g.gghook=g.info[5]
 	g.sh=g.info[14]
--g.qq="/storage/emulated/0/tencent/MobileQQ/artfilter/"..g.info[6].."artfilter.config"
local yesqq=g.info[6]
local noqq=g.info[7]
local yesapp=g.info[8]
local	noapp=g.info[9]
 	g.acdax=g.info[10]
	CY=g.info[11]
	g.load=g.info[12]
 	g.hook=g.info[13]
 	g.sh=g.info[14]
----local	fffile=io.open(fullName,"r")
----local	contentt=fffile:read("*a")
----	if 		 contentt:match("Revo")  then
----		g.load=false
----		end
	gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
	
	-----
		m = m:sub(2)
		if #m == 1 then m = '0'..m end
		return m
	end)))
	print('使用GameGuardian版本：'..gg.VERSION..' ['..gg.VERSION_INT..']')
	g.test = loadfile(fullName)
	g.loaded = fullName
	if g.test == nil then
		gg.alert('Failed load script: '..fullName)
	else
	gg.name = fullName:match('[^/]+$')		
local data=wz:gsub("运行文件",fullName)
local wc=fullName:gsub("/"..gg.name," ")
local data=data:gsub("文件夹",wc)
local data=data:gsub("HOOK地址",g.gghook)
local	file = io.open(wzdata, "w")
file:write(data)
file:close()
g.name = fullName:match('[^/]+$')
		g.pathes = {g.sucdz:gsub('/?$', '')..'/'..g.name, fullName, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}

		g.file = nil
		g.out = ''
		g.try = ''
		for i, v in ipairs(g.pathes) do
			g.out = v..".tmp.lua"
			g.file = io.open(g.out, "w")
 			if g.file ~= nil then
 				fullName = v:gsub('%.lua$', '')
 				break
			end
			g.try = g.try..' '..v
		end
		if g.file == nil then
			gg.alert('写入选中的文件失败:'..g.try)
		else
			g.file:close()
			os.remove(g.out)
			local cs1="0"
		local cs2="1"
		local cs3="1"
		local cs4="0"
		local cs5="1"
		local cs6=1
		local csp=1
		local menui = 1
		local lleve=""
		local wengin=fullName 
		local hookdz=g.gghook
		if true then
					local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
					
						local shook=false
					local wzhookdata=g.gghook.."/"..fullName:match('[^/]+$')..".HOOK.lua"
					local sel = select
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}
					local slen = string.len
					local string_gsub=string.gsub
					local msg = ''
					local rnd = fullName..'_'..os.time()..'_'..math.random()
					local gg_getFile=gg.getFile
					local load_cnt = 0
						local fname = g.sucdz..'/'..'[Heyuan]'..g.name
						local fnamee = g.sucdz..'/'..'【初月LOAD】'..g.name
						local wjm=g.name
						local fnameee = g.sucdz..'/'..'【初月LOAD'
						local min_size = tonumber(g.acdax)
						local getResultsCount=false
						local searchNumber=false
						local printt=false
						local fe=false
						local tx=true
						local opo=""
						local sfmt = string.format
						local sbyte = string.byte
						local ssub = string.sub
					local lload = load
						local string_char=string.char
						local os_remove = os.remove
						
						local							filpe = io_open(wzhookdata, "w+")
					if g.load then
						local tar_end = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
											
						local f = nil
						local tar_put = function (content)
							if f == nil then
								f = io_open(fnamee, 'w')
								f:setvbuf('full', 8192)
							end
							if load_cnt ~= 0 then
								f:seek('end', -1024)
							end
							local size = slen(content)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end

				---[[			:write(ch(sfmt('%07d', load_cnt)))
						--[[		:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
								:write(ch(sfmt('%011o', size)))
								:write("\x0000000000000\x00")
								:write(sfmt('%06o', checksum))
								:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")]]
					
	
						if content~=contentt then
						if content:match("#2000") or content:match("#131") then
						else
							cs1=cs1+1					
							if tx then
				ggaiert=	ggg.alert("已捕获"..cs1.."次load.\n将保存为 :\n【load_"..cs1.."】"..wjm.."\n\n〖"..content:sub(1,8000).."\n〗","确定","","不再提示")				
				if ggaiert==3 then tx=false end
				else
				ggg.toast("已捕获"..cs1.."次load.\n将保存为:_"..cs1.."】"..wjm.."")
				end
					contentt=content					
					f = io_open(fnameee.."_"..cs1.."】"..wjm, 'w')					
					
					end
								f:write(content)								
							end
							
							local pad = size % 512
							if pad > 0 then
								f:write(ssub(tar_end, 1, 512 - pad))
							end

							f:write(tar_end)
							f:flush()
							
							--echo('Hooked load '..load_cnt..' with size of '..size..' bytes')
							load_cnt = load_cnt + 1
						end
					
						for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]
							local hook = 1
							local type = v
							hook = function (...)
								local arg = {...}
								local content = arg[1]
								if content ~= nil and type == 0 then
									content = nil
									local f = io_open(arg[1], "rb")
									if f ~= nil then
										content = f:read("*a")
										f:close()
									end
								end
								if content ~= nil then
									local ret = nil
									local total = 0
									local file = fname..load_cnt..'.lua'
									if type == 1 and typ(content) == 'function' then
										local cache = ''
										local func = function (...)
											local ret = content(...)
											if ret ~= nil then
												if ret ~= '' then
													cache = cache + ret
													total = total + slen(ret)
												end
											else
												if total ~= 0 and slen(content) >= min_size then
													tar_put(cache)
												end
											end
											return ret
										end
										ret = orig(func, sel(2, ...))
									else
										if content ~= '' and slen(content) >= min_size then
											tar_put(content)
										end
										ret = orig(...)
									end
									return ret
								end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
						end
						
						msg = msg..'\n\n来自调用“LOAD”的所有数据将被转储到解密存档中：\n'..fnamee
					end
					
					if g.hook then
						local file = g.sucdz..'/'..'【初月HOOK】'..g.name
						local f = io_open(file, 'wb')
						f:write("----【初月】v1.2拦截器 拦截代码如下:\n")
						f:close()
						local names = {
							allocatePage = {'^PROT_', '0x%X'},
							copyMemory = {'0x%X', '0x%X'},
							dumpMemory = {'0x%X', '0x%X'},
							gotoAddress = {'0x%X'},
							setRanges = {'^REGION_'},
							searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
							searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
							searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
							editAll = {nil, '^TYPE_'},
							loadList = {nil, '^LOAD_'},
							saveList = {nil, '^SAVE_'},
						}
						names.refineAddress = names.searchAddress
						names.refineNumber = names.searchNumber
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
							print = 1,
						}
						local smatch = string.match
						local ssub = string.sub
						local sformat = string.format
						local toFlags = function (check, value)
							local ret = ''
							for k, v in pairs(ggg) do
								if smatch(k, check) ~= nil and (value & v) == v then
									if ret ~= '' then ret = ret..' | ' end
									ret = ret..'gg.'..k
									value = value & ~v
								end
							end
							if ret == '' or value ~= 0 then
								if ret ~= '' then ret = ret..' | ' end
								ret = ret..value
							end
							return ret
						end
												for i, v in pairs(ggg) do
							if typ(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then
								local orig = v
								local name = i
								local hook = 1
								hook = function (...)
									local arg = {...}
									local f = io_open(file, 'a')
									-----
									if true then
												if name=='alert' then 
													local arg = {...}
--													echo(arg)
---filpe:write('\ngg.alert("',arg[1],'")\n--[[ return: 1 ]]')
												 end
												if name=='getFile' then 
													local arg = {...}
---filpe:write("\ngg.getFile()")
												 end
												if name=='editAll' then 
													local arg = {...}
--													echo(arg)
---filpe:write('\ngg.editAll("',arg[1],'", gg.TYPE_FLOAT)')
												 end												 
												 end
												 ------
												if name=='searchNumber' then 
									local arg = {...}
										if arg[1] ~= searchNumber  then
					searchNumber=arg[1] 					
					else
							return true
						end
									  end
									  			if name=='clearResults' then 									
							return true
						end
									  
									  -----------
														    if i == "multiChoice" or i== "choice" then
									local arg = {...}
									local gss = {}						
					if			 menui==1 then
					f:write("----------hook  单选  hook----------\n\n")
								for c=1,#arg[1] do 							
										f:write("----------hook[",c.."]"..arg[1][c].."----------\n")
										end										
										menui=2
										end
end
									if i == 'choice'  then
									if rets[name] ~= nil then
									local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
									if ret ~=nil then
										f:write("\n\n----------hook 单选 [",ret.."]"..arg[1][ret].."----------\n")
				--						f:close()
										return ret
									end
									end
									end
			if i == 'multiChoice'  then
									if rets[name] ~= nil then
									local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
									local gs = {}								
									for w in string.gmatch(str(ret), "%[") do
									gs[#gs + 1] = w
									end
						  	echo("一共选中" .. #gs .. "个选项") 
									local date = str(ret)
									local sz = {}
									for i=1 ,#gs do
									--查询字符位置
									kaishi = string.find(date, "%[")+1
									jiewei = string.find(date, "%]")-1
									--字节截取
									nameshu=string.sub(date , kaishi , jiewei)
									--	echo(str(arg[1][tonumber(nameshu)]))
									--替换一次字符串
									 date= string.gsub(date, "%[+", "", 1)
									 date= string.gsub(date, "%]+", "", 1)
									sz[i]=tonumber(nameshu)
									end
									table.sort(sz)           --默认从小到大排序
									opo=sz
									pop=arg[1]
									csp=#gs									
										f:write("\n\n----------hook 多选 hook----------\n")
									for j, a in ipairs(sz) do				
										f:write("\n----------hook[",a.."]"..arg[1][a].."----------\n")
										fe=true
					--					f:close()
									end
										return ret
									end
									end									
									f:write('gg.'..name..'(')
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ') end
										if typ(a) == 'string' then f:write('"') end
										local b = a
										if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
											local check = names[name][j]
											if ssub(check, 1, 1) ~= '^' then
												if a == 0 or a == -1 then
													b = a
												else
													b = sformat(check, a)
												end
											else
												b = toFlags(check, a)
											end
										end
										b = str(b)
										f:write(b)
										if typ(a) == 'string' then f:write('"') end
									end
									f:write(")")
									if fe then
										if name=="toast"  then	
										if cs4+1 > csp then cs4=csp end
										local ret = orig(...)
									local arg = {...}        --默认从小到大排序																			
												cs4=cs4+1
												a=opo[cs4]
												if a ~= nil then
										f:write("\n----------hook 多选 [",a.."]"..pop[a].."----------\n\n")					
										end
									end
									end
									if rets[name] ~= nil then
										local ret = orig(...)
										f:write(" --[[ ")
										f:write(str(ret))
										f:write(" ]]\n")
										f:close()
										return ret
									end
									f:write("\n")
									f:close()
								if name=='searchNumber' or i=='searchNumber'then 
									ggg.toast('已自动跳过搜索过程')
									 return true
									  end
									return orig(...)
								end
								tr[hook] = orig
								gg[i] = hook
							end
						end			
			msg = msg..'\n\n所有GG调用都将记录到文件中：\n所有GG调用都将记录到文件中：\n'..file.."\n\n初月提示:clearResults删除无用日志\n已开启☑\n初月提示:searchNumber删除搜索过程\n已开启☑"
					end
								
										---------------------------------------------------------------------------------------------------------------------------------------
										
										
							
		if CY then  ---------------------- APP包名				
						msg=msg.."\nCY : isPackageInstalled APP包名检测 \n已开启☑"
						local orig = gg.isPackageInstalled
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('包名:', arg[1])
							local leve=orig(...)
							if noapp:match(arg[1])		then							
							leve=  false 
							else	if yesapp:match(arg[1])		then							
							leve=  true
	       end
	       end
							return leve
							end
						tr[hook] = orig
						gg.isPackageInstalled= hook
					end

							if CY then ----------------------hook
						msg=msg.."\nCY : getResultsCount 移除刷LOG \n已开启☑"
						local orig = gg.getResultsCount
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
					gg.getResultsCount	 = hook
					end
					
						if CY then ----------------------hook
						msg=msg.."\nCY : addListItems 移除刷LOG \n已开启☑"
						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
						end
						tr[hook] = orig
				gg.addListItems		 = hook
					end
				
							if true then---------外国加密
						local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}
local			roel=orig(...)
			if  roel:match("in function 'load'") then
 roel=roel:gsub(wdata..":(%d-) in function 'load'", "")
end
if roel:match("in function 'open'")then
 roel=roel:gsub(wdata..":(%d-) in function 'open'", "")
end
--echo('debug.traceback:', roel:gsub(":(.-)"..wdata..":(%d-) in function 'traceback'", ":"):gsub("+",""))
if roel:match(":(%d-) in function 'traceback'")then
 roel=roel:gsub(wdata..":(%d-) in function 'traceback'", "")
end
if roel:match(":(%d-) in function '?'")then
 roel=roel:gsub(wdata..":(%d-) in function '?'", "")
end
roel=roel:gsub([[stack traceback:
	]], "stack traceback:")
echo('traceback:\n', roel)
							return roel
						end
						tr[hook] = orig
						debug.traceback = hook
					end
					
						if true then
						msg=msg.."\nCY : os.exit 退出弹窗 \n已开启☑"
						local orig = os.exit
						local hook = 1
						hook = function (...)
							ggfh=ggg.alert('文件准备结束.',"No","","Yes")
							local arg = {...}					
						if ggfh==3 then
 							sel= orig(...)
							else
							sel=gg.setVisible(true)
								end
								return sel
						end
						tr[hook] = orig
					os.exit	 = hook
					end

	  			if false then ----------------------gg.getFile
						local orig = string.char
						local hook = 1
						hook = function (...)
							local arg = {...}
					local 		lleve=lleve..(string_char(arg[1]))			
							return orig(...)
						end
						tr[hook] = orig
					string.char  = hook
					end
					
					if false then ----------------------gg.getFile
						local orig = gg.alert
						local hook = 1
						hook = function (...)
							local arg = {...}								
					echo('gg.alert:',arg)
							return true
						end
						tr[hook] = orig
					gg.alert  = hook
					end
					
					------------------------------------拦截区------------------
					if false then
						local orig = assert
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('assert:', arg)
							return orig(...)
						end
						tr[hook] = orig
						assert = hook
					end
			if true then
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}			
--[[				if arg[2] ==nil then
filpe:write('\nio.open("'..arg[1]..'")')
else
filpe:write('\nio.open("'..arg[1],'",'..'"',arg[2]..'")')
end]]
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
	echo('io.open:', arg)
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if noqq:match(ddd)then
							leve=false
							else		if yesqq:match(ddd)then
						leve=orig(gg_getFile():gsub('%lua$', '')..'Skr',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.open = hook
					end
					
					
					if true then
						local orig = io.input
						local hook = 1
						hook = function (...)
							local arg = {...}
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
	echo('io.open:', arg)
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if noqq:match(ddd)then
							leve=false
							else		if yesqq:match(ddd)then
						leve=orig(gg_getFile():gsub('%lua$', '')..'CY',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.input = hook
					end
					
			
							if true then
						local orig = string.format
						local hook = 1
						hook = function (...)
							local arg = {...}
		local					leve=orig(...)
--					echo('string.format:', arg)
							if arg[2]==gg_getFile() then
						leve=orig(arg[1],"prompt",arg[3])
							end
							return leve
						end
						tr[hook] = orig
					string.format	 = hook
					end
					
			
					
										if false then
					local orig = debug.getinfo 
				local hook = 1 
				hook = function (...) 
					local arg = {...}
			--		print("getinfo:"..OG.tostring(arg))
				--	echo('debug.getinfo:', orig(...))
					local			roel=str(orig(...))
		if  roel:match(gg_getFile()) then  roel=roel:gsub(gg_getFile(), fullName) end
--	roel=roel:gsub("['source'] = '","['source'] = '@")
--echo('debug.getinfo :',roel)
				 return roel
				end 
				tr[hook] = orig 
				debug.getinfo = hook
			end
			
			



----------------------------------------------------------------------------------------------------------------------------------------------------------
if true then
						local orig = string.dump
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('string.dump:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						string.dump = hook
					end
					if true then
						local orig = tostring						
						local rm = table.remove
						local store = {}
						local build_table = 1
						build_table = function (src, dst)
							local cnt = #store
							store[src] = dst
							for k, v in pairs(src) do
								if tr[v] ~= nil then
									dst[k] = tr[v]
								else
									if typ(v) == 'table' then
										if store[v] ~= nil then
											dst[k] = store[v]
										else
											local bt = {}
											store[v] = bt
											dst[k] = bt
											build_table(v, bt)
										end
									else
										dst[k] = v
									end
								end
							end
							if cnt == 0 then
								while #store > 0 do
									rm(store)
								end
							end
							return dst
						end
						
						local hook = 1
						hook = function (...)
							local old = tostring
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
								arg[1] = tr[arg[1]]
							else
								if typ(arg[1]) == 'table' then
									arg[1] = build_table(arg[1], {})
								end
							end
							local ret = orig(arg[1], sel(2, ...))
							--tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
							tostring = old
							return ret
						end
						tr[hook] = orig
						tostring = hook
					end
					if true  then
						local orig = debug.getupvalue
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('debug.getupvalue:', tr[arg[1]], arg[1], arg[2])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getupvalue = hook
					end
					echo('--【初月】v1.2拦截器.'..msg..'\n---------------\n')
					msg=nil
					end
				local test = g.test
				g = nil
			return test()			
			end
		end
	end
end



function d9()
	LJ = gg.prompt({'选择要LOADHOOK的脚本','无视退出','load大小'}, {  '/storage/emulated/0/tencent/QQfile_recv/' ,false,1000}, {'file', 'checkbox' ,'number'})
	os.remove(LJ[1]..'.log')
     jz=loadfile(tostring(LJ[1]))
						local tr={}
                    local echo=print
					if true then
 						local orig = load
						local hook = 1
						hook = function (...)
							local arg = {...}
                    if arg[1]~=nil then
                    if #arg[1]>=tonumber(LJ[3]) and type(arg[1])~='number' then
					print(arg[1])
						
							end
                    end
							return orig(...)
						end
						tr[hook] = orig
						load = hook
					end
                        local orig = true
						local hook = 1
						hook = function (...)
							local arg = {...}
							return false end
					if LJ[2] then
						local orig = os.exit
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('os.exit:', arg)
							return true
						end
						tr[hook] = orig
						os.exit = hook
					end

					if true then
						local orig = os.remove
						local hook = 1
						hook = function (...)
							local arg = {...}
                    if arg~=nil then
							echo('os.remove:', arg)
                    end
						return true
						end
						tr[hook] = orig
						os.remove = hook
					end
					for i, v in pairs(gg) do
			if type(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then
				gg[i] = function (...)
					local f = io.open(LJ[1]..".log", 'a')
					 if string.find(i,'addListItems')==nil then
					f:write('gg.'..i..'(')
					for j, a in ipairs({...}) do
						if j ~= 1 then f:write(', ') end
						if type(a) == 'string' then f:write('"') end
						if string.len(tostring(a))<100 then f:write(tostring(a)) end
						if type(a) == 'string' then f:write('"') end
					end
					f:write(")\n")
					f:close()
					end
					return v(...)
				end
				end
			end
jz()
end



function d10()
local TV = {}
TV.last = gg.getFile()
TV.info = nil
TV.config = "/storage/emulated/0/Android/TV.cfg"
TV.data = loadfile(TV.config)
if TV.data ~= nil then
  TV.info = TV.data()
  TV.data = nil
end
if TV.info == nil then
  TV.info = {TV.last, TV.last:gsub('/[^/]+$', '')}
end
while true do
  TV.info = gg.prompt({
  "选择解密文件",
  "选择解密路径",
  "使用随机文件名",
  "LOAD",----4
  "LOG",----5
  "os.exit函数跳过",----6
  "反拦截核心破解",----7
  "缓存文件检测跳过",----8
  "易游网络验证跳过",----9
  "调试模式"----10
  }, TV.info, {"file","path","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
  if TV.info == nil then break end
  gg.saveVariable(TV.info, TV.config)
--------
local ignoreHook="getLine;isVisible;setVisible;getFile;"

local ignoreInvoke="getResultCount;sleep;searchNumber;searchAddress"
local TSignore="char"
  TV.last = TV.info[1]
  TV.test = loadfile(TV.last)
  if TV.test == nil then
    gg.alert('脚本加载错误: '..TV.last) break
  end
  local file=TV.info[1]

local outpath=TV.info[2].."/"

local filename=TV.info[1]:match("[^/]+$")
randomName=""

time=0
if TV.info[3]==true then
  for i = 1, 5 do
    randomName = randomName .. string.char(math.random(65,115))
  end
end
    local ggg = {}
    for k, v in pairs(gg) do
      ggg[k] = v
    end
    local sel = select
    local typ = type
    local str = tostring
    local echo = print
    local io_open = io.open
    local gmatch=string.gmatch
    local insert=table.insert
    local tr = {}
 ----------
if TV.info[4] then
  local orig = load
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    local data=str(arg[1])
    if result and string.len(data)>500
    then
      time=time+1
      f=io_open(outpath.."[LOAD_"..time.."]"..filename..randomName..".lua","w")
      f:write(data)
      f:close()
    end
    return result
  end
  tr[hook] = orig
  load = hook
end
------------------------------
if TV.info[5] then
  local file = outpath.."[LOG 拦截]"..filename..randomName..''
  local f = io_open(file, 'w')
  f:write("--Hook Start\n")
  f:close()
  local names = {
    allocatePage = {'^PROT_', '0x%X'},
    copyMemory = {'0x%X', '0x%X'},
    dumpMemory = {'0x%X', '0x%X'},
    gotoAddress = {'0x%X'},
    setRanges = {'^REGION_'},
    searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
    refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
    startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
    searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
    searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
    refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
    getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
    editAll = {nil, '^TYPE_'},
    loadList = {nil, '^LOAD_'},
    saveList = {nil, '^SAVE_'},
  }
  names.refineAddress = names.searchAddress
  names.refineNumber = names.searchNumber
  local rets = {
    alert = 1,
    prompt = 1,
    choice = 1,
    multiChoice = 1,
  }
  --------------------
  local toFlags = function (check, value)
    local ret = ''
    for k, v in pairs(ggg) do
      if k:match(check) ~= nil and (value & v) == v then
        if ret ~= '' then ret = ret..' | ' end
        ret = ret..'gg.'..k
        value = value & ~v
      end
    end
    if ret == '' or value ~= 0 then
      if ret ~= '' then ret = ret..' | ' end
      ret = ret..value
    end
    return ret
  end
  -------------------
  local f = io_open(file, 'a')
  local write=function(content)
    if nowfunc~=lastfunc then
      f:write(content):flush() end end
  for i, v in pairs(ggg) do

if type(v) ~= "function" then --constants
      if i == "PACKAGE" then _G.gg[i] = VPACKAGE
       elseif i == "VERSION" then _G.gg[i] = "73.4"
      -- elseif i == "VERSION_INT" then _G.gg[i] = getVERSION_INT()
      -- elseif i == "BUILD" then _G.gg[i] = VBUILD
      end
     else
    end--]]
    if typ(v) == 'function' and ignoreHook:match(i)==nil
      then
      local orig = v
      local name = i
      local hook = 1
      hook = function (...)
        local arg = {...}
        lastfunc=nowfunc
        nowfunc=name

        if i == 'choice' then---判断单选功能列表
          if rets[name] ~= nil then
            local ret = orig(...)
            local arg = {...}
            write(" -- ")
            write(arg[1][ret])
            write(" --\n")
            return ret
          end
        end

        if i == 'multiChoice' then--判断多选功能列表

          if rets[name] ~= nil then
            local ret = orig(...)
            local arg = {...}
            local num={}
            for w in gmatch(str(ret), "%[(%d+)%] =") do
              insert(num,arg[1][tonumber(w)])
            end
            for j, a in ipairs(num) do
              write(" -- ")
              write(a)
              write(" --\n")
            end
            return ret
          end
        end

        --]]
        write('gg.'..name..'(')
        for j, a in ipairs(arg) do
          if (typ(a) == 'string' or typ(a) == 'table') and #str(a)>3000 then
            a=""
          end
          if j ~= 1 then write(', ') end
          if typ(a) == 'string' then write('"') end
          local b = a
          if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
            local check = names[name][j]
            if check:sub(1, 1) ~= '^' then
              if a == 0 or a == -1 then
                b = a
               else
                b = check:format(a)
              end
             else
              b = toFlags(check, a)
            end
          end
          b = str(b)
          write(b)
          if typ(a) == 'string' then write('"') end
        end
        write(")")
        write("\n")
        --   f:close()
        local result = 1
        if ignoreInvoke:match(name) then
          ggg.toast("已自动跳过函数gg." .. name .. "()的执行")
         elseif name=="getResults" then result={{['address'] = 0xbd102a74,['flags'] = 4,['value'] = 10}}  
         else
          result=orig(...)
        end
        return result
      end
      tr[hook] = orig
      gg[i] = hook
    end
  end
end
---------------
if TV.info[8] then
  ggg.prompt({"点击确定"},{file},{"file"})
end
-----------os.exit-----

if TV.info[6] then
  local orig = os.exit
  local hook = 1
  hook = function (...)
    local arg = {...}
    ggg.toast("已跳过os.exit的执行")
    return true
  end
  tr[hook] = orig
  os.exit = hook
end

-------------------
  if TV.info[7] then
  local t="stack traceback:\n	"..TV.info[1]..":13 in main chunk\n	[Java]: in ?"
  local orig = debug.traceback
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return t
  end
  tr[hook] = orig
  debug.traceback = hook
end

if TV.info[7] then
  local cg={
    [1]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = TV.info[1],
      ['source'] = '@'..TV.info[1],
      ['what'] = 'Lua',
    },
    [2]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = "wrap",
      ['source'] = '@'..TV.info[1],
      ['what'] = 'Lua',
    }
  }
  local orig = debug.getinfo
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if str(arg[1])=="1"then return cg[1]
     elseif str(arg[1])=="3" then return nil
     elseif str(arg[1]):find("storage") then return cg[2]
     elseif str(arg[1])=="2" then x=ggg.alert("选择","第二次","第一次")
      if x==2 then result=nil end
     else
      return result
    end
  end
  tr[hook] = orig
  debug.getinfo = hook
end
if TV.info[7] then
local orig = debug.getregistry
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return {}
  end
  tr[hook] = orig
  debug.getregistry = hook
end
    ------------------

if TV.info[9] then
  local orig = gg.makeRequest
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if arg[1]:match("w.eydata.net") and arg[3]:match("Single") then result={["content"]="A80F635542949B631E34156D32FF2AC0"}
     elseif arg[1]:match("w.eydata.net") and arg[3]:match("UserName") then result={["content"]="成功破解"}
     elseif arg[1]=="http://skyblade.top/ht/yh/login.php" then result={["content"]=""}
     elseif arg[1]=="http://skyblade.top/ht/yh/jk.php" then result={["content"]="成功破解"}    end
    -- echo(str(arg).."\n--------\n"..str(result))
    return result
  end
  tr[hook] = orig
  gg.makeRequest = hook
end
-------------
if false then
  local orig = os.clock
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return "0"
  end
  tr[hook] = orig
  os.clock = hook
end

----------
ttt=0
if false then
  local orig = string.gmatch
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
c=gg.alert("选择","第一次","第二次")
if c==1 then return orig(string.rep("=",347),"=")
else return orig("==","=") end
--[[
    if ttt==0 then
      ttt=1
      return orig(string.rep("=",347),"=")
     else
      ttt=0
      return orig("==","=")
    end--]]
  end
  tr[hook] = orig
  string.gmatch = hook
end
-------------

if false then
  local orig = gg.setVisible
  local hook = 1
  hook = function (...)
    return gg.isVisible(true)
  end
  tr[hook] = orig
  gg.setVisible = hook
end
-----------

---------------
-------------
if true then
  local orig = tostring
  local rm = table.remove
  local store = {}
  local build_table = 1
  build_table = function (src, dst)
    local cnt = #store
    for k, v in pairs(src) do
      if tr[v] ~= nil then
        dst[k] = tr[v]
       else
        if typ(v) == 'table' then
          if store[v] ~= nil then
            dst[k] = store[v]
           else
            local bt = {}
            store[v] = bt
            dst[k] = bt
            build_table(v, bt)
          end
         else
          dst[k] = v
        end
      end
    end
    if cnt == 0 then
      while #store > 0 do
        rm(store)
      end
    end
    return dst
  end
  local hook = 1
  hook = function (...)
    local old = tostring
    local arg = {...}
    if tr[arg[1]] ~= nil then
      --					tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
      arg[1] = tr[arg[1]]
     else
      if typ(arg[1]) == 'table' then
        arg[1] = build_table(arg[1], {})
      end
    end
    local ret = orig(arg[1], sel(2, ...))
    --				tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
    tostring = old
    return ret
  end
  tr[hook] = orig
  tostring = hook
end
--------------
    
    if TV.info[10] then
      list={["io"]=io,["os"]=os,["table"]=table,["string"]=string,["debug"]=debug}
      for a,b in pairs(list) do
        for k,v in pairs(b) do
          local orig=b[k]
          hook=1
          local hook=function(...)
            local arg={...}
            local result=orig(...)
            if #str(arg)>3000 then arg={} end
            if #str(result)>3000 then result="" end
            if TSignore:match(k)==nil then
              local dy="--------调用函数:--------\n"..str(a).."."..k.."\n--------函数参数:---------\n"..str(arg).."\n---------返回结果:---------\n"..str(result).."\n\n"

              --   io_open(gg.getFile().."xxx","a"):write(dy):close()
              x=ggg.alert(dy,"确定",nil,"复制")
           --   if x==3 then ggg.copyText(dy) end
            end
            return orig(...)
          end
          b[k]=hook
        end
      end
    end
    ------------
    local test = TV.test
    TV = nil
    return test()
end
end



function e1()
gg.alert("🔥三把🔥阎王🔥","🔥入")
environment=nil
local path="/data/user/0/"..gg.EXT_FILES_DIR:match("data/(.-)/").."/shared_prefs/"..gg.EXT_FILES_DIR:match("data/(.-)/").."_preferences.xml"
local ppath=gg.FILES_DIR:gsub("files","shared_prefs/"..gg.PACKAGE.."_preferences.xml")
local wz=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name="history-2">log地址   </string>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="862" />
    <string name="history-1">log地址</string>
    <string name="com.ludashi.superboost-script">运行文件</string>
    <string name="hidden-dir">zIcC</string>
    <string name="script-debug">log地址</string>
    <int name="h-0" value="4" />
    <int name="h-2" value="4" />
    <int name="h-1" value="4" />
    <string name="history-0">运行文件</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="3" />
    <string name="script-path">文件夹</string>
    <int name="pos-y" value="1024" />
</map>]]
local wzw=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="727" />
    <string name="history-1">运行文件</string>
    <string name="hidden-dir">Diz9</string>
    <string name="script-debug">log地址</string>
    <int name="root-ok" value="13913" />
    <int name="h-0" value="4" />
    <int name="h-1" value="4" />
    <string name="com.xiaomi.smarthome-script">运行文件</string>
    <string name="history-0">123</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="2" />
    <string name="script-path">log地址</string>
    <int name="pos-y" value="380" />
</map>]]
--print((tostring(_ENV)))

local wzdata="/storage/emulated/0/tencent/MobileQQ/diskcache/Cache_-53a566bd5f9fpb999_hd"



local g = {}
g.last = gg.getFile()
local wdata=gg.getFile()
g.info = nil
g.config = gg.getFile():gsub('%lua$', '')..'🔥'
g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end

local		config = {} 
	
if g.info == nil then
	g.info = {g.last, 
	g.last:gsub('/[^/]+$', ''),
	gg.VERSION,
	gg.BUILD,
	"/storage/emulated/0/tencent/QQfile_recv",
	
	true,false,
	"123456",
	"415249342",
	"无","sstool.only.com.sstool;",
	
	"400",true,true,true,true,true,true,false}
end

while true do
	g.info = gg.prompt({
	'🔥选择文件:', 
	'🔥输出的文件夹:',
		'使用VERSION版本:'..gg.VERSION, 
		'使用BUILD版本:'..gg.BUILD,
		'伪装GGlog储存路径',
		
		'使用默认GGlog储存路径:\n/storage/emulated/0/Notes',
		'伪装GG存储所有代码加载',
		'伪装QQ存在可添加多个[;] 分隔 以下都可',
		'移除QQ存在',
		'伪装App包名存在',
		'移除App包名存在',
		
		'📋最小的输出环境 "load"',
		'Load(自带loadfile)',
		'Log(自带生成模式)',
		'黑火函数拦截',
		'[Log]多选匹配',
		'(调用)bug.sethook',
		'{优化}切换核心',
		'prompt优化',
		'{Bug}调试模式',
		'(调用)黑🔥核心'}, g.info, {
		'file', 'path', 'text','text','path',
		'checkbox','checkbox','text','text','text','text',
		'number','checkbox','checkbox','checkbox','checkbox',
		'checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox'})
	if g.info == nil then break end
	gg.saveVariable(g.info, g.config)
local	Name={
"fullName",
"Outputpath",
"VERSION",
"BUILD",
"Gglogstoragepath",

"GglogSwitch",
"StoragecodeLoad",
"Camouflageqqexist",
"CamouflageqqNonexistence",
"Camouflageappexist",
"CamouflageappNonexistence",

"Minimumoutput",
"load",
"LogHook",
"Hookchar",
"Multiselectionoptimization",
"Bugsethook",
"core",
"Prompt",
"BugDebugging",
"HX",
"Debug"
}

local CXGG={}
for i, v in ipairs(g.info) do
CXGG[Name[i]]=v
end
if CXGG.QXLD then
local g={}
g.ssj=gg.prompt({"请输入最小Load输出环境，可过滤部分刷文件和垃圾内容"},{"1000"},{"number"})
if g.ssj==nil then g.ssj[1]=1000 end
fw=tonumber(g.ssj[1])
end
	gg.VERSION = CXGG.VERSION
	gg.BUILD=CXGG.BUILD

if  	CXGG.GglogSwitch then
 CXGG.Gglogstoragepath="/storage/emulated/0/Notes"
end
if  	CXGG.StoragecodeLoad then
local  p=gg.alert("黑火🔥\n  您开启了[伪装GG存储所有代码加载]\n 确认一下您是否误开启\n 应对一些某些验证\n 误开启 将会生成过多文件 导致崩溃和卡顿\n 正常情况下不建议开启","继续开启功能","","关闭功能并继续")
 if p==3 then
 CXGG.StoragecodeLoad=false
 g.info[7]=false
	gg.saveVariable(g.info, g.config)
 end
end
if  	CXGG.core then
 wz=wzw
end
	gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
	
	-----
		m = m:sub(2)
		if #m == 1 then m = '0'..m end
		return m
	end)))
	print('Use GameGuardian version: '..gg.VERSION..' ['..gg.VERSION_INT..']')
	g.test = loadfile(CXGG.fullName)

	g.loaded = CXGG.fullName
	if g.test == nil then
		gg.alert('Failed load script: '..CXGG.fullName)
	else
g.name = CXGG.fullName:match('[^/]+$')
local data=wz:gsub("运行文件",CXGG.fullName)
local wc=CXGG.fullName:gsub("/"..g.name," ")
local data=data:gsub("文件夹",wc)
local data=data:gsub("log地址",CXGG.Gglogstoragepath)
local	file = io.open(wzdata, "w")
file:write(data)
file:close()
		g.pathes = {CXGG.Outputpath:gsub('/?$', '')..'/'..g.name, CXGG.fullName, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}
		g.file = nil
		g.out = ''
		local io_open = io.open		
				if true then
					local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
local CXio = {}
local CXstring = {}
local CXgg = {}
for i, v in pairs(io) do CXio[i] = v end
for i, v in pairs(string) do CXstring[i] = v end
for i, v in pairs(gg) do CXgg[i] = v end

local get_file=gg.getFile()
local  save_filename = get_file..'.cfg'
	local chunk = loadfile(save_filename)
	if chunk == nil then 
local		config = {} 
	else
local		config = chunk()
	end


					local sel = select
					local Runningfunction=""
					local FunctionnameWarehouse={}
					local debugsethook=debug.sethook

					local	remove={{nil,nil}}
					local Functionnumber={{nil,nil}}
					local Erasable={}
					local ioopen={}
					local ioopen1={}
					local ioinput1={}
					local ioinput={}
					local	Funccount=0
					local Functionlibrary={}
			 local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
    local temp={}
    local Namerepetition=0
					local os_exit=os.exit
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}
					local slen = string.len
					local msg = ''
					local rnd = CXGG.fullName..'_'..os.time()..'_'..math.random()
					local load_cnt = 0
       local Removalofpolypus=g.name:gsub('.[^.]+$', '')..".lua"
       local Ggname=g.name
						local fname = CXGG.Outputpath..'/'..'Heyuan.'..Removalofpolypus
						local fnamee = CXGG.Outputpath..'/'..'[虚假] .'..Removalofpolypus
						local fnameeee = CXGG.Outputpath..'/'..'[Lua] 黑火.'..Removalofpolypus						
						local fnchar = CXGG.Outputpath..'/'..'[黑火🔥] 函数.'..Removalofpolypus
						local wFilename=Removalofpolypus
						local fnameee = CXGG.Outputpath..'/'..'[Load] 黑火.'
						local min_size = tonumber(CXGG.Minimumoutput)
						local sfmt = string.format
						local sbyte = string.byte
						local ssub = string.sub
						local os_remove = os.remove						
						local Camouflagelog=CXGG.Gglogstoragepath.."/"..CXGG.fullName:match('[^/]+$')..".log.txt"
						local Camouflageload=CXGG.Gglogstoragepath.."/"..CXGG.fullName:match('[^/]+$')..".load_"							
				local							filpe = io.open(Camouflagelog, "w+")			
				
						ggg.setVisible(false)
						
						
					
					if CXGG.load then
					local cs1=0
					local load_cnt1=0
					local tx=true
					local contentcs=0
						local tar_end = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"											
						local f = nil
						local tar_put = function (content)						
							if f == nil then
								f = io_open(fnamee, 'w')
								f:setvbuf('full', 8192)
							end
							if load_cnt ~= 0 then
								f:seek('end', -1024)
							end
							local size = slen(content)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end
													
						if content~=contentt then
						if content:match("#%d%d%d") or content:find("qword, q")~=nil  then											
						local							contentcs=contentcs+1
						else
							cs1=cs1+1					
							if tx then
local				ggaiert=	ggg.alert("成功获取"..cs1.."次函数文件.\n过滤"..contentcs.."次loadfile\n将保存为 :\n[黑火] 🔥源文件.("..cs1..")."..wFilename.."\n\n〖"..content:sub(1,10000).."\n〗","确定","","不再提示")				
				if ggaiert==3 then tx=false end
				else
				ggg.toast("成功获取"..cs1.."次函数文件.\n将保存为[函数源文件] .("..cs1..")]"..wFilename.."")
				end
					contentt=content					
					f = io_open(fnameee.."("..cs1.."):"..wFilename, 'w')					
					
					end
								f:write(content)								
							end
							
										local pad = size % 512
							if pad > 0 then
								f:write(ssub(tar_end, 1, 512 - pad))
							end

							f:write(tar_end)
							f:flush()
							
							--echo('Hooked load '..load_cnt..' with size of '..size..' bytes')
							load_cnt = load_cnt + 1
						end
							
						for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]
							local hook = 1
							local type = v
							hook = function (...)							
								local arg = {...}
								if CXGG.StoragecodeLoad then
				--[[				local size = slen(...)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end							]]
							if load_cnt1>500  then
							ggg.alert(" 黑火.恶魔\n目标刷取"..load_cnt1.."次Load\n 为恶意刷取\n非正常脚本\n正在关闭")
								os_exit()
								end
local							f = io_open(Camouflageload..load_cnt1..".lua", 'w')							
load_cnt1 = load_cnt1 + 1
--[[															f:write("load_")
								:write(ch(sfmt('%07d', load_cnt1)))								
								:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
								:write(ch(sfmt('%011o', size)))
								:write("\x0000000000000\x00")
								:write(sfmt('%06o', checksum))
								:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")]]
								f:write(str(...))
end
								local content = arg[1]
								if content ~= nil and type == 0 then
									content = nil
									local f = io_open(arg[1], "rb")
									if f ~= nil then
										content = f:read("*a")
										f:close()
									end
								end
								if content ~= nil then
									local ret = nil
									local total = 0
									local file = fname..load_cnt..'.lua'
									if type == 1 and typ(content) == 'function' then
										local cache = ''
										local func = function (...)
											local ret = content(...)
											if ret ~= nil then
												if ret ~= '' then
													cache = cache + ret
													total = total + slen(ret)
												end
											else
												if total ~= 0 and slen(content) >= min_size then
													tar_put(cache)
												end
											end
											return ret
										end
										ret = orig(func, sel(2, ...))
									else
										if content ~= '' and slen(content) >= min_size then
											tar_put(content)
										end
										ret = orig(...)
									end
									return ret
								end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
						end
						
						msg = msg..'\n\nAll data from calls "load" will be dumped into tar archive: \n'..fnamee
						end
					if CXGG.LogHook then		
					local scripts = {}
					local options = {}
					local config = {}
					local multiChoicecx=1
      local stackcs=0
					local toastt=false					
					local cs4=1
					local menui=1
					local searchNumber=""
						local file = CXGG.Outputpath..'/'..'[🔥截] 黑火🔥..'..Removalofpolypus
						local f = io_open(file, 'wb')
						f:write("-- Hook 黑火🔥拦截\n")
						f:close()
						gg.prompt({'黑火🔥:Just press ok:'}, {g.info[1]}, {'file'})
						gg.prompt({'黑火🔥:Just press ok:'}, {g.info[5]}, {'file'})
						

						
						
						
						local names = {
							allocatePage = {'^PROT_', '0x%X'},
							copyMemory = {'0x%X', '0x%X'},
							dumpMemory = {'0x%X', '0x%X'},
							gotoAddress = {'0x%X'},
							setRanges = {'^REGION_'},
							searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
							startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
							searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
							searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
							getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
							editAll = {nil, '^TYPE_'},
							loadList = {nil, '^LOAD_'},
							saveList = {nil, '^SAVE_'},
						}
						names.refineAddress = names.searchAddress
						names.refineNumber = names.searchNumber
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
							print = 1,
						}
						local smatch = string.match
						local ssub = string.sub
						local sformat = string.format
						local toFlags = function (check, value)
							local ret = ''
							for k, v in pairs(ggg) do
								if smatch(k, check) ~= nil and (value & v) == v then
									if ret ~= '' then ret = ret..' | ' end
									ret = ret..'gg.'..k
									value = value & ~v
								end
							end
							if ret == '' or value ~= 0 then
								if ret ~= '' then ret = ret..' | ' end
								ret = ret..value
							end
							return ret
						end
												for i, v in pairs(ggg) do
							if typ(v) == 'function'  and i ~= 'getLine' and i ~= 'isVisible' and i ~= 'clearResults' and i ~= 'addListItems' and i ~= 'getResultsCount' and i ~= "removeListItems" --and i ~= 'getFile' 
							then
								local orig = v
								local name = i
								local hook = 1
								hook = function (...)
									local arg = {...}
									local f = io_open(file, 'a')									
									-----
									if	 i == 'getFile' then
									local ret=orig(...)
								if filpe~=nil then				filpe:write('gg.getFile()\n')				
			--						filpe:write('getFile()\n')				
								end
									return CXGG.fullName
									end
		if	 i == 'processKill' then
									return true
									end
												 ------


												if name=='searchNumber' then 
									local arg = {...}
										if arg[1] ~= searchNumber  then
					searchNumber=arg[1] 					
					else
							return true
						end
						end
						
						if name=="getResultCount" then
						return 2
									end
--[[						  if				i == 'getFile'  then
						  if filpe~=nil then
				filpe:write('gg.getFile()\n')
				end
				return CXGG.fullName
				end]]
					  		
									  if name=='isPackageInstalled' then 									
									  local arg = {...}
							echo('包名:', arg[1])
							local leve=orig(...)
							if CXGG.CamouflageappNonexistence:match(arg[1])		then							
							return  false 
							else	if CXGG.Camouflageappexist:match(arg[1])		then							
							return  true
	       end
	       end
							end							
	
	if name=='prompt' and CXGG.Prompt then 	
	local arg = {...}
							if rets[name] ~= nil then
							local f = io_open(file, 'a')
										local ret = orig(...)
										if ret~=nil then
										for i=1,#ret do
		--								gg.alert(i)
									if ret[i] then
									f:write("\n-----------------------------LOG PromptData [",i.."]"..arg[1][i].."-----------------------------\n")
												Functionname=arg[1][i]
										Runningfunction=""
									end
									end
									return ret
									end
										end
										end
			  if name=='prompt' then 	
					local pa = math.random(10, 99)
					local ss = math.random(10,99)
			local	leoe=ggg.alert('破解prompt密码\n 在密码处输入['..pa..ss..']激活密码解析\n 对于嵌入代码解密段则无效\n 点击Yes将会复制:['..pa..ss..']并启动密码拦截\n粘贴即可',"Yes","","No")
			
			if leoe==1 then
			ggg.copyText(pa..ss)
					local cache = {}
					cache[pa..ss] = 1
					cache["text"]=1
					cache["table"]=1
					local debug_getlocal = debug.getlocal
					local type_ = type
					local print_ = print
					local pairs_ = pairs
					local hook = function (...)											
						local stack = {}
						for j = 1, 900 do
							local _, val = debug_getlocal(1, j)
							if val ~= nil then
								local t = type_(val)
								if t == 'string' then
									stack[val] = 1
								else
									if t == 'table' then	
										for i, v in pairs_(val) do
									stack[v] = 1			
										end
									end
								end
							end
						end				
						
						if stack[pa..ss] ~= nil then	
							for v, _ in pairs_(stack) do							
								if cache[v] == nil then	
								local v=tostring(v)
								if not (v:match("{") or v:match("function")   or v:match("]") or v:match("-") or v==")"
								or v=="")
								then
								 stackcsno=true
								 scripts[#scripts + 1]=v
ggg.toast("CXGG:\n成功激活密码破解\n解析共:"..#scripts.."条数据")
								print_(v)			
						cache[v] = 1						 
								end
								end
							end
						end
					end						
debugsethook(hook, '', 1)													
				echo("下列为解析的可疑密码\nResolution:\n-----------------------------") 
									  end								  
									  end
			if stackcsno then
			echo("-----------------------------\nResolution[",#scripts,"]")
			while true do
			local options={}
			for i, v in ipairs(scripts) do
		options[i] ="📌".. str(v):sub(1,50)
	end
	
			local cxggos_exit = #options + 1
	options[cxggos_exit] = config['cxgg_os_exit'] == nil and '复制后结束 [继续]' or '复制后继续  [结束]' 
	
	selected = ggg.choice(options, #options, "黑火 拦截密码解析\n 选择复制可疑密码\n Resolution["..#scripts.."]")
	
	if scripts[selected] ~= nil then
	ggg.copyText(scripts[selected])
		echo("复制:",scripts[selected])
		pw=scripts[selected]
		if config['cxgg_os_exit'] then
		os_exit()
		else
		stackcsno=false
		stackcsn=true
		ggg.tmp= {scripts[selected]}
		break
		end
		end
		
		
	if selected == cxggos_exit then
		config['cxgg_os_exit'] = config['cxgg_os_exit'] == nil and 1 or nil
		ggg.saveVariable(config, save_filename)
	end
--
	end
--	return {scripts[selected]}
--	if true then
--							return ggg.prompt(...)
--					end -- true then
--	return 9420
echo("#####")
	end

									  -----------
														    if i == "multiChoice" or i== "choice" then
									local arg = {...}
									local gss = {}						
					if			 menui==1 then
					f:write("-----------------------------LOG GameGuardian LOG-----------------------------\n\n")
								for c=1,#arg[1] do 							
										f:write("-----------------------------LOG Menu[",c.."]"..arg[1][c].."-----------------------------\n")
										end										
										menui=2
										end
end

									if i == 'choice'  then
									if rets[name] ~= nil then
									local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
									if ret ~=nil then
										f:write("\n\n-----------------------------LOG Single [",ret.."]"..arg[1][ret].."-----------------------------\n")								
				--						f:close()
			 Functionname=arg[1][ret]
			 Runningfunction=""
										return ret
									end
									end
									end
						
			if i == 'multiChoice'  then
			if multiChoicecx==1 then 
			ggg.alert("黑火.恶魔\n 由于函数的特性请勿一次性选择多个开启\n 选择过多将会压缩在一起\n if如果你并不想用Log脚本则无视")
			multiChoicecx=2
			end
									if rets[name] ~= nil then
									local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
									local gs = {}								
									for w in string.gmatch(str(ret), "%[") do
									gs[#gs + 1] = w
									end
--									echo("一共选中" .. #gs .. "个选项") 
									local date = str(ret)
									local sz = {}
									for i=1 ,#gs do
									--查询字符位置
									kaishi = string.find(date, "%[")+1
									jiewei = string.find(date, "%]")-1
									--字节截取
									nameshu=string.sub(date , kaishi , jiewei)
									--	echo(str(arg[1][tonumber(nameshu)]))
									--替换一次字符串
									 date= string.gsub(date, "%[+", "", 1)
									 date= string.gsub(date, "%]+", "", 1)
									sz[i]=tonumber(nameshu)
									end
									table.sort(sz)           --默认从小到大排序
									opo=sz
									pop=arg[1]
									csp=#gs									
										f:write("\n\n-----------------------------LOG Multiple menu LOG-----------------------------\n")
										Functionname=""
									for j, a in ipairs(sz) do				
										f:write("\n-----------------------------LOG A lot of [",a.."]"..arg[1][a].."-----------------------------\n")
										Functionname=arg[1][a]										
										Runningfunction=""
												fe=true
					--					f:close()
									end
										return ret
									end
									end									
									f:write('gg.'..name..'(')
									Runningfunction=Runningfunction..'\ngg.'..name..'('
									if filpe~=nil then
					--				filpe:write(name..'(')								
									filpe:write('gg.'..name..'(')								
									end
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ')
										Runningfunction=Runningfunction..', '
										 if filpe~=nil then		filpe:write(', ')		end		end
										if typ(a) == 'string' then f:write('"')
										Runningfunction=Runningfunction..'"'
										if filpe~=nil then		filpe:write('"')		end end
										local b = a
										if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
											local check = names[name][j]
											if ssub(check, 1, 1) ~= '^' then
												if a == 0 or a == -1 then
													b = a
												else
													b = sformat(check, a)
												end
											else
												b = toFlags(check, a)
											end
										end
										b = str(b)
										f:write(b)										
										Runningfunction=Runningfunction..b:gsub("\n",[[\n]])
										if filpe~=nil then		filpe:write(b)		end
										if typ(a) == 'string' then f:write('"')
										Runningfunction=Runningfunction..'"'
										if filpe~=nil then		filpe:write('"')		end end
									end
									f:write(")")
									Runningfunction=Runningfunction..")"
									if filpe~=nil then		filpe:write(")")		end
									if fe then
									if CXGG.Multiselectionoptimization then
										if name=="toast"  then	
										if cs4+1 > csp then cs4=csp end
										local ret = orig(...)
									local arg = {...}        --默认从小到大排序																															
												a=opo[cs4]
												cs4=cs4+1
												if a ~= nil then
										f:write("\n-----------------------------LOG Transport :[",a.."]"..pop[a].." Error in forced matching-----------------------------\n\n")					
										end
									end
									end
									end
									if rets[name] ~= nil then
										local ret = orig(...)
										f:write(" --[[ ")
										f:write(str(ret))
										f:write(" ]]\n")
										f:close()
										if filpe~=nil then			
										filpe:write("\n--[[ return: "..str(ret).." ]]\n")
					--					filpe:write("\n-- return:"..str(ret).."\n")	
						end
										return ret										
									end
									
									------------------------------------------------------------								
									
							
if Functionname~=nil and Runningfunction:match("searchNumber") then
--f Functionlibrary["Black"..Functionname]~= nil then
Functionlibrary["Hook"..Functionname]=Runningfunction

--else
--Functionlibrary["Black"..Namerepetition..Functionname]=Runningfunction
--end
end

				local  Menuname=""
   local  Hookitem=""
   local HookSelectandkeep=""
   local  i=0
   for i=1,52 do
        temp[i] = string.sub(b64chars,i,i)
    end
    p=1
    for k,v in pairs(Functionlibrary) do
    i=i+1
    p=i+1    
Menuname=Menuname..'\n"'..str(k)..'",'

HookSelectandkeep=HookSelectandkeep.."\nif menu=="..i.." then CX"..str(temp[i])..i.."() end"

Hookitem=Hookitem.."\n---[["..k.."]]\nfunction CX"..str(temp[i])..i.."()"..str(v).."\nend"
end
Hookscript="gg.alert('黑火: 🔥')\n\nfunction Main()\n"
-----启动脚本
Hookscript=Hookscript..'menu = gg.choice({'..Menuname..'"结束脚本 Exit"},nil,"选择开启功能[黑火🔥生成]")'
-----功能名称
Hookscript=Hookscript..HookSelectandkeep.."\nif menu=="..p.." then Exit() end\nvis=false\nend"
-----调用功能
Hookscript=Hookscript..Hookitem
-----功能实体
Hookscript=Hookscript.."\nfunction Exit()\nprint('🔥gg By EMMM')\nos.exit()\nend\n\nMain() \nwhile(true)do\n if gg.isVisible(true) then\n vis=true \n gg.setVisible(false) \n end \n gg.clearResults()\n if vis then\n Main() \n end \nend"
-----结束项目
if #Hookscript >376 then
local fi = io_open(fnameeee, 'w')					
							fi:write(Hookscript)
							fi:close()
							end
------------------------------------------------------------------------------------
									f:write("\n")
									if filpe~=nil then		filpe:write("\n")		end
									f:close()
					if name=='searchNumber' then 
					function xqmnb(a)
aaaa=aaaa+1
print(aaaa.."！！！"..tostring(a))
print("\n")
print(aaaa.."！！！"..tostring(qmxg))
end
									ggg.toast('已自动跳过搜索过程')
									 return true
									  end
									return orig(...)									
								end
								tr[hook] = orig
								gg[i] = hook
							end
						end			
			msg = msg..'\n\nAll GG calls will be logged into file:\n '..file.."\n\nCreate and generate scripts to the:\n"..fnameeee.."\n\nSkip : clearResults 移除无用Lo \n已开启☑\nSkip : searchNumber 移除搜索过程 \n已开启☑"
					end

					
					
							if true then
						msg=msg.."\nSkip : os.exit 退出弹窗 \n已开启☑"		
						local orig = os.exit
						local hook = 1
						hook = function (...)
		--echogg.alert(Function..Functionname1..Function1..Function2..Function3..Function4..Function5)
		
		if str(Functionlibrary):match("searchNumber") then
local		Menuname=""
local i=0
		for k,v in pairs(Functionlibrary) do
		i=i+1
Menuname=Menuname.."["..str(k).."]\n"
end
							ggfh=ggg.alert('准备结束Hook\n\n拦截并生成项目.'..i..'条Data\n\n'..Menuname..'\n\n保存为.:\n[Lua] 辛心.'..wFilename..'\n\n™项目简短\n'..Hookscript:sub(1,9000)..'',"No.继续拦截","","Yes.确认退出")							
							else
							ggfh=ggg.alert('结束函数拦截',"No.继续拦截","","Yes.确认退出")
							end
							local arg = {...}					
						if ggfh==3 then
						 if CXGG.BugDebugging==false then
							echo('io.open:', ioopen)
							echo('io.input:', ioinput)
							echo('os.remove:', remove)
	
							end
local 							sel= orig(...)
							else
local						sel=true
								end
								return sel
						end
						tr[hook] = orig
					os.exit	 = hook
					end

					
      
     
if true then
local ioopencs=0
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}											
												if arg[2]=="w" or arg[2]=="w+" then
												Erasable[#Erasable+1]=arg[1]
							end		
							if ioopencs>15 then
						local ioopenalert=	ggg.alert("短时间写出多个文件\n疑似拦截被检测\n谨慎考虑是否继续？\n截取最近的写出文件:\n"..arg[1],"继续","","结束拦截")
						if ioopenalert==1 then local ioopencs=0 else os_exit() end
						else
							if arg[2]=="w" or arg[2]=="w+" then
							local ioopencs=ioopencs+1
							end
							end
			if filpe~=nil then
			if arg[2] ==nil then
filpe:write('io.open("'..arg[1]..'")\n')
else
filpe:write('io.open("'..arg[1],'", '..'"',arg[2]..'")\n')
end
end
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
							ioopen[#ioopen+1]=str(arg[1]).."\nrun["..str(arg[2]).."]"
							ioopen1[#ioopen1+1]=str(arg[1])
							if CXGG.BugDebugging then
							echo('io.open:', arg)
							end
	--echo('io.open:', ioopen)
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if CXGG.CamouflageqqNonexistence:match(ddd) or arg[1]==wzdata then
							leve=nil
							else		if CXGG.Camouflageqqexist:match(ddd)then
						leve=orig(ggg.getFile():gsub('%lua$', '')..'Skr',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.open = hook
					end
					
					
					if true then
						local orig = io.input
						local ioinputcs=0
						local hook = 1
						hook = function (...)
							local arg = {...}
							if ioinputcs>15 then
						local ioinputalert=	ggg.alert("短时间写出多个文件\n疑似拦截被检测\n谨慎考虑是否继续？\n截取最近的写出文件:\n"..arg[1],"继续","","结束拦截")
						if ioinputalert==1 then local ioinputcs=0 else os_exit() end
						else
							if arg[2]=="w" or arg[2]=="w+" then
							local ioinputcs=ioinputcs+1
							end
							end
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
				ioinput[#ioinput+1]=str(arg[1]).."\nrun["..str(arg[2]).."]"
							ioinput1[#ioinput1+1]=str(arg[1])
							if CXGG.BugDebugging then
							echo('io.input:', arg)
							end
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if CXGG.CamouflageqqNonexistence:match(ddd)or arg[1]==wzdata then
							leve=nil
							else		if CXGG.Camouflageqqexist:match(ddd)then
						leve=orig(ggg.getFile():gsub('%lua$', '')..'Skr',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.input = hook
					end
									
										---------------------------------------------------------------------------------------------------------------------------------------
														if true then ----------------------删除
												local		removecs=0
							msg=msg.."\nSkip : os.remove 跳过删除文件 \n已开启☑"
						local orig = os.remove
						local hook = 1
						hook = function (...)
							local arg = {...}		
							remove[#remove+1]=arg[1]
			if filpe~=nil then
filpe:write('os.remove("'..arg[1]..'")\n')
end
							local leve=true
							if arg[1]==Camouflagelog or arg[1]:match("log") then
							leve=orig(...)
							end
										for i=1,#ioopen1 do
				if arg[1]==str(ioopen1[i]) or arg[1]:match(Ggname)then			
								remove[#remove]=arg[1].."\n已允许[⭕删除]"
								ioopen[i]=arg[1].."\n已[⭕删除]"
							leve=orig(...)
							else
							remove[#remove]=arg[1].."\n已拒绝[✅删除]"
							end
							end											
							if CXGG.BugDebugging then
							echo('os.remove:', arg)
							end
--							echo('os.remove:', remove)
							return leve
						end
						tr[hook] = orig
						os.remove = hook
					end

							
					
					if CXGG.Bugsethook then ----------------------gg.getFile
	local				roelsethook={}
	local ovei={}
						local orig = debug.sethook
						local hook = 1
						hook = function (...)												
						local arg = {...}	
				local		roel=str(arg[1])
				ovei[1]=roel:gsub("@", "")
				ovei[2]=arg[2]
			--	gg.alert(tostring((...)))
			if CXGG.BugDebugging then
			echo("debug.sethook:",ovei)
			end
							return ovei
						end
						tr[hook] = orig
					debug.sethook  = hook
					end
										
								if true  then						
					local orig = debug.getinfo 
				local hook = 1 
				local ggWarehouse={
'getFile','prompt','choice','toast','alert','getResultsCount','multiChoice','setSpeed','getSpeed','REGION_C_HEAP','clearResults','bytes','SAVE_AS_TEXT','require','removeResults','editAll','setValues','getValues','refineAddress','refineNumber','loadResults','getListItems','getTargetPackage','processKill','startFuzzy','getRanges','setRanges','getLine','unrandomizer','numberFromLocale','PROT_WRITE','skipRestoreState','allocatePage','getValuesRange','isVisible','gotoAddress','getSelectedPackage','saveList','addListItems','removeListItems','getTargetInfo','processResume','setVisible','searchNumber','getLocale','saveVariable','isPackageInstalled','timeJump','processToggle','numberToLocale','clearList','copyMemory','getResultCount','processPause','isProcessPaused','getRangesList','getResults','copyText','sleep','loadList','dumpMemory','searchFuzzy','searchAddress','load','pcall','xpcall'}
				hook = function (...) 
					local arg = {...}
				local 	roel=orig(...)
				local item=(orig(gg.getFile,"S"))
				local ppetinfo={}
			--		print("getinfo:"..OG.tostring(arg))
				--	echo('debug.getinfo:', orig(...))
		if tostring(arg[1]):sub(1,1):match("%d")  then			
		for k,v in pairs(roel) do
		 ppetinfo[k]=str(v):gsub(ggg.getFile(),CXGG.fullName)
		 end
		else		
		for k,v in pairs(ggWarehouse) do		
if tostring(arg[1]):match(str(v)) then
for i,o in pairs(roel) do
if i=="short_src" then
 ppetinfo[i]=v
 else if i=="source" then
 ppetinfo[i]="=[Java]"
 else
 ppetinfo[i]=o
 end
 end 
 	ppetinfo['lastlinedefined'] = item.lastlinedefined
	ppetinfo['linedefined'] = item.linedefined 
		 end		 
break
 end
end
end

--	roel=roel:gsub("['source'] = '","['source'] = '@")
--echo('debug.getinfo :',arg)
if CXGG.BugDebugging then
			echo("debug.getinfo:",ppetinfo)
			end
--			gg.alert(tostring(bugget))

				 return  ppetinfo
				end 
				tr[hook] = orig 
				debug.getinfo = hook
			end

				
				
							if true then---------外国加密
						local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}
local			roel=orig(...)
if filpe~=nil then
filpe:write('debug.traceback\n')
end
			if  roel:match("in function 'load'") then
 roel=roel:gsub(wdata..":(%d-) in function 'load'", "")
end
if roel:match("in function 'open'")then
 roel=roel:gsub(wdata..":(%d-) in function 'open'", "")
end
--echo('debug.traceback:', roel:gsub(":(.-)"..wdata..":(%d-) in function 'traceback'", ":"):gsub("+",""))
if roel:match(":(%d-) in function 'traceback'")then
 roel=roel:gsub(wdata..":(%d-) in function 'traceback'", "")
end
if roel:match(":(%d-) in function '?'")then
 roel=roel:gsub(wdata..":(%d-) in function '?'", "")
end
roel=roel:gsub([[stack traceback:
	]], "stack traceback:")
	roel=roel:gsub([[stack traceback:echo'
	]], "stack traceback:echo'")
	if CXGG.BugDebugging then
echo('traceback:\n', roel)
							end
							return roel
						end
						tr[hook] = orig
						debug.traceback = hook
					end
					
					


					
					if false then
			msg=msg.."\nOptimization : print 打印结束消息优化 \n已开启☑"
			local printt=""
						local orig = print
						local hook = 1
						hook = function (...)
							local arg = {...}							
				if arg[1] == printt or #arg[1]>1000 then						
							return true
							else
							printt=arg[1] 
							return orig(...)
						end
						end
						tr[hook] = orig
					print	 = hook
					end
					
	
					
					if CXGG.Hookchar then ----------------------gg.getFile
							local fof = io_open(fnchar, 'w')									
								fof:write("-- 黑火🔥\n")
						fof:close()
						local orig = string.char
						local hook = 1
						hook = function (...)
							local arg = {...}
							local fof = io_open(fnchar, 'a')														
							if arg[1] ~= nil then
						fof:write((CXstring.char(arg[1])))															
						end
							return orig(...)
						end
						tr[hook] = orig
					string.char  = hook
					end
					
					
					-----------------------------------------------------------------------------------------拦截区---------------------------------------------------------
			
					
			
							if true then
						local orig = string.format
						local hook = 1
						hook = function (...)
							local arg = {...}
		local					leve=orig(...)
--					echo('string.format:', arg)
							if arg[2]==ggg.getFile() then
						leve=orig(arg[1],"prompt",arg[3])
							end
							return leve
						end
						tr[hook] = orig
					string.format	 = hook
					end
					
			
					
			
			



----------------------------------------------------------------------------------------------------------------------------------------------------------
	if true then
						local orig = string.dump
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('string.dump:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						string.dump = hook
					end
					if true then
						local orig = tostring
						
						local rm = table.remove
						local store = {}
						local build_table = 1
						build_table = function (src, dst)
							local cnt = #store
							store[src] = dst
							for k, v in pairs(src) do
								if tr[v] ~= nil then
									dst[k] = tr[v]
								else
									if typ(v) == 'table' then
										if store[v] ~= nil then
											dst[k] = store[v]
										else
											local bt = {}
											store[v] = bt
											dst[k] = bt
											build_table(v, bt)
										end
									else
										dst[k] = v
									end
								end
							end
							if cnt == 0 then
								while #store > 0 do
									rm(store)
								end
							end
							return dst
						end
						
						local hook = 1
						hook = function (...)
							local old = tostring
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
								arg[1] = tr[arg[1]]
							else
								if typ(arg[1]) == 'table' then
									arg[1] = build_table(arg[1], {})
								end
							end
							local ret = orig(arg[1], sel(2, ...))
							--tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
							tostring = old
							return ret
						end
						tr[hook] = orig
						tostring = hook
					end
					if false then
						local orig = debug.getupvalue
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('debug.getupvalue:', tr[arg[1]], arg[1], arg[2])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getupvalue = hook
					end

if CXGG.HX then
	local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}										
							return 		p.."[[:"..math.random(20,150).." in main chunk[Java]: in ?]]"..p.."[[:"..math.random(20,150).." in main chunk[Java]: in ?]]"..p.."[[:"..math.random(20,150).." in main chunk[Java]: in ?]]"
						end
							tr[hook] = orig
						debug.traceback = hook
					end
						if CXGG.HX then
						local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}
local			roel=orig(...)
if filpe~=nil then
filpe:write('debug.traceback\n')
end
			if  roel:match("in function 'load'") then
 roel=roel:gsub(wdata..":(%d-) in function 'load'", "")
end
if roel:match("in function 'open'")then
 roel=roel:gsub(wdata..":(%d-) in function 'open'", "")
end
--echo('debug.traceback:', roel:gsub(":(.-)"..wdata..":(%d-) in function 'traceback'", ":"):gsub("+",""))
if roel:match(":(%d-) in function 'traceback'")then
 roel=roel:gsub(wdata..":(%d-) in function 'traceback'", "")
end
if roel:match(":(%d-) in function '?'")then
 roel=roel:gsub(wdata..":(%d-) in function '?'", "")
end
roel=roel:gsub([[stack traceback:
	]], "stack traceback:")
	roel=roel:gsub([[stack traceback:echo'
	]], "stack traceback:echo'")
	if true then
echo('traceback:\n', roel)
							end
							return roel
						end
						tr[hook] = orig
						debug.traceback = hook
					end
----------------------

if CXGG.HX then
  local cg={
    [1]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = CXGG.fullName,
      ['source'] = '@'..CXGG.fullName,
      ['what'] = 'Lua',
    },
    [2]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = "wrap",
      ['source'] = '@'..CXGG.fullName,
      ['what'] = 'Lua',
    }
  }
  local orig = debug.getinfo
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if str(arg[1])=="1"then return cg[1]
     elseif str(arg[1])=="3" then return nil
     elseif str(arg[1]):find("storage") then return cg[2]
     elseif str(arg[1])=="2" then x=ggg.alert("选择","第二次","第一次")
      if x==2 then result=nil end
     else
      return result
    end
  end
  tr[hook] = orig
  debug.getinfo = hook
end
if CXGG.HX then
local orig = debug.getregistry
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return {}
  end
  tr[hook] = orig
  debug.getregistry = hook
end
    ------------------
-------------
if false then
  local orig = os.clock
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return "0"
  end
  tr[hook] = orig
  os.clock = hook
end

----------
ttt=0
if false then
  local orig = string.gmatch
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
c=gg.alert("选择","第一次","第二次")
if c==1 then return orig(string.rep("=",347),"=")
else return orig("==","=") end
--[[
    if ttt==0 then
      ttt=1
      return orig(string.rep("=",347),"=")
     else
      ttt=0
      return orig("==","=")
    end--]]
  end
  tr[hook] = orig
  string.gmatch = hook
end
-------------

if false then
  local orig = gg.setVisible
  local hook = 1
  hook = function (...)
    return gg.isVisible(true)
  end
  tr[hook] = orig
  gg.setVisible = hook
end
-----------

---------------
-------------
if true then
  local orig = tostring
  local rm = table.remove
  local store = {}
  local build_table = 1
  build_table = function (src, dst)
    local cnt = #store
    for k, v in pairs(src) do
      if tr[v] ~= nil then
        dst[k] = tr[v]
       else
        if typ(v) == 'table' then
          if store[v] ~= nil then
            dst[k] = store[v]
           else
            local bt = {}
            store[v] = bt
            dst[k] = bt
            build_table(v, bt)
          end
         else
          dst[k] = v
        end
      end
    end
    if cnt == 0 then
      while #store > 0 do
        rm(store)
      end
    end
    return dst
  end
  local hook = 1
  hook = function (...)
    local old = tostring
    local arg = {...}
    if tr[arg[1]] ~= nil then
      --					tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
      arg[1] = tr[arg[1]]
     else
      if typ(arg[1]) == 'table' then
        arg[1] = build_table(arg[1], {})
      end
    end
    local ret = orig(arg[1], sel(2, ...))
    --				tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
    tostring = old
    return ret
  end
  tr[hook] = orig
  tostring = hook
end
----------------------
echo('Hook GameGuardian 🔥黑火拦截.'..msg..'\n--------------------------------\n')
					msg=nil				
					end
				local test = g.test 				
				g = nil
				aaaa=0
			return test()			
			end
		end
print("黑火🔥截取结束")

		
		



end



function e2()
os.remove("/sdcard/tencent/.info1.txt")
os.remove("/sdcard/.xspy")
os.remove("/sdcard/.xspyzz")
Ggsub="function: gsub"
Gsenu=tostring(gg.searchNumber)
Gfhz=tostring(gg)
Gfile=tostring(_ENV)
Gstr=tostring(tostring)
Ginfor=tostring(debug.getinfo)
Gedit=tostring(gg.editAll)
Ggetr=tostring(gg.getResults)
Ggetl=tostring(gg.getLine)
Gstrf=tostring(string.find)
Gpack=tostring(package)
Gsetv=tostring(gg.setValues)
Ttype=type(gg)
function randomStr(lens, ...)
    local cs, str, as ={{48, 57}, {65, 90}, {97, 122}}, ""
    if type(...) == "table" then
        as = ...
    else
        as = {...}
    end
    for i = 1, lens do
        local index = math.random(as[1], as[#as])
        str = str .. string.char(math.random(cs[index][1], cs[index][2]))
    end
    return str
end
function adjuStr(lens)
	local rancount, str ={1, 2, 3, 1, 3, 2, 2, 3, 1, 2, 1, 3, 3, 1, 2, 3, 2, 1}, ""
    for i = 1,lens do
	    kkk, vvv = math.random(1, 18), math.random(0, 19)
	    if vvv >= 1 and vvv <= 18 and vvv ~= kkk then
	    else
			vvv = math.random(1, kkk)
		end		
		str = str .. randomStr(1, rancount[vvv])
    end
    return str
end
function tablde()
  gg.searchNumber(0,4)
  local tr=gg.getResults(5)
  return gg.getValues(tr)
end
function Gload()
  a=debug.getinfo(load)
  return a
end
function Gvalu()
  a=debug.getinfo(gg.getValues)
  return a
end
function Gexit()
  a=debug.getinfo(os.exit)
  return a
end
function Grequ()
  a=debug.getinfo(gg.makeRequest)
  return a
end
function Gaddr()
  a=debug.getinfo(gg.searchAddress)
  return a
end
function Gnumb()
  a=debug.getinfo(tonumber)
  return a
end
function Gtstr()
  a=debug.getinfo(tostring)
  return a
end
function Gcloc()
  a=debug.getinfo(os.clock)
  return a
end
function Gsnum()
  a=debug.getinfo(gg.searchNumber)
  return a
end
Tload=Gload()
Tvalu=Gvalu()
Texit=Gexit()
Tequ=Grequ()
Taddr=Gaddr()
Tnumb=Gnumb()
Ttstr=Gtstr()
Tcloc=Gcloc()
Tsnum=Gsnum()
local MS={}
MS.file="/sdcard/tencent/QQfile_recv/M.lua"
MS.info=nil
MS.conbak="/sdcard/tencent/QQ_Images/.拦截器.cfg"
MS.Rxh=loadfile(MS.conbak)
if MS.Rxh~=nil then 
  MS.info=MS.Rxh()
  MS.Rxh=nil
end
if MS.info==nil then
  MS.info={MS.file,MS.file:gsub('/[^/]+$', ''),true}
end
::MAIN::
  MS.info=gg.prompt({"选择 脚本","输出 路径","反拦截核心"," L  O  G ","LOAD单一输出","LOAD 全部","网络验证破解","捕捉table","Match匹配返回","GetFile自定返回","正常返回getFile","I O  提示","时间 自定","防止 删除","防止 退出"},MS.info,{"file","path",
"checkbox", "checkbox", "checkbox", "checkbox", 
"checkbox",
"checkbox", "checkbox", "checkbox", "checkbox", "checkbox", "checkbox",
"checkbox",
"checkbox"})
  if MS.info==nil then 
  else
  gg.saveVariable(MS.info, MS.conbak)
  end
  cs=0
  local arg={}
  for i,v in pairs(gg) do
    arg[i]=gg[i]
  end
  local arh={}
  for i,v in pairs(os) do
    arh[i]=os[i]
  end
  local ari={}
  for i,v in pairs(io) do
    ari[i]=io[i]
  end
  local arj={}
  for i,v in pairs(table) do
    arj[i]=table[i]
  end
  local ark={}
  for i,v in pairs(string) do
    ark[i]=string[i]
  end
  local arl={}
  for i,v in pairs(debug) do
    arl[i]=debug[i]
  end
  if MS.info==nil then
    os.exit(print"未选择脚本或语法有误")
    else
  end
  MS.file=MS.info[1]
  if loadfile(MS.file)==nil then
    os.exit(print"未选择脚本或语法有误")
  end
  local Ara={}
  local Rout=MS.info[2].."/"
  local filename=MS.info[1]:match("[^/]+$")
  local loadsc=0
  local in1cs=0
  local in2cs=0
  wdata=gg.getFile()
  os.remove(Rout.."[XS捕捉]"..filename)
  local seacs=0
  if MS.info[3]==false then
    os.exit(print"未勾选反拦截核心")
  else
    local file=Rout.."[MsLOG]"..filename
    local f=io.open(file,"a")
    function Toout(...)
      return arg.toast(...),print(...)
    end
    local fuc=error
    local func=1
    func=function (...)
      return arg.isVisible(true)
    end
    Ara[func]=fuc
    error=func
    local trac="stack traceback:\n	"..MS.info[1]..":117 in main chunk\n	[Java]: in ?"
    local fuc = debug.traceback
    local func = 1
    func = function (...)
      local conce = {...}
      local result= fuc(...)
      return trac
    end
    Ara[func] = fuc
    debug.traceback = func
    local fuc=type
    local func=1
    func=function (...)
      local conce=(...)
      local result=fuc(...)
      if conce==gg then
        result=Ttype
      end
      return result
    end
    Ara[func]=fuc
    type=func
    local result=tostring(math.random(1,10000))
    ari.open("/sdcard/tencent/.hs","w"):write(result):close()
    local fuc=gg.getLine
    local func=1
    func=function (...)
      local conce=(...)
      return result
    end
    Ara[func]=fuc
    gg.getLine=func
    local fuc=tostring
    local func=1
    func=function (...)
      local conce=(...)
      local result= fuc(...)
      if conce==gg then
        result=Gfhz
      end
      if conce==_ENV then
        result=Gfile
      end
      if conce==tostring then
        result=Gstr
      end
      if conce==gg.searchNumber then
        result=Gsenu
      end
      if conce==debug.getinfo then
        result=Ginfor
      end
      if conce==gg.editAll then
        result=Gedit
      end
      if conce==gg.getResults then
        result=Ggetr
      end
      if conce==gg.getLine then
        result=Ggetl
      end
      if conce==string.find then
        result=Gstrf
      end
      if conce==string.gsub then
        result=Ggsub
      end
      if conce==package then
        result=Gpack
      end
      if conce==gg.setValues then
        result=Gsetv
      end
      return result
    end
    Ara[func]=fuc
    tostring=func
    local fuc=debug.getinfo
    local func=1
    func=function (...)
      local conce=(...)
      local result=fuc(...)
        if conce==load then
          result=Tload
        end
        if conce==gg.getValues then
          result=Tvalu
        end
        if conce==gg.searchAddress then
          result=Taddr
        end
        if conce==tonumber then
          result=Tnumb
        end
        if conce==os.exit then
          result=Texit
        end
        if conce==gg.makeRequest then
          result=Tequ
        end
        if conce==1 then
          hs=ari.open("/sdcard/tencent/.hs","r"):read("*a")
          if in1cs<4 then
            local ts=arg.alert("检测到debug.getinfo(1),\n当前为：第"..(in1cs+1).."次\n请输入返回\n\n(不确定选未知)\n行数自行测试判断","已知循环","未知")
            if ts~=1 then
              local fhz=arg.prompt({"currentline验证\n请输入："..hs,"func函数验证"},{[1]=tonumber(hs),[2]=MS.info[1].."a"},{"number","text"})
              result={['currentline'] = tonumber(fhz[1]),['func'] = 'function: @'..fhz[2]..':0-0',['name'] = '?',['namewhat'] = '',['short_src'] = fhz[2],['source'] = '@'..fhz[2],}
              ari.open("/sdcard/tencent/.info1.txt","w"):write(fhz[1].."\n"..fhz[2]):close()
              in1cs=in1cs+1
              else
              local fhz=arg.prompt({"currentline验证\n请输入："..hs,"func函数验证"},{[1]=tonumber(hs),[2]=MS.info[1].."a"},{"number","text"})
              result={['currentline'] = tonumber(fhz[1]),['func'] = 'function: @'..fhz[2]..':0-0',['name'] = '?',['namewhat'] = '',['short_src'] = fhz[2],['source'] = '@'..fhz[2],}
              ari.open("/sdcard/tencent/.info1.txt","w"):write(fhz[1].."\n"..fhz[2]):close()
              in1cs=in1cs+1
            end
            else
            local fil=ari.open("/sdcard/tencent/.info1.txt","r")
            fhz1=fil:read('*l')
            fhz2=fil:read('*l')
            fil:close()
            result={['currentline'] = tonumber(fhz1),['func'] = 'function: @'..fhz2..':0-0',['name'] = '?',['namewhat'] = '',['short_src'] = fhz2,['source'] = '@'..fhz2,}
          end
        end
        if conce==tostring then
          result=Ttstr
        end
        if conce==os.clock then
          result=Tcloc
        end
        if conce==pcall then
          result={['func'] = "function: pcall"}
        end
        if conce==2 then
          local ts=arg.alert("  检测到debug防御\n  当前为：第"..(in2cs+1).."次\n  请选择返回\n\n  已知seaa，第一次nil\n  第二次function: pcall\n  第三次nil","nil","输入其他")
          if ts==1 then
            result=nil
          elseif ts==2 then
            local two=arg.prompt({"输入返回值"},{[1]="function: pcall"},{"text"})[1]
            result={['func'] = two}
          end
          in2cs=in2cs+1
        end
        if conce==gg.searchNumber then
          local tyz={['short_src'] = MS.info[1], ['source'] = '=[Java]',}
          if seacs==0 then
            result=Tsnum
            else result=tyz
          end
          seacs=seacs+1
        end
      return result
    end
    Ara[func]=fuc
    debug.getinfo=func
  end
  if MS.info[4]==true then
    local file=Rout.."[MsLOG]"..filename
    local f=io.open(file,"w")
    f:write("--[[MSlog新思路]]\n")
    f:close()
    local UI={['choice']='单选', ['multiChoice']='多选', ['prompt']='输入'}
     for i,v in pairs(arg) do
       if type(v)=="function" and i~='getValues' and i~='getfile' and i~='getLine' and i~='isVisible' then
         local name=i
         local fuc=v
         local func=1
         func=function (...)
           local conce={...}
           local result=fuc(...)
	       local f=io.open(file,"a")
           if true then
             if UI[name]=='输入' then
               local conce = {...}
               f:write("gg."..name.."({\n")
               for j=1,#conce do
                 for k=1,#conce[j] do
                   js='",' ks='"'
                   if k==1 then
                     ks='['..j..']={"'
                   end
                   if k==#conce[j] then
                     js='"}'
                   end
                 f:write(ks..conce[j][k]..js..'\n')
                 end
               end
               f:write("})\n")
             end
             if UI[name]=='单选' or UI[name]=='多选' then
               local conce = {...}
               f:write("gg."..name.."({\n")
               for j=1,#conce[1] do
                 f:write('"'..conce[1][j]..'",\n')
               end
               f:write("})\n")
             end
             if name=='alert' then
               local conce = {...}
               if conce~=nil then
                 Toout("捕捉警告："..conce[1])
                 conce=(conce[1]):gsub("\n","\\n")
                 f:write("gg."..name.."('"..conce.."')\n")
               end
             end
             if name=='setRanges' and not MS.info[8] then
               local conce = (...)
               if conce~=nil then
                 if conce==gg.REGION_VIDEO then
                   conce='gg.REGION_VIDEO'
                 elseif conce==gg.REGION_BAD then
                   conce='gg.REGION_BAD'
                 elseif conce==gg.REGION_ANONYMOUS then
                   conce='gg.REGION_ANONYMOUS'
                 elseif conce==gg.REGION_C_DATA then
                   conce='gg.REGION_C_DATA'
                 elseif conce==gg.REGION_C_ALLOC then
                   conce='gg.REGION_C_ALLOC'
                 end
               Toout("搜索内存："..conce)
			   f:write("gg."..name.."("..conce..")\n")
			   end
			 end
			 if name=='getResults' then
			   local conce = (...)
			   if conce==nil then
			     conce=0
			     Toout("得到该数值："..conce)
			     f:write("gg."..name.."("..conce..")\n")
			     else
			     Toout("得到数值数量："..conce)
                 f:write("gg."..name.."("..conce..")\n")
			   end
             end
             if name=='gg.getResultCount' then
			   local conce = (...)
			   local result=fuc(...)
			     Toout("得到该数值："..result)
			     f:write("gg."..name.."()\n")
             end
             if name=='toast' and not MS.info[8] then
               local conce = (...)
               if conce~=nil then
                 if #conce>=40 then
                   conce="违规提示"
                 end
                 Toout("捕捉提示："..conce)
                 conce=(conce):gsub("\n","\\n")
			     f:write("gg."..name.."('"..conce.."')\n")
			   end
			 end
			 if name=='searchNumber' and not MS.info[8] then
			   local conce = {...}
			   if conce~=nil then
			     for j=1,2 do
			       if conce[j]==nil then
			         conce[j]="nil"
			         else
			       end
			     end
			     if type(conce[1])=="number" then
			       conce[1]=""..conce[1]
			     end
			     if #conce[1]>=100 then
			       conce={[1]="违规数值",[2]="违规类型"}
			     end
			     Toout("搜索数值："..conce[1].." 搜索类型："..conce[2])
			     f:write("gg."..name.."('"..conce[1].."', "..conce[2]..", false, gg.SIGN_EQUAL, 0, -1)\n")
		       end
		     end
			 if name=='editAll' then
			   local conce={...}
			   if conce~=nil then
			     for j=1,2 do
			       if conce[j]==nil then
			         conce[j]="nil"
			         else
			       end
			     end
			     Toout("修改数值："..conce[1].." 修改类型："..conce[2])
			     f:write("gg."..name.."('"..conce[1].."',"..conce[2]..")\n")
			   end
			 end
		   end
		   return result
	     end
	     Ara[func]=fuc
	     gg[i]=func
       end
     end
  end
  if MS.info[5]==true then
    local fuc=load
    local func=1
    func = function (...)
    local conce = {...}
    local result= fuc(...)
    local data=tostring(conce[1])
    if result and string.len(data)>800 then
      local ts=arg.alert("╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n╾╾╾👮已捕捉一次load👮╾╾╾\n╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n"..data,"写入文件","复制","继续")
      if ts==1 then 
        io.open(Rout.."[MsLOAD_"..loadsc.."]"..filename,"w"):write(data):close() 
        os.exit(print("已写入"..Rout.."[MsLOAD_"..loadsc.."]"..filename))
      elseif ts==2 then 
        gg.copyText(data) os.exit()
      elseif ts==3 or ts==nil then
        loadsc=loadsc+1
        io.open(Rout.."[MsLOAD_"..loadsc.."]"..filename,"w"):write(data):close()
      end
    end
      return result
    end
    Ara[func] = fuc
    load = func
  end
  if MS.info[6]==true and MS.info[5]==true then
    os.exit(print"不可同时开启")
  elseif MS.info[6]==true then
    local fuc=load
    local func=1
    func = function (...)
    local conce = {...}
    local result= fuc(...)
    local data=tostring(conce[1])
      if result and string.len(data)>800 then
        io.open(Rout.."[MsLOAD_"..loadsc.."]"..filename,"w"):write(data):close() 
        loadsc=loadsc+1
      end
      return result
    end
    Ara[func] = fuc
    load = func
  end
  if MS.info[7]==true then
    kmpj=arg.choice({"易游卡密破解","辛心本地卡密破解","木酥本地卡密破解","易验证卡密破解","其他网络(待更新)","返回上一层"},nil,"欢迎使用MSv1.0拦截器")
    if kmpj==1 then
      local fuc=gg.makeRequest
      local func=1
      func=function (...)
        local conce={...}
        local result=fuc(...)
        if conce[1]:match("w.eydata.net") then
          if conce[3]:match("SingleCode") then
            result={['content']="12345678901234567890123456789012"}
          end
          if conce[3]:match("UserName") then
            result={['content']="1234567890123456789"}
          end
        end
        return result
      end
      Ara[func]=fuc
      gg.makeRequest=func
    end
    if kmpj==2 then
    
    end
    if kmpj==3 then
      MSKM = { base64 = { en = function (source_str) local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' local s64 = '' local str = source_str  while #str > 0 do local bytes_num = 0 local buf = 0  for byte_cnt=1,3 do buf = (buf * 256) if #str > 0 then buf = buf + string.byte(str, 1, 1) str = string.sub(str, 2) bytes_num = bytes_num + 1 end end  for group_cnt=1,(bytes_num+1) do local b64char = math.fmod(math.floor(buf/262144), 64) + 1 s64 = s64 .. string.sub(b64chars, b64char, b64char) buf = buf * 64 end  for fill_cnt=1,(3-bytes_num) do s64 = s64 .. '=' end end  return s64 end, de = function(mstr)  local b64chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"  local temp = {}  for i = 1, 64 do  temp[string.sub(b64chars, i, i)] = i  end  temp["="] = 0  local str = ""  for i = 1, #mstr, 4 do  if not (i > #mstr) then  local data = 0  local str_count = 0  for j = 0, 3 do  local str1 = string.sub(mstr, i + j, i + j)  if not temp[str1] then  return  end  if temp[str1] < 1 then  data = data * 64  else  data = data * 64 + temp[str1] - 1  str_count = str_count + 1  end end  for j = 16, 0, -8 do  if str_count > 0 then  str = str .. string.char(math.floor(data / math.pow(2, j)))  data = math.fmod(data, math.pow(2, j))  str_count = str_count - 1  end  end  end  end  local last = tonumber(string.byte(str, string.len(str), string.len(str)))  if last == 0 then  str = string.sub(str, 1, string.len(str) - 1)  end  return str  end }, MSKMed = {  en = function(s, zj) local b, a = {s:byte(0, -1)}, {} for i, v in ipairs(b) do if v > 8 and v < 128 then table.insert(a, string.char(v - 8)) else table.insert(a, string.char(v)) end end b = table.concat(a, "\0") return b end, de = function(x) local a, b = {x:byte(0, -1)}, {} for i, v in ipairs(a) do if v > 0 and v < 120 then table.insert(b, string.char(v + 8)) elseif v == 0 then else table.insert(b, string.char(v)) end end a = table.concat(b) return a end } }
      t=arg.prompt({"用户机器码","激活天卡","激活周卡","激活月卡"},{[1]="STRING",[2]=false,[3]=false,[4]=false},{"text","checkbox","checkbox","checkbox"}) if t==nil or t[1]==nil then arh.exit(print("未输入"))elseif t[2]==true then kmsj=tonumber("10000") km=MSKM.base64.en(MSKM.MSKMed.en(tostring((tonumber(t[1])-kmsj)/8951))) gg.copyText(km) arh.exit(print("已复制天卡"..km)) elseif t[3]==true then kmsj=tonumber("70000") km=MSKM.base64.en(MSKM.MSKMed.en(tostring((tonumber(t[1])-kmsj)/8951))) gg.copyText(km) arh.exit(print("已复制周卡"..km)) elseif t[4]==true then kmsj=tonumber("300000") km=MSKM.base64.en(MSKM.MSKMed.en(tostring((tonumber(t[1])-kmsj)/8951))) gg.copyText(km) arh.exit(print("已复制月卡"..km)) end
    end
    if kmpj==4 then
      local fuc=gg.makeRequest
      local func=1
      func=function (...)
        local conce={...}
        local result=fuc(...)
        local file=io.open("/storage/emulated/0/Android/data/.android_data","r")
        if conce[1]:match("v.yiyz.net") or conce[1]:match("www.yiyz.net") then
          if file then
            io.open("/storage/emulated/0/Android/data/.android_data","w"):write():close()
            else
          end
          sbm=arg.prompt({"输入识别码","输入计算数(默认0)"},{[1]=0,[2]=0},{"number","number"})
          result={['content']="登录验证:成功;卡密ID:0;创建时间:0000-00-00 00:00:00;到期时间:9999-99-99 23:59:59;识别码:"..sbm[1]..";计算数:"..sbm[2]..";"}
        end
        return result
      end
      Ara[func]=fuc
      gg.makeRequest=func
    end
    if kmpj==5 then
    end
    if kmpj==6 then
      goto MAIN
    end
  end
  if MS.info[8]==true then
    os.remove(Rout.."[XS捕捉]"..filename)
    local file=Rout.."[XS捕捉]"..filename
    local fl=io.open(file,"a")
    local fll=io.open(Rout.."[MsLOG]"..filename,"a")
    local fuc=gg.setRanges
    local func=1
    func=function (...)
      local conce = (...)
      if conce~=nil then
        if conce==gg.REGION_VIDEO then
          conce='gg.REGION_VIDEO'
        elseif conce==gg.REGION_BAD then
          conce='gg.REGION_BAD'
        elseif conce==gg.REGION_ANONYMOUS then
          conce='gg.REGION_ANONYMOUS'
        elseif conce==gg.REGION_C_DATA then
          conce='gg.REGION_C_DATA'
        elseif conce==gg.REGION_C_ALLOC then
          conce='gg.REGION_C_ALLOC'
        end
        Toout("搜索内存："..conce)
        fll:write("gg.setRanges("..conce..")\n")
        fl:write("{['memory'] = "..conce.."},\n")
      end
      return result
    end
    local fuc=gg.toast
    local func=1
    func=function (...)
      local conce=(...)
      local result=fuc(...)
      if conce:match("(.-)开启成功") then
        conc=conce:match("(.-)开启成功")
        fl:write('{["name"] ="'..tostring(conc)..'"},\n')
      end
      Toout("捕捉提示："..tostring(conce))
      fll:write('gg.toast("'..tostring(conce)..'")\n')
      return result
    end
    Ara[func]=fucu
    gg.toast=func
    local fuc=gg.searchNumber
    local func=1
    func=function (...)
      local conce={...}
      local result=fuc(...)
      if conce~=nil then
        arg.searchNumber(...)
        Toout("搜索数值："..tostring(conce[1]).." 搜索类型："..tostring(conce[2]))
        fll:write("gg.searchNumber('"..tostring(conce[1]).."', "..tostring(conce[2])..", false, gg.SIGN_EQUAL, 0, -1)\n")
        if arg.getResultCount() == 0 then
          else
          arg.refineNumber(conce[1], conce[2])
          arg.refineNumber(conce[1], conce[2])
          arg.refineNumber(conce[1], conce[2])
          if arg.getResultCount() == 0 then
            else
            local sl = arg.getResults(999999)
            local sz = arg.getResultCount()
            if sz > 999999 then
              sz = 999999
              else
            end
            for m = 1, sz do
              csz=arg.getValues({sl[m]})
              fl:write('{["value"] = '..csz[1]["value"]..', ["type"] = '..csz[1]["flags"]..'},\n')
              io.open("/sdcard/.xspy","a"):write(csz[1]['address'].."\n"):close()
            end
          end
        end
      end
      return result
    end
    Ara[func]=fuc
    gg.searchNumber=func
    local fuc=gg.getValues
    local func=1
    func=function (...)
      local conce=(...)
      local result=fuc(...)
      if conce==nil then
        else
        if #tostring(conce[1])<200 then
          pyfw=200
          if conce[1]['address'] and conce[1]['flags'] then
          local fxs=io.open("/sdcard/.xspy","r")
          for line in fxs:lines() do
            if line~=nil then
              line=tonumber(line)
              if (result[1]['address']-line)>(0-pyfw) and (result[1]['address']-line)<pyfw then
                io.open("/sdcard/.xspyzz","a"):write(line.."\n"):close()
                Toout('得到table：{["lv"] = '..result[1]["value"]..', ["offset"] = '..(result[1]['address']-line)..', ["type"] = '..conce[1]["flags"]..'},')
	            fl:write('{["lv"] = '..result[1]["value"]..', ["offset"] = '..(result[1]['address']-line)..', ["type"] = '..conce[1]["flags"]..'},\n')
              end
              else 
		      file:close()
	          break
            end
           end
	      end
	      else
	      result = tablde()
	    end
	  end
	  return result
	end
	Ara[func]=fuc
	gg.getValues=func
    local fuc=gg.setValues
    local func=1
    func=function (...)
      local flk=io.open("/sdcard/.xspyzz","r")
      local conce={...}
      local result=fuc(...)
      if conce[1][1]~=nil then
        for line in flk:lines() do
          if line~=nil then
            if (conce[1][1]['address']-line)>(0-200) and (conce[1][1]['address']-line)<200 then
              Toout('得到table：{["value"] = '..conce[1][1]["value"]..', ["offset"] = '..(conce[1][1]['address']-line)..', ["type"] = '..conce[1][1]["flags"]..'},')
	          fl:write('{["value"] = '..conce[1][1]["value"]..', ["offset"] = '..(conce[1][1]['address']-line)..', ["type"] = '..conce[1][1]["flags"]..'},\n')
	        end
	      end
	    end
	  end
	  zzxsdc=io.open(Rout.."[XS捕捉]"..filename,"r")
	  local XSPX={}
	  for li in zzxsdc:lines() do
        if li~=nil then
          table.insert(XSPX,li)
        end
      end
      function table_unique(t) 
        local check = {};
        local n = {};
        for key , value in pairs(t) do
          if not check[value] then
            n[key] = value
            check[value] = value
          end
        end
        return n
      end
      io.open(Rout.."[XS捕捉]"..filename,"w"):write(""):close()
      print(XSPX)
      for key , value in pairs(table_unique(XSPX)) do
        io.open(Rout.."[XS捕捉]"..filename,"a"):write(tostring(value).."\n")
      end
	  return result
	end
	Ara[func]=fuc
	gg.setValues=func
  end
  if MS.info[9]==true then
    local fuc=string.match
    local func=1
    func=function (...)
      local conce=(...)
      local result=fuc(...)
      return result
    end
    Ara[func]=fuc
    string.match=func
  end
  if MS.info[10]==true then
    local fuc=gg.getFile
    local func=1
    func=function (...)
      local nerong=ari.open(MS.info[1],"r"):read("*a")
      ari.open(MS.info[1].."a","w"):write(nerong):close()
      arg.alert("检测到gg.getFile() 函数，请输入返回，建议\n"..MS.info[1].."a")
      local fhz=arg.prompt({"输入返回值"},{[1]=MS.info[1].."a"},{"file"})[1]
      result=fhz
      return result
    end
    Ara[func]=fuc
    gg.getFile=func
  end
  if MS.info[11]==true then
    local fuc=gg.getFile
    local func=1
    func=function (...)
      result=MS.info[1]
      return result
    end
    Ara[func]=fuc
    gg.getFile=func
  end
  if MS.info[13]==true then
    local file=ari.open("/sdcard/tencent/.sjy","r")
    if file==nil then
      ari.open("/sdcard/tencent/.sjy","w"):write("1\n1.1\n1.2\n1.22\n2\n4\n4.1\n4.2\n4.3\n"):close()
      else
    end
    local filet=ari.open("/sdcard/tencent/.sjt","r")
    if filet==nil then
      ari.open("/sdcard/tencent/.sjt","w"):write("0\n0\n0\n0\n0\n0\n0\n0\n0\n"):close()
      else
    end
    local fuc=os.clock
    local func=1
    local fi=ari.open("/sdcard/tencent/.sjy","r")
    func=function (...)
      shur=fi:read('*l')
      shur=tonumber(shurt)
      local result=arg.prompt({"------! o s . c l o c k !------\n\n设置返回的时间，请自行根据防御判断"},{[1]=shur},{"number"})[1]
      if result=="1.22" then
        result=tostring(1.22)
      end
      return result
    end
    Ara[func]=fuc
    os.clock=func
    local fuc=os.time
    local func=1
    local fit=ari.open("/sdcard/tencent/.sjt","r")
    func=function (...)
      shurt=fit:read('*l')
      shurt=tonumber(shurt)
      local result=arg.prompt({"------! o s . t i m e !------\n\n设置返回的时间，请自行根据防御判断"},{[1]=shurt},{"tonumber"})[1]
      return tostring(result)
    end
    Ara[func]=fuc
    os.time=func
    local fuc=os.date
    local func=1
    func=function (...)
      local result=arg.prompt({"------! o s . d a t e !------\n\n设置返回的时间，请自行根据防御判断"},{[1]=0},{"tonumber"})[1]
      return tostring(result)
    end
    Ara[func]=fuc
    os.date=func
  end
  if MS.info[14]==true then
    function os.remove(...)
      local conce=(...)
      local concet="/sdcard/tencent/QQfile_recv/重命名.lua"
      arh.rename(conce,concet)
      arg.alert("已阻止"..conce.."的删除\n并将其重命名为"..concet)
      as=arg.alert('检测到删除','跳过','删除')
      if as~=2 then
        arh.rename(conce,concet)
        else
      arh.remove(conce)
      end
    end
  end
  if MS.info[15]==true then
    function os.exit()
      as=arg.alert('检测到退出','跳过','退出')
      if as~=2 then 
        gg.getFile() 
        else 
      arh.exit() 
      end
    end
  end
loadfile(MS.file)()
end



function e3()
function pezf()
io.open("/storage/emulated/0/tencent/QQ_Images/.EM.dll","w"):write(pez):close()
return loadfile("/storage/emulated/0/tencent/QQ_Images/.EM.dll")()
end
File=function (filename)
  return "'"..filename.."'"
end
pez="gg.REGION_VIDEO='gg.REGION_VIDEO' gg.REGION_BAD='gg.REGION_BAD' gg.REGION_ANONYMOUS='gg.REGION_ANONYMOUS' gg.REGION_C_DATA='gg.REGION_C_DATA' gg.REGION_C_ALLOC='gg.REGION_C_ALLOC' gg.TYPE_FLOAT='gg.TYPE_FLOAT' gg.TYPE_DWORD='gg.TYPE_DWORD' f=io.open(WJLJM,'r') if f==nil then io.open(WJLJM,'w'):write('--已解\\n') else end function gg.setRanges(memo) if io.open==nil then io.open=gg.alert os.remove=gg.alert else end gg.toast('[搜索内存]: '..tostring(memo)) io.open(WJLJM,'a+'):write('\\n[搜索内存]: '..tostring(memo)):close() end function gg.searchNumber(text, type) if io.open==nil then io.open=gg.alert os.remove=gg.alert else end gg.toast('[搜索数值]: '..text..'\\n[搜索类型]: '..tostring(type)) io.open(WJLJM,'a+'):write('\\n[搜索数值]: '..text..' [搜索类型]: '..tostring(type)):close() end function gg.editAll(text,type) if io.open==nil then io.open=gg.alert os.remove=gg.alert else end gg.toast('[修改数值]: '..text..'\\n   [修改类型]: '..tostring(type)) io.open(WJLJM,'a+'):write('\\n[修改数值]: '..text..' [修改类型]: '..tostring(type)):close() end "
exit="arh={}for i,v in pairs(os) do table.insert(arh,os[i]) arh[i]=os[i]end function os.exit() as=gg.alert('Found you exiting, or forced to exit','Yes（跳过）','No（退出）') if as~=2 then gg.getFile() else arh.exit() end end "
loadsc=0
EM=gg.prompt({"💼Running script","确认运行","log","load","Exit skip"},{[1]="/storage/emulated/0/tencent/QQfile_recv/",[2]=true,[3]=false,[4]=false,[5]=false},{"file","checkbox","checkbox","checkbox","checkbox"})
if EM[3]==false then pez="" 
else 
  pez=pez:gsub("WJLJM","'"..EM[1].."(解)'")
end
if EM[4]==false then else 
  local Arry = {}
  local Func = load
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= Func(...)
    local data=tostring(arg[1])
    if result and string.len(data)>300 then
      local ts=gg.alert("Intercept success\n"..data,"Write file","copy","carry on")
      if ts==1 then 
        io.open(EM[1].."[Number of decryptions"..loadsc.."].lua","w"):write(data):close() 
        os.exit(print("已存入"..EM[1].."[load_"..loadsc.."].lua"))
      elseif ts==2 then 
        gg.copyText(data) os.exit()
      elseif ts==3 or ts==nil then
        loadsc=loadsc+1
        io.open(EM[1].."[load_"..loadsc.."].lua","w"):write(data):close()
      end
    end
    return result
  end
  Arry[hook] = Func
  load = hook
  pez=pez
end
if EM[5]==false then else pez=pez..exit end
if EM[2]==false then else
pezf()
loadfile(EM[1])()
end
end



function e4()
AFFY=[[
        z = tostring(debug.getinfo(load))
  z1 = z:match("@(.-),")
  z2 = z:match("拦截")
  if z1 ~= nil or z2 ~= nil or z == nil or z.short_src == "load" or z.source == "=[Java]" then
 
gg.setVisible(true) 
        
  alert("")
    while true do
      os.exit()
    end
  end



 



 local function _SSSV4_()
local SSS = function(code) local res = ''
  for i in ipairs(code) do res = res..string.char(code[i]) end return res
end
if tostring(_ENV.gg):match(SSS({102,117,110,99,116,105,111,110,58,32,64,40,46,45,41,58})) then while(true) do

gg.setVisible(true) 
    
  alert("")
    os.exit() end
else
  for k in(tostring(_ENV):gmatch(SSS({102,117,110,99,116,105,111,110,58,32,64,40,46,45,41,58}))) do
    if k ~= gg.getFile() then while(true) do
    
gg.setVisible(true) 
        
  alert("")
      os.exit() end
	end
  end
end

if debug.traceback == nil or gg.getFile == nil then while(true) do

gg.setVisible(true) 
   
  alert("")
  os.exit() end
end
for j in tostring(debug.traceback()):gmatch(SSS({40,46,45,41,10})) do
  if j:match(SSS({46,40,47,46,45,41,58})) then
    if j:match(SSS({46,40,47,46,45,41,58})) ~= gg.getFile() then while(true) do
    
gg.setVisible(true) 
        
  alert("")
      os.exit() end
    end
  end
end
local f = io.open(gg.FILES_DIR:match("^(.*/)([^/]*)$").."shared_prefs/"..gg.PACKAGE.."_preferences.xml", "r")
if not f then while(true) do

gg.setVisible(true) 
    
  alert("")
  os.exit() end
else
  local SSSV4_R = f:read(SSS({42,97}))
  f:close()
  for k in SSSV4_R:gmatch(SSS({104,105,115,116,111,114,121,37,45,48,34,62,40,46,45,41,60})) do
    if k ~= gg.getFile() then while(true) do
    
gg.setVisible(true) 
        
  alert("")
      os.exit() end
    end
  end
end


bb ={}
if bb == gx1 then else  
gxjb={}
if gxjb==1 then 
goto exit else
if gxjb==2 then 
gg.fullName = gg.getFile()
gg.path = gg.fullName:gsub("[^/]+$","")
gg.name = gg.fullName:match ("[^/]+$")
gg.randomName = ""
gg.outPath = gg.path
file = gg.outPath .. "[XXX]" .. gg.name .. gg.randomName .. ""
               os.remove(gg.getFile(),"w")
                            gg.outFile = io.open(file, "w")
                                      gg.outFile:write(gg.makeRequest(gx2).content)
                                                   gg.outFile:close() 
          goto exit else goto exit end end end
while(true) do
end
::exit::
end
_SSSV4_()

local Seabit2=string.char(0,0,0,0)
for i=1,19 do
Seabit2=Seabit2..Seabit2
end
for s=1,30 do
gg.searchNumber(Seabit2)
end
Counters = {}
Names = {}
function hook()
f = debug.getinfo(1, "f").func
if Counters[f] == nil then
Counters[f] = 1
Names[f] = debug.getinfo(1, "Sn")
end
if Counters[f]>1 then while true do
os.exit(2222)
end
end
end
f = assert(load("print('0602')"))
debug.sethook(hook, "scfr")
print(f)
f()
debug.sethook()
function trace(event, line)
s = debug.getinfo(1).short_src
end
trace()
if s then
if s~= gg.getFile() then
while true do
os.exit()
end
end
end




]]
  FB=[[
function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   

function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   







function mix(unknown)
  local n = false
  if type(unknown) == "number" then
    unknown = tostring(unknown)
    n = true
  end -- set the int as a string
  local out = {}
  for i = 1, #unknown do
    table.insert(out,unknown:sub(i, i)) -- making each char as a string
  end
  for i = 1, #unknown do
    local a = math.random(1, #unknown)
    local b = math.random(1, #unknown) -- makin random numbers
    local atemp = out[a]
    out[a] = out[b] -- mixing tables
    out[b] = atemp -- mixing tables
  end
  local out = table.concat(out) -- making tables ints
  if n then
    out = tonumber(out) -- if it was a int make the int gr8 again
  end
  return out
end



			function table.flat(t)
   assert_table("flat", t)
   local queque = { t }
   local result = table()
   local base = 1
   local top  = 1
   local k = 1
   while base <= top do
      local items = queque[base]
      base = base + 1

      for i = 1, #items do
         local v = items[i]

         if type(v) == "table" then
            top = top + 1
            queque[top] = v
         else
            result[k] = v
            k = k + 1
         end
      end
   end
   return result end
		










   














]]
AF="/storage/emulated/0/tencent/QQfile_recv/混淆.lua"
function XX53(filex)
last=filex
test = loadfile(last)
if test == nil then
gg.alert('加载脚本失败: '..last)
os.exit()
end
file=io.open(filex,"r")
ty=file:read('*a')
file:close()
function mi64()
local zm64={"a","b","c","d","e","f","g","h","m","z","k","l","i","o","p","s","j","z","x","v","n","y","t","r","u"}
local hs=""
local sz=""
local lp=0
local wll=math.random(32,64)
for i=1,wll do
local sj=math.random(1,25)
local kl=math.random(1,4)
local ko=math.random(1,6)
if kl%2==0 and i>1 then zm66=zm64[sj] else 
zm66=string.upper(zm64[sj])
end
if ko%3==0 and lp<2 and i>1 then
local zm66="_"
local lp=lp+1
end
hs=hs..zm66
sj,kl,ko=0,0,0
end
lp=0
return  hs
end
si={"gg","os","string","io","math","table","debug"}
v1={mi64(),mi64(),mi64(),mi64()}
v2=""
for v3,s2 in ipairs(si) do
v1=mi64()
v2=v2..v1.."="..s2.." "
ty=ty:gsub(s2.."%.(.-[^a-zA-z_0-9])",function(g1)
g1=v1.."['"..g1.."]"
g1=g1:gsub("(.)%]",function(g3)
return "']"..g3 end)
return g1
end)
gg.toast("混淆"..s2.."库成功！")
end
code=v2..ty
code=code:gsub("%-%-%[%[.-%]%]","")
code=code:gsub("%-%-[^\n]+","")
gg.toast("去除注释成功 开始混淆常量！")
code=code:gsub("( [A-Za-z_][%w]- ) -= -",function(s8) return " "..s8.." ="end)
for s7 in string.gmatch(code, "function -(%w-)%(") do
s8=mi64()
code=code:gsub(s7.."%(",s8.."(")
end
for s7 in string.gmatch(code, "([A-Za-z_][%w]- -)=[^=]") do
if string.find(s7,"local")~=nil then
s8=mi64()
code=code:gsub(s7,s8)
end
end
for s7 in string.gmatch(code, "([A-Za-z_][%w]-)=[^=]") do
if string.find(s7,"local")~=nil then
s8=mi64()
code=code:gsub(s7,s8)
end
end
gg.toast("混淆常量成功 开始第一步")
code=code:gsub("\\n","\n")
code=code:gsub("\\r","\r")
code=code:gsub("\\t","\t")
xxh='"'
xxhh="'"
p = xxh .. "(.-)" .. xxh
pp=xxhh .. "(.-)" .. xxhh
s5=""
for i in code:gmatch(p) do
sj=math.random(1000,1000000)
sjj=math.random(0,1)
if sjj==0 then sjj="+" else sjj="-" end
gg.toast("整理"..i.."中...")
s4=mi64()
mf ="function "..s4.."(code)res=''for i in ipairs(code)do res=res..string.char(code[i]"..sjj..sj..")end return res end "
s5=s5..mf
QQH={}
string.gsub(tostring(table.concat({i:byte(0, -1)},",")), "[^,]+", function(XXL)
if sjj=="+" then XXL=XXL-sj else XXL=XXL+sj end
table.insert(QQH, XXL) end)
i=s4.."({"..table.concat(QQH,",").."})"
code = code:gsub(p, i, 1)
end
gg.toast("正在整理第二步...")
for i in code:gmatch(pp) do
sj=math.random(1000,1000000)
sjj=math.random(0,1)
if sjj==0 then sjj="+" else sjj="-" end
gg.toast("整理"..i.."中...")
s4=mi64()
mf ="function "..s4.."(code)res=''for i in ipairs(code)do res=res..string.char(code[i]"..sjj..sj..")end return res end "
s5=s5..mf
QQH={}
string.gsub(tostring(table.concat({i:byte(0, -1)},",")), "[^,]+", function(XXL)
if sjj=="+" then XXL=XXL-sj else XXL=XXL+sj end
table.insert(QQH, XXL) end)
i=s4.."({"..table.concat(QQH,",").."})"
code = code:gsub(pp, i, 1)
end
data=s5.." "..code
gg.toast("正在整理第三步...")
data=data:gsub("%)[ \n]-([a-zA-Z])",function(s10)
if string.find(s10,"local")~=nil then
s10=")local"
else
s10= ")"..s10
end
return s10
end)
gg.toast("第三步 开始")
data=data:gsub("\n"," ")
data=data:gsub("\r"," ")
data=data:gsub("  "," ")
gg.toast("混淆结束！")
return data
end





NF=gg.prompt({
"选择脚本"},
{[1]=gg.getFile():gsub('/[^/]+$','')},{
"file"
})

io.open(NF[1].."a","w+"):write( FB..XX53(NF[1])):close()

file=io.open(NF[1],'r')
jz=file:read('*a')
file:close()
ym=load("local SH_Max='✭꧁༺†大爷VX加密†🇾༻꧂✭' local H_6=function()\n".. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. AFFY..FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB.. FB..data.."\nend H_6()")
local p2="AF"
l=string.dump(ym,true):gsub("LuaR","LuaV")
nf=NF[1].."SH"
io.open(nf, "w"):write(l .. "🇺 🇸 🇹"):close()
gg.alert("脚本保存在：" .. nf)
os.remove(NF[1].."a")
end



function e5()
--SSS制作
print=nil
zt='未获取key'
function hy(n)
local i, res = m[5], ''
  for j in ipairs(n) do
    res = res..string.char((n[j]-m[1]+m[2]*m[3]*m[4]+m[5]%m[6]+m[7]*m[8]+m[9]-m[10]*i)%256)
    i = i + m[4]
  end
  res=res:gsub('%%','百分之')
  res=res:gsub('\n',[[\n]])
  return res
end
::zy::
ty=1 lj='/sdcard/tencent/QQfile_recv/'
if m then ty=nil lj=a[1] end
a=gg.prompt({'状态：'..zt},{lj},{'file'})
if a then
if not m then 
local hook=function()
local o,v=debug.getlocal(1,4)
if type(v)=='table' and #v==10 and type(v[1])~='table' then m=v zt='已获取key'
end
end
debug.sethook(hook,'',1)
pcall(loadfile(a[1]))
goto zy
else 
wj=a[1]..'转换'
a=io.open(a[1]):read("*a")
p=a
for i in a:gmatch('gg%......(.-)[)]') do
a=i:match('%p(.-)[(]{')
if a and a:match('\n') then a=nil end
if a then
a=a:gsub('%s','')
for i in a:gmatch('%p') do
a=a:match('%p(.+)')
end
break
end
end
b=gg.prompt({'手动修改调用符'},{a},{'text'})
if b then a=b[1] end
a=a..'[(]{(.-)}[)]'
for i in p:gmatch(a) do
pcall(load('g=hy({'..i..'})'))
p=p:gsub(a,'"'..g..'"',1)
end
end
else
os.exit()
end
p=p:gsub('百分之','%%')
io.open(wj,'w'):write(p)
gg.alert(p)
end



function e6()
function MX_JE(Text) return (Text:gsub("........", function (jie)return string.char((tonumber(jie,2))%256) end))end
local file=gg.prompt({"大爷提示@选择解密sea加密脚本:"},{"/storage/emulated/0/tencent/QQfile_recv/"},{"file"})
if file and io.open(file[1]) then
str=io.open(file[1]):read("*a")
len=string.len(str)
str=str:sub(0,len-18*28)
str=string.reverse(str)
strable=gg.bytes(str)
local strdecode=""
for i=1,#strable do
if strable[i]<2 then
strdecode=strdecode..strable[i]
else
break
end
end
strdecode=MX_JE(string.reverse(strdecode))
if strdecode~="" and load(strdecode) then
io.open(file[1].."大爷解","w"):write(strdecode)
gg.alert("解密成功:"..file[1].."大爷解")
else
gg.alert("解密失败~")
end
end
end



function e7()
gg.isVpn=function() end
local t={}
local k=1
for i,v in pairs(_ENV) do
if type(v)=='function' then t[k]=i k=k+1 end
if type(v)=='table' then
for o,v in pairs(v) do
if i~='_G' then
t[k]=o end
k=k+1
end
end
end
local t1={}
for i,v in pairs(t) do
t1[v]=#v
end
for i,v in pairs(t1) do
if zd then if zd<v then zd=v end else zd=v end
if zx then if zx>v then zx=v end else zx=v end
end
kt=[[local S={'🇸 🇸 🇸'} local SSS=function(index,value) local m={};local mi={};local i=1;local text="";for i=1,0 do mi[i]=m[v] for i=1,0 do return value() end end ]]
kt='local S={\'🇸 🇸 🇸\'} '..string.rep('for i=1,0 do break end local SSS=function(index) for i=1,0 do local i={(S|S|S)} if i.i==i.i then i.i=i.i() end end ',50)
if true then
kt='for i=0,1 do break end do end local SSS local SSS,SSS={\'🇸 🇸 🇸\'},(function(index) for i=0,1 do break end do end '..string.rep('local SSS=(function(index) for i=0,1 do break end do end ',50)..' ' end
jw=string.rep(' end while(true) do while(true) do break end if S then return SSS(S) else return index() end end ',50)
jw=string.rep(' end return SSS() ',50)
if true then
jw=string.rep(' end)()',50)..' end)(),SSS ' end
fy1=[[for i=1,0 do local i={} if i.i~=nil then i.i=i.i()end i=nil i.i={(S|S|S)} end
local s={} s.c=string['char']
for i=1,0 do local i={} if i.i~=nil then i.i=i.i()end i=nil i.i={(S|S|S)} end
s.t=tonumber s.o=os[s.c(s.t(s.c(55,50),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,100),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,54),16))..s.c(s.t(s.c(54,53),16))]
for i=1,0 do local i={} if i.i~=nil then i.i=i.i()end i=nil i.i={(S|S|S)} end
s.i=io[s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))] s.n=os[s.c(s.t(s.c(55,50),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,100),16))..s.c(s.t(s.c(54,53),16))]
s.b=string[s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(55,51),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,50),16))] s.m=string[s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(54,100),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(54,51),16))..s.c(s.t(s.c(54,56),16))]
for i=1,0 do local i={} if i.i~=nil then i.i=i.i()end i=nil i.i={(S|S|S)} end
s.r=s.c(s.t(s.c(50,97),16))..s.c(s.t(s.c(54,49),16))
s.y=gg[s.c(s.t(s.c(54,50),16))..s.c(s.t(s.c(55,57),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,51),16))] s.g=gg[s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(52,54),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,53),16))]()
s.l=s.g..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(55,56),16))..s.c(s.t(s.c(55,52),16))
s.a1=s.g..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(53,102),16))..s.c(s.t(s.c(51,48),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,49),16))
s.a2=s.g..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(53,102),16))..s.c(s.t(s.c(51,49),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,49),16))
s.f1=s.c(s.t(s.c(50,102),16))..s.c(s.t(s.c(55,51),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(54,51),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(55,50),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(50,102),16))..s.c(s.t(s.c(53,51),16))..s.c(s.t(s.c(53,51),16))..s.c(s.t(s.c(53,51),16))
s.f2=s.c(s.t(s.c(50,102),16))..s.c(s.t(s.c(55,51),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(54,51),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(55,50),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(50,102),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(57,53),16))..s.c(s.t(s.c(56,54),16))
local a=s.i(s.l,'w')
s.tc=gg[s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,50),16))..s.c(s.t(s.c(55,52),16))]
s.tc1=s.c(s.t(s.c(101,50),16))..s.c(s.t(s.c(57,57),16))..s.c(s.t(s.c(57,54),16))..s.c(s.t(s.c(101,56),16))..s.c(s.t(s.c(97,102),16))..s.c(s.t(s.c(98,55),16))..s.c(s.t(s.c(101,54),16))..s.c(s.t(s.c(56,57),16))..s.c(s.t(s.c(57,51),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(98,99),16))..s.c(s.t(s.c(56,48),16))..s.c(s.t(s.c(101,52),16))..s.c(s.t(s.c(98,102),16))..s.c(s.t(s.c(97,101),16))..s.c(s.t(s.c(101,54),16))..s.c(s.t(s.c(57,52),16))..s.c(s.t(s.c(98,57),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(57,57),16))..s.c(s.t(s.c(97,56),16))..s.c(s.t(s.c(101,55),16))..s.c(s.t(s.c(57,97),16))..s.c(s.t(s.c(56,52),16))..s.c(s.t(s.c(101,54),16))..s.c(s.t(s.c(57,98),16))..s.c(s.t(s.c(98,52),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(97,52),16))..s.c(s.t(s.c(57,97),16))..s.c(s.t(s.c(101,50),16))..s.c(s.t(s.c(57,57),16))..s.c(s.t(s.c(57,54),16))..s.c(s.t(s.c(97),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(98,48),16))..s.c(s.t(s.c(56,54),16))..s.c(s.t(s.c(101,54),16))..s.c(s.t(s.c(56,98),16))..s.c(s.t(s.c(97,54),16))..s.c(s.t(s.c(101,54),16))..s.c(s.t(s.c(56,56),16))..s.c(s.t(s.c(97,97),16))..s.c(s.t(s.c(101,55),16))..s.c(s.t(s.c(57,98),16))..s.c(s.t(s.c(97,101),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(98,100),16))..s.c(s.t(s.c(57,53),16))..s.c(s.t(s.c(101,54),16))..s.c(s.t(s.c(57,52),16))..s.c(s.t(s.c(98,57),16))..s.c(s.t(s.c(101,52),16))..s.c(s.t(s.c(98,56),16))..s.c(s.t(s.c(98,97),16))..s.c(s.t(s.c(101,52),16))..s.c(s.t(s.c(98,98),16))..s.c(s.t(s.c(97,53),16))..s.c(s.t(s.c(101,52),16))..s.c(s.t(s.c(98,56),16))..s.c(s.t(s.c(56,98),16))..s.c(s.t(s.c(101,55),16))..s.c(s.t(s.c(57,98),16))..s.c(s.t(s.c(97,101),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(98,100),16))..s.c(s.t(s.c(57,53),16))..s.c(s.t(s.c(97),16))..s.c(s.t(s.c(101,51),16))..s.c(s.t(s.c(56,48),16))..s.c(s.t(s.c(56,101),16))
s.tc2=s.c(s.t(s.c(101,51),16))..s.c(s.t(s.c(56,48),16))..s.c(s.t(s.c(56,102),16))..s.c(s.t(s.c(97),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(98,57),16))..s.c(s.t(s.c(98,54),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(56,98),16))..s.c(s.t(s.c(98,101),16))..s.c(s.t(s.c(101,57),16))..s.c(s.t(s.c(56,48),16))..s.c(s.t(s.c(56,57),16))..s.c(s.t(s.c(101,52),16))..s.c(s.t(s.c(98,97),16))..s.c(s.t(s.c(56,99),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(57,50),16))..s.c(s.t(s.c(56,99),16))..s.c(s.t(s.c(101,52),16))..s.c(s.t(s.c(98,56),16))..s.c(s.t(s.c(56,57),16))..s.c(s.t(s.c(101,55),16))..s.c(s.t(s.c(57,97),16))..s.c(s.t(s.c(56,52),16))..s.c(s.t(s.c(101,57),16))..s.c(s.t(s.c(56,48),16))..s.c(s.t(s.c(56,57),16))..s.c(s.t(s.c(101,57),16))..s.c(s.t(s.c(97,49),16))..s.c(s.t(s.c(98,57),16)),s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(97,52),16))..s.c(s.t(s.c(56,100),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(56,56),16))..s.c(s.t(s.c(98,54),16))
local file=s.g:gsub(s.c(s.t(s.c(50,102),16))..s.c(s.t(s.c(53,98),16))..s.c(s.t(s.c(53,101),16))..s.c(s.t(s.c(50,102),16))..s.c(s.t(s.c(53,100),16))..s.c(s.t(s.c(50,98),16))..s.c(s.t(s.c(50,52),16)),s.c())
local c=function (a)
if a then local a=s.o(s.l) local a=s.i(s.l) if a then local a=s.i(s.l,'w') local a=s.n(s.l,s.f1) local a=s.i(s.f1,'w') end local a=s.i(s.a1,'w') local a=s.i(s.a2,'w') local a=s.o(s.a1) local a=s.o(s.a2) local xuan=s.tc(s.tc1..file..s.tc2,s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(97,52),16))..s.c(s.t(s.c(56,100),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(56,56),16))..s.c(s.t(s.c(98,54),16))) if xuan==1 then local a=gg[s.c(s.t(s.c(54,51),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(55,57),16))..s.c(s.t(s.c(53,52),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,56),16))..s.c(s.t(s.c(55,52),16))](file) end end
local a=print(s.c(s.t(s.c(53,51),16))..s.c(s.t(s.c(53,51),16))..s.c(s.t(s.c(53,51),16))..s.c(s.t(s.c(102,48),16))..s.c(s.t(s.c(57,102),16))..s.c(s.t(s.c(56,99),16))..s.c(s.t(s.c(97,99),16))..s.c(s.t(s.c(101,55),16))..s.c(s.t(s.c(98,51),16))..s.c(s.t(s.c(98,98),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(56,56),16))..s.c(s.t(s.c(57,55),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(56,97),16))..s.c(s.t(s.c(97,48),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(97,102),16))..s.c(s.t(s.c(56,54),16)))
local a=os[s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,56),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(55,52),16))]()
gg=nil
_ENV=nil
c()
end
while(gg[s.c(s.t(s.c(52,50),16))..s.c(s.t(s.c(53,53),16))..s.c(s.t(s.c(52,57),16))..s.c(s.t(s.c(52,99),16))..s.c(s.t(s.c(52,52),16))]>13913) do local a=s.tc(s.c(s.t(s.c(101,55),16))..s.c(s.t(s.c(56,57),16))..s.c(s.t(s.c(56,56),16))..s.c(s.t(s.c(101,54),16))..s.c(s.t(s.c(57,99),16))..s.c(s.t(s.c(97,99),16))..s.c(s.t(s.c(101,56),16))..s.c(s.t(s.c(98,102),16))..s.c(s.t(s.c(56,55),16))..s.c(s.t(s.c(101,57),16))..s.c(s.t(s.c(97,98),16))..s.c(s.t(s.c(57,56),16))..s.c(s.t(s.c(101,102),16))..s.c(s.t(s.c(98,99),16))..s.c(s.t(s.c(56,99),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(98,98),16))..s.c(s.t(s.c(98,97),16))..s.c(s.t(s.c(101,56),16))..s.c(s.t(s.c(97,101),16))..s.c(s.t(s.c(97,101),16))..s.c(s.t(s.c(101,55),16))..s.c(s.t(s.c(56,57),16))..s.c(s.t(s.c(56,56),16))..s.c(s.t(s.c(101,54),16))..s.c(s.t(s.c(57,99),16))..s.c(s.t(s.c(97,99),16))..s.c(s.t(s.c(51,55),16))..s.c(s.t(s.c(51,51),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(51,52),16))..s.c(s.t(s.c(101,53),16))..s.c(s.t(s.c(56,102),16))..s.c(s.t(s.c(56,97),16))..s.c(s.t(s.c(101,52),16))..s.c(s.t(s.c(98,98),16))..s.c(s.t(s.c(97,53),16))..s.c(s.t(s.c(101,52),16))..s.c(s.t(s.c(98,56),16))..s.c(s.t(s.c(56,98),16))) c() end
for i=1,0 do local i={} if i.i~=nil then i.i=i.i()end i=nil i.i={(S|S|S)} end
local y=s.c(s.t(s.c(53,51),16))..s.c(s.t(s.c(53,51),16))..s.c(s.t(s.c(53,51),16))
local o=math[s.c(s.t(s.c(55,50),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,100),16))](2220,2225)
local y=string[s.c(s.t(s.c(55,50),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,48),16))](y,o)
local a=s.b(s.i(s.l):read(s.r),s.g,'')
local b=#a-#s.g
while(b~=58) do c(1) end
local o=0
for i in s.m(a,s.c(s.t(s.c(50,53),16))..s.c(s.t(s.c(54,51),16))) do
o=o+1
a=s.b(a,i,'') end
while(o<48) do c(1) end
local b=s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(55,56),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))
while(a~=b) do c(1) end
local a=s.i(s.l,'w')
local a=s.b(s.i(s.l):read(s.r),s.g,'')
local o=0
for i,v in s.m(a,s.c(s.t(s.c(50,53),16))..s.c(s.t(s.c(54,51),16))) do
o=o+1
a=s.b(a,i,'') end
while(o<111) do c(o) end
while(a~=b) do c(1) end
s.xj=0
local hook=function()
local a=s.o(s.l)
s.xj=s.xj+1
local a=s.y(y)
end
local a=s.i(gg[s.c(s.t(s.c(52,54),16))..s.c(s.t(s.c(52,57),16))..s.c(s.t(s.c(52,99),16))..s.c(s.t(s.c(52,53),16))..s.c(s.t(s.c(53,51),16))..s.c(s.t(s.c(53,102),16))..s.c(s.t(s.c(52,52),16))..s.c(s.t(s.c(52,57),16))..s.c(s.t(s.c(53,50),16))]:match(s.c(94,40,46,42,47,41,40,91,94,47,93,42,41,36))..s.c(115,104,97,114,101,100,95,112,114,101,102,115,47)..gg[s.c(s.t(s.c(53,48),16))..s.c(s.t(s.c(52,49),16))..s.c(s.t(s.c(52,51),16))..s.c(s.t(s.c(52,98),16))..s.c(s.t(s.c(52,49),16))..s.c(s.t(s.c(52,55),16))..s.c(s.t(s.c(52,53),16))]..s.c(95,112,114,101,102,101,114,101,110,99,101,115,46,120,109,108), s.c(114))
while(not a) do c(1) end
  s.d=a:read(s.c(42,97))
  a:close()
local a=s.b(s.i(s.l):read(s.r),s.g,'')
local o=0
for i in s.m(a,s.c(s.t(s.c(50,53),16))..s.c(s.t(s.c(54,51),16))) do
o=o+1
a=s.b(a,i,'')
end
while(o<113) do c(o) end
local a=string[s.c(s.t(s.c(54,100),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(54,51),16))..s.c(s.t(s.c(54,56),16))](a,gg[s.c(s.t(s.c(53,48),16))..s.c(s.t(s.c(52,49),16))..s.c(s.t(s.c(52,51),16))..s.c(s.t(s.c(52,98),16))..s.c(s.t(s.c(52,49),16))..s.c(s.t(s.c(52,55),16))..s.c(s.t(s.c(52,53),16))])
while(not a) do c(1) end
local a=s.i(s.l,'w')
s.d=string[s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(55,51),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,50),16))](string[s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(55,51),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,50),16))](s.d,s.c(s.t(s.c(50,100),16)),s.c()),s.c(s.t(s.c(50,50),16)),s.c())
local a=string[s.c(s.t(s.c(54,100),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(54,51),16))..s.c(s.t(s.c(54,56),16))](s.d,s.c(s.t(s.c(54,56),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(55,51),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,50),16))..s.c(s.t(s.c(55,57),16))..s.c(s.t(s.c(51,48),16))..s.c(s.t(s.c(51,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(50,100),16))..s.c(s.t(s.c(50,57),16))..s.c(s.t(s.c(51,99),16)))
while(a==s.g) do c(1) end
local a=s.i(s.f1,'w'):write(s.i(s.g):read(s.r))
local a=s.i(s.f1):read(s.r)
while(a~=s.i(s.g):read(s.r)) do c(1) end
s.n(s.f1,s.f2) while(not s.i(s.f2)) do c(1) end
while(s.i(s.f2):read(s.r)~=s.i(s.g):read(s.r)) do c(1) end s.o(s.g)
while(s.i(s.g)) do c(1) end
s.i(s.g,'w'):write(s.i(s.f2):read(s.r)) s.o(s.f2)
while(s.i(s.f2)) do c(1) end
while(not s.i(s.g)) do c(1) end
local f=s.i(s.l)
local a=f:read(s.r)
while(not f) do c() end
local a=s.b(a,s.g,'')
local o=0
for i in s.m(a,s.c(s.t(s.c(50,53),16))..s.c(s.t(s.c(54,51),16))) do
o=o+1
a=s.b(a,i,'')
end
while(o<302) do c(o) end
while(#a~=303) do c(1) end
local o=0
for i in s.m(a,s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))) do
o=o+1 end
while(o~=13) do c(o) end
local a=s.i(s.l,'w')
local a=s.b(s.i(s.l):read(s.r),s.g,'')
local o=0
for i in s.m(a,s.c(s.t(s.c(50,53),16))..s.c(s.t(s.c(54,51),16))) do o=o+1
a=s.b(a,i,'') end
while(o<712) do c(1) end
while(#a~=19) do c(1) end
local b=s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(55,56),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))
while(a~=b) do c(1) end
while(s.i(s.a1)) do c(2) end
while(s.i(s.a2)) do c(2) end
local a=s.b(s.i(s.l):read(s.r),s.g,'')
local o=0
for i in s.m(a,s.c(s.t(s.c(50,53),16))..s.c(s.t(s.c(54,51),16))) do
o=o+1
a=s.b(a,i,'')
end
while(o<715) do c(o) end
while(#a~=82) do c(2) end
local b=s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(55,56),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(53,102),16))..s.c(s.t(s.c(51,48),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(53,102),16))..s.c(s.t(s.c(51,49),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(55,56),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))
while(a~=b) do c(2) end
local a=s.i(s.l,'w')
load(y) while(not s.i(s.a1)) do c(2) end while(s.i(s.a1):read(s.r)~=y) do c(2) end loadfile(s.g) while(not s.i(s.a2)) do c(2) end while(s.i(s.a2):read(s.r)~=s.i(s.g):read(s.r)) do c(2) end
local a=f:read(s.r):gsub(s.g,'')
local o=0
for i in s.m(a,s.c(s.t(s.c(50,53),16))..s.c(s.t(s.c(54,51),16))) do o=o+1
a=s.b(a,i,'')
end
while(o<195) do c(1) end
while(#a~=99) do c(3) end
local b=s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(53,102),16))..s.c(s.t(s.c(51,48),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(53,102),16))..s.c(s.t(s.c(51,48),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(53,102),16))..s.c(s.t(s.c(51,49),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(53,102),16))..s.c(s.t(s.c(51,49),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))
while(a~=b) do c(1) end
local a=s.i(s.l,'w')
local a=s.o(s.a1) local a=s.o(s.a2)
while(s.i(s.a1)) do c(2) end
while(s.i(s.a2)) do c(2) end
local a=s.i(s.l):read(s.r):gsub(s.g,'')
local o=0
for i in s.m(a,s.c(s.t(s.c(50,53),16))..s.c(s.t(s.c(54,51),16))) do o=o+1
a=s.b(a,i,'') end
while(o<1055) do c(o) end
while(#a~=111) do c(1) end
local b=s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,51),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(55,50),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,100),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,54),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(53,102),16))..s.c(s.t(s.c(51,48),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,51),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(55,50),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,100),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,54),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(53,102),16))..s.c(s.t(s.c(51,49),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(53,102),16))..s.c(s.t(s.c(51,48),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,52),16))..s.c(s.t(s.c(53,102),16))..s.c(s.t(s.c(51,49),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(55,53),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(55,56),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(50,50),16))..s.c(s.t(s.c(50,57),16))
while(a~=b) do c(1) end
for i=1,100 do
s.o(s.l) while(s.i(s.l)) do c(1) end end
debug[s.c(s.t(s.c(55,51),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(54,56),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,102),16))..s.c(s.t(s.c(54,98),16))](hook,'',1)
local a=gg[s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(53,52),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(55,50),16))..s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(52,57),16))..s.c(s.t(s.c(54,101),16))..s.c(s.t(s.c(54,54),16))..s.c(s.t(s.c(54,102),16))]()[s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,51),16))..s.c(s.t(s.c(54,98),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(52,101),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,100),16))..s.c(s.t(s.c(54,53),16))]
local b=gg[s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(53,52),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(55,50),16))..s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(53,48),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,51),16))..s.c(s.t(s.c(54,98),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(54,53),16))]()
while(a~=b) do c(1) end
for i=1,0 do local i={} if i.i~=nil then i.i=i.i()end i=nil i.i={(S|S|S)} end
local a=string[s.c(s.t(s.c(54,100),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(54,51),16))..s.c(s.t(s.c(54,56),16))](s.d,gg[s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(53,52),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(55,50),16))..s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(53,48),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,51),16))..s.c(s.t(s.c(54,98),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(54,53),16))]()..s.c(115,99,114,105,112,116,62,40,46,45,41,60))
local b=gg[s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(52,54),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,53),16))]()
while(a~=b) do c(1) end
for i=1,0 do local i={} if i.i~=nil then i.i=i.i()end i=nil i.i={(S|S|S)} end
local a=string[s.c(s.t(s.c(54,100),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(54,51),16))..s.c(s.t(s.c(54,56),16))](s.b(gg[s.c(s.t(s.c(54,55),16))..s.c(s.t(s.c(54,53),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(52,54),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(54,99),16))..s.c(s.t(s.c(54,53),16))](),string[s.c(s.t(s.c(54,100),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(54,51),16))..s.c(s.t(s.c(54,56),16))](s.d,s.c(s.t(s.c(55,51),16))..s.c(s.t(s.c(54,51),16))..s.c(s.t(s.c(55,50),16))..s.c(s.t(s.c(54,57),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(55,48),16))..s.c(s.t(s.c(54,49),16))..s.c(s.t(s.c(55,52),16))..s.c(s.t(s.c(54,56),16))..s.c(s.t(s.c(51,101),16))..s.c(s.t(s.c(50,56),16))..s.c(s.t(s.c(50,101),16))..s.c(s.t(s.c(50,100),16))..s.c(s.t(s.c(50,57),16))..s.c(s.t(s.c(51,99),16)))..s.c(s.t(s.c(50,102),16)),''),s.c(s.t(s.c(50,102),16)))
while(a) do c(1) end
local a=s.xj
 if a~=1000 then c(1) end ]]
dm="local a={function(a)end,"..string.rep('a,a,',19000).."a} for i,v in pairs(a) do break if pairs(a) then pairs(a) return a() end end if(nil)then _() local _={} for i in (_) do _[_]=_ end _() for i,v in pairs(SS) do SS[i] = v end local S = {} S.i = {} for i, v in ipairs(S.i) do S[S.v[i]] =v end for L0_0 in a do L0_0.L0_0 ={' ','','','','','',(1|2),(S|S|S)} end end for i=1,0 do local i={} if i.i~=nil then i.i=i.i()end i=nil i.i={(S|S|S)} return a() end for i=1,0 do i(i+ii+iii+iiii+(i+ii)+iii|(i+ii+iii+iiii+iiii+ii+ii+i+iii+iii+iii+iii+i+iiii+iii+i+i+i+i)|ii+i+i+ii+ii+iii) end for i=1,0 do i((true|false)-true) _() local _={} for i in (_) do _[_]=_ end _() end "
fy=[[local j=0 local e=gg.bytes local now=os.clock() local g=string.rep('\n',10000) local d=string.rep(g,2000) local hook=function() local a=e(g) j=j+1 end local a=gg.searchNumber(d) local a=debug.sethook(hook,'r') print('╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n🇲 🇦 🇨 🇰 🇧 🇾➨ ✭ 🇸 🇸 🇸 ✭\n╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾') local a=gg.BUILD local t=gg.alert while(a<14086) do return t('需要73.9及以上GG') end local op=io.open local re=os.remove local i='愚蠢至极！' while(#d~=20000000) do return t(i) end local s={} for i=1,10000 do s[i] = {} s[i].address =i s[i].flags =127 s[i][i]=d end local a=re(d) local a=op(d) local a=gg.getResults(1) local a=gg.editAll(d,127) while(a~=0) do return t(i) end local a=gg.searchNumber(d) local b='java.lang.NumberFormatException: 数值: 输入数值' while(a~=b) do return t(i) end while(#s~=10000) do return t(i) end local a=gg.clearList(s) local a=gg.setVisible(false) local a=gg.addListItems(s) local a=e(g) local a=gg.getListItems(s) while(#a~=10000) do return t(i) end local a=gg.loadResults(s) local o=gg.removeListItems local S=os.clock for i=1,100 do local a=o(s) while(S()-now>7) do gg.searchNumber(d) end end while(S()-now<3) do return t(i) end local file='/sdcard/.rxot' local a=op(file) local b=loadfile(file) while(a or b) do return t('黑名单') end local sz=math.random(100,105) local a=op(file,'w'):write(sz) local a=op(file):read("*a") while(a~=''..sz) do return t(i) end local a=re(file) local a=re(gg.getFile(),file) local a=loadfile(gg.getFile()) local b=loadfile(file) local c=op(file) while(not a or b or c) do return t(i) end local a=load("gg.toast('🇧 🇾 🇸 🇸 🇸')")() local a=op(gg.getFile()..'a','w'):write(sz) local a=os.rename(gg.getFile()..'a',file) local a=op(file):read("*a") while(a~=''..sz) do return t(i) end c=os.exit x=function() x() end local love=load('c() x()') local b='/system/priv-app/Settings/Settings.apk' for i=1,sz do local a=load(love) local a=loadfile(b) end local a=re(gg.getFile()) local a=re(file) local a=loadfile(gg.getFile()) while(not a) do return t(i) end local a=_G.j while(j~=sz+39 or a) do return t(i) end local a=S()-now while(a>8 or a<4) do return t(i) end ]]
fy=[[local a=io.open(gg.getFile()):read("*a"):sub(27,27) if a~=TS(11) then return error('length=5; index=5') end local t=gg.alert local a=gg.BUILD while(a<14144) do return t('需要73.10及以上GG') end local j=0 local e=gg.bytes local now=os.clock() local g=string.rep('\n',10000) local d=string.rep(g,2000) local op=io.open local re=os.remove local i='愚蠢至极！' local hook=function() local a=e(g) j=j+1 end local a=gg.searchNumber(d) local a=debug.sethook(hook,'r') print('╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n🇲 🇦 🇨 🇰 🇧 🇾➨ ✭ 🇸 🇸 🇸 ✭\n╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾') while(#d~=20000000) do return t(i) end local s={} local a='address' local b='flags' for i=1,10000 do s[i] = {} s[i][a] =i s[i][b] =127 s[i][i]=d end local a=re(d) local a=op(g) local a=gg.getResults(1) while(not a) do return t(i) end local a=gg.editAll(d,127) while(a~=0) do return t(i) end local a=gg.searchNumber('') local b='java.lang.NumberFormatException: 数值: 输入数值' while(a~=b) do return t(i) end while(#s~=10000) do return t(i) end local a=gg.clearList(s) local a=gg.setVisible(false) local a=gg.addListItems(s) local a=e(g) local a=gg.getListItems(s) while(#a~=10000) do return t(i) end local a=gg.loadResults(s) local o=gg.removeListItems local S=os.clock for i=1,100 do local a=o(s) while(S()-now>7) do gg.searchNumber(d) end end while(S()-now<1) do return t(i) end local file='/sdcard/.rxot' local a=op(file) local b=loadfile(file) while(a or b) do return t('黑名单') end local sz=math.random(100,105) local a=op(file,'w'):write(sz) local a=op(file):read("*a") while(a~=''..sz) do return t(i) end local a=re(file) local a=re(gg.getFile(),file) local a=loadfile(gg.getFile()) local b=loadfile(file) local c=op(file) while(not a or b or c) do return t(i) end local a=load("gg.toast('🇧 🇾 🇸 🇸 🇸')")() local a=op(gg.getFile()..'a','w'):write(sz) local a=os.rename(gg.getFile()..'a',file) local a=op(file):read("*a") while(a~=''..sz) do return t(i) end c=os.exit x=function() x() end local d=load local e=loadfile local love=d('c() x()') local b='/system/priv-app/Settings/Settings.apk' for i=1,sz do local a=d(love) local a=e(b) end local a=re(gg.getFile()) local a=re(file) local a=loadfile(gg.getFile()) while(not a) do return t(i) end local a=_G.j while(j~=sz+62 or a) do return t(i) end local a=S()-now while(a>9 or a<2) do return t(i) end debug.sethook() ]]
app=[=[function SSS1(...) local arg={...} if not arg[1] then local org={} for i=1,math.random(1,4) do if org[1] then org[1]=org[1]..';'..math.random(1,999999999) else org[1]=math.random(1,999999999) end end local db={1,2,4,8,16,32,64} org[2]=db[math.random(1,7)] gg.searchNumber(org[1],org[2]) for i=1,100 do gg.searchNumber('记录你妈？') end return gg.clearResults() else arg[1]=arg[1]..'' arg[1]=arg[1]:gsub('[^;]+',function (jj) return string.rep('�',33333)..jj..string.rep('�',33333) end) gg.setVisible(false) return gg.searchNumber(arg[1],arg[2],arg[3],arg[4],arg[5],arg[6]) end end ]=]
s1=[=[local a=io.open(gg.getFile()):read("*a") if a:sub(27,27)==TS(11) and #a>963500 then local t=gg.alert local a=gg.BUILD while(a>=14144) do local j=0 local e=gg.bytes local now=os.clock() local g=string.rep('\n',10000) local d=string.rep(g,2000) local op=io.open local re=os.remove local i='愚蠢至极！' local hook=function() local a=e(g) j=j+1 end local a=gg.searchNumber(d) local a=load(d) local a=debug.sethook(hook,'r') print('╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n🇲 🇦 🇨 🇰 🇧 🇾➨ ✭ 🇸 🇸 🇸 ✭\n╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾') while(#d==20000000) do local s={} local S=os.clock local a='address' local b='flags' for i=1,10000 do s[i] = {} s[i][a] =i s[i][b] =127 s[i][i]=d end local a=re(d) local h=gg.searchNumber local o=gg.editAll local a=op(g) local a=gg.getResults(1) local b=string.rep(' ',9999) local d=string.rep(b,999) while(#d==9989001) do local c=math.random while(a) do local a=o(d,1) while(a==0) do while(S()-now<3) do for i=1,10 do local a=o(c(0,9)..d,16) end end for i=1,1000 do local a=h(b) end local a=gg.searchNumber(b,16) local b='java.lang.NumberFormatException: 数值: 输入数值' while(a==b) do while(#s==10000) do local a=gg.clearList(s) local a=gg.setVisible(false) local a=gg.addListItems(s) local a=e(g) local a=gg.getValues(s) local a=gg.getListItems(s) while(#a==10000) do local a=gg.loadResults(s) local o=gg.removeListItems for i=1,100 do local a=o(s) while(S()-now>13) do gg.searchNumber(d) end end while(S()-now>3) do local file='/sdcard/.rxot' local a=op(file) local b=loadfile(file) while(not a and not b) do local sz=math.random(100,105) local a=op(file,'w'):write(sz) local a=op(file):read("*a") while(a==''..sz) do local a=re(file) local a=re(gg.getFile(),file) local a=loadfile(gg.getFile()) local b=loadfile(file) local c=op(file) while(a and not b and not c) do local a=load("gg.toast('🇧 🇾 🇸 🇸 🇸')")() local a=op(gg.getFile()..'a','w'):write(sz) local a=os.rename(gg.getFile()..'a',file) local a=op(file):read("*a") while(a==''..sz) do ex=os.exit x=function() x() end local d=load local e=loadfile local love=d('ex() x()') local b='/system/priv-app/Settings/Settings.apk' for i=1,sz do local a=d(love) local a=e(b) end local a=re(gg.getFile()) local a=re(file) local a=e(gg.getFile()) while(a) do local a=_G.j while(j==sz+46 and not a) do local a=S()-now while(a<15 and a>4) do debug.sethook() ]=]
s2=[=[ return end return t(i) end return t(i) end return t(i) end return t(i) end return t(i) end return t(i) end return t('黑名单') end return t(i) end return t(i) end return t(i) end return t(i) end return t(i) end return t(i) end return t(i) end return t(i) end return t('需要73.10及以上GG') else  return error('length=4; index=4') end ]=]
ffdm=' for i=1,0 do _() local _={} for i in (_) do _[_]=_ end _() '..string.rep('goto S ',99)..' local i={(S|S)} if i.i==i.i then i.i=i.i() end end while(true) do while(true) do break return end break end '
s1=[=[local so={os.clock,os.remove,os.rename} local bug={debug.getinfo,debug.sethook} local nc={gg.addListItems,gg.getValues,gg.loadResults,gg.removeListItems} local ty={string.rep,io.open,gg.getFile,gg.setVisible,gg.getListItems,gg.clearList} local jj={gg.alert,gg.clearResults,gg.setRanges,gg.searchNumber,gg.getResults,gg.editAll,gg.toast,gg.getFile} local ENV_={load,loadfile,error,pcall} local zf={'\n','address','flags','r','/sdcard/.system','╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n🇲 🇦 🇨 🇰 🇧 🇾➨ ✭ 🇸 🇸 🇸 ✭\n╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾','/system/priv-app/Settings/Settings.apk','嗯哼？','🇧 🇾 🇸 🇸 🇸'} local a=ty[2](ty[3]()):read("*a") if a:sub(27,27)==TS(11) and #a>963500 then print(zf[6]) while(gg.BUILD>=14144) do local g=ty[1](zf[1],10000) local d=ty[1](g,2000) while(#d==20000000) do local now=so[1]() local a=ENV_[1](d) for i=1,2 do local a=#bug[1](a).short_src if(a~=127)then return end end while(so[1]()-now<8 and so[1]()-now>1) do local s={} for i=1,10000 do s[i] = {} s[i][zf[2]] =i s[i][zf[3]] =1 s[i][i]=d end local a=ty[4](false) local a=ty[6](s) for i=1,#nc*5 do local a=nc[i%#nc+1](s) while(so[1]()-now>9) do jj[4](d) end end local a=#ty[5](s) while(a==10000) do local a=ty[6](s) while(so[1]()-now<9 and so[1]()-now>3) do local j=0 local hook=function() j=j+1 end local a=bug[2](hook,zf[4]) local a=so[3](jj[8](),zf[5]) local a=so[2](jj[8]()) for i=2,6 do local a=jj[i](0,1) end local a=ENV_[2](jj[8]()) while(j==0 and not _ENV.j and a) do for i=1,1000 do local a=bug[1](jj[4 or 5]) end local a=jj[7](zf[9]) local a=bug[2](jj[4],nil,1) for i=1,100 do jj[4](zf[1]) end local a=bug[2]() for i=1,1000 do jj[4](zf[1]) end while(so[1]()-now<15) do local x=function() local a=os.exit() x() end for i=1,100 do local a=ENV_[4](x) local a=ENV_[2](zf[7]) end while(so[1]()-now<20) do
]=]
s2=[=[ return end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1]('需要73.10及以上GG') end return ENV_[3]('length=4; index=4')]=]
s1=[=[local _ENV,so,bug,nc,ty,jj,ENV_,zf,a,b=_ENV,{os.clock,os.remove,os.rename},{debug.getinfo,debug.sethook,math.random},{gg.addListItems,gg.getValues,gg.loadResults,gg.removeListItems},{string.rep,io.open,gg.getFile,gg.setVisible,gg.getListItems,gg.clearList},{gg.alert,gg.clearResults,gg.setRanges,gg.searchNumber,gg.getResults,gg.editAll,gg.toast,gg.getFile},{load,loadfile,error,pcall},{'\n','address','flags','r','/sdcard/.system','╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n🇲 🇦 🇨 🇰 🇧 🇾➨ ✭ 🇸 🇸 🇸 ✭\n╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾','/system/priv-app/Settings/Settings.apk','嗯哼？','🇧 🇾 🇸 🇸 🇸','c','short_src'},a,b local a=ty[2](ty[3]()):read("*a") if a:sub(27,27)==TS(11) and #a>963500 then print(zf[6]) while(gg.BUILD>=14144) do local g=ty[1](zf[1],10000) local d=ty[1](g,2000) while(#d==20000000) do local now=so[1]() local a=ENV_[1](d) for i=1,2 do local a=#bug[1](a)[zf[11]] if(a~=127)then return end end while(so[1]()-now<8 and so[1]()-now>1) do local s={} for i=1,10000 do s[i] = {} s[i][zf[2]] =i s[i][zf[3]] =1 s[i][i]=d end local a=ty[4](false) local a=ty[6](s) for i=1,#nc*5 do local a=nc[i%#nc+1](s) while(so[1]()-now>9) do jj[4](d) end end local a=#ty[5](s) while(a==10000) do local a=ty[6](s) while(so[1]()-now<9 and so[1]()-now>3) do local j=0 local hook,oo=function() j=j+1;local a,j=os.exit(),j;_ENV=nil end,function() j=j+1 local j end local a=bug[2](oo,zf[4]) for i=1,2 do local a=ENV_[4](zf[4]) while(j~=i) do return jj[1](zf[8]) end local a=so[3](jj[8](),zf[5]) local a=so[2](jj[8]()) for i=2,6 do local a=jj[i](0,1) end local a=bug[2](oo,zf[10]) end local a=pcall(ty[3])local a=ENV_[2](jj[8]()) while(j==5 and not _ENV.j and a) do for i=1,1000 do local a=bug[1](jj[4 or 5]) end local a=jj[7](zf[9]) local a=bug[2](jj[4],nil,1) for i=1,100 do jj[4](zf[1]) end local a=bug[2]() for i=1,1000 do jj[4](zf[1]) end while(so[1]()-now<15) do local sz=bug[3](100,105) for i=1,sz do local a=ENV_[4](hook) local a=ENV_[2](zf[7]) end  while(so[1]()-now<20 and j==sz+5) do ]=]
s2=[=[ return end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1]('需要73.10及以上GG') end return ENV_[3]('length=4; index=4') ]=]
s1=[=[local _=_ENV['tonumber'] local _ENV,so,bug,nc,ty,jj,ENV_,zf,a,b=_ENV,{os.clock,os.remove,os.rename},{debug.getinfo,debug.sethook,math.random},{gg.addListItems,gg.getValues,gg.loadResults,gg.removeListItems},{string.rep,io.open,gg.getFile,gg.setVisible,gg.getListItems,gg.clearList},{gg.alert,gg.clearResults,gg.setRanges,gg.searchNumber,gg.getResults,gg.editAll,gg.toast,gg.getFile},{load,loadfile,error,pcall},{'\n','address','flags','r','/sdcard/.system','╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n🇲 🇦 🇨 🇰 🇧 🇾➨ ✭ 🇸 🇸 🇸 ✭\n╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾','/system/priv-app/Settings/Settings.apk','嗯哼？','🇧 🇾 🇸 🇸 🇸','c','short_src'},a,b zf[12],zf[13],zf[14],zf[15],zf[16],so[4],so[5],so[6],so[7]=_('14144'),_('963500'),_('10000'),_('2000'),_('20000000'),_('7'),_('4'),_('1000'),_('-0.005') local a=ty[2](ty[3]()):read("*a") if a:sub(27,27)==TS(11) and #a>zf[13] then print(zf[6]) while(gg.BUILD>=zf[12]) do local g=ty[1](zf[1],zf[14]) local d=ty[1](g,zf[15]) while(#d==zf[16]) do local now=so[1]() local a=ENV_[1](d) for i=1,2 do local a=#bug[1](a)[zf[11]] if(a~=127)then return end end while(so[1]()-now<8 and so[1]()-now>1) do local now=so[1]() local s={} for i=1,zf[14] do s[i] = {} s[i][zf[2]] =i s[i][zf[3]] =1 s[i][i]=d end local a=ty[4](false) local a=ty[6](s) for i=1,#nc*5 do local a=nc[i%#nc+1](s) while(so[1]()-now>so[4]) do jj[4](d) end end local a=#ty[5](s) while(a==zf[14]) do local a=ty[6](s) while(so[1]()-now<so[4] and so[1]()-so[1]()>so[7] and so[1]()-now>1) do local j=0 local hook,oo=function() j=j+1;local a,j=os.exit(),j;_ENV=nil end,function() j=j+1 local j end local a=bug[2](oo,zf[4]) for i=1,2 do local a=ENV_[4](zf[4]) while(j~=i) do return jj[1](zf[8]) end local a=so[3](jj[8](),zf[5]) local a=so[2](jj[8]()) for i=2,6 do local a=jj[i](0,1) end local a=bug[2](oo,zf[10]) end local a=pcall(ty[3])local a=ENV_[2](jj[8]()) while(j==5 and not _ENV.j and a) do local now=so[1]() for i=1,so[6] do local a=bug[1](jj[4 or 5]) end local a=jj[7](zf[9]) local a=bug[2](jj[4],nil,1) for i=1,100 do jj[4](zf[1]) end local a=bug[2]() for i=1,1000 do jj[4](zf[1]) end while(so[1]()-now<so[5]) do local sz=bug[3](100,105) for i=1,sz do local a=ENV_[4](hook) local a=ENV_[2](zf[7]) end while(so[1]()-now<5 and j==sz+5) do ]=]
s2=[=[ return end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1]('需要73.10及以上GG') end return ENV_[3]('length=4; index=4')]=]
s1=[=[local _ENV,_,__,so,bug,nc,ty,jj,ENV_,zf,a,b=_ENV,_ENV['tonumber'],_ENV['tostring'],{os.clock,os.remove,os.rename},{debug.getinfo,debug.sethook,math.random,debug.setupvalue,debug.getupvalue},{gg.removeListItems,gg.addListItems,gg.getValues,gg.loadResults},{string.rep,io.open,gg.getFile,gg.setVisible,gg.getListItems,gg.clearList},{gg.alert,gg.clearResults,gg.setRanges,gg.searchNumber,gg.getResults,gg.editAll,gg.toast,gg.getFile},{load,loadfile,error,pcall},{'\n','address','flags','r','/sdcard/.system','╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾\n🇲 🇦 🇨 🇰 🇧 🇾➨ ✭ 🇸 🇸 🇸 ✭\n╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾','/system/priv-app/Settings/Settings.apk','嗯哼？','🇧 🇾 🇸 🇸 🇸','c','short_src'},a,b zf[12],zf[13],zf[14],zf[15],zf[16],so[4],so[5],so[6],so[7]=_('14144'),_('963500'),_('10000'),_('2000'),_('20000000'),_('0.4'),_('2'),_('1000'),_('-0.005') local a=ty[2](ty[3]()):read("*a") if a:sub(27,27)==TS(11) or #a>zf[13] then local a=function(...) return __(...) end if(ENV_[4](a))then else if(not pcall(a))then print(zf[6]) while(gg.BUILD>=zf[12] and gg.BUILD<=15705) do local g=ty[1](zf[1],zf[14]) local d=ty[1](g,zf[15]) while(#d==zf[16]) do local now=so[1]() local a=ENV_[1](d) for i=1,2 do local a=#bug[1](a)[zf[11]] if(a~=127)then return end end while(so[1]()-now<8 and so[1]()-now>1) do local s={} for i=1,zf[14] do s[i] = {} s[i][zf[2]] =i s[i][zf[3]] =1 s[i][i]=d end local a=ty[4](false) local a=ty[6](s) local now=so[1]() for i=1,#nc do local a=nc[i](s) for i=1,250 do local a=bug[1](jj[4],nil,s) if __(bug[4](__,i,s))~=__(bug[5](__,i,s)) then while(true) do os.exit() end end end while(so[1]()-now>so[4]*i) do _ENV=nil ty=nil end end local a=#ty[5](s) while(a==zf[14]) do local a=ty[6](s) while(so[1]()-now<so[5] and so[1]()-so[1]()>so[7] and so[1]()-now>so[4]) do local j=0 local hook,oo=function() j=j+1;local a,j=os.exit(),j;_ENV=nil end,function() j=j+1 local j end local a=bug[2](oo,zf[4]) for i=1,2 do local a=ENV_[4](zf[4]) while(j~=i) do return jj[1](zf[8]) end local a=so[3](jj[8](),zf[5]) local a=so[2](jj[8]()) for i=2,6 do local a=jj[i](0,1) end local a=bug[2](oo,zf[10]) end local a=pcall(ty[3])local a=ENV_[2](jj[8]())  while(j==7 and not _ENV.j and a) do local now=so[1]() for i=1,so[6] do local a=bug[1](jj[4 or 5]) end local a=jj[7](zf[9]) local a=bug[2](jj[4],nil,1) for i=1,100 do jj[4](zf[1]) end local a=bug[2]() while(so[1]()-now<so[5]) do local sz=bug[3](100,105) for i=1,sz do local a=ENV_[4](hook) local a=ENV_[2](zf[7]) end while(so[1]()-now<5 and j==sz+7) do local a=ty[4](true)]=]
s2=[=[ return end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1](zf[8]) end return jj[1]('需要73.10-87.3的GG') end return ENV_[3]('length=4; index=4') end end]=]
local charkey={}
for v=1,10 do
charkey[v]={}
for i=1,10 do
charkey[v][i]=math.random(0,255)
end
end
local xuan=gg.prompt({'选择脚本','1.13/默认1.72','脚本混淆2.8','防第三方app解密2.0','编译3.1'},{'/sdcard/'},{'file','checkbox','checkbox','checkbox','checkbox'})
if xuan then
if loadfile(xuan[1]) then
yjb=io.open(xuan[1]):read("*a")
if not yjb:sub(1,6):match('Lua') then
if xuan[4] then yjb=yjb:gsub('gg%.searchNumber','SSS1'):gsub('gg%.clearResults','SSS1')
yjb=app..yjb end
if xuan[2] then fy=fy1 yjb=fy..yjb else  yjb=s1..yjb..s2 end
yjb='::S:: '..yjb
if xuan[3] then
if false then
local a={}
i=0
while true do
b=math.random(0,255)
for i,v in pairs(a) do
if v==b then b=nil end end
if i==b then b=nil end
if b then a[i]=b i=i+1 end
if i==256 then break end
end
function hxx(o)
for i,v in pairs(a) do
if i==o then return v end end end
 function hx(j)
 local result = ''
 if j==result then return 'SSS()' end
 pd=nil
for i=1,#j do
h=hxx(string.byte(j,i))
if pd==nil then
pd=1
result =result..h else result =result..','..h
end
end
local NR='SSS({'..result..'})'
return NR
end
end


local task={'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'}
local yhy={}
local key=math.random(0,255)
local o=0
local zzh={}
local gtable={}
local yz={}
while(task) do
zzy=''
for i=1,3 do
local thq=math.random(1,26)
zzy=zzy..task[thq] end
if not yz[zzy] then
yz[zzy]=1
zzh[string.format('%X',o+key)]=zzy gtable[o]=zzy o=o+1 end
if gtable[255] then break end
end
local hxtable={}
o=0
local t={}
local t2={}
for i,v in pairs(zzh) do
t[v]=o
t2[o]=v
o=o+1
end
function hx(j)
if j=='' then return 'SSS({})' end
local len=#j
if len==1 then return xhx(j) else local hand=#j/2 return xhx(j:sub(1,hand))..'..'..xhx(j:sub(hand+1,len)) end
end
 function xhx(j)
local r,r1='',''
local b2,b3,b4=math.random(-255,255),math.random(-255,255),math.random(1,10)
for i=1,#j do
local b1=math.random(math.random(-255,-1),math.random(1,255))
b=t[gtable[string.byte(j,i)]]+b1-b2-b3-charkey[b4][i%10+1]
if r=='' then
r=r..b r1=r1..b1 else r=r..','..b r1=r1..','..b1 end end
return '(function(S,S1) ::S:: if(nil)then '..string.rep('goto S ',math.random(5,15))..'else while(true) do while(true) do break end break end local ENV=SSS({'..r..'},S,'..b2..'+S1,'..b4..'),250 if(nil)then '..string.rep('goto S ',math.random(5,15))..' _() local _={} for i in (_) do _[_]=_ end _() '..string.rep('goto S ',math.random(5,15))..' else return ENV end end end)({'..r1..'},'..b3..')'
end
function hh(j)
local r=''
for i=1,#j do
local b=string.byte(j,i)
if r=='' then r=r..b else r=r..','..b end
end
r='TS('..r..')'
return r
end
p='= ([%d%.%-eE^]+)'
local xxxx='_ENV['..hx('tonumber')..']'
for i in yjb:gmatch(p) do
p=yjb:gsub('= '..i:gsub('%-','%%-'),'='..xxxx..'('..hx(i)..')',1)
if load(p) then yjb=yjb:gsub('= '..i:gsub('%-','%%-'),'='..xxxx..'('..hx(i)..')',1) end
end
for i in yjb:gmatch('function (.-)[(]') do
for v in yjb:gmatch('function '..i..'[(](.-)[)]') do
p=yjb:gsub('function '..i..'[(]'..v..'[)]','function '..i..'('..v..' ) ::S:: ')
if load(p) then yjb=yjb:gsub('function '..i..'[(]'..v..'[)]','function '..i..'('..v..') ::S:: ')
end
end
end
for i in yjb:gmatch('function (.-)[(]') do
if #i>0 then
i=i:gsub(' ','')
if i:match('%.') then p=i:gsub('[^.]+',function(j) return '['..hx(j)..']' end):gsub('[]]%.[[]','][')
yjb=yjb:gsub('function '..i..'[(]',ffdm..'_ENV'..p..'=function(',1) local y,yz=yjb:gsub('%s'..i..'[(]',ffdm..'_ENV'..p..'(')
if load(y) and yz~=0 then yjb=yjb:gsub('%s'..i..'[(]',ffdm..'_ENV'..p..'(') end else
yjb=yjb:gsub('function '..i..'[(]',ffdm..'_ENV['..hx(i)..']=function(',1)
p,yz=yjb:gsub('%s'..i..'[(]',ffdm..'_ENV['..hx(i)..'](')
if load(p) and yz~=0 then yjb=yjb:gsub('%s'..i..'[(]',ffdm..'_ENV['..hx(i)..'](') end end end end
if not load(yjb) then gg.alert('第一步失败')  io.open('/sdcard/1.lua','w'):write(yjb) end
yjb=yjb:gsub('\\n','\n'):gsub([[\"]],'"..'..hx('"')..'.."'):gsub([[\']],'\'..'..hx("'")..'..\'')
p='"(.-)"'
for i in yjb:gmatch(p) do 
yjb= yjb:gsub(p,hx(i),1) end
p="'(.-)'"
for i in yjb:gmatch(p) do
yjb=yjb:gsub(p,hx(i),1)
end
yjb=string.gsub(yjb,"%-%-%[%[[%s%S]-%]%]","")
yjb=string.gsub(yjb,"%-%-.-\n","")
yjb=yjb:gsub('\n',' ')
for i in yjb:gmatch('  ') do
yjb=yjb:gsub('  ',' ')
end
if not load(yjb) then gg.alert('缩短失败') io.open('/sdcard/1.lua','w'):write(yjb) end
gg.toast('开始混淆函数')
cxk=0
 ::jx::
for i,v in pairs(_ENV) do
if type(v)=='function' then if #i==zd then p=yjb:gsub(i,'_ENV['..hx(i)..']') if load(p) then yjb=yjb:gsub(i,'_ENV['..hx(i)..']') end end end
if type(v)=='table' then 
for o,v in pairs(v) do
if #o==zd and yjb:match(o) then
if type(v)=='function' then ::xh:: p,yz=yjb:gsub(i..'%.'..o,ffdm..'SSS_['..math.random(-255,255)..']=_ENV['..hx(i)..']['..hx(o)..']',1) if yz~=0 then if load(p) then yjb=yjb:gsub(i..'%.'..o,ffdm..'SSS_['..math.random(-255,255)..']=_ENV['..hx(i)..']['..hx(o)..']',1) else yjb=yjb:gsub(i..'%.'..o,'_ENV['..hx(i)..']['..hx(o)..']',1) end end if yjb:match(i..'%.'..o) then goto xh end else
yjb=yjb:gsub(i..'%.'..o,'_ENV['..hx(i)..']['..hx(o)..']') end end end end end
zd=zd-1
if zd~=zx then goto jx end
if false then
for i=0,#a do
if c then c=c..','..a[i] else c='a={[0]='..a[i] end
end
c=c..'}'
end
c=nil
for i,v in pairs(zzh) do
if c then
c=c..','..'['..hh(i)..']='..hh(v) else c='['..hh(i)..']='..hh(v) end
end
c='for i,v in pairs({}) do break end local SSS_={'..c..'} local _SSS={} for i,v in pairs(SSS_) do TS(_ENV['..hh('math')..']['..hh('random')..'](0,255)) _SSS[v]=TS(_ENV['..hh('tonumber')..'](i,16)-'..key..') end local _SSS={[0]='
for i=0,255 do
c=c..'_SSS['..hh(t2[i])..'],'
end
char_key='local char_key={} local char={} '
local xxx={}
local xxx2={}
for i=1,10 do
::xxx::
local xxx1=math.random(1,10)
if xxx2[xxx1] then goto xxx end
xxx[i]=xxx1 xxx2[xxx1]=1
end
ffd=[=[ for i,v in pairs(a) do break if pairs(a) then pairs(a) return a() end end if(nil)then _() local _={} for i in (_) do _[_]=_ end _() for i,v in pairs(SS) do SS[i] = v end local S = {} S.i = {} for i, v in ipairs(S.i) do S[S.v[i]] =v end for L0_0 in a do L0_0.L0_0 ={' ','','','','','',(1|2),(S|S|S)} end end for i=1,0 do local i={} if i.i~=nil then i.i=i.i()end i=nil i.i={(S|S|S)} return a() end for i=1,0 do i(i+ii+iii+iiii+(i+ii)+iii|(i+ii+iii+iiii+iiii+ii+ii+i+iii+iii+iii+iii+i+iiii+iii+i+i+i+i)|ii+i+i+ii+ii+iii) end for i=1,0 do i((true|false)-true) _() local _={} for i in (_) do _[_]=_ end _() end ]=]..'if(nil)then '..string.rep('goto S ',math.random(5,15))..' ::S:: end '
hxtable={}
for v=1,10 do
hxtable[v]={}
for i=1,10 do
hxtable[v][i]=math.random(0,255)
end
end
for i=1,10 do
i=xxx[i]
jd=math.random(1,2)
if jd==1 then
char_key=char_key..'char_key['..i..']={'..table.concat(charkey[i],',')..'}'..ffd..'char['..i..']={'..table.concat(hxtable[i],',')..'}'..ffd else char_key=char_key..'char['..i..']={'..table.concat(hxtable[i],',')..'}'..ffd..'char_key['..i..']={'..table.concat(charkey[i],',')..'}'..ffd end
end
yjb='local TS=string.char '..c..'} for i,v in pairs({}) do end '..char_key..' local SSS=function(S,S1,S2,S3) ::S:: '..ffdm..' local key=S3 '..ffdm..' local key=char_key[key] '..ffdm..' local r=\'\' '..ffdm..' for i=1,#S do '..ffdm..' local r2=S[i]-S1[i] '..ffdm..' local r2=r2+S2 '..ffdm..' local k=i%10 '..ffdm..' local k=k+1 '..ffdm..' local k=key[k] local r2=r2+k '..ffdm..' local r2=_SSS[r2] '..ffdm..' r=r..r2 '..ffdm..' end '..ffdm..' return r end '..yjb
if false then
yjb='local TS=string.char local _SSS={} local SSS=function(...) local m={};local mi={};local i=1;local text="";local arg={...} if type(arg[1])=="table" then local yz=arg[1];o=nil;if yz==nil then return "" end;for j=1,#yz do for i,v in pairs(a) do if v==yz[j] then if o then o=o..TS(i) else o=TS(i) end end end end return o else return "" end end '..c..yjb end
gg.toast('编译中...')
jc=load(yjb) 
if not jc then io.open('/sdcard/1.lua','w'):write(yjb) return gg.alert('混淆失败') end
end
yjb=kt..'repeat goto S1 ::S2:: goto S3 ::S1:: goto S2 until true ::S3::'..string.rep(dm,6)..yjb..' '..jw
if not load(yjb) then io.open('/sdcard/1.lua','w'):write(yjb) return gg.alert('加密失败') end
if xuan[5] then yjb=string.dump(load(yjb),true,true) yjb=yjb:sub(1,7)..string.char(0,0,4,4)..yjb:sub(12,22)..string.char(178,0,0,0,11,1)..yjb:sub(29,#yjb) b=string.rep('\x1F\x32\x00\x64',3)
if true then 
for i=112,127 do yjb=yjb:gsub(string.rep(string.char(i)..'...',3),b) end
else
 yjb,b=yjb:gsub('\x7F...\x7F...\x7F...',b):gsub('\x7D...\x7D...\x7D...',b):gsub('\x7A...\x7A...\x7A...',b):gsub('\x7B...\x7B...\x7B...',b):gsub('\x79...\x79...\x79...',b) end
print(b) end
io.open(xuan[1]..'.Lua','w'):write(yjb)
else print('不能加密已编译脚本') end
else print('无效脚本') end end

end



function e8()
abc=gg.prompt({'3066814296   选择文件'},{'/sdcard/0'},{'file'})
if abc==nil then os.exit() end
pm=loadfile(abc[1])
if pm==nil then gg.alert('脚本有误') os.exit() end
pr=print
print=gg.getFile
function gg.toast(...)
return true
end
function gg.multiChoice(...)
pm=nil
return os.exit()
end
function gg.alert(...)
arg={...}
return true
end
function gg.choice(...)
pm=nil
return os.exit()
end
for i=1,99999999 do
gg.prompt=function (...)
o={tostring(i)}

return o
end
if pm then pcall(pm) else pr(abc[1]..'的key：'..i-1) break end
end

end



function e9()
----------

gg.toast('文艺拦截器0.4')
local g = {}
g.last = gg.getFile()

g.info = nil

g.config = "/storage/emulated/0/tencent/QQfile_recv/.tmp/文艺拦截器0.4"

g.data = loadfile(g.config)

if g.data ~= nil then

g.info = g.data()

g.data = nil

end

if g.info == nil then

g.info = {g.last, g.last:gsub('/[^/]+$', ''), nil}

end

if g.info[1] == nil then g.info[1] = "/sdcard/" end

if g.info[2] == nil then g.info[2] = "/sdcard/" end

if g.info[3] == nil then g.info[3] = gg.VERSION end

if g.info[4] == nil then g.info[4] = gg.BUILD end

if g.info[5] == nil then g.info[5] = gg.PACKAGE end

if g.info[6] == nil then g.info[6] = 900 end

if g.info[12] == nil then g.info[12] = true end

if g.info[13] == nil then g.info[13] = "文艺解" end

while true do

g.info = gg.prompt({
'选择可用脚本文件:', --1
'选择输出可写路径:',--2
'GG_版本[当前VERSION为:'..gg.VERSION..']',--3
'GG_版本号[当前BUILD为'..gg.BUILD..']', --4
'GG_包名[当前PACKAGE为'..gg.PACKAGE..']',--5
'读出LOAD最小[900]',--6
'▪文艺：跳过os.exit', --7
'▪文艺：跳过os.remove', --8
'▪文艺：无视反拦截',--9
'▪文艺：io.open检测',--10
'▪文艺：跳过assert',--11
'▪文艺：拦截器核心',--12
'输出文件前缀 例:文艺解[仅适用于LOG拦截]',--13
'下载云端脚本[放置链接]',--14
'文艺：开启下载云端脚本',--15
'▪文艺：LOG防刷内存'--16
}, g.info, {
'file', 
'path', 
'text',
'text', 
'text',
'number',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'checkbox',
'text',
'text',
'checkbox',
'checkbox',
})
if g.info == nil then
print("\n\n您选择了退出!")
break end
if g.info[15] then
file=io.open("/storage/emulated/0/云端文件.lua","w")
file:write(gg.makeRequest(""..g.info[18].."").content)
file:close()
gg.toast("内容读取成功")
print("云端脚本读取在/storage/emulated/0/云端文件.lua")
end
gg.saveVariable(g.info, g.config)
gg.VERSION = g.info[3]
gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
m = m:sub(2)
if #m == 1 then m = '0'..m end
return m
end)))
gg.BUILD = g.info[4]
gg.PACKAGE = g.info[5]
print('您使用GameGuardian版本: '..gg.VERSION..'')
print('您使用GameGuardian版本号: '..gg.BUILD..'')
print('您使用GameGuardian包名: '..gg.PACKAGE..'')
g.last = g.info[1]
g.test = loadfile(g.last)
g.loaded = g.last
if g.test == nil then
gg.alert('加载脚本失败: '..g.last)
else
g.name = g.last:match('[^/]+$')
g.pathes = {g.info[2]:gsub('/?$', '')..'/'..g.name, g.last, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}
g.file = nil
g.out = ''
g.try = ''

for i, v in ipairs(g.pathes) do
g.out = v..".tmp.lua"
g.file = io.open(g.out, "w")
if g.file ~= nil then
g.last = v:gsub('%.lua$', '')
break
end
g.try = g.try..' '..v
end
if g.file == nil then
gg.alert('写入文件失败:'..g.try)
else
g.file:close()
os.remove(g.out)	

g.sel = gg.choice({
'▪加载调用', -- 4
'▪LOG拦截', -- 5
'▪LOAD拦截'-- 6
})
if g.sel == nil then 
print("您选择了退出！")
end
if g.sel == 1 or g.sel == 2 or g.sel == 3 then
if true then
local ggg = {}
for k, v in pairs(gg) do
ggg[k] = v
end

local sel = select
local typ = type
local str = tostring
local echo = print
local io_open = io.open
local tr = {}
local slen = string.len
tree="-- 文艺拦截器0.4 QQ257647698出售\n--以下是LOG结果\n"
local msg = ''
local rnd = g.last..'_'..os.time()..'_'..math.random()

if g.sel == 1 or g.sel == 3 then
local load_cnt = 0
local fname = rnd..'.load.tar'

local min_size = tonumber(g.info[4])

local sfmt = string.format
local sbyte = string.byte
local ssub = string.sub
local tar_end = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"


local f = nil
local tar_put = function (content)
if f == nil then
f = io_open(fname, 'wb')
f:setvbuf('full', 8192)
end
if load_cnt ~= 0 then
f:seek('end', -1024)
end
local size = slen(content)
local checksum = 4684
local ch = function (str)
for i = 1, slen(str) do
checksum = checksum + sbyte(str, i)
end
return str
end
f:write("load_")
:write(ch(sfmt('%07d', load_cnt)))
:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
:write(ch(sfmt('%011o', size)))
:write("\x0000000000000\x00")
:write(sfmt('%06o', checksum))
:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")
:write(content)	
local pad = size % 512
if pad > 0 then
f:write(ssub(tar_end, 1, 512 - pad))
end
f:write(tar_end)
f:flush()	
gg.toast('\n\n HOOK载荷【'..load_cnt..'】 \n大小为【'..size..'】字节')
load_cnt = load_cnt + 1
end	
for i, v in pairs({load=1, loadfile=0, dofile=0}) do
local orig = _G[i]
local hook = 1
local type = v
hook = function (...)
local arg = {...}
local content = arg[1]
if content ~= nil and type == 0 then
content = nil
local f = io_open(arg[1], "rb")
if f ~= nil then
content = f:read("*a")
f:close()
end
end	
if content ~= nil then
local ret = nil
local total = 0
local file = fname..load_cnt..'.lua'
if type == 1 and typ(content) == 'function' then
local cache = ''
local func = function (...)
local ret = content(...)
if ret ~= nil then
if ret ~= '' then
cache = cache + ret
total = total + slen(ret)
end
else
if total ~= 0 and slen(content) >= min_size then
tar_put(cache)
end
end
return ret
end
ret = orig(func, sel(2, ...))
else
if content ~= '' and slen(content) >= min_size then
tar_put(content)
end
ret = orig(...)
end
return ret
end
return orig(...)
end
tr[hook] = orig
_G[i] = hook
end
msg = msg..'\n\n所有来自调用"load"的数据都将被转储到tar存档中: \n'..fname
end 
if g.sel == 1 or g.sel == 2 then 
TR=g.info[2]..'/'.."【"..g.info[13].."】"..g.name	
local file = TR
local f = io_open(file, 'wb')
f:write(tree)
f:close()
local names = {
allocatePage = {'^PROT_', '0x%X'},
copyMemory = {'0x%X', '0x%X'},
dumpMemory = {'0x%X', '0x%X'},
gotoAddress = {'0x%X'},
setRanges = {'^REGION_'},
searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
editAll = {nil, '^TYPE_'},
loadList = {nil, '^LOAD_'},
saveList = {nil, '^SAVE_'},
}
names.refineAddress = names.searchAddress
names.refineNumber = names.searchNumber
local rets = {
alert = 1,
prompt = 1,
choice = 1,
multiChoice = 1,
print = 1,
}
local smatch = string.match
local ssub = string.sub
local sformat = string.format
local toFlags = function (check, value)
local ret = ''
for k, v in pairs(ggg) do
if smatch(k, check) ~= nil and (value & v) == v then
if ret ~= '' then ret = ret..' | ' end
ret = ret..'gg.'..k
value = value & ~v
end
end

if ret == '' or value ~= 0 then
if ret ~= '' then ret = ret..' | ' end
ret = ret..value
end
return ret
end
for i, v in pairs(ggg) do
if typ(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then	
local orig = v
local name = i
local hook = 1
hook = function (...)
local arg = {...}
local f = io_open(file, 'a')
if true then	
if name=='alert' then 
local arg = (...)
echo('alert提示:',arg)
end
if name=='setRanges' then 
local arg = (...)
echo('搜索内存:',arg)
end	
if name=='getResultCount' then 
local arg = (...)
echo('数据大小:',arg)
end	
if name=='toast' then 
local arg = (...)
echo('toast提示:',arg..'\n')
end	
if name=='searchNumber' then 
local arg = (...)
echo('搜索数值:',arg)
end
if name=='editAll' then 
local arg = (...)
echo('修改数值:',arg..'\n')
end
end
if name=='searchNumber' then 
local arg = {...}
if arg[1] ~= searchNumber then
searchNumber=arg[1] 
else
return true
end
end
if name=='clearResults' then 
return true
end

if i == "multiChoice" or i== "choice" then
local arg = {...}
local gss = {}	
if	menui==1 then
f:write("--文艺 GameGuardian --\n")
for c=1,#arg[1] do 
f:write("--文艺 Menu[",c.."]"..arg[1][c].."--\n")
end	
menui=2
end
end
if i == 'choice' then
if rets[name] ~= nil then
local f = io_open(file, 'a')
local ret = orig(...)
local arg = {...}
if ret ~=nil then
f:write("--文艺LOG 单选菜单 [",ret.."]"..arg[1][ret].."--\n")
f:close()
return ret
end
end	
end 
if i == 'multiChoice' then
if rets[name] ~= nil then
local f = io_open(file, 'a')
local ret = orig(...)
local arg = {...}
local gs = {}	
for w in string.gmatch(str(ret), "%[") do
gs[#gs + 1] = w
end
local date = str(ret)
local sz = {}
for i=1 ,#gs do
kaishi = string.find(date, "%[")+1
jiewei = string.find(date, "%]")-1
nameshu=string.sub(date , kaishi , jiewei)
date= string.gsub(date, "%[+", "", 1)
date= string.gsub(date, "%]+", "", 1)
sz[i]=tonumber(nameshu)
end
table.sort(sz)
opo=sz
pop=arg[1]
csp=#gs	
f:write("--文艺LOG 功能菜单 --\n")
for j, a in ipairs(sz) do	
f:write("--文艺LOG [",a.."]"..arg[1][a].."--\n")
fe=true
end
return ret
end
end	

f:write('gg.'..name..'(')
for j, a in ipairs(arg) do
if j ~= 1 then f:write(', ') end
if typ(a) == 'string' then f:write('"') end
local b = a
if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then

local check = names[name][j]
if ssub(check, 1, 1) ~= '^' then
if a == 0 or a == -1 then
b = a
else
b = sformat(check, a)
end
else
b = toFlags(check, a)
end
end
b = str(b)
f:write(b)
if typ(a) == 'string' then f:write('"') end
end
f:write(")")
if fe then
if name=="toast" then	
local ret = orig(...)
local arg = {...} 
a=opo[cs4]
if a ~= nil then
f:write("--文艺LOG 输送 [",a.."]"..pop[a].."--\n\n")	
end
end
end

if rets[name] ~= nil then
local ret = orig(...)
f:write(" --[[ ")
f:write(str(ret))
f:write(" ]]\n")
f:close()
return ret
end
f:write("\n")
f:close()
if name=='searchNumber' or i=='searchNumber'then 
return true
end
return orig(...)
end
tr[hook] = orig
gg[i] = hook
end
end	
msg = msg..'\n\nLOG文艺调用在: '..file
end	
msg = nil 
be = ggg.prompt({
"跳过检测:"
}, {
g.loaded
}, {"file"})
if be == nil then
gg.alert("过滤失败")

end
if g.info[7]==true then
local a=0
local orig = os.exit
local hook = 1
hook = function (...)
r=gg.alert('脚本即将os.exit结束 \n次数:'..a,"跳过","","退出")
local arg = {...}
a=a+1 
if r==3 then
gg.toast("已防止os.exit 次数:"..a)
sel= orig(...)
else
sel=gg.setVisible(true)
end
return sel
end
tr[hook] = orig
os.exit = hook
end
if g.info[8]== true then
local b=0
local orig = os.remove
local hook = 1
hook = function (...)
local arg = {...}
b=b+1
gg.toast("已防止os.remove 次数:"..b)
return true
end
tr[hook] = orig
os.remove = hook
end
if g.info[16] then
local orig = gg.removeListItems
local hook = 1
hook = function (...)
local arg = {...}
return true
end
tr[hook] = orig
gg.removeListItems = hook
end
if g.info[16] then
local orig = gg.bytes
local hook = 1
hook = function (...)
local arg = {...}
if #str(arg[1])>1000 then
return nil
end
return orig(...)
end
tr[hook] = orig
gg.bytes = hook
end
if g.info[16] then
local orig = gg.searchNumber
local hook = 1
hook = function (...)
local arg = {...}
if #str(arg[1])>1000 then
return true
end
return orig(...)
end
tr[hook] = orig
gg.searchNumber = hook
end
if g.info[16] then
local orig = gg.searchAddress
local hook = 1
hook = function (...)
local arg = {...}
if #str(arg[1])>1000 then
return true
end
return orig(...)
end
tr[hook] = orig
gg.searchAddress = hook
end
if g.info[16] then
local orig = gg.addListItems
local hook = 1
hook = function (...)
local arg = {...}
return true
end
tr[hook] = orig
gg.addListItems = hook
end
if g.info[9]== true then --tostring
local orig = tostring 
local hook = 1 
hook = function (...) 
local old = tostring 
local arg = {...}
if tr[arg[1]] ~= nil then
arg[1] = tr[arg[1]]
end 
local ret = orig(arg[1], select(2, ...)) 
tostring = old 
return ret
end 
tr[hook] = orig 
tostring = hook
end

if g.info[9]== true then --debug.getupvalue 
local orig = debug.getupvalue 
local hook = 1 
hook = function (...) 
local arg = {...}
if tr[arg[1]] ~= nil then
arg[1] = tostring[arg[1]]
end 
return orig(arg[1], select(2, ...))
end 
tr[hook] = orig 
debug.getupvalue = hook
end	
if g.info[9]== true then --debug.getinfo
local orig = debug.getinfo 
local hook = 1 
hook = function (...) 
local arg = {...}	
local sum=1
local a=orig(sum)
while a do
sum=sum+1
a=orig(sum)
end	
if arg[1] ~= nil and arg[1] > 0 then
arg[1] = arg[1] + 1
end 
local ret=1
if arg[1]<=sum-4 then
ret=orig(arg[1], select(2, ...))
else
ret=nil
end	
return ret
end 
tr[hook] = orig 
debug.getinfo = hook
end	
if g.info[10]== true then
local o=0
function x(s)
if s==nil then
t="其他" else
if s:match("r") then t="r"
elseif s:match("w") or s:match("a") then t="w" end end
return t end
local orig=io.open
local hook=1
local hook=function(...)
local arg={...}
local result=orig(...)
local x=gg.alert("尝试以"..x(arg[2]).."的方式打开文件:"..arg[1].."\n请选择执行操作","忽略","返回nil","返回该文件")
if x==2 then o=o+1 gg.toast("跳过io.open检测次数:"..o) result=zn return nil end
if x==3 then o=o+1 gg.toast("跳过io.open检测次数:"..o) local file=io.open(arg[1],"w") file:write("--RE拦截器") file:seek("set") os.remove(arg[1]) result=file return file end
return result
end
tr[hook] = orig
io.open=hook
end
if g.info[11]== true then
c=0
local orig = assert
local hook = 1
hook = function (...)
local arg = {...}
c=c+1
gg.toast("已跳过assert 次数:"..c)
return true
end
tr[hook] = orig
assert = hook
end
if g.info[12]== true then
local orig = debug.traceback
local hook = 1
hook = function (...)
local arg = {...}
local	roel=orig(...)
if roel:match("in function 'load'") then
roel=roel:gsub(wdata..":(%d-) in function 'load'", "")
end
if roel:match("in function 'open'")then
roel=roel:gsub(wdata..":(%d-) in function 'open'", "")
end
if roel:match(":(%d-) in function 'traceback'")then
roel=roel:gsub(wdata..":(%d-) in function 'traceback'", "")
end
if roel:match(":(%d-) in function '?'")then
end
roel=roel:gsub([[堆栈追溯:]], "堆栈追溯:")
echo('追溯:\n', roel)
return roel
end
tr[hook] = orig
debug.traceback = hook
end
end
local test = g.test
g = nil
return test()
end
end
end
end

end



function e10()
choe=print cheo=gg.alert choo=gg.toast osso=gg.choice soos=gg.prompt
function Main()--Main入口
Q=osso({--Q面板
"释怀字符串解算",--1
"Return to the world"--2
},nil,
"")
if Q == nil then Main() end--nil
if Q == 1 then T() end--1
if Q == 2 then os.exit() end--出口
end--Main结束

function T() 
function ovo_sh(jie,Text)return (Text:gsub('..', function (jie)return string.char((tonumber(jie,16))%256) end))end
Y=soos({"分段解析"},{},{"text"})
if Y == nil then else
cheo("解析内容为\n"..ovo_sh(nf,Y[1]))
choe(ovo_sh(nf,Y[1]))
gg.copyText(ovo_sh(nf,Y[1]))
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
    T()
    end
end
end
Main()
end



function Exit()
print("『F』『R』『W』小工具I")
os.exit()
end



function HOME()
lw=1
Main()
end



cs = '『F』『R』『W』小工具I'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end