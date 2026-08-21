local To_16=function(txt)
    local sp=string.format("%x",txt)
    if #sp==1 then
        sp="0"..sp
    end
    return sp
end--转16进制

dec=function(Lte)
	Lte={Lte:byte(0,-1)}
	local chartab={}
	for i=1,#Lte do
	    py=math.random(1,255-Lte[i])
	    local Lt=To_16(Lte[i]+py)
	    chartab[#chartab+1]=",{\34".."\\x"..Lt.."\34,"..py.."}"
	end
	return "table.concat(unget({"..table.concat(chartab):gsub(",","",1).."}))"
end--加密算法

print(dec("cs就是你的"))
--得到   table.concat(unget({{"\x99",54},{"\xb6",67},{"\xf2",13},{"\xf6",70},{"\xe7",54},{"\xee",8},{"\xe8",80},{"\xd3",36},{"\xf3",15},{"\xf1",52},{"\xc5",37},{"\xfe",23},{"\xe6",76},{"\xb2",46}}))



local function unget(data,py)
    local tab={}
    for i,k in pairs(data) do
        tab[#tab+1]=string.char(string.byte(k[1])-k[2])
    end
    return tab
end--解密算法
a=table.concat(unget({{"\x99",54},{"\xb6",67},{"\xf2",13},{"\xf6",70},{"\xe7",54},{"\xee",8},{"\xe8",80},{"\xd3",36},{"\xf3",15},{"\xf1",52},{"\xc5",37},{"\xfe",23},{"\xe6",76},{"\xb2",46}}))
print(a)
--得到   cs就是你的