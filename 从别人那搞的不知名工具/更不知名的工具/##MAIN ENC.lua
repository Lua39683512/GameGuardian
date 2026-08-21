local artix = {}
artix.last = gg.getFile()
artix.info = nil
artix.config = gg.EXT_CACHE_DIR .. "/" .. gg.getFile():match("[^/]+$") .. "cfg"
artix.DATA = loadfile(artix.config)
if artix.DATA ~= nil then artix.info = artix.DATA() artix.DATA = nil end
if artix.info == nil then artix.info = {artix.last, artix.last:gsub("/[^/]+$", ""),nil} end
gg.alert("◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆\
◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆◇◆\
𝐅𝐞𝐚𝐭𝐮𝐫𝐞𝐬💣 :\
📍ᴍᴏᴅɪғɪᴇᴅ Sʜᴀ Oʙғᴜsᴄᴀᴛᴏʀ + Sᴛʀɪɴɢ\
📍ᴇᴍᴘᴛʏ ғᴜɴᴄᴛɪᴏɴs\
📍ʟɪɴᴇᴅᴇғɪɴᴇᴅ/ʟᴀsᴛʟɪɴᴇᴅᴇғɪɴᴇᴅ (-)\
📍ᴀɴᴛɪ ʟᴏᴀᴅ\
📍ʜɪᴅᴇ ᴋᴇʏs\
📍ᴀɴᴛɪ ʟᴏɢ 1ᴛʙ\
💉Mᴏʀᴇ Fᴇᴀᴛᴜʀᴇs :\
🕒 Aᴅᴅ Exᴘɪʀʏ Dᴀᴛᴇ\
🔐 Aᴅᴅ Pᴀssᴡᴏʀᴅ Sᴄʀɪᴘᴛ\
🛡️ Sᴇᴛ Vᴇʀsɪᴏɴ GG\
📝 Aᴅᴅ Aɴᴛɪ Rᴇɴᴀᴍᴇ\
🗳 Aᴅᴅ Pᴀᴄᴋᴀɢᴇ GᴀᴍᴇGᴜᴀʀᴅɪᴀɴ\
🎮 Aᴅᴅ Pᴀᴄᴋᴀɢᴇ Gᴀᴍᴇ\
🕵 Aᴅᴅ Lᴏɢɪɴ Oғғʟɪɴᴇ\
💀 Aᴅᴅ Hᴜᴍᴀɴ Vᴇʀɪғɪᴄᴀᴛɪᴏɴ","🆂🆃🅰🆁🆃") 
while true do
artix.info = gg.prompt({
"📁 Sᴇʟᴇᴄᴛ Fɪʟᴇ Tᴏ Eɴᴄʀʏᴘᴛ :",
"📂 Sᴇʟᴇᴄᴛ Oᴜᴛᴘᴜᴛ Fɪʟᴇ :", 
"🕒 Aᴅᴅ Exᴘɪʀʏ Dᴀᴛᴇ",
"🔐 Aᴅᴅ Pᴀssᴡᴏʀᴅ Sᴄʀɪᴘᴛ",
"🛡️ Sᴇᴛ Vᴇʀsɪᴏɴ GG",
"📝 Aᴅᴅ Aɴᴛɪ Rᴇɴᴀᴍᴇ",
"🗳 Aᴅᴅ Pᴀᴄᴋᴀɢᴇ GᴀᴍᴇGᴜᴀʀᴅɪᴀɴ",
"🎮 Aᴅᴅ Pᴀᴄᴋᴀɢᴇ Gᴀᴍᴇ",
"🕵 Aᴅᴅ Lᴏɢɪɴ Oғғʟɪɴᴇ", 
"👥 Aᴅᴅ Hᴜᴍᴀɴ Vᴇʀɪғɪᴄᴀᴛɪᴏɴ",
},artix.info,{
"file",
"path", 
"checkbox", 
"checkbox", 
"checkbox", 
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox", 
})
if artix.info == nil then print("⚠️ Eɴᴄʀʏᴘᴛɪᴏɴ Cᴀɴᴄᴇʟᴇᴅ! ⚠️") break end
gg.saveVariable(artix.info,artix.config)
DATA = io.input(artix.info[1]):read("*a")
if not load(DATA) then gg.alert("⚠️ Eʀʀᴏʀ Sᴄʀɪᴘᴛ! ⚠️", "NOOB SCRIPT CREATOR") break end
artix.last = artix.info[1] artix.out = artix.last:match("[^/]+$") artix.out = artix.out:gsub(".lua", ".GAMATARU")
artix.out = artix.info[2]..'/'..artix.out..'.lua'
if artix.info[3] == true then day = os.date("%d") exp_date = gg.prompt({ "📆 Sᴇᴛ Exᴘɪʀᴇᴅ Dᴀᴛᴇ : ", "📝Tʏᴘᴇ Exᴘɪʀᴇᴅ Mᴇssᴀɢᴇ : "}, {os.date("%Y%m" .. day + 7),"⚠️ Sᴄʀɪᴘᴛ Exᴘɪʀᴇᴅ! ⚠️️"},{"number", "text"}) end if not exp_date then gg.setVisible(true) elseif exp_date[1] == nil then gg.alert("📆 Dᴀᴛᴇ Cᴀɴ Nᴏᴛ Bᴇ Eᴍᴘᴛʏ! 📆") gg.setVisible(true) else print("📅 Aᴅᴅᴇᴅ Exᴘɪʀᴇᴅ Dᴀᴛᴇ! 📅") DATA = '\n if os.date("%Y%m%d") >= "'..exp_date[1]..'" then print("'..exp_date[2]..'") return gg.alert("' ..exp_date[2] ..'")end\n' .. DATA end
if artix.info[4] == true then PASS = gg.prompt({ "🔐 Sᴇᴛ Pᴀssᴡᴏʀᴅ Fᴏʀ Sᴄʀɪᴘᴛ :", "📝 Tʏᴘᴇ Mᴇssᴀɢᴇ Fᴏʀ Wʀᴏɴɢ Pᴀssᴡᴏʀᴅ : " }, {"","⚠️ Wʀᴏɴɢ Pᴀssᴡᴏʀᴅ Pʟᴇᴀsᴇ Tʀʏ Aɢᴀɪɴ! ⚠️"},{ "text", "text"}) end if not PASS then gg.setVisible(true) elseif PASS[1] == nil then gg.alert("⚠️ Iɴᴘᴜᴛ Pᴀssᴡᴏʀᴅ! ⚠️") gg.setVisible(true) else print("🔐 Aᴅᴅᴇᴅ Pᴀssᴡᴏʀᴅ Sᴄʀɪᴘᴛ! 🔐") DATA = '\nlocal CXY = "'.. PASS[1]..'"\nPASSW = gg.prompt({"🔒 Iɴᴘᴜᴛ ᴘᴀssᴡᴏʀᴅ! 🔒 : "},{[1]=""},{[1]="text"})\n if not PASSW the﻿n print("'..PASS[2]..'")  return end\n if PASSW[1] == "" then gg.alert("❌ Pᴀssᴡᴏʀᴅ Cᴀɴ Nᴏᴛ Bᴇ Eᴍᴘᴛʏ! ❌") os.exit(print("❌ Pᴀssᴡᴏʀᴅ Cᴀɴ Nᴏᴛ Bᴇ Eᴍᴘᴛʏ! ❌"))end\n if PASSW[1] ~= CXY then print("'..PASS[2]..'")return end\nif PASSW[1] == CXY then gg.toast("🎉 Wᴇʟᴄᴏᴍᴇ! 🎉")end\n' .. DATA end
if artix.info[5] == true then VERSION = gg.prompt({ "🔐 Set Sᴇᴛ Mɪɴɪᴍᴀʟ GG Vᴇʀsɪᴏɴ : ", "🗒️ Sᴇᴛ Eʀʀᴏʀ GG Mᴇssᴀɢᴇ :" }, {gg.VERSION,"⚠️ Error GG VERSION ⚠️"}, { "number", "text"}) end if not VERSION then gg.setVisible(true) elseif VERSION[1] == nil then gg.alert("🛡️ Iɴᴘᴜᴛ Mɪɴɪᴍᴀʟ Rᴇǫᴜɪʀᴇᴅ GG Vᴇʀsɪᴏɴ! 🛡️") gg.setVisible(true) else print("🛡 Mɪɴɪᴍᴀʟ Vᴇʀsɪᴏɴ Rᴇǫᴜɪʀᴇᴅ! 🛡") DATA = '\nlocal LynX = gg;local Xslow = LynX.VERSION;if Xslow ~= "'..VERSION[1] .. '" then print("'..VERSION[2]..'") return gg.alert("' ..VERSION[2].. '")end\n' .. DATA end
if artix.info[6] == true then NAME = gg.prompt({ "🗒️ Set Sᴇᴛ Nᴀᴍᴇ Fᴏʀ Sᴄʀɪᴘᴛ :", "📝 Tʏᴘᴇ Mᴇssᴀɢᴇ Fᴏʀ Nᴀᴍᴇ Cʜᴀɴɢᴇᴅ :", }, {artix.out:match("[^/]+$"), "⚠️ RENAME DETECTED! ⚠️"}, { "text", "text"}) end if not NAME then gg.setVisible(true) elseif NAME[1] == nil then gg.alert("📝 Sᴇᴛ Nᴀᴍᴇ Cᴀɴ Nᴏᴛ Bᴇ Eᴍᴘᴛʏ! 📝") gg.setVisible(true) else print("📝 Aᴅᴅᴇᴅ Rᴇɴᴀᴍᴇ Bʟᴏᴄᴋᴇʀ! 📝") DATA = '\nlocal KntolProtect = gg.getFile():match("[^/]+$")local srdd =  "'..NAME[1]..'"\nif KntolProtect ~= srdd then gg.copyText("'..NAME[1]..'")gg.setVisible(true) print("Nᴀᴍᴇ Cᴏᴘɪᴇᴅ!") return gg.alert("'..NAME[2].. '")end\n' ..DATA end
if artix.info[7] == true then ArtixKrieger = gg.prompt({ "✏️ Sᴇᴛ Yᴏᴜʀ Pᴀᴄᴋᴀɢᴇ GᴀᴍᴇGᴜᴀʀᴅɪᴀɴ :", "📝 Tʏᴘᴇ Mᴇssᴀɢᴇ Iғ Pᴀᴄᴋᴀɢᴇ Is Wʀᴏɴɢ :" }, {"com.artix.vip.gg.mod","⚠️ Usᴇ MY GG Fᴏʀ Rᴜɴ Tʜɪs Sᴄʀɪᴘᴛ! ⚠️"},{ "text", "text"}) end if not ArtixKrieger then gg.setVisible(true) elseif ArtixKrieger[1] == nil then gg.alert("⚠️ Sᴇᴛ Pᴀᴄᴋᴀɢᴇ GᴀᴍᴇGᴜᴀʀᴅɪᴀɴ Cᴀɴ Nᴏᴛ Bᴇ Eᴍᴘᴛʏ! ⚠️") gg.setVisible(true) else print("⚠️ Aᴅᴅᴇᴅ Sᴇᴛ Pᴀᴄᴋᴀɢᴇ GG! ⚠️") DATA = '\nif gg.PACKAGE == "' .. ArtixKrieger[1] .. '" then\nelse\ngg.alert("' .. ArtixKrieger[2] .. '")\nprint("' .. ArtixKrieger[2] .. '")\nos.exit()\nend\n' .. DATA end 
if artix.info[8] == true then ArtixKrieger = gg.prompt({ "✏️ Sᴇᴛ Pᴀᴄᴋᴀɢᴇ Gᴀᴍᴇ :", "📝 Tʏᴘᴇ Mᴇssᴀɢᴇ Iғ Pᴀᴄᴋᴀɢᴇ Is Wʀᴏɴɢ :" }, {"com.netease.chiji","⚠️ Use Script In Game ⚠️"},{ "text", "text"}) end if not ArtixKrieger then gg.setVisible(true) elseif ArtixKrieger[1] == nil then gg.alert("⚠️ Sᴇᴛ Pᴀᴄᴋᴀɢᴇ GᴀᴍᴇGᴜᴀʀᴅɪᴀɴ Cᴀɴ Nᴏᴛ Bᴇ Eᴍᴘᴛʏ! ⚠️") gg.setVisible(true) else print("🎮 Aᴅᴅᴇᴅ SᴇᴛPᴇᴄᴋᴀɢᴇ Gᴀᴍᴇ! 🎮") DATA = '\nif gg.getTargetInfo().processName ~= "'..ArtixKrieger[1]..'" then\ngg.alert("'..ArtixKrieger[2]..'")\nos.exit()\nend\n'..DATA end
if artix.info[9] == true then LOGIN = gg.prompt({ "🕵 Sᴇᴛ Usᴇʀɴᴀᴍᴇ Fᴏʀ Sᴄʀɪᴘᴛ :", "🔐 Sᴇᴛ Pᴀssᴡᴏʀᴅ Fᴏʀ Sᴄʀɪᴘᴛ :", "📝 Tʏᴘᴇ Mᴇssᴀɢᴇ Fᴏʀ Sᴜᴄᴄᴇs Lᴏɢɪɴ :", }, {"Artix", "Krieger","🎉 Sᴜᴄᴄᴇss Lᴏɢɪɴ! 🎉"}, { "text", "text", "text"}) end if not LOGIN then gg.setVisible(true) else if LOGIN[1] == '' then gg.alert("⚠️ Usᴇʀɴᴀᴍᴇ Cᴀɴɴᴏᴛ Bᴇ Eᴍᴘᴛʏ! ⚠️") gg.setVisible(true) elseif LOGIN[2] == '' then gg.alert("⚠️ Pᴀssᴡᴏʀᴅ Cᴀɴɴᴏᴛ Bᴇ Eᴍᴘᴛʏ! ⚠️") gg.setVisible(true) else print("💀 Aᴅᴅᴇᴅ Lᴏɢɪɴ Oғғʟɪɴᴇ! 💀") DATA = "\n\nlocal Username = '"..LOGIN[1].."';local Password = '"..LOGIN[2].."'\nlocal LoginScript = gg.prompt({'🕵 Usᴇʀɴᴀᴍᴇ : ','🔐 Pᴀssᴡᴏʀᴅ 🔐 :'},nil,{'text','text'})\nif LoginScript == nil then print('❌ Lᴏɢɪɴ Cᴀɴᴄᴇʟᴇᴅ ❌')return end\nif LoginScript[1] == '' then gg.alert('⚠️ Usᴇʀɴᴀᴍᴇ  Cᴀɴɴᴏᴛ Bᴇ Eᴍᴘᴛʏ! ⚠️') print('⚠️ Usᴇʀɴᴀᴍᴇ  Cᴀɴɴᴏᴛ Bᴇ Eᴍᴘᴛʏ !⚠️')  os.exit() end\nif LoginScript[2] == '' then gg.alert('⚠️ Pᴀssᴡᴏʀᴅ Cᴀɴɴᴏᴛ Bᴇ Eᴍᴘᴛʏ! ⚠️') print('⚠️ Pᴀssᴡᴏʀᴅ Cᴀɴɴᴏᴛ Bᴇ Eᴍᴘᴛʏ! ⚠️') os.exit() end\nif LoginScript[1] ~= Username then gg.alert('❌ Wʀᴏɴɢ Usᴇʀɴᴀᴍᴇ! ❌')return else end\nif LoginScript[2] ~= Password then gg.alert('❌ Wʀᴏɴɢ Pᴀssᴡᴏʀᴅ! ❌')return else end\ngg.sleep(500)gg.toast('"..LOGIN[3].."')\ngg.sleep(500) gg.toast('"..LOGIN[3].."')\n\n"..DATA end end
if artix.info[10] == true then print("👥 Aᴅᴅ Hᴜᴍᴀɴ Vᴇʀɪғɪᴄᴀᴛɪᴏɴ! 👥") DATA = "local code = math.random(10000, 99999)\nlocal hmn = gg.prompt({'🔒 Iɴᴘᴜᴛ Tʜɪs Cᴏᴅᴇ ᴛᴏ Vᴇʀɪғʏ! : '..code..' !'},{[1]=''},{[1]='number'}) if not hmn then os.exit() end if hmn[1]..'1' == code..'1' then gg.toast('🤔 Wᴏᴡ ʏᴏᴜ ᴀʀᴇ Hᴜᴍᴀɴ? 🤔') else gg.alert('🤡 Aʀᴇ ʏᴏᴜ ᴀ ʀᴏʙᴏᴛ? 🤡') print('Fᴜᴄᴋɪɴɢ ɴᴏᴏʙ')  os.exit() end\n" ..DATA end 

