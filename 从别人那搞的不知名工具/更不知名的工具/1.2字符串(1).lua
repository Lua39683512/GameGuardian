--[[16进制]]
local To_16=function(txt)
    local sp=string.format("%x",txt)
    if #sp==1 then
        sp="0"..sp
    end
    return sp
end

--[[偏移计算]]
local function pian()
    return math.random(1,10)
end
--[[转env]]
local Fuc_Enc=function(ltre)
		for v,s in pairs(_ENV) do
			if type(s)=="table" and v~="_G" then
				for i in pairs(s) do
				if i == "prompt" or i =="choice" then else
				if load(ltre:gsub(v .. "%." .. i .. "%(",
					
					"local wc1=\34" .. v .. "\34\nlocal wc2=\34" .. i .. "\34\n_ENV[wc1]" .. "[wc2]("))
					then
					ltre=ltre:gsub(v .. "%." .. i .. "%(",
					
					"local wc1=\34" .. v .. "\34\nlocal wc2=\34" .. i .. "\34\n_ENV[wc1]" .. "[wc2](")
					ltre=ltre:gsub(v .. "%." .. i .. "%s*,",
					
					"_ENV[\34" .. v .. "\34]" .. "[\34" .. i .. "\34],")
					else end
			    	end
				end
			elseif type(s)=="function" and debug.getinfo(s)["what"] == "Java" then
				ltre=ltre:gsub(v .. "%(", "_ENV[\34" .. v .. "\34](")
			end
		end
		return ltre
	end
