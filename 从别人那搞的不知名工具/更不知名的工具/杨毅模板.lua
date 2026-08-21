
BYBL = {
[1] = "自己改"
}
SJ = os.date("%Y年%m月%d日%H时%M分%S秒")
function MCNB()
MCNB = gg.prompt({
"✨随便自己改✨ 使用时间:" .. SJ,
'🌹🌹',
'🌹🌹',
'🌹🌹',
'🌹🌹',
'🌹🌹',
'🌹🌹',
'🌹🌹',
'🌹🌹',
'🌹🌹',
'🌹🌹',
'🌹🌹',
'🌹🌹',
'🌹🌹',
'🌹退出脚本🌹',
}, BYBL, {
"text",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
"checkbox",
})
if MCNB ~= nil then

if MCNB[2] then

end

if MCNB[3] then

end

if MCNB[4] then

end


if MCNB[5] then

end


if MCNB[6] then

end

if MCNB[7] then

end

if MCNB[8] then

end

if MCNB[9] then

end

if MCNB[10] then

end

if MCNB[11] then

end

if MCNB[12] then

end

if MCNB[13] then

end

if MCNB[14] then

end


if MCNB[15] then
gg.toast("神人遗产")
os.exit()
end


end
NX = -1
end
while true do
if gg.isVisible(true) then
NX = 1
gg.setVisible(false)
end
if NX == 1 then
MCNB()
end
end