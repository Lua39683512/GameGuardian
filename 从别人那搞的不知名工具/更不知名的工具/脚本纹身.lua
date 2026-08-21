local SPSS = gg.prompt({'选择脚本:'}, {gg.getFile()}, {'file'}) 

--print(LOGO)
pvnmsdlacho=io.open( SPSS[1],"r"):read("*a")
out= SPSS[1]..".lua"
local res = gg.internal2(load(pvnmsdlacho), out)
if not res then print("错误！ 脚本可能出错，请用不带编译的版本进行查错") end
local pvnmsdlacho=io.open(out,"r"):read("*a")
function escapeOpcode(str,repl) if (repl==true) then  magic_character = {37} else magic_character = {40,41,46,37,43,45,42,63,91,93,94,36} end invi = {} txt = "" string.gsub(str,".",function(w) w= string.byte(w) invi[#invi+1]=w end) for i, v in ipairs(invi) do  if string.len(v)== 1 then invi[i] = "【0"..v.."】"  else invi[i] = "【"..v.."】"end end for i = 1,#invi do for m, k in ipairs(magic_character)do if(invi[i])~="【"..k.."】" then else invi[i] = "【37】"..invi[i].."" end end txt = txt .. invi[i] end txt = string.gsub(txt,"【(.-)】",function(w) return string.char(w) end) return txt end
function hexstr(c)return(c:gsub("..",function(c)return string.char(tonumber(c,16))end))end
function HextoHex(c)return(c:gsub("..",function(x)return "\\x"..x end))end
function ChangeSource(Source)local List = { }local Num = 0 Source = Source:gsub('%.source ".-"',function()Num = Num + 1 local Repl = string.format("%x",Num)local lenght = string.len(Repl)if lenght % 2 ~= 0 then Repl = "0"..Repl end local lenght = string.len(Repl)if lenght == 2 then Repl = "000000"..Repl end if lenght == 4 then Repl = "0000"..Repl end if lenght == 6 then Repl = "00"..Repl end if lenght > 8 then Repl = Repl:sub(1,8) end table.insert(List,"sourceXX"..hexstr(Repl).."XXsource")return ".source \"sourceXX"..HextoHex(Repl).."XXsource\"" end)return Source,List end
function DumpSource(Source,List)local Replacement = "\n\n    🇸   🇹   🌀   🇷   🇲    \n\n" local lenght = string.len(Replacement) + 1 if lenght > 255 then Replacement = Replacement:sub(1,254) lenght = 255 end for i,l in ipairs(List) do print(escapeOpcode(l)) Source = Source:gsub(string.char(21,0,0,0)..escapeOpcode(l),string.char(lenght,0,0,0)..Replacement)end return Source end
pvnmsdlacho = string.dump(load(pvnmsdlacho),true)
pvnmsdlacho = gg.internal2(load(pvnmsdlacho),out)
pvnmsdlacho = io.input(out):read("*a")
pvnmsdlacho = pvnmsdlacho:gsub("%.linedefined.-\n",".linedefined 20\n")
pvnmsdlacho = pvnmsdlacho:gsub("%.lastlinedefined.-\n",".lastlinedefined 25\n")
II = 0
pvnmsdlacho = pvnmsdlacho:gsub("%.func",".kntlll",1)
pvnmsdlacho = pvnmsdlacho:gsub("%.func",function()
II = II + 1
C=[[.func M]]..II..[[ ; 0 upvalues, 0 locals, 0 constants, 0 funcs
.source " 5.0 "
.linedefined 20
.lastlinedefined 25
.numparams 0
.is_vararg 0
.maxstacksize 2
RETURN
.end ; M]]..II..[[

.func]]
return C
end)
pvnmsdlacho = pvnmsdlacho:gsub("%.kntlll",".func",1)
pvnmsdlacho,List = ChangeSource(pvnmsdlacho)
io.open(out.."luay", "w"):write(pvnmsdlacho)
pvnmsdlacho = string.dump(load(pvnmsdlacho))
pvnmsdlacho = DumpSource(pvnmsdlacho,List)

--pvnmsdlacho=string.dump(load(pvnmsdlacho),true)
io.open(out, "w"):write(pvnmsdlacho)