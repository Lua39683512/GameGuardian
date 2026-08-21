	XY = gg.prompt({"选择lasm文件"},{gg.getFile()},{"file"})
	f = io.open(XY[1],"r")
	ym = f:read("*a")
	f:close()
	Zhiling = {["MOVE"] = 1,["LOADK"] = 1,["LOADKX"] = 1,["LOADBOOL"] = 1,["LOADNIL"] = 1,["GETUPVAL"] = 1,["GETTABUP"] = 1,["GETTABLE"] = 1,["SETTABUP"] = 1,["SETUPVAL"] = 1,["SETTABLE"] = 1,["NEWTABLE"] = 1,["SELF"] = 1,["ADD"] = 1,["SUB"] = 1,["MUL"] = 1,["DIV"] = 1,["MOD"] = 1,["POW"] = 1,["UNM"] = 1,["NOT"] = 1,["LEN"] = 1,["CONCAT"] = 1,["JMP"] = 1,["EQ"] = 1,["LT"] = 1,["LE"] = 1,["TEST"] = 1,["TESTSET"] = 1,["CALL"] = 1,["TAILCALL"] = 1,["RETURN"] = 1,["FORLOOP"] = 1,["FORPREP"] = 1,["TFORCALL"] = 1,["TFORLOOP"] = 1,["SETLIST"] = 1,["CLOSURE"] = 1,["VARARG"] = 1,["EXTRAARG"] = 1,["IDIV"] = 1,["BNOT"] = 1,["BAND"] = 1,["BOR"] = 1,["BXOR"] = 1,["SHL"] = 1,["SHR"] = 1,["RETURN"] = 1}
	Str = {"🇨🇳","🇭🇰","🇲🇴","🇩🇪","🇨🇦","🇧🇼"} num = 1 Tab = {} number = 10086
	function Resver(b)
     local tab = {}
     for k,v in pairs(b) do
      table.insert(tab,1,string.format("%x",v))
     end
     str = table.concat(tab)
     tab = {}
     str = str:gsub("........",function (x) table.insert(tab,1,"OP[48] 0x"..x.."\n") end)
     number = number+1
     return "JMP :goto_"..number.."\n"..table.concat(tab).."\n:goto_"..number.."\n\nMOVE v0 v0\n"
    end
for text in string.gmatch(ym, '[^\n]+') do
    if text ~= '' then
        str_1 = string.match(text, '%S+')
        if Zhiling[str_1] and text:match("JMP") == nil then
			table.insert(Tab,Resver(gg.bytes(Str[num])).."\n"..text.."\n")
			if num+1 == #Str then
			 num = 1
			else
			 num = num+1
			end
		else
			table.insert(Tab,text.."\n")
        end
    end
end
	f = io.open(XY[1],"w+")
	f:write(table.concat(Tab))
	f:close()