---[[整体加密字符串]]
local do_char=function(data)
local DATA=""
local data_table={}
local pian=pian()

    for k,v in string.gmatch(data,"([".."'"..'"'.."])(.-)%1") do
    print(v)
           if #v~=0 then
            data_table[#data_table+1]=v
--        print(v)
    end
end
for n=1,#data_table do
    data=data:gsub("\34"..data_table[n].."\34",[=[
    (function(data)
    local tab2={}
    for i,k in Tree_table[wdnm+#Tree_table][wdnm+mask+mask+mask+mask](data) do
        tab2[wdnm+#tab2+mask]=Tree_table[wdnm+#Tree_table][wdnm+mask+mask](Tree_table[#Tree_table][wdnm+mask+mask+mask](k)+Tree_table[wdnm+#Tree_table-mask])
    end
    return Tree_table[#Tree_table][1](tab2)
end)]=].."(Tree_table[wdnm+"..n.."+wdnm])")
end
--print(data)
for c=1,#data_table do
    wc=data_table[c]
	wc={wc:byte(0,-1)}
	local chartab={}
	for i=1,#wc do
	    local Lt=To_16(wc[i]-pian)
	    chartab[#chartab+1]=",(\34".."\\x"..Lt.."\34)"
	end
	local ss = ' if nil then _() local _={} _._=_ _._=_._ _._={} for i in (_) do _[_]=_ end _()  end '
    	 DATA=DATA..",(function(x) local _ if not _ then return x else "..ss.." return nil end end)({"..table.concat(chartab):gsub(",","",1).."})\n"
    	 end
    	 DATA=DATA..",[[ENC BY MASK]],"..pian..',(function(x) local _ if not _ then return x else return nil end end)({table.concat,string.char,string.byte,pairs})'
	 return "local wdnm=0\nlocal mask=1\nlocal Tree_table={"..DATA:gsub(",","",1).."}"..data
end

HASH=[===[
--print("╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾
--🇲 🇦 🇨 🇰 🇧 🇾➨ ✭ 🇸 🇸 🇸 ✭
--╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾╾") 
do
local xxxx
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

local Info={}
for index=1,_ENV["math"]["random"](100,200) do
    _ENV["pcall"](function()
        Info[index]=_ENV["debug"]["getinfo"](index+4)
    end)
end

xxxx=Info[#Info]["istailcall"]
while xxxx do
end

end
local function Errose()
            file_path=gg.getFile()
        os.remove(file_path)
    os.remove(string.match(file_path,"[^/]+$"))
    while true do
        os.exit()
    end
end
io.input(gg.getFile(), "r")
os.remove(gg.getFile())
if not loadfile(gg.getFile()) then 
    return Errose() 
end
io.output(gg.getFile())
local re=io.read('*a')
io.write(re)
if (loadfile or load) == nil then 
    return Errose() 
end
io.output(gg.EXT_CACHE_DIR.."/1s2r.dll")
loadfile(gg.EXT_CACHE_DIR.."/1s2r.dll")()
if not loadfile(gg.EXT_CACHE_DIR.."/1s2r.dll") then
    return Errose()
end
os.remove(gg.EXT_CACHE_DIR.."/1s2r.dll")
if loadfile(gg.EXT_CACHE_DIR.."/1s2r.dll") then
    return Errose()
end
os.rename(gg.getFile(), gg.EXT_CACHE_DIR.."//361.dll")
os.rename(gg.EXT_CACHE_DIR.."//361.dll", gg.EXT_CACHE_DIR.."/Android//3641.dll")
if not loadfile(gg.getFile()) then 
os.rename(gg.EXT_CACHE_DIR.."/Android//3641.dll", gg.getFile()) 
    return Errose() 
end
os.rename(gg.EXT_CACHE_DIR.."/Android//3641.dll", gg.getFile())
gg.searchNumber,Searchnumber=Searchnumber,gg.searchNumber
local To_16=function(txt)
    local sp=string.format("%x",txt)
    if #sp==1 then
        sp="0"..sp
    end
    return "\\x"..sp
end--转16进制

local Un_know=function()
    return To_16(math.random(128,248))
end--生成16进制字符
function gg.searchNumber(a,b,c,d,e,f)
local search_e
local wc1="gg"
local wc2="setVisible"
_ENV[wc1][wc2](false)
if not search_e then
search_e=string.char(0,0,0,0,0,0,0)..Un_know()
--search_e=Un_know()
for i=1,22 do
search_e=search_e..search_e
end
end
local wc1="gg"
local wc2="getResults"
_ENV[wc1][wc2](1)
local wc1="gg"
local wc2="editAll"
_ENV[wc1][wc2](search_e,4)
local s,j={},{}
for i=1,50 do
j[i]=math.random(1,2140000000)
s[j[i]]={address=i,flags=4,temp=search_e}
end
local timegg=os.clock()+os.time()
s=gg.getValues(s)
local dateinit=os.clock()+os.time()
for i=1,50 do
while s[j[i]].value~=0 or dateinit-timegg>2.1 do
local wc1="gg"
local wc2="clearResults"
_ENV[wc1][wc2]()
local wc1="os"
local wc2="exit"
_ENV[wc1][wc2]()
end
end
Searchnumber(a,b,c,d,e,f)
local wc1="gg"
local wc2="getResults"
_ENV[wc1][wc2](0)
local wc1="gg"
local wc2="editAll"
_ENV[wc1][wc2](search_e,4)
while gg.isVisible(true) do
local wc1="gg"
local wc2="clearResults"
_ENV[wc1][wc2]()
local wc1="os"
local wc2="exit"
_ENV[wc1][wc2]()
end
end
]===]

local Eoe={}
Eoe.last=gg.getFile()
Eoe.info=nil
Eoe.config=gg.EXT_FILES_DIR:gsub("%lua$", "").."/jmp-Eoe.cfg"
Eoe.data=loadfile(Eoe.config)
if Eoe.data ~= nil then;
	Eoe.info=Eoe.data()
	Eoe.data=nil
end
if Eoe.info == nil then
	Eoe.info={Eoe.last}
end

local yc=gg.prompt({"请选择文件："}, Eoe.info, {"file"})
if yc==nil then
    os.exit(print("未选择"))
end

gg.saveVariable(yc, Eoe.config)
local out=yc[1]..".string.lua"
wc=io.open(yc[1],"r"):read("*a"):gsub("\\092\\092", "\\\\")
        :gsub("\\034", "\034")
        :gsub("\\039", "\039")
        :gsub("\\n", "\n")
     	:gsub("\\t", "\t")
    	:gsub("\\r", "\r")
    	:gsub("'","\34")
--wc=Fuc_Enc(wc)
wc=HASH..wc
wc=do_char(wc)

--wc=string.dump(load(wc),true)
--[[local res = gg.internal2(load(wc), out)
if not res then print("错误！ 脚本可能出错，请用不带编译的版本进行查错") end
local wc=io.open(out,"r"):read("*a")
--wc=Instruc_extr(wc)
function Table_Rand(t)
	local tRet = {}
	local Total = #t
	while Total > 0 do
		local i = math.random(1,Total)
		table.insert(tRet,t[i])
		t[i] = t[Total]
		Total = Total -1
	end
	return tRet
end
wc=wc:gsub("; .local v[^\n]+",""):gsub("\n%s+","\n")
wc=wc:gsub("maxstacksize %d+(.-RETURN[^\nv]+)\n",function(str)
    tr={}
    rt={}
    num=1000000
    str=str:gsub("[^\n]+",function(s)
        zl=s:match("%S+")
        if zl=="FORLOOP" then
            tr[#tr]=tr[#tr].."\n"..s.."\nJMP :goto_"..num
            Buffer=false
        end
        if Buffer==true then
            tr[#tr]=tr[#tr].."\n"..s
        else
        if zl==".upval" or zl==".line" then
            rt[#rt+1]=s
        elseif zl=="FORPREP" then
            tr[#tr+1]=":goto_"..num.."\n"..s
            num=num+1
            Buffer=true
        elseif zl=="RETURN" then
            if s:find("v") then
                tr[#tr+1]=":goto_"..num.."\n"..s.."\n".."JMP :goto_"..num+1
                num=num+1
            else
                tr[#tr+1]=":goto_"..num.."\n"..s
                num=num+1
            end
        elseif zl=="JMP" then
            tr[#tr]=tr[#tr]:gsub("(.+)(JMP[^\n]+)",function(zz,o)
                return zz..s.."\n"..o
            end)
        else
            tr[#tr+1]=":goto_"..num.."\n"..s.."\n".."JMP :goto_"..num+1
            num=num+1
        end
        end
    end)
    tr=Table_Rand(tr)
    for i,k in pairs(rt) do
        table.insert(tr,i,k)
    end
    table.insert(tr,#rt+1,"JMP :goto_1000000")
    tr=table.concat(tr,"\n")
    return "maxstacksize 250\n"..tr:gsub("\n%s+","\n").."\n"
end)
]]
--io.open(out,"w"):write(string.dump(load(wc)):gsub(string.char(0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x01,0x02),string.char(0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFA,0xFA,0xFA)))
io.open(out,"w"):write(wc)
print("成功\n文件位置:"..out)