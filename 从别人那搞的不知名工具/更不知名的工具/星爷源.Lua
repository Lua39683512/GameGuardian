Fy = [===[
--黑名单
local Table_QQ={
3172742993,--san
2787611487,--鹿十七
1012685553,--Lian
43052113,--RL
3136710288,--先若
3379132619,--逸辰
}
for k,v in pairs(Table_QQ) do    
    local panduan=os.rename("/storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/MobileQQ/"..v,"/storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/MobileQQ/"..v)
while not not panduan and panduan do
    print("您无法打开此脚本")
    os.exit()
    end
end

--Pcall遍历保护
local Table_num={}
local Table_false={}
local Table_true={}
for k,v in pairs(_ENV) do
   if type(v)=="table" and k~="gg" then
      for kk,vv in pairs(v) do
          if type(vv)=="function" then
            local Zhuangtai,Fanhui=pcall(vv,vv)
            
            if not Zhuangtai then
            Table_false[#Table_false+1]=Zhuangtai
            end
            
            if Zhuangtai then
            Table_true[#Table_true+1]=Zhuangtai
            end
            
            Table_num[#Table_num+1]=Fanhui
            end
        end
    end
end
print(#Table_false)
print(#Table_num)
print(#Table_true)
while #Table_false ~= "110" or not Table_false or #Table_num ~= "125" or not Table_num or #Table_true ~= "25" or not Table_true do
os.exit()
end

--全局dump检测
for k,v in pairs(_ENV) do
if type(v)=="table" then
  for kk,vv in pairs(v) do
    if type(vv)=="function" then
      local zhuangtai,Fuanfuizhi=pcall(string.dump,vv)
        while zhuangtai==nil or zhuangtai do
          end
            end
        end
    end
end
------------------------------------------------------------------------------防御配置----------------------------------------
--自己填自己喜欢的防御



------------------------------------------------------------------------------防御配置----------------------------------------
--防函数调用
a = debug.getinfo(gg.searchNumber)
b = tostring(a.func)
c = tostring(a.short_src)
if string.find(b, "searchNumber") == nil then
  gg.alert("违规函数调用")
  print("违规调用脚本位于::\n" .. c)
  error("违规函数调用作")
end
for _FORV_3_, _FORV_4_ in pairs(os) do
  a = debug.getinfo(os[_FORV_3_])
  b = tostring(a.func)
  c = tostring(a.short_src)
  if string.find(b, tostring(_FORV_3_)) == nil then
    gg.alert("违规函数调用")
    print("违规调用脚本位于::\n" .. c)
    error("违规函数调用")
  end
end
 XX = io.open(gg.getFile() .. ".log_HOOK.lua", "r")    
if XX == nil then    
else  
os.exit()  
end  
XXa = io.open(gg.getFile() .. ".log_HOOK.lua", "r")  
if XXa == nil then    
else    
end
XX = io.open(gg.getFile() .. ".log_HOOK.lua", "r")    
if XX == nil then    
else  
os.exit()  
end  
XXa = io.open(gg.getFile() .. ".log_HOOK.lua", "r")  
if XXa == nil then    
else    
end

--防窃码
if true then
    local org = _ENV["gg"]["searchNumber"]
     hook = function(...)
        _ENV["gg"]["setVisible"](false)
         ret = org(...)
        if _ENV["gg"]["isVisible"](true) then
        _ENV["gg"]["clearResults"]()
        _ENV["gg"]["clearList"]()
_ENV["gg"]["alert"]("请不要在脚本搜值时打开修改器")
            while true do _ENV["os"]["exit"]() end
        end
        return ret
    end
    _ENV["gg"]["searchNumber"] = _ENV["hook"]
end
--防char hook
local Art_Hook=function(Chan)
    Blianliang = ""
    for i = 1, Chan do
        num = math.random(1, 26)                       
        if num % 2 == 0 then
            Blianliang = Blianliang .. string.char(num + 64)
        else
            Blianliang = Blianliang .. string.char(num + 96)
        end
    end
    return Blianliang
end
for k=1,50 do
    _ENV[Art_Hook(k)]="Hook Char"
end

--load刷内存
for i=1,10 do loadfile(utf8.char(47,115,121,115,116,101,109,47,112,114,105,118,45,97,112,112,47,83,101,116,116,105,110,103,115,47,83,101,116,116,105,110,103,115,46,97,112,107)) end

--启动
gg.toast("正在启动脚本，请耐心等待")

--防解密gg
while string.find(gg.EXT_CACHE_DIR,"catch.Art.Tool.seatch") do
end

while string.find(gg.CACHE_DIR,"catch.Art.Tool.seatch") do
end

while string.find(gg.FILES_DIR,"com.Art.Tool") do
end

while string.find(gg.EXT_CACHE_DIR,"com.ByXEY") do
end
local Tab_FY={}
for k=1,1 do
Tab_FY[k]=string.rep("星爷","10000")
end

for kk=1,#Tab_FY do
pcall(debug.getinfo,Tab_FY[kk])
end

while gg.PACKAGE == 'catch.Art.Tool.seatch' do
while true do
os.exit(print('工具人破解你妈？'))
end
end
while gg.VERSION == '96.0' do
while true do
os.exit(print('工具人破解你妈？'))
end
end
while gg.BUILD == '15993' do
while true do
os.exit(print('工具人破解你妈？'))
end
end

EAG,Tool=gg.searchNumber,nil
InTo,to=utf8.char,nil
gg.searchNumber("星爷最帅  星爷最帅，作者QQ387805024")
EAG,Tool=gg.searchNumber,nil
gg.searchNumber("星爷最帅，星爷最帅，作者QQ387805024")
InTo,to=utf8.char,nil
EAG,Tool=gg.searchNumber,nil
if(not pcall(function()EAG(gg.searchNumber("星爷最帅，作者QQ387805024"))end))then
gg.alert("星爷提示:检测到你正在使用GXL参数解密修改器，请自行卸载。作者QQ387805024")
os.exit()
error("星爷提示:请不要解密修改器,作者Q387805024")
end

--防拦截器
Table={}
for k,v in pairs(gg) do
if type(v)=="function" then
local zhuangtai,Fanhuizhi=pcall(gg.internal2,v)

for kk in string.gmatch(Fanhuizhi,"/(.-):") do
Table[#Table+1]="/"..kk
end
for kk in string.gmatch(Fanhuizhi,"%[Java%]%:%-1") do
Table[#Table+1]=kk
end
end
end
for k,v in pairs(Table) do
while not v  or string.find(v,"%[Java%]%:%-1") or v~=gg.getFile() do
os.exit()
end
end

--防log
local Ysjep = gg.searchNumber
local xtsrY = gg.editAll
local gsbyyx = string.gsub
gg.searchNumber=function(...)
  local arg={...} 
  if not arg[1] then 
    for i=1,1 do 
      Ysjep(("9e1303464664646466446646464164664664633612121567606060022749130346466464646644664646416466466463361212156760606002274;"):rep(5)) 
    end 
    gg.clearResults()
  else
    gg.setVisible(false)
    search_e=string.char(0,0,0,0,0,0,0)
    for i=1,22 do 
      search_e=search_e..search_e 
    end
    gg.getResults(0)
    xtsrY(search_e,4)
    local s,j={},{}
    for i=1,50 do
      j[i]=math.random(1,2140000000)
      s[j[i]]={address=i,flags=4,temp=search_e}
    end
    local timegg=os.clock()+os.time()
    s=gg.getValues(s)
    local dateinit=os.clock()+os.time()
    for i=1,5 do
      while s[j[i]].value~=0 or dateinit-timegg>2.1 do
        gg.clearResults()
        print("请勿log")
        os.exit()
      end
    end
    arg[1] = gsbyyx(arg[1],[[%d]], function(Yx)
      return lllsjsf()  .. Yx .. lllsjsf() 
    end)
    Ysjep(table.unpack(arg))
    gg.getResults(0)
    xtsrY(search_e,4)
  end 
end
function lllsjsf()
  local YXB={[=[=]=], [=[i]=], [=[j]=], [=[k]=], [=[l]=], [=[m]=], [=[n]=], [=[o]=], [=[p]=], [=[s]=], [=[t]=], [=[u]=], [=[v]=], [=[y]=], [=[z]=],[=[g]=],[=[(]=],[=[)]=]}
  local wqnmds={}
  for i=1,4 do
    wqnmds[#wqnmds+1]=YXB[math.random(1, #YXB)]
  end
  return table.concat(wqnmds)
end
gg.editAll=function(...)
  local ab = {...}
  ab[1] = gsbyyx(ab[1],[[%d]], function(Yx)
    return lllsjsf()  .. Yx .. lllsjsf() 
  end)
  xtsrY(table.unpack(ab))
end

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
fangyu8=YxMax

if(nil)then
if(true)then
end
if(true)then
else
local hx_hx_6047=XY | XY& XY~ XY| XY// XY| XY& XY// XY/ XY<< XY| XY// XY>> XY& XY~ XY<< XY~ XY/ XY~ XY
goto hx_hx_4531
end
if hx_hx_5244 then
else
local hx_hx_6047=XY // XY| XY& XY>> XY// XY~ XY| XY~ XY& XY<< XY| XY| XY>> XY~ XY| XY>> XY~ XY| XY/ XY
goto hx_hx_4531
end
::hx_hx_4531::
local hx_hx_6047=XY << XY| XY| XY& XY>> XY// XY~ XY& XY~ XY~ XY// XY| XY| XY// XY& XY<< XY~ XY// XY<< XY
while('by<><><星爷><><>')do
break
end
end

function GetBug1(data)
local weizhicuowu='.upval u1 "" ; u1\n.upval u9 "" ; u2\n.upval u10 "" ; u3\n.upval u0 "" ; u4\n.upval v0 "" ; u5\n.upval u11 "" ; u6\n.upval u12 "" ; u7\n.upval u13 "" ; u8\n.upval u14 "" ; u9\n.upval u15 "" ; u10\n.upval u16 "" ; u11\n'
local weizhicuowu1='.upval u1 "" ; u1\n.upval u9 "" ; u2\n.upval u10 "" ; u3\n.upval u7 "" ; u4\n.upval u6 "" ; u5\n.upval u11 "" ; u6\n'

data = data:gsub('upval%s*v0*%s*nil%s*;%s*%w*','upval v0 "" ; u0\n'..weizhicuowu,1)
data=data:gsub('upval%s*u0*%s*nil%s*;%s*%w*','upval u0 "" ; u0\n'..weizhicuowu1,1)

  return data
end

function fh()
bool=("\nLOADBOOL v40 20\nLOADBOOL v40 20")
fhh=bool.."\n\nSETTABUP u0 \"BY 星爷\" 1"
return fhh
end

function GetBug2(data)
data=data:gsub("LOADNIL v(%d+)%.%.v(%d+)\n%s+TEST v(%d+) (%d+)\n%s+JMP :goto_(%d+)  ; %+(%d+) ↓",function (a,b,c,d,e,f) return "LOADNIL v"..a.."..v"..b.."\nTEST v"..c.." "..d.."\nTEST v"..c.." "..d.."\nLT 0 403 331\nLT 0 403 331\nJMP :goto_"..e.."  ; +"..f.." ↓ "..fh() end)

  return data
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
    if not Xy_NuTa then
        Xy_NuTa,Xy_Zxc = {}, {}
        local n3 = Let.Ran_str()
        local n2, n4
        for i = 1, 9 do
            n2 = Let.Ran_str()
            nr = nr:gsub(i,n2)
            Xy_Zxc[i] = n2
            Xy_NuTa[i] = "local " .. n2 .. " = " .. "(Char[Tostring(#Fr_Dt)] + " .. i .. ") % "..n3
        end
        Xy_NuTa = table.concat(Xy_NuTa,"\n")
        Xy_NuTa = "local Tostring=tostring\nlocal " .. n3 .. " = Char[Tostring(#Fr_Dt)]\n" .. Xy_NuTa
        n4 = Let.Ran_str()
        nr = nr:gsub("0",n4)
        Xy_Zxc[0] = n4
        Xy_NuTa = Xy_NuTa .. "\nlocal " .. n4 .. " = " .. n3 .." - " .. n3
    else
        for i=0,9 do
            nr = nr:gsub(i, Xy_Zxc[i])
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
    if math.random(0,1)==1 then
        compline=[[
if ]]..math.random(3000,5000)..[[>]]..math.random(5001,9000)..[[ then
    local _={}
    _._={}
    _._=_<<_>>_*_._~_/_._&_%_._^_
    if _._==_ then
        _._=_>>_-_+_._//_/_._<<_%_._+_
    elseif _._<_ then
        while _._._ do
            _._._={}
            _._._._=_._._>>_._-_+_._._//_/_._._<<_%_._+_
        end
    end
elseif ]]..math.random(5001,9000)..[[>]]..math.random(3000,5000)..[[ then
    return ]]..max..[[

end
]]
    else
        compline="return "..max
    end
    if type(reTn)~="table" then
        reTn = {string.byte(reTn,0,-1)}
    end
    local data = {string.byte(Data,0,-1)}
    local rs=reTn
    for i,k in pairs(data) do
        XtyP=XtyP+1
        if XtyP>#reTn then
            XtyP=1
        end
        data[i]=k~reTn[XtyP]
    end
    data = "Str_dec({"..table.concat(data,",").."})"
    Tab2[#Tab2+1] = "Sherlock[(function()\n"..compline.."\nend)()]="..data
    if math.random(0,1)==0 then
        str_Calcul[Data] = "string_char(Sherlock[(function() return "..NumCal(max).." end)()])"
    else
        str_Calcul[Data] = "string_char(Sherlock["..NumCal(max).."])"
    end
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
		    	ltre = ltre:gsub("([^%w_])" .. v .. "%s*=", "%1_ENV[" .. Str_Enc(v) .. "]=")
		    end
		end
	end
	return ltre
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




--选择
yc.main = gg.prompt({
"❤️请选择文件❤️：",
"❤限制包名→❤:" .. "本修改器包名为:" .. gg.PACKAGE,
"❤限制版本→❤:" .. "本修改器版本:" .. gg.VERSION,
"❤限制版本号→❤:" .. "本修改器版本号:" .. gg.BUILD
},g.info,{"file","checkbox","checkbox","checkbox"})
if yc.main == nil then
    os.exit(print("未选择"))
end
gg.saveVariable(yc.main, g.config)
yc.data = File_operations(yc.main[1])




-- 修改器验证
    fangyu2 = ''

    if yc.main[2] then
        fangyu2 = fangyu2 .. [[
        while gg.PACKAGE ~= 'tihuan' do
            print('专属GG包名验证失败')
            os.exit()
        end]]
        fangyu2 = fangyu2:gsub('tihuan', gg.PACKAGE)
    end
    if yc.main[3] then
        fangyu2 = fangyu2 .. [[
        while gg.VERSION ~= 'tihuan' do
            print('专属GG版本验证失败')
            os.exit()
        end]]
        fangyu2 = fangyu2:gsub('tihuan', gg.VERSION)
    end
    if yc.main[4] then
        fangyu2 = fangyu2 .. [[
        while gg.BUILD ~= 'tihuan' do
            print('专属GG版本号验证失败')
            os.exit()
        end]]
        fangyu2 = fangyu2:gsub('tihuan', gg.BUILD)
    end

--判断 
yc.data = fangyu2 .. "\n" ..yc.data

--时间计算
time=os.clock()

local gr = {}
repeat
    local s1 = string.find(yc.data, "\034")
    local ss1 = string.find(yc.data, "\039")
    local x1 = string.find(yc.data, "%[[=]*%[")
    local xx1 = string.find(yc.data, "%-%-")
    local str = Min_num(s1,ss1,x1,xx1)
    if str == nil then
        break
    end
    if str == s1 then
        yc.data = yc.data:gsub("(.-)(\034.-\034)",function(t1, t2)
            gr[#gr+1] = t1
            t2 = string.gsub(t2, "\\\\","\\092")
            t2 = string.gsub(t2, "\\\034", "\\034")
            if t2:sub(-1, -1) ~= "\034" then
                return t2
            end
            t2 = load("return "..t2)
            if not t2 then
                gg.alert("\034字符串加密失败")
                os.exit()
            end
            gr[#gr+1] = Str_Enc(t2())
            return ""
        end, 1)
    elseif str == ss1 then
        yc.data = yc.data:gsub("(.-)(\039.-\039)",function(t1, t2)
            gr[#gr+1] = t1
            t2 = string.gsub(t2, "\\\\","\\092")
            t2 = string.gsub(t2, "\\\039", "\\039")
            if t2:sub(-1, -1) ~= "\039" then
                return t2
            end
            t2 = load("return "..t2)
            if not t2 then
                gg.alert("\039字符串加密失败")
                os.exit()
            end
            gr[#gr+1] = Str_Enc(t2())
            return ""
        end, 1)
    elseif str == x1 then
        local g1 = string.match(yc.data,"%[([=]*)%[")
        yc.data=yc.data:gsub("(.-)(%["..g1.."%[.-%]"..g1.."%])",function(t1, t2)
            gr[#gr+1] = t1
            t2 = load("return "..t2)
            if not t2 then
                gg.alert("[字符串加密失败")
                os.exit()
            end
            gr[#gr+1] = Str_Enc(t2())
            return ""
        end, 1)
    elseif str == xx1 then--注释清理思路来自rl
        d1, d2, d3, d4 = string.find(yc.data, "%-%-(%[([=]*)%[)")
        if d1 == xx1 then
            yc.data = string.gsub(yc.data, "(.-)%-%-%[" .. d4 .. "%[.-%]" .. d4 .. "%]", function(txt1)
                gr[#gr + 1] = txt1
                return " "
            end, 1)
        else
            yc.data = string.gsub(yc.data, "(.-)%-%-[^\n]*", function(txt1)
                gr[#gr + 1] = txt1
                return ""
            end, 1)
        end
    else
        break
    end
until not str
gr[#gr+1]=yc.data
gr=Fuc_Enc(table.concat(gr))
Tab2=WlCon(Tab2)
local Xy_NumCal
Xy_NumCal = {}
for i, k in pairs(NusRv) do
     Xy_NumCal[#Xy_NumCal+1] = "[\"" .. i .. "\"]=" .. k
end
local xor=math.random(10,20)
for i,k in pairs(reTn) do
    reTn[i]="\034\\"..(k~xor).."\034"
end
reTn="_ENV[\"\\xec\\xcf\\xbd\\xa1\"]={"..table.concat(reTn,",").."}"
char=[=[
(function()
(function()
]=]..reTn..[=[

end)()
local Xty2=0
local Char={}
for i=0,255 do
    Char[i]=string.char(i)
    Char[string.char(i)]=i
end
local Str_dec = function(_Tab)
    if Xty2>#_ENV["\xec\xcf\xbd\xa1"] then
        Xty2=1
    end
    for i=1,#_Tab do
        Xty2=Xty2+1
        _Tab[i]=_Tab[i]~(Char[_ENV["\xec\xcf\xbd\xa1"][Xty2]]~]=]..xor..[=[)
    end
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
--刷取 3000是数量
_ENV['拆卸刷内存1'] = function(gr)
    return 'while not _ENV do ' .. string.rep('RlRlRR=RlRlRR ', 3000) .. ' end\n' .. gr
end

gr = _ENV['拆卸刷内存1'](gr) -- 在10进制的时候调用 '拆卸刷内存1' 把脚本数据传进去               
last = yc.main[1]:gsub("(.+)/(.+)",function(x,y)
    CoNe = "[XY]-" .. y
    return x .. "/[加密完成]" .. y
end)
UI="\000"..[===[

➖➖➖➖➖➖➖➖
 🔸▫️ 𝑬𝑵𝑪𝑹𝒀𝑷𝑻▫️🔸

	🔱[作者]：绝代🔱
    
--[[]===]
--]]
gr=char.."local Fr_Dt={}\nlocal Wield = (function() return {"
     .. table.concat(Xy_NumCal,",") .. "} end)()\n"
     .. Xy_NuTa .. "\nlocal Sherlock={}\n"..Tab2.."\n"..Fy.."\n"..gr.."\nend)([===["..UI.."]===])"

local rg=load(gr)
if not rg then
    os.exit(gg.alert("加密失败"))
end
gr=string.dump(rg,true)
gg.internal2(load(gr), last)
gr = io.open(last,"r"):read("*a")

gr = gr:gsub("linedefined [^\n]+", "linedefined 0")
:gsub("lastlinedefined [^\n]+", "lastlinedefined 0")
:gsub("%.numparams %d+%s+%.is_vararg (%d+)%s+%.maxstacksize %d+", function(vararg)
        if tonumber(vararg)==1 then
            return ".numparams 0\n.is_vararg 250\n.maxstacksize 250"
        else
            return ".numparams 250\n.is_vararg 250\n.maxstacksize 250"
        end
end)

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
    local Pic = {"🔥","🙉","🔆","💐","🌷","🦴","🐶","🌴","🏆","🧩","🔞","💨"}
    local Star = 0
    Confu=function()
        return ""
    end
    local Resver
	function Resver()
	    Star = Star + 1
	    if Star > #Pic then
	        Star = 1
	    end
	    local TAB_ = {}
	    local b = gg.bytes(Pic[Star])
        local tab = {}
        for k,v in pairs(b) do
            table.insert(tab, 1, string.format("%x",v))
        end
        tab = table.concat(tab)
            tab = tab:gsub("........",function (x)
            table.insert(TAB_, 1, "OP[48] 0x" .. x .. "\n")
        end,1)
        return "\n" .. table.concat(TAB_)
    end
    if not free then
        Resver=function()
            return ""
        end
    end
    gg.toast("正在进行JMP错位...")
    Tran = Tran:gsub("; .local v[^\n]+\n",""):gsub("\n%s*; .end local v[^\n]+",""):gsub("\n%s+","\n")
    Tran = Tran:gsub("maxstacksize (%d+)(.-RETURN[^\nv]+)\n",function(max,str)
        if #str>100 then
            local tre_Z = {}
            local num = 1000000
            local tre_X = {}
            local tre_V = {}
            str = str:gsub("[^\n]+",function(s)
                zl = s:match("%S+")
                local Dt,tD,DT,HX = nil, nil, nil, nil
                if zl == ".upval" or zl == ".line" then
                    tre_Z[#tre_Z+1] = s
                    tD = true
                end
                if num>1005000 then
                    HX = true
                end
                if zl == "LOADK" and HX == nil then
                    num = num+1
                    tre_V[#tre_V+1] = ":goto_" .. num .. "\n" .. s .. "\nTEST v249 1\nTFORLOOP v248 :goto_" .. (num+1)..Resver().."\n"..Confu()
                    num = num+1
                    Dt = true
                end
                if ZL[zl] then
                    num = num+1
                    if zl == "RETURN" and s:find("v") == nil then
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s
                        DT=true
                    else
                        tre_X[#tre_X+1] = ":goto_" .. num .. "\n" .. s .. "\nTEST v249 1\nTFORLOOP v248 :goto_" .. (num+1) .. Resver() .. "\n" .. Confu()
                        num = num+1
                        Dt = true
                    end
                end
                if Dt then
                    return "FORPREP v244 :goto_" .. (num-1) .. "\n:goto_" .. num
                elseif tD then
                    return ""
                elseif DT then
                    return "FORPREP v244 :goto_" .. num
                else
                    return s
                end
            end)
            str = ":goto_1000000\n" .. str
            local system = {}
            for i in str:gmatch(":goto_%d+.-FORPREP v244 :goto_%d+") do
                system[#system+1]=i
            end
            str=table.concat(Tab.Table_Rand(system),"\n")
            return "maxstacksize "..max.."\n" .. table.concat(tre_Z,"\n") .. "\nLOADK v244 1\nLOADK v245 1\nLOADK v246 1\nLOADBOOL v249 1\nTFORLOOP v248 :goto_1000000\n" .. table.concat(Tab.Table_Rand(tre_X),"\n") .. "\n" .. str .. "\n" .. table.concat(Tab.Table_Rand(tre_V),"\n")  .. "\n"
        else
            return "maxstacksize "..max..str.."\n"
        end
    end)
    Tran = Tran:gsub("\n%s+","\n")
    return Tran
end



--调用jmp
gr=Disloc(gr,1)
File_operations(last,gr)
--变量传输

xy = gr

--区块赋值错误
weizhicuowu=[=[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u0 "" ; u4
.upval v0 "" ; u5
.upval u11 "" ; u6
.upval u12 "" ; u7
.upval u13 "" ; u8
.upval u14 "" ; u9
.upval u15 "" ; u10
.upval u16 "" ; u11
]=]

weizhicuowu1=[=[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u7 "" ; u4
.upval u6 "" ; u5
.upval u11 "" ; u6
]=]
gg.toast("区块赋值错误成功")

--变量回归
gr = xy

local rg=load(gr)
if not rg then
    os.exit(gg.alert("加密失败"))
end

--二进制dump
gr=string.dump(rg,true)

--爆刷内存
_ENV['拆卸刷内存2'] = function(gr)
    return string.gsub(gr, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x52),string.char(0x04, 0x11, 0x27, 0x00, 0x00) .. string.rep(string.char(math.random(0,255)), 10000))
end

gr = _ENV['拆卸刷内存2'](gr)

--变量传输
spritend = gr

--dump防御
spritend = string.gsub(spritend, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
               string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))
               
gg.toast(":起止行替换成功")               

--变量传输              
data = spritend

gg.toast("正在加密二进制")                                      
data = string.gsub(data, string.char(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFA, 0xFA, 0xFA),
              string.char(0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0xFA, 0xFA))

data = string.gsub(data, string.char(0x01, 0x00, 0x00, 0x00, 0x1f, 0x00, 0x80, 0x00),
              string.char(0x00, 0x00, 0x00, 0x00), 1)

data = string.gsub(data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x6C, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x00),
              string.char(0x04, 0x00, 0x00, 0x00, 0x00), 1)

data = string.gsub(data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x6C),
              string.char(0x04, 0xE9, 0x03, 0x00, 0x00) .. string.rep(string.char(6), 1000))

data = string.gsub(data, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x52),
              string.char(0x04, 0x11, 0x27, 0x00, 0x00) .. string.rep(string.char(6), 10000))
 
gr = data

--写出
xiechu,error = File_operations(last,gr)

    --判断是否加密成功     
    local puanduan=function()
    time=os.clock()-time
    time=string.format("%1.1f",tonumber(time))
    gg.alert("✨总加密耗时 :" .. time .. "秒✨" ..'\n\n✨约加密 :' .. #gr .. '字节✨' ..'\n\n✨脚本保存在 :' .. last.."✨\n\n✨by——星爷为您脚本保驾护航✨")
    print('✨加密成功，脚本保存在：\n\n✨' .. last .. '\n' .. "✨加密总耗时为" ..time .. "秒")
end

    if gr then
    puanduan()
    else
    return print("写出数据时出现未知原因\n\n╾╾╾╾╾⚠ 问 题 所 在 ️⚠╾╾╾╾╾\n\n"..error)
end