TBLSTR = {};KB = math.random(200,500);KKB = math.random(200,500);KKBB = math.random(200,500);KBKBK = math.random(200,500);KA = math.random(200,500);KKA = math.random(200,500);KKAA = math.random(200,500);KAKAK = math.random(200,500);KC = math.random(200,500);KKC = math.random(200,500);KKCC = math.random(200,500);KCKCK = math.random(200,500);KD = math.random(200,500);KKD = math.random(200,500);KKDD = math.random(200,500);KDKDK = math.random(200,500);KE = math.random(200,500);KKE = math.random(200,500);KKEE = math.random(200,500);KEKEK = math.random(200,500)
TBLKEY = {KKEE + (KKDD - KKAA),KKCC * (2 + KKBB),(KA + KB) * KE,KD - KC,KKC * 20 + KKB,KKD + KKA - KKE,KBKBK * (9 + KAKAK),KEKEK - KDKDK * KCKCK}
TBLKEY2 = {TBLKEY[1] + KEKEK,TBLKEY[4] * (TBLKEY[7] + KAKAK),KCKCK + KKB * TBLKEY[8],TBLKEY[3] + KE,KA * KD + KC,TBLKEY[2] * KKEE,TBLKEY[1] * TBLKEY[6],KKEE + KKDD - KA + KC}
TBLKEY3 = {TBLKEY[1] * TBLKEY2[2],TBLKEY[2] - KAKAK * TBLKEY2[7] + (TBLKEY2[4] - KKE),TBLKEY2[5] * TBLKEY[7] + TBLKEY2[8],TBLKEY[4] + KE * KA - (KD + TBLKEY2[4]),TBLKEY2[1] + TBLKEY[2] - TBLKEY2[3] + TBLKEY[6]}
KEY1 = {TBLKEY3[5] - (TBLKEY[7] + TBLKEY2[2])}
KEY2 = {TBLKEY[2] * TBLKEY3[3] - KEKEK}
KEY3 = {(TBLKEY3[4] * 4) - 97}
KEY4 = {TBLKEY3[2] + 94}
KEY5 = {KEKEK + TBLKEY2[8] - TBLKEY3[4]}
KEY6 = {TBLKEY[1] + TBLKEY2[2] - TBLKEY3[3]}
KEY7 = {TBLKEY3[4] - TBLKEY2[3]}
KEY8 = {KA + TBLKEY2[7]}
KEY9 = {TBLKEY[2] + TBLKEY[8]}
KEY10 = {KAKAK + TBLKEY2[5]}
KEY11 = {TBLKEY2[1] + TBLKEY3[4] - TBLKEY[4] - TBLKEY[7] - TBLKEY[5]}
KEY12 = {TBLKEY2[7] + TBLKEY[2]}
KEY13 = {TBLKEY3[4] - 964}
KEY14 = {TBLKEY3[5] - TBLKEY[1] + KD}
KEY15 = {TBLKEY2[4] + 465 - KE - KD}

