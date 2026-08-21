
if tostring(_ENV.gg):find(Revo_D({42})) then
  print(string.char(229,176,143,233,179,132,233,177,188,239,188,154,230,130,168,230,156,137,230,139,166,230,136,170,229,143,175,232,131,189,239,188,129),_ENV.gg) XEY_TC()
   while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
  for k in(tostring(_ENV):gmatch(string.char(102,117,110,99,116,105,111,110,58,32,64,40,46,45,41,58))) do
    if k ~= gg.getFile() then
	  XEY_TC() while true do if gg.isVisible() then  gg.isVisible(false)end end 
	end
  end
end
if debug.traceback == nil or not tostring(debug.traceback()):find(Revo_D({77,25,237,173,113})) then
  XEY_TC() while true do if gg.isVisible() then  gg.isVisible(false)end end 
end
for j in tostring(debug.traceback()):gmatch(Revo_D({18,223,165,104,16})) do
  if j:match(Revo_D({24,217,167,109,51,246,206})) then
    if j:match(Revo_D({24,217,167,109,51,246,206})) ~= gg.getFile() then
      XEY_TC() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end
local f = io.open(gg.FILES_DIR:sub(1,-6)..Revo_D({93,25,217,177,107,49,243,203,148,78,22,234,109})..gg.PACKAGE..Revo_D({73,33,234,164,108,50,6,192,144,76,21,234,108,125,57,255}), Revo_D({92}))	
	if not f then
  XEY_TC() while true do if gg.isVisible() then  gg.isVisible(false)end end 
else
   Rcek = f:read(Revo_D({20,18}))
  f:close()
    for k in Rcek:gmatch('history -0">(.-)<') do
    if k ~= gg.getFile() then
      print(string.char(229,176,143,233,179,132,233,177,188,239,188,154,230,130,168,230,156,137,230,139,166,230,136,170,229,143,175,232,131,189,239,188,129),Revo_D({82,26,235,179,117,63,13,128,79,25,210,181,102,51,249,188,150}))
      XEY_TC() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
  for o in Rcek:gmatch('history -0">(.-)<') do
    if o == gg.getFile() then
      XEY_TC() while true do if gg.isVisible() then  gg.isVisible(false)end end 
    end
  end
end
local data=string.gsub(Rcek,"-","")
local data=string.gsub(data,tostring(string.char(34)),"")
local g = {} g.last =gg.getFile() g.info = nil g.config =gg.getFile():gsub('%lua$', '')..'cfg' g.data = loadfile(g.config) 