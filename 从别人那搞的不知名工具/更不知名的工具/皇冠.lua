Y=[[
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
]]

Q=[[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u7 "" ; u4
.upval u6 "" ; u5
.upval u11 "" ; u6
]]

local path,rw,code,randomStr,randomKey,keyTable,keyLen,decName,enc,data,class_list,keyName,lenName,path2,Replace,max, Table_Rand,table_maxn
path = gg.getFile()
path = string.match(path, "(.-)[^/]+$")
path = gg.prompt({"请选择脚本:","兼容提升"}, {path,false}, {"file","checkbox"})
if not path then
    return
end
isgg = path[2]
path = path[1]
Replace = {}
function Replace.GRB(DATA)
    DATA = DATA:gsub([[\092\092]], [[\\]])
    DATA = DATA:gsub([[\034]], string.char(92,34))
    DATA = DATA:gsub([[\039]], string.char(92,39))
    return DATA
end
function Replace.GRA(DATA)
    DATA = DATA:gsub([[\\]], [[\092\092]])
    DATA = DATA:gsub(string.char(92,34), [[\034]])
    DATA = DATA:gsub(string.char(92,39), [[\039]])
    return DATA
end
function Replace.GRC(Tx)
    local hh=[[

]]
    Tx=Tx:gsub([[\092\092]], [[\\]])
            :gsub([[\034]], string.char(34))
          :gsub([[\039]], string.char(39))
        :gsub([[\n]], hh)
    return Tx
end
rw = function(path, data)
    local file
    if data then
        file = io.open(path, "w")
        file:write(data)
        file:close()
    else
        file = io.open(path, "r")
        data = file:read("*a")
        file:close()
        return data
    end
end
data = rw(path)
function enc_door(data)
    local sm=0
    local door={data:byte(0,-1)}
    for i,k in pairs(door) do
        sm=(sm>=200 and 1) or sm+40
        
        door[i]=string.char(k~sm)
    end
    return table.concat(door)
end
local door = "Enc_Tloi\000\xef"..enc_door(data).."礻\xfe\x00"
function Table_Rand(t)
	local tRet = {}
	local Total = #t
	while Total > 0 do
		local i = math.random(1,Total)
		table.insert(tRet,t[i])
		t[i] = t[Total]
		Total = Total-1
	end
	return tRet
end
randomStr = function(len)
    len = len or 6
    local str = ""
    for i = 1, len do
        local num1 = math.random(1, 26)
        if i % 2 == 0 then
            num1 = num1 + 64
        else
            num1 = num1 + 96
        end
        str = str .. string.char(num1)
    end
    return str
end
function table_maxn(t)
    local mn = nil
    for k, v in pairs(t) do
        if(mn == nil) then
            mn = v
        end
        if mn < v then
            mn = v
        end
    end
    return mn
end
randomKey = randomStr(math.random(200,500))
keyTable = {string.byte(randomKey, 1, -1)}
max=math.random(50, 254-table_maxn(keyTable))
if max%2 == 1 then
    max=max+1
end
keyLen = #keyTable
decName = randomStr()
function Enc(nr)
    if nr<=255 then
        return string.char(34,92)..tostring(nr+max)..string.char(34)
    else
        return nr
    end
end
enc = function(data)
    data=Replace.GRC(data)
    local Table, Tab = {}, {}
    for i, v in pairs({string.byte(data, 1, -1)}) do
        Table[i] = v ~ keyTable[(i - 1) % keyLen + 1]
    end
    data = table.concat(Table,",")
    data = "((function()local s1={};local _=(function()s1={" .. data .. "}end)();local s2={};local _2=(function()s2="..decName.."(s1)end)();local s3={};local _3=(function()return s2 end);return (function()return _3() end)() end)())"
    return data
end
class_list = {
    ["table"] = 1,
    ["_G"] = 1,
    ["debug"] = 1,
    ["os"] = 1,
    ["io"] = 1,
    ["package"] = 1,
    ["bit32"] = 1,
    ["utf8"] = 1,
    ["string"] = 1,
    ["math"] = 1,
    ["gg"] = 1
}
local Fuc_Enc = function(ltre)
    gg.toast("正在加密标准库...")
	for v, s in pairs(_ENV) do
		if type(s) == "table" and class_list[v] then
		    Enc_func1 = enc(v)
			for i in pairs(s) do
			    if ltre:find(v .. "%." .. i) then
			        Enc_func2 = enc(i)
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%(", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "](")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%s*,", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "],")
			    	ltre = ltre:gsub("([^%w_])" .. v .. "%." .. i .. "%)", "%1_ENV[" .. Enc_func1 .. "]" .. "[" .. Enc_func2 .. "])")
			    end
			end
		elseif type(s) == "function" and debug.getinfo(s)["what"] == "Java" then
		    if ltre:find(v) then
		    	ltre = ltre:gsub("([^%w_])" .. v .. "%(", "%1_ENV[" .. enc(v) .. "](")
		    end
		end
	end
	return ltre
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

