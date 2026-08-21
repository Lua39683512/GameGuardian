local function Table_Rand(t)
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
Ran_bit = function(num)
    local zl = {}
    if not num then
        num = math.random(3, 5)
    end
    for x = 1, num do
        zl[#zl+1] = "\\x" .. string.char(math.random(65, 70)) .. string.char(math.random(65, 70))
    end
    return table.concat(zl)
end
local Ran_str = function(len)
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
        local n3 = Ran_str()
        local n2, n4
        for i = 1, 9 do
            n2 = Ran_str()
            nr = nr:gsub(i,n2)
            Yx_Zxc[i] = n2
            Yx_NuTa[i] = "local " .. n2 .. " = " .. "(Char[Tostring(#Fr_Dt)] + " .. i .. ") % "..n3
        end
        Yx_NuTa = table.concat(Yx_NuTa,"\n")
        Yx_NuTa = "local Tostring=tostring\nlocal " .. n3 .. " = Char[Tostring(#Fr_Dt)]\n" .. Yx_NuTa
        n4 = Ran_str()
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

NusRv = {}
NumCal = function(num)
    local s1, s2, s3, s4, s5, s6, s7, s8, s9, rk, kr
    local t1, t2 = " + "
    t2 = math.random(0,9)
    s1 = num / 256
    s2 = num % 256
    s6 = s1 - t2
    s7 = math.random(1, 7)
    s8 = math.random(1, 7)
    s4 = 0
    repeat
        s4 = s4 + 1
        s3 = 2 ^ s4
        s5 = s2 - s3
    until s5 < 10
    if s5 <= -10 then
        rk = math.random(-9,9)
        s5 = rk - s5
        kr = Ran_bit()
        NusRv[kr] = s5
        s5 = rk
    end
    if s5 < 0 then
        t1 = ""
    end
    if rk then
        s5 = s5 .. " - NusRv[\"" .. kr .. "\"]"
        rk = nil
    end
    if s6 >= 10 then
        rk = math.random(-9,9)
        s6 = rk - s6
        kr = Ran_bit()
        NusRv[kr] = s6
        s6 = rk .. " - " .. "NusRv[\"" .. kr .. "\"]"
        rk = nil
    end
    s1 = "((" .. tostring(2 ~ s7) .. " ~ " .. s7 .. ") ^ (" .. s4 .. ") ".. t1 .. s5 .. " + (2 ^ 8) * (" .. s6 .. " + " .. t2 .. "))"
    s1 = Gsrt(s1)
    return s1
end
To_16 = function(txt)
    local sp = string.format("%x",txt)
    if #sp == 1 then
        sp = "0" .. sp
    end
    return "\\x" .. sp
end--转16进制
Un_know = function(num)
    local zl = {}
    if not num then
        num = math.random(3, 6)
    end
    for x = 1, num do
        zl[#zl+1] = To_16(math.random(1, 255))
    end
    return table.concat(zl)
end--生成16进制字符
local function spit(Para)
    local Et={}
    if Para:find(",") then
        for i in Para:gmatch("(.-),") do
            Et[#Et+1]=i
        end
        Et[#Et+1]=Para:match(".+,(.+)")
    elseif Para=="" then
        Et=nil
    else
        Et[#Et+1]=Para
    end
    return Et
end
function WlCon(nr)--while写法
    local func_Name = Ran_str()
    local Key = NumCal(math.random(10000,999999))
    local Main_Key = Key
    for i,k in pairs(nr) do
        if i==#nr then
            nr[i]="if " .. func_Name .. "==" .. Key .. " then\n" .. nr[i] .. "\nbreak\nend\n"
        else
            nr[i]="if " .. func_Name .. "==" .. Key .. " then\n" .. nr[i]
            Key = NumCal(math.random(10000,999999))
            nr[i]=nr[i] .. "\n" .. func_Name .. "=" .. Key .. "\nend\n"
        end
    end
    return "local " .. func_Name .."=" .. Main_Key .. "\nwhile true do\n" .. table.concat(Table_Rand(nr)).."\nend"
end
local function PsCode(xl)
    local ENV, GG = Un_know(), Un_know()
    local Ctab = {}
    local function Enc_Code(fuc,cl)
        local xk = {"\n","\n"}
        local xh=nil
        local vl={"Yx[\""..ENV.."\"][Yx[\""..GG.."\"]]"}
        cl=cl:gsub("[\34\39](.-)[\34\39]",function(ne)
            ne=ne:gsub(",","")
            return "\""..ne.."\""
        end)
        cl=spit(cl)
        local Asm = Un_know()
        xk[#xk+1] = "Yx[\""..Asm.."\"]=\""..fuc.."\""
        vl[#vl+1] = "[Yx[\""..Asm.."\"]]("
        if cl~=nil then
            for i, k in pairs(cl) do
                local Asm = Un_know()
                xk[#xk+1] = "Yx[\""..Asm.."\"]="..k
                vl[#vl+1] = ",Yx[\""..Asm.."\"]"
            end
        end
        xk[#xk+1] = table.concat(vl):gsub(",","",1)..")"
        xk=WlCon(xk)
        return xk
    end
    local function mat(xl)
	    local bl = xl:match("(.+)gg%.[%w_]+%(")
	    if xl:find("if[^\n]-gg%.[%w_]+%(")==nil and xl:find("[%w_]+%s*=%s*gg%.[%w_]+")==nil and tostring(bl):find("%(")==nil then
		    xl = xl:gsub("gg%.([%w_]+)%(([^%(\n]-)%)", Enc_Code)
	    end
    	return xl
    end
    for kl in xl:gmatch("[^\n]+") do
	    Ctab[#Ctab+1] = mat(kl)
	end
	local Yx_NumCal
    Yx_NumCal = {}
    for i, k in pairs(NusRv) do
         Yx_NumCal[#Yx_NumCal+1] = "[\"" .. i .. "\"]=" .. k
    end
    Yx_NumCal="local Fr_Dt={}\nlocal NusRv = {"
     .. table.concat(Yx_NumCal,",") .. "}\n"
     .. Yx_NuTa .. "\n"
	return Yx_NumCal.."local Yx={[\""..ENV.."\"]=_ENV,[\""..GG.."\"]=\"gg\"}\n"..table.concat(Ctab,"\n")
end

local Eoe={}
Eoe.last=gg.getFile()
Eoe.info=nil
Eoe.config=gg.EXT_FILES_DIR:gsub("%lua$", "").."/goto.cfg"
Eoe.data=loadfile(Eoe.config)
if Eoe.data ~= nil then;
	Eoe.info=Eoe.data()
	Eoe.data=nil
end
if Eoe.info == nil then
	Eoe.info={Eoe.last}
end
yc=gg.prompt({"请选择文件："}, Eoe.info, {"file"})
if yc==nil then
    os.exit(print("未选择"))
end
gg.saveVariable(yc, Eoe.config)
yx=io.open(yc[1],"r"):read("*a")
yx=PsCode(yx)
yx=yx:gsub("\n%s+","\n")
io.open(yc[1]..".lua","w"):write(yx)