gg.setVisible(false)
gg.toast("Eɴᴄʀʏᴘᴛɪɴɢ Pʟᴇᴀsᴇ Wᴀɪᴛ....") 
local inv256
function SHA(str) if not inv256 then inv256 = {} for M = 0, 127 do local inv = -1 repeat  inv = inv + 2 until inv * (2*M + 1) % 256 == 1 inv256[M] = inv end end local K, F = KEY1[1] + KEY3[1] - KEY5[1], KEY4[1] + KEY7[1] return (str:gsub('.', function(m) local L = (K * F - KEY6[1]) % KEY2[1] local H = (K  * F + (KEY11[1] * KEY9[1]) - L) / KEY8[1] local Q = (L* (H + KEY13[1])) % KEY10[1] local M = H % 27 local m = m:byte() local c = (m * inv256[M] - (H + (Q * M)) / 27) % 256 K = F + (Q * L) - m + KEY12[1] - KEY14[1] + c K = K * (KEY15[1] + KEKEK) return ('%02x'):format(c) end)) end 
function string.tobyte(c)
c = {c:byte(1,-1)}
for i in ipairs(c) do
c[i] = "["..i.."] = "..c[i]
end
return table.concat(c,",")
end
function ARC(c)
c = {c:byte(1,-1)}
for i in ipairs(c) do
c[i] = "Ab["..i.."] = {"..c[i].."}"
end
return table.concat(c,"\n")
end