keyName = randomStr()
lenName = randomStr()
char=[===[
local Char={}
for i=1,255 do
    Char[i]=string_char(i)
end
]===]
for index, value in pairs(keyTable) do
    keyTable[index] = Enc(value)
end
code = "local max={}\nfor i=1, "..(max/2).." do\nmax[#max+1]=math.random(1,255)\nend\nlocal pairs=pairs\nlocal string_char=string.char\n"..char.."\nlocal table_unpack=table.unpack\nlocal table_concat=table.concat\nlocal SerCe=gg.ASM_ARM/gg.PROT_READ\n"
code = code .. "local DecKey=function(tab)\nfor i,k in pairs(tab) do\ntab[i]=k:byte()-(#max*SerCe)\nend\nreturn tab\nend\nlocal "..keyName.."=DecKey({" .. table.concat(keyTable, ",") .. "})\nlocal "..lenName.."=#"..keyName.."\n"
code = code ..
           "local "..decName.."=function(str)local data={}for i,v in pairs(str)do data[#data+1]=Char[v~"..keyName.."[(i-1)%"..lenName.."+1]] end return table_concat(data) end\n"
code = "local yx=(function()\nwhile not true do\nlocal i=0\nwhile i==200502053412 do\n"..("_ENV["..string.char(34).."会慢慢忘掉的啦"..string.char(34).."]="..string.char(34).."会遇到更好的啦"..string.char(34).."\n"):rep(math.random(3000,4000)).."end\nbreak\nend\n" .. code .. "local ar=(function(_ENV)\n" .. data .. "\nend)(_ENV) end)([=[\n\n\n💎Thanks for · OMG\n兼容性加密--By-👑\n\n\n\n--[[  ]=])"
local Un_know=function(num)
    local zl={}
    if not num then
        num=math.random(30000,35000)
    end
    for x=1,num do
        zl[#zl+1]=string.char(math.random(1,255))
    end
    return table.concat(zl)
end
path2 = path..".lua"
rw(path2, code)
func=loadfile(path2)
if not func then
    gg.alert("未知错误加密失败")
    os.exit()
end
_ENV['拆卸刷内存1'] = function(code)
    return 'while not _ENV do ' .. string.rep('RlRlRR=RlRlRR ', 3000) .. ' end\n' .. code
end
code = _ENV['拆卸刷内存1'](code)
_ENV['拆卸刷内存2'] = function(code)
return string.gsub(code, string.char(0x04, 0x07, 0x00, 0x00, 0x00, 0x52, 0x6C, 0x52, 0x6C, 0x52, 0x52),string.char(0x04, 0x11, 0x27, 0x00, 0x00) .. string.rep(string.char(math.random(0,255)), 10000))
end
code = _ENV['拆卸刷内存2'](code)
code = string.gsub(dumpplus(load(code), true), "LuaR", "LuaR", 1)
code=string.dump(func,true)
code=string.gsub(code,string.char(0x04,0x00,0x00,0x00,0x05,0x00,0x00,0x00,0x1E,0x00,0x80,0x00,0x1F,0x00,0x00,0x00,0x1F,0x00,0x80,0x00),string.char(02,0x00,0x00,0x00,0x05,0x00,0x00,0x00,0x1E,0x00,0x80,0x00))
local Ren=math.random(5000,7000)+1
local x1=Ren/256
local x2=Ren%256
code=code:gsub(string.char(4,22,0,0,0).."会慢慢忘掉的啦",function(x)
    return string.char(4)..string.char(x2,x1)..string.char(0,0)..Un_know(Ren-1)
end)
local Ner=Un_know(math.random(10000,13000))..string.char(4)..string.char(x2,x1)..string.char(0,0)..Un_know(Ren-1)..string.char(0)..Un_know(math.random(10000,13000))
local y1=(#Ner+1)/256
local y2=(#Ner+1)%256
code=code:gsub(string.char(4,22,0,0,0).."会遇到更好的啦",function(x)
    return string.char(4)..string.char(y2,y1)..string.char(0,0)..Ner
end)
rw(path2, code..door)
gg.setVisible(true)
print("文件保存到:"..path2)