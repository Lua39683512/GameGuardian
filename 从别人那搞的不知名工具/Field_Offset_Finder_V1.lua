--[[ Field_Offset_Finder
   Free and Open Source
   Version : 1
   Script Made By: Hackers House
   Get Updates: https://t.me/Hackers_House_YT
   Chat Group : https://t.me/Hackers_House_YT_chat_group
--]]
   





function found()
if count == 0 then
gg.clearResults()
gg.clearList()
error = 1
second_start()
end
end






function found2(message)
if count == 0 then
gg.clearResults()
gg.clearList()
gg.alert("❌Value NOT FOUND❌\nerror at: ".. message.."\n\nℹ️Try Thisℹ️\n\n🟢1: Make Sure You are Using 64 bit version Of the game and dump of 64 bit version\n\n🟡2: Is the value allocated? if you are searching for player health maybe that value only loads after you load match and took some damage. So try again while playing\n\n🔴3: Is the class name correct? for example if the class is playerscript then don't forget to make P and S capital. So type PlayerScript not playerscript\n\n⚫4: Is the offset right? you have to type 0x before the offset for example the offset is C1 then you have to Give 0xC1 to this script\n\n🟤5: Tried Everything but still didn't work? then contact the devloper of this script https://t.me/Hackers_House_YT")
gg.setVisible(true)
UI()
end
end






function user_input_taker()
gg.clearResults()
Get_user_input = gg.prompt(
{"🔰Script By🔰: https://t.me/Hackers_House_YT\n\nClass Name: ", "Offset: ","Try Harder --(decreases accuracy)"},
{"AnimationController","0x18",false},
{"text","text","checkbox"})
error = 0
end






function O_initial_search()
gg.setVisible(false)
gg.toast("🔴Hackers House🔴")
Get_user_input[1] = ":"..Get_user_input[1] 
if Get_user_input[3] then
offst = 10
else
offst = 0
end
end






function O_dinitial_search()
gg.setRanges(gg.REGION_OTHER)
gg.searchNumber(Get_user_input[1], gg.TYPE_BYTE)
count = gg.getResultsCount()
if error == 1 then
found2("O_dinitial_search")
else
found()
end
Refiner = gg.getResults(1)
gg.refineNumber(Refiner[1].value, gg.TYPE_BYTE)
count = gg.getResultsCount()
if error == 1 then
found2("O_dinitial_search")
else
found()
end
val = gg.getResults(count)
gg.addListItems(val)
end






function CA_pointer_search()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.loadResults(gg.getListItems())
gg.searchPointer(offst)
count = gg.getResultsCount()
if error == 1 then
found2("CA_pointer_search")
else
found()
end
vel = gg.getResults(count)
gg.clearList()
gg.addListItems(vel)
end






function CA_apply_offset()
local copy = false
local l = gg.getListItems()
if not copy then gg.removeListItems(l) end
for i, v in ipairs(l) do
	v.address = v.address + 0xfffffffffffffff0
	if copy then v.name = v.name..' #2' end
end
gg.addListItems(l)
end






function Q_apply_fix()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.loadResults(gg.getListItems())
gg.clearList()
count = gg.getResultsCount()
found2("Q_apply_fix")
yy = gg.getResults(1000)
gg.clearResults()
i = 1
c = 1
s = {}
while (i-1) < count do
yy[i].address = yy[i].address + 0xb400000000000000
gg.searchNumber(yy[i].address, gg.TYPE_QWORD)
cnt = gg.getResultsCount()
if 0 < cnt then
bytr = gg.getResults(cnt)
n = 1
while (n-1) < cnt do
s[c] = {}
s[c].address = bytr[n].address
s[c].flags = 32
n = n + 1
c = c + 1
end
end
gg.clearResults()
i = i + 1
end
gg.addListItems(s)
end






function A_base_value()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.loadResults(gg.getListItems())
gg.clearList()
gg.searchPointer(offst)
count = gg.getResultsCount()
if error == 1 then
found2("A_base_value")
else
found()
end
tel = gg.getResults(count)
gg.addListItems(tel)
end






function A_base_accuracy()
gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC)
gg.loadResults(gg.getListItems())
gg.clearList()
gg.searchPointer(offst)
count = gg.getResultsCount()
if error == 1 then
found2("A_base_accuracy")
else
found()
end
kol = gg.getResults(count)
i = 1
h = {}
while (i-1) < count do
h[i] = {}
h[i].address = kol[i].value
h[i].flags = 32
i = i + 1
end
gg.addListItems(h)
end






function A_user_given_offset()
local copy = false
local y = gg.getListItems()
if not copy then gg.removeListItems(y) end
for i, v in ipairs(y) do
	v.address = v.address + Get_user_input[2]
	if copy then v.name = v.name..' #2' end
end
gg.addListItems(y)
gg.clearResults()
gg.loadResults(gg.getListItems())
gg.clearList()
gg.setVisible(true)
end






function start()
user_input_taker()
O_initial_search()
O_dinitial_search()
CA_pointer_search()
CA_apply_offset()
A_base_value()
if offst == 0 then
A_base_accuracy()
end
A_user_given_offset()
UI()
end






function second_start()
gg.toast("🟢Hackers House🟢")
O_dinitial_search()
CA_pointer_search()
CA_apply_offset()
Q_apply_fix()
if offst == 0 then
A_base_accuracy()
end
A_user_given_offset()
UI()
end






function UI()
gg.showUiButton()
while true do
if gg.isClickedUiButton() then
start()
end
end
end






UI()