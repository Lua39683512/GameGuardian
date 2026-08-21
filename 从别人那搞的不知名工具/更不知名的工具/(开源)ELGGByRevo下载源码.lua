
alert = gg.alert(" Do you want to download?", "Yes", "No")

if alert == 1 then
download()
else
os.exit()
end

function download()
downloadupdate = gg.prompt({' Select path output download :',}, {[1] = '/sdcard/Download',}, {[1] = 'path'})
if downloadupdate then
gg.toast(" Downloading......")
gg.makeRequest("http://raw.githubusercontent.com/Revoxtical/ELGGByRevo/master/ELGGByRevo.v5.5.lua")
gg.alert("File has been save to :  "..downloadupdate[1], "Exit")
 end
end

