function main()
Tool = gg.choice({
"</> Make Pero Chunk </>",
"</> Quit </>"
},0,"Chunk Maker By XlayerCharon[XCB]\nTelegram: @CharonCB21 :')\nPero help by @PharaoYT")
if Tool == 1 then 
Enc() 
end
if Tool == 2 then 
Quit() 
end
hehe=-1
end

function Enc()
lol= gg.prompt({
"Put Your Text Here: "
},lol,{"Text"}, 'File will be saved at download folder :)')
if lol == nil then 
return 
end
DATA= lol[1]
function wee(s) 
return string.gsub(s, "(..)(..)", "%2%1") 
end
mm1=wee(DATA)
function blaaa(str)
return (str:gsub('.', function (c)
return string.format('%02X', string.byte(c))
end))
end
m=blaaa(mm1)
function wee(s) 
return string.gsub(s, "(..)(..)", "%2%1") 
end
mm=wee(m)
function wee(s) 
return string.gsub(s, "(..)(..)", "%2%1") 
end
mmmm=wee(mm)
data1=mmmm
reversed = wee(data1)
reversed = reversed:lower()
reversed = reversed:gsub("........",function(c)
c = c.." 0x"
return c
end)
oof = reversed..""
io.open('/sdcard/download/#CustomChunkByCharon.lua', 'w'):write(oof):close()
gg.toast("Done 100%")
print('Done :)\nTool Made By XlayerCharon[XCB]\nTelegram: @CharonCB21\n\nPero help by @PharaoYT')
os.exit()
end

function Quit()
gg.setVisible(true)
print('Tool Made By XlayerCharon[XCB]\n Telegram: @CharonCB21\n Pero help by @PharaoYT')
os.exit()
end
while(true)
do
if gg.isVisible(true) then
hehe=1
gg.setVisible(false) 
end 
gg.clearResults()
if hehe==1 then main() end
end