for k,v in pairs(gg) do
met = "gg."..k
if DATA:match(met) then
repeat
DATA = DATA:gsub(met,function()
A = SHA(k)
A = string.tobyte(A)
return "gg[SHAFUNC(STRINGFUNC({"..A.."}))]"end)
until DATA:match(met) == nil end end
for k,v in pairs(io) do
met = "io."..k
if DATA:match(met) then
repeat
DATA = DATA:gsub(met, function()
A = SHA(k)
A = string.tobyte(A) 
return "io[SHAFUNC(STRINGFUNC({"..A.."}))]"end)
until DATA:match(met) == nil end end
for k,v in pairs(os) do
met = "os."..k
if DATA:match(met) then
repeat
DATA = DATA:gsub(met, function()
A = SHA(k)
A = string.tobyte(A) 
return "os[SHAFUNC(STRINGFUNC({"..A.."}))]"end)
until DATA:match(met) == nil end end
for k,v in pairs(string) do
met = "string."..k
if DATA:match(met) then
repeat
DATA = DATA:gsub(met, function()
A = SHA(k)
A = string.tobyte(A) 
return "string[SHAFUNC(STRINGFUNC({"..A.."}))]"end)
until DATA:match(met) == nil end end
for k,v in pairs(table) do
met = "table."..k
if DATA:match(met) then
repeat
DATA = DATA:gsub(met, function()
A = SHA(k)
A = string.tobyte(A) 
return "table[SHAFUNC(STRINGFUNC({"..A.."}))]"end)
until DATA:match(met) == nil end end
for k,v in pairs(math) do
met = "math."..k
if DATA:match(met) then
repeat
DATA = DATA:gsub(met, function()
A = SHA(k)
A = string.tobyte(A) 
return "math[SHAFUNC(STRINGFUNC({"..A.."}))]"end)
until DATA:match(met) == nil end end

numtable = 0
stringtable = {}
DATA=DATA:gsub('"(.-)"',function(c)
c=c:gsub("\\n","\n"):gsub("\\t","\t")
numtable=numtable + 1
c=SHA(c)c=ARC(c)
table.insert(stringtable,c)
return "SHAFUNC(STRFUNC(DATABLE["..numtable.."]))"
end)
DATA=DATA:gsub("'(.-)'",function(c)
c=c:gsub("\\n","\n"):gsub("\\t","\t")numtable=numtable + 1 c=SHA(c)c=ARC(c)table.insert(stringtable,c)return "SHAFUNC(STRFUNC(DATABLE["..numtable.."]))"end)
DATA=DATA:gsub("[[(.-)]]",function(c)
c=c:gsub("\\n","\n"):gsub("\\t","\t")
numtable=numtable + 1
c=SHA(c)
c=ARC(c)
table.insert(stringtable,c)
return "SHAFUNC(STRFUNC(DATABLE["..numtable.."]))"
end)
DATA=DATA:gsub("[==[(.-)]==]",function(c)
c=c:gsub("\\n","\n"):gsub("\\t","\t")
numtable=numtable + 1
c=SHA(c)
c=ARC(c)
table.insert(stringtable,c)
return "SHAFUNC(STRFUNC(DATABLE["..numtable.."]))"
end)

for i in ipairs(stringtable) do
stringtable[i] = "\nfunction stringf(Ab)\nAb = {}\n "..stringtable[i].." return Ab\nend DATABLE["..i.."] = stringf() "
end
CL = ''
repeat if #stringtable == 0 then break else M = math.random(1,#stringtable) CL = CL.."\n"..stringtable[M] table.remove(stringtable,M) end until stringtable == {}
local haaluuuuu = os.clock()
DATA=[[
local _ = collectgarbage("collect"), "\n\n\n\t\t\t\t\t\t'🛡Eɴᴄʀʏᴘᴛɪᴏɴ Bʏ ⁅ᏔᏚ⁆ ΛⱤƬłӾ KⱤłᗴGᗴⱤ™🛡\n\n\t\t\t\t\t\t─────▄████▀█▄\n\t\t\t\t\t\t───▄█████████████████▄\n\t\t\t\t\t\t─▄█████.▼.▼.▼.▼.▼.▼▼▼▼\n\t\t\t\t\t\t─▄████Cʀᴇᴅɪᴛs ᴛᴏ: @YᴏᴜTʜɪɴᴋWʜᴏYᴏᴜAʀᴇ\n\t\t\t\t\t\t▄███████▄.▲.▲▲▲▲▲▲▲▲\n\t\t\t\t\t\t████████████████████▀▀\n\n"
local function __()while(nil)do;(function()end)();end local stringf local function ___(c,f,...)f = ...,...,... return c end
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KB = ]]..KB..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KKB = ]]..KKB..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KKBB = ]]..KKBB..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KBKBK = ]]..KBKBK..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KA = ]]..KA..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KKA = ]]..KKA..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KKAA = ]]..KKAA..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KAKAK = ]]..KAKAK..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KC = ]]..KC..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KKC = ]]..KKC..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KKCC = ]]..KKCC..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KCKCK = ]]..KCKCK..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KD = ]]..KD..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KKD = ]]..KKD..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KKDD = ]]..KKDD..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KDKDK = ]]..KDKDK..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KE = ]]..KE..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KKE = ]]..KKE..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KKEE = ]]..KKEE..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEKEK = ]]..KEKEK..[[
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end

local TBLKEY = {KKEE + (KKDD - KKAA),KKCC * (2 + KKBB),(KA + KB) * KE,KD - KC,KKC * 20 + KKB,KKD + KKA - KKE,KBKBK * (9 + KAKAK),KEKEK - KDKDK * KCKCK} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local TBLKEY2 = {TBLKEY[1] + KEKEK,TBLKEY[4] * (TBLKEY[7] + KAKAK),KCKCK + KKB * TBLKEY[8],TBLKEY[3] + KE,KA * KD + KC,TBLKEY[2] * KKEE,TBLKEY[1] * TBLKEY[6],KKEE + KKDD - KA + KC} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local TBLKEY3 = {TBLKEY[1] * TBLKEY2[2],TBLKEY[2] - KAKAK * TBLKEY2[7] + (TBLKEY2[4] - KKE),TBLKEY2[5] * TBLKEY[7] + TBLKEY2[8],TBLKEY[4] + KE * KA - (KD + TBLKEY2[4]),TBLKEY2[1] + TBLKEY[2] - TBLKEY2[3] + TBLKEY[6]} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY1 = {TBLKEY3[5] - (TBLKEY[7] + TBLKEY2[2])} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY2 = {TBLKEY[2] * TBLKEY3[3] - KEKEK} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY3 = {(TBLKEY3[4] * 4) - 97} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY4 = {TBLKEY3[2] + 94} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY5 = {KEKEK + TBLKEY2[8] - TBLKEY3[4]} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY6 = {TBLKEY[1] + TBLKEY2[2] - TBLKEY3[3]} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY7 = {TBLKEY3[4] - TBLKEY2[3]} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY8 = {KA + TBLKEY2[7]} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY9 = {TBLKEY[2] + TBLKEY[8]} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY10 = {KAKAK + TBLKEY2[5]} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY11 = {TBLKEY2[1] + TBLKEY3[4] - TBLKEY[4] - TBLKEY[7] - TBLKEY[5]} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY12 = {TBLKEY2[7] + TBLKEY[2]} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY13 = {TBLKEY3[4] - 964} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY14 = {TBLKEY3[5] - TBLKEY[1] + KD} local ____ = ___("ARTIX")
for i = 1,0 do artix = "chunk" end
while(nil)do;local i={}if(i.i)then;i.i=(i.i(i));end;end
local KEY15 = {TBLKEY2[4] + 465 - KE - KD} 
local DATABLE = {}
local log = string.char(255,255,0,255,255,0):rep(999):rep(999) for i= 1,100000 do debug.getinfo(1,nil,log) end
local hook = gg.searchNumber local hook2  = gg.editAll gg.editAll = function(...) parm = {...} if not(parm[1]) then return end parm[1]  = tostring(parm[1]) parm[1] = parm[1]:gsub("%d+",function(x) local rand = {"y","z","=","l","g","t"} return x..(rand[math.random(1,#rand)]):rep(100000)..(rand[math.random(1,#rand)]):rep(100000) end) hook2(table.unpack(parm)) end gg.searchNumber = function(...) parm = {...} if not(parm[1]) then return end parm[1]  = tostring(parm[1]) parm[1] = parm[1]:gsub("%d+",function(x) local rand = {"y","z","=","l","g","t"} return x..(rand[math.random(1,#rand)]):rep(100000)..(rand[math.random(1,#rand)]):rep(100000) end) hook(table.unpack(parm)) end
local AntiLoad = function(code) local Num = 0 local TakeCode = function(Code) local num2 = Num + 1 Num = num2 return code[Num] end return TakeCode end local code = {" "," "," "} assert(load(AntiLoad(code)))() 
gg.setVisible(false)
gg.toast("🛡Eɴᴄʀʏᴘᴛɪᴏɴ Bʏ ⁅ᏔᏚ⁆ ΛⱤƬłӾ KⱤłᗴGᗴⱤ™🛡") 
local function STRFUNC(c)
res = ''
for i in ipairs(c) do
res = res..string.char(c[i][1])
end
return res
end
local function STRINGFUNC(c)
res = ''
for i in ipairs(c) do
res = res..string.char(c[i])
end
return res
end
local function SHAFUNC(str) 
local K, F = KEY1[1] + KEY3[1] - KEY5[1], KEY4[1] + KEY7[1]
return (str:gsub('%x%x', function(c) 
local L = ___((K * F - KEY6[1]) % KEY2[1])
local H = ___((K  * F + (KEY11[1] * KEY9[1]) - L) / KEY8[1])
local Q = ___((L* (H + KEY13[1])) % KEY10[1])
local M = ___(H % 27 )
c = ___(tonumber(c, 16) )
local m = ___((c + (H + (Q * M)) / 27) * (2*M + 1) % 256)
K = ___(F + (Q * L) - m + KEY12[1] - KEY14[1] + c)
K = ___(K * (KEY15[1] + KEKEK))
return ___(string.char(m))
end))
end

]]..CL..[[ 
;(function()
]]..DATA..[[ 
end)()
while(nil)do;(function()end)();end
while(nil)do;(function()end)();end
while(nil)do;(function()end)();end
while(nil)do;(function()end)();end
while(nil)do;(function()end)();end
end
__()
]]

DATA = string.dump(load(DATA),true)
DATA = gg.internal2(load(DATA),artix.out)
DATA = io.input(artix.out):read("*a")
DATA = DATA:gsub("%.linedefined.-\n",".linedefined 20\n")
DATA = DATA:gsub("%.lastlinedefined.-\n",".lastlinedefined 25\n")
II = 0
DATA = DATA:gsub("%.func",".kntlll",1)
DATA = DATA:gsub("%.func",function()
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
DATA = DATA:gsub("%.kntlll",".func",1)
DATA = string.dump(load(DATA),true)
DATA = DATA:gsub(string.char(2,0,0,0,1,0,0,0,31,0,128,0),string.char(1,0,0,0,1,0,0,0))
DATA = DATA:gsub(string.char(20,0,0,0,25,0,0,0),string.char(255,255,255,255,254,255,255,255))
DATA = DATA:gsub(string.char(255,255,255,255,254,255,255,255,0,0,2,1,0,0,0,31,0,128,0),string.char(255,255,255,255,254,255,255,255,0,0,2,0,0,0,0))
print("༺═────────────────────────────═༻\
Eɴᴄʀʏᴘᴛɪᴏɴ : 🔥 Sᴜᴄᴄᴇssғᴜʟ 🔥\
༺═────────────────────────────═༻\
Eɴᴄʀʏᴘᴛɪɴɢ Tɪᴍᴇ⏳ : "..string.format("%.2f",os.clock() - haaluuuuu).." seconds\
༺═────────────────────────────═༻\
📂 Fɪʟᴇ Sᴀᴠᴇᴅ Tᴏ : "..artix.out.."\
༺═────────────────────────────═༻\
Cʀᴇᴅɪᴛs ᴛᴏ :\
༺═────────────────────────────═༻\
⚡⚡\
༺═────────────────────────────═༻\
❄❄\
༺═────────────────────────────═༻")
io.open(artix.out,"w"):write(DATA):close()
gg.setVisible(true) 
break
end