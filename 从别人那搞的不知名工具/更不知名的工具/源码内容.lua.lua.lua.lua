Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1 = gg.searchNumber
zdyT87Zkx1Hjb870m36I6w7dmUqMY12334dz8KnQ373J44c7Wx8sgvZ326u7FB2a9IN40y5FbLLh5mBCp8V6hki1 = gg.searchAddress
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3 = gg.clearResults
nVDot44FQ8vl182o1Y81l4ps4iGOWE8K8YAluA3y38SVJ4hLk0xSs095xNBJ7KBt8ZIwQ5ft0B6vZdC50y0XP49A06e0U26anQ = gg.choice
o4VPu5O5tC5vdPOkrRi8Zm2NGC311qc3DYm81i1l7H23mRe24ojn3VMFCue6dlqjmIZZRh8d = gg.multiChoice
v38omXb5LUDHrmc47kU6219W7Xqj9kRlp8Fxku8XH1yDtQRKzxm38WB1ig32ftwqIFTi11Q7QERBQ8C6Lt0J06 = gg.prompt
r0BNfYe51FZ27o6Tc5t6cM4Q5gmWw1356L1cg833R6F1bJlh1E384CMRMamHs29mn5UeVjXjKw0waAB71i = string.char
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6 = gg.toast
k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g = gg.alert
LKB1bI2ub9bCrFgkmRK9eQ3066Wa4jN9A496iSaIic17gcl1qa1v4x3DE5sp6N6OUm8 = gg.editAll
HH0LafJLkvXSbrjc565eZz4UoK9QeSC82iwnX6dXW72EaMeB3yf2w0c52Au8I6X1XZ77l = os.exit
V2xgM27q0swR95MPmLYsQBh6z593qR6R62zb8MG0jPLAaEFf16J2N6JM12EFd8Itt1FEQ2SOD = gg.TYPE_FLOAT
MKJ3HI2dB0w3eU4x3X33o8143yzmsA8Bjs5oRxyrMmM2sGGLywG2Cq3a29OJ4ciBF5aSNpCgYJMi3Ys063TQ19M6834m6tFv = gg.TYPE_DWORD
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE = gg.setRanges
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS = gg.getResults
GG = "https://share.weiyun.com/BhJ3ZtsU"
if gg.makeRequest(GG).content:match("【访问】(.-)【状态】") == "开放" then
else
print((gg.makeRequest(GG).content:match("【公告】(.-)【公告】")))
k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("脚本已更新，请加群下载新版", ("复制群号"))
gg.copyText("" .. gg.makeRequest(GG).content:match("【群号】(.-)【群号】"))
HH0LafJLkvXSbrjc565eZz4UoK9QeSC82iwnX6dXW72EaMeB3yf2w0c52Au8I6X1XZ77l()
end
a = gg.getFile():match(("[^/]*$"))
if a ~= "独裁者V3.lua" then
k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g(("脚本已损坏，请删除重下"))
HH0LafJLkvXSbrjc565eZz4UoK9QeSC82iwnX6dXW72EaMeB3yf2w0c52Au8I6X1XZ77l()
while true do
end
end
function jiuyan(A0_14016, A1_14017)
gg.setVisible(false)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qmnbv = A0_14016[3]["value"] or A0_14016[3][1]
qmnbt = A0_14016[3]["type"] or A0_14016[3][2]
qmnbn = A0_14016[2]["name"] or A0_14016[2][1]
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(A0_14016[1]["memory"] or A0_14016[1][1])
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1(qmnbv, qmnbt)
gg.refineNumber(qmnbv, qmnbt)
sz = gg.getResultCount()
if sz == 0 then
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(qmnbn .. "开启失败")
else
sl = PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(999999)
for _FORV_5_ = 1, sz do
pdsz = true
for _FORV_9_ = 4, #A0_14016 do
if pdsz == true then
pysz = {
{}
}
pysz[1].address = sl[_FORV_5_].address + (A0_14016[_FORV_9_]["offset"] or A0_14016[_FORV_9_][2])
pysz[1].flags = A0_14016[_FORV_9_]["type"] or A0_14016[_FORV_9_][3]
szpy = gg.getValues(pysz)
tzszpd = tostring(A0_14016[_FORV_9_]["lv"] or A0_14016[_FORV_9_][1]):gsub(",", "")
pyszpd = tostring(szpy[1].value):gsub(",", "")
if tzszpd == pyszpd then
pdjg = true
pdsz = true
else
pdjg = false
pdsz = false
end
end
end
if pdjg == true then
szpy = sl[_FORV_5_].address
for _FORV_9_ = 1, #A1_14017 do
xgsz = A1_14017[_FORV_9_]["value"] or A1_14017[_FORV_9_][1]
xgpy = szpy + (A1_14017[_FORV_9_]["offset"] or A1_14017[_FORV_9_][2])
xglx = A1_14017[_FORV_9_]["type"] or A1_14017[_FORV_9_][3]
xgdj = A1_14017[_FORV_9_]["freeze"] or A1_14017[_FORV_9_][4]
xg = {
{
address = xgpy,
flags = xglx,
value = xgsz
}
}
if xgdj == true then
xg[1].freeze = xgdj
gg.addListItems(xg)
else
gg.setValues(xg)
end
end
xgjg = true
end
end
if xgjg == true then
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(qmnbn .. "修改中,共修改1条数据")
else
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(qmnbn .. "开启失败")
end
end
end
for _FORV_27_ = 1, 10 do
end
function KYXG(A0_14018, A1_14019, A2_14020, A3_14021)
local L4_14022
L4_14022 = {}
for _FORV_8_ = 1, #A0_14018 do
for _FORV_12_, _FORV_13_ in ipairs(A1_14019) do
offset = _FORV_13_[1] * 4
L4_14022[#L4_14022 + 1] = {}
L4_14022[#L4_14022].address = A0_14018[_FORV_8_] + offset
L4_14022[#L4_14022].flags = _FORV_13_[2]
L4_14022[#L4_14022].value = _FORV_13_[3]
if _FORV_13_[4] == true then
;({})[#{}].freeze = true
gg.addListItems({})
end
end
end
gg.setValues(L4_14022)
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("开启成功"))
end
function KY_ZZ(A0_14023, A1_14024, A2_14025, A3_14026)
gg.setVisible(false)
if _UPVALUE1_[A0_14023[4]] == nil then
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(A0_14023[1])
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1(A0_14023[2], A0_14023[3])
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
if gg.getResultCount() > 0 then
for _FORV_10_, _FORV_11_ in ipairs((PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS((gg.getResultCount())))) do
_FORV_11_.isUseful = true
end
for _FORV_10_ = 1, #A1_14024 do
for _FORV_17_, _FORV_18_ in ipairs((PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS((gg.getResultCount())))) do
;({})[#{}].address = _FORV_18_.address + _UPVALUE2_(A1_14024[_FORV_10_][1], _UPVALUE3_) * 4
;({})[#{}].flags = _FORV_18_.flags
end
for _FORV_17_, _FORV_18_ in ipairs((gg.getValues({}))) do
if _FORV_18_.value ~= _UPVALUE2_(A1_14024[_FORV_10_][2], _UPVALUE3_) then
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS((gg.getResultCount()))[_FORV_17_].isUseful = false
end
end
end
for _FORV_10_, _FORV_11_ in ipairs((PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS((gg.getResultCount())))) do
end
if ({})[1] == nil then
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6((_UPVALUE4_.s28()))
elseif A0_14023[4] ~= false then
_UPVALUE1_[A0_14023[4]] = {}
KYXG({}, A2_14025, A3_14026, (_UPVALUE4_.s29()))
else
KYXG({}, A2_14025, A3_14026, (_UPVALUE4_.s30()))
end
else
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6((_UPVALUE4_.s31()))
end
else
KYXG(_UPVALUE1_[A0_14023[4]], A2_14025, A3_14026, (_UPVALUE4_.s32()))
end
end
function SearchWrite(A0_14027, A1_14028, A2_14029)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
gg.setVisible(false)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1(A0_14027[1][1] * -1, A2_14029)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
if gg.getResultCount() > 0 then
for _FORV_10_, _FORV_11_ in ipairs((PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS((gg.getResultCount())))) do
_FORV_11_.isUseful = true
end
for _FORV_10_ = 2, #A0_14027 do
for _FORV_17_, _FORV_18_ in ipairs((PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS((gg.getResultCount())))) do
;({})[#{}].address = _FORV_18_.address + (A0_14027[_FORV_10_][2] - A0_14027[1][2])
;({})[#{}].flags = _FORV_18_.flags
end
for _FORV_17_, _FORV_18_ in ipairs((gg.getValues({}))) do
if tostring(_FORV_18_.value) ~= tostring(A0_14027[_FORV_10_][1]) then
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS((gg.getResultCount()))[_FORV_17_].isUseful = false
end
end
end
for _FORV_10_, _FORV_11_ in ipairs((PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS((gg.getResultCount())))) do
end
if 0 < #{} then
for _FORV_12_ = 1, #{} do
for _FORV_16_, _FORV_17_ in ipairs(A1_14028) do
offset = _FORV_17_[2] - A0_14027[1][2]
;({})[#{}].address = ({})[_FORV_12_] + offset
;({})[#{}].flags = A2_14029
;({})[#{}].value = _FORV_17_[1]
if _FORV_17_[3] == true then
;({})[#{}].freeze = true
gg.addListItems({})
end
end
end
gg.setValues({})
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("注入成功"))
else
do return false end
return false
end
end
end
function split(A0_14030, A1_14031)
local L2_14032, L3_14033, L4_14034
L2_14032 = 1
L3_14033 = 1
L4_14034 = {}
while true do
if not string.find(A0_14030, A1_14031, L2_14032) then
L4_14034[L3_14033] = string.sub(A0_14030, L2_14032, string.len(A0_14030))
break
end
L4_14034[L3_14033] = string.sub(A0_14030, L2_14032, string.find(A0_14030, A1_14031, L2_14032) - 1)
L2_14032 = string.find(A0_14030, A1_14031, L2_14032) + string.len(A1_14031)
L3_14033 = L3_14033 + 1
end
return L4_14034
end
function xgxc(A0_14035, A1_14036)
local L2_14037, L3_14038, L4_14039, L5_14040
L2_14037 = 1
L3_14038 = #A1_14036
for _FORV_5_ = 1, #A1_14036 do
xgpy = A0_14035 + A1_14036[_FORV_5_]["offset"]
xglx = A1_14036[_FORV_5_]["type"]
xgsz = A1_14036[_FORV_5_]["value"]
gg.setValues({
[1] = {
address = xgpy,
flags = xglx,
value = xgsz
}
})
xgsl = xgsl + 1
end
end
function xqmnb(A0_14041)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(A0_14041[1]["memory"])
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1(A0_14041[3]["value"], A0_14041[3]["type"])
if gg.getResultCount() == 0 then
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(A0_14041[2]["name"] .. "注入失败")
else
gg.refineNumber(A0_14041[3]["value"], A0_14041[3]["type"])
gg.refineNumber(A0_14041[3]["value"], A0_14041[3]["type"])
gg.refineNumber(A0_14041[3]["value"], A0_14041[3]["type"])
if gg.getResultCount() == 0 then
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(A0_14041[2]["name"] .. "注入失败")
else
sl = PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(999999)
sz = gg.getResultCount()
xgsl = 0
if 999999 < sz then
sz = 999999
end
for _FORV_4_ = 1, sz do
pdsz = true
for _FORV_8_ = 4, #A0_14041 do
if pdsz == true then
pysz = {}
pysz[1] = {}
pysz[1].address = sl[_FORV_4_].address + A0_14041[_FORV_8_]["offset"]
pysz[1].flags = A0_14041[_FORV_8_]["type"]
szpy = gg.getValues(pysz)
pdpd = A0_14041[_FORV_8_]["lv"] .. ";" .. szpy[1].value
szpd = split(pdpd, ";")
tzszpd = szpd[1]
pyszpd = szpd[2]
if tzszpd == pyszpd then
pdjg = true
pdsz = true
else
pdjg = false
pdsz = false
end
end
end
if pdjg == true then
szpy = sl[_FORV_4_].address
xgxc(szpy, qmxg)
xgjg = true
end
end
if xgjg == true then
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(A0_14041[2]["name"] .. "注入成功")
else
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(A0_14041[2]["name"] .. "注入失败")
end
end
end
end
function xgxc(A0_14042, A1_14043)
local L2_14044, L3_14045, L4_14046, L5_14047
L2_14044 = 1
L3_14045 = #A1_14043
for _FORV_5_ = 1, #A1_14043 do
xgpy = A0_14042 + A1_14043[_FORV_5_]["offset"]
xglx = A1_14043[_FORV_5_]["type"]
xgsz = A1_14043[_FORV_5_]["value"]
xgdj = A1_14043[_FORV_5_]["freeze"]
if xgdj == nil or xgdj == "" then
gg.setValues({
[1] = {
address = xgpy,
flags = xglx,
value = xgsz
}
})
else
gg.addListItems({
[1] = {
address = xgpy,
flags = xglx,
freeze = xgdj,
value = xgsz
}
})
end
xgsl = xgsl + 1
xgjg = true
end
end
function SearchWritefw(A0_14048, A1_14049, A2_14050)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
gg.setVisible(false)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1(A0_14048[1][1], A2_14050)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
if gg.getResultCount() > 0 then
for _FORV_10_, _FORV_11_ in ipairs((PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS((gg.getResultCount())))) do
_FORV_11_.isUseful = true
end
for _FORV_10_ = 2, #A0_14048 do
for _FORV_17_, _FORV_18_ in ipairs((PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS((gg.getResultCount())))) do
;({})[#{}].address = _FORV_18_.address + (A0_14048[_FORV_10_][2] - A0_14048[1][2])
;({})[#{}].flags = _FORV_18_.flags
end
for _FORV_17_, _FORV_18_ in ipairs((gg.getValues({}))) do
if tostring(_FORV_18_.value) ~= tostring(A0_14048[_FORV_10_][1]) then
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS((gg.getResultCount()))[_FORV_17_].isUseful = false
end
end
end
for _FORV_10_, _FORV_11_ in ipairs((PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS((gg.getResultCount())))) do
end
if #{} > 0 then
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("开启成功"))
for _FORV_12_ = 1, #{} do
for _FORV_16_, _FORV_17_ in ipairs(A1_14049) do
offset = _FORV_17_[2] - A0_14048[1][2]
;({})[#{}].address = ({})[_FORV_12_] + offset
;({})[#{}].flags = A2_14050
;({})[#{}].value = _FORV_17_[1]
if _FORV_17_[3] == true then
;({})[#{}].freeze = true
gg.addListItems({})
end
end
end
gg.setValues({})
else
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6("开启成功", false)
do return false end
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("开启成功"))
return false
end
end
end
function Main()
menu = nVDot44FQ8vl182o1Y81l4ps4iGOWE8K8YAluA3y38SVJ4hLk0xSs095xNBJ7KBt8ZIwQ5ft0B6vZdC50y0XP49A06e0U26anQ({
"打架系列",
"强化系列",
"视野系列",
("退出脚本")
}, nil, "" .. _UPVALUE2_)
if menu == 1 then
A()
end
if menu == 2 then
B()
end
if menu == 3 then
C()
end
if menu == 4 then
HH0LafJLkvXSbrjc565eZz4UoK9QeSC82iwnX6dXW72EaMeB3yf2w0c52Au8I6X1XZ77l()
end
XGCK = -1
end
function A()
menu = o4VPu5O5tC5vdPOkrRi8Zm2NGC311qc3DYm81i1l7H23mRe24ojn3VMFCue6dlqjmIZZRh8d({
"无后秒换",
"全枪射速",
"机瞄八倍",
"地图全除",
"机瞄路飞",
"机瞄路遁",
"半动连发",
"枪械自瞄",
("点击返回")
}, nil, "")
if menu == nil then
else
if menu[1] == true then
A1()
end
if menu[2] == true then
A2()
end
if menu[3] == true then
A3()
end
if menu[4] == true then
A4()
end
if menu[5] == true then
A5()
end
if menu[6] == true then
A6()
end
if menu[7] == true then
A7()
end
if menu[8] == true then
A8()
end
if menu[9] == true then
Main()
end
end
LW1 = 0
LW2 = 0
end
function A8()
F = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("【畅享欧皇辅助】", "内存自瞄", ("全屏自瞄"))
if F == 1 then
qmnb = {
{
["memory"] = 16384
},
{
["name"] = "内存自瞄"
},
{
["value"] = -5.475527268489559E27,
["type"] = 16
},
{
["lv"] = -8.345310621825903E22,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
end
if F == 2 then
qmnb = {
{
["memory"] = 16384
},
{
["name"] = "全屏自瞄"
},
{
["value"] = -5.475527268489559E27,
["type"] = 16
},
{
["lv"] = -8.345310621825903E22,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 16384
},
{
["name"] = "全屏自瞄"
},
{
["value"] = -1.0061304023208683E28,
["type"] = 16
},
{
["lv"] = -2.739546799828711E28,
["offset"] = -16,
["type"] = 16
},
{
["lv"] = -2.8333594434308064E28,
["offset"] = -8,
["type"] = 16
},
{
["lv"] = -8.360064414205169E22,
["offset"] = 12,
["type"] = 16
},
{
["lv"] = -3.601448401639823E21,
["offset"] = 20,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 16384
},
{
["name"] = "全屏自瞄"
},
{
["value"] = 2.200000047683716,
["type"] = 16
},
{
["lv"] = 0.7999999523162842,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 10,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
end
end
function A7()
qmnb = {
{
["memory"] = 32
},
{
["name"] = "半动连发"
},
{
["value"] = 290,
["type"] = 16
},
{
["lv"] = 8,
["offset"] = -12,
["type"] = 16
},
{
["lv"] = 50,
["offset"] = -8,
["type"] = 16
},
{
["lv"] = 500,
["offset"] = -4,
["type"] = 16
},
{
["lv"] = 200,
["offset"] = 8,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 8,
["type"] = 16
}
}
xqmnb(qmnb)
end
function B()
menu = o4VPu5O5tC5vdPOkrRi8Zm2NGC311qc3DYm81i1l7H23mRe24ojn3VMFCue6dlqjmIZZRh8d({
"天线系列",
"人物上色",
"实体穿墙",
"全图定怪",
"昼夜颠倒",
"断网穿墙",
"远程放置",
"强制建筑",
"地下建筑",
"子弹追踪",
"地基飞天",
"浮空建筑",
("点击返回")
}, nil, "")
if menu == nil then
else
if menu[1] == true then
B1()
end
if menu[2] == true then
B2()
end
if menu[3] == true then
B3()
end
if menu[4] == true then
B4()
end
if menu[5] == true then
B5()
end
if menu[6] == true then
B6()
end
if menu[7] == true then
B7()
end
if menu[8] == true then
B8()
end
if menu[9] == true then
B9()
end
if menu[10] == true then
B10()
end
if menu[11] == true then
B11()
end
if menu[12] == true then
B12()
end
if menu[13] == true then
Main()
end
end
LW1 = 0
LW2 = 0
end
function B12()
qmnb = {
{
["memory"] = 32
},
{
["name"] = "浮空建筑"
},
{
["value"] = 1.4693679385278594E-39,
["type"] = 16
},
{
["lv"] = 3.6734198463196485E-40,
["offset"] = -8,
["type"] = 16
},
{
["lv"] = 2,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 6.67341985E-40,
["offset"] = -8,
["type"] = 16
}
}
xqmnb(qmnb)
end
function B10()
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.4300000071525574,
["type"] = 16
},
{
["lv"] = 0.10999999940395355,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.44999998807907104,
["type"] = 16
},
{
["lv"] = 0.03999999910593033,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.5600000023841858,
["type"] = 16
},
{
["lv"] = 0.03999999910593033,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.36000001430511475,
["type"] = 16
},
{
["lv"] = 0.03999999910593033,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.2750000059604645,
["type"] = 16
},
{
["lv"] = 0.03999999910593033,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.1899999976158142,
["type"] = 16
},
{
["lv"] = 0.10999999940395355,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.23999999463558197,
["type"] = 16
},
{
["lv"] = 0.10999999940395355,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.33000001311302185,
["type"] = 16
},
{
["lv"] = 0.10999999940395355,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
},
{
["value"] = 99,
["offset"] = -4,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.5400000214576721,
["type"] = 16
},
{
["lv"] = 0.09000000357627869,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.6899999976158142,
["type"] = 16
},
{
["lv"] = 0.1599999964237213,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.5099999904632568,
["type"] = 16
},
{
["lv"] = 0.03999999910593033,
["offset"] = 4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.4300000071525574,
["type"] = 16
},
{
["lv"] = 0.05999999865889549,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.4417000114917755,
["type"] = 16
},
{
["lv"] = 0.05999999865889549,
["offset"] = 4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.3100000023841858,
["type"] = 16
},
{
["lv"] = 0.09000000357627869,
["offset"] = 4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.6800000071525574,
["type"] = 16
},
{
["lv"] = 0.10999999940395355,
["offset"] = 4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.5000153183937073,
["type"] = 16
},
{
["lv"] = 0.10999999940395355,
["offset"] = 4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.30000001192092896,
["type"] = 16
},
{
["lv"] = 0.10999999940395355,
["offset"] = 4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.23800000548362732,
["type"] = 16
},
{
["lv"] = 0.10999999940395355,
["offset"] = 4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.30000001192092896,
["type"] = 16
},
{
["lv"] = 0.699999988079071,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = ""
},
{
["value"] = 0.7071068286895752,
["type"] = 16
},
{
["lv"] = 0.009999999776482582,
["offset"] = 4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 99,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
end
function B11()
F = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("【畅享欧皇辅助】", "开", ("关"))
if F == 1 then
qmnb = {
{
["memory"] = 32
},
{
["name"] = "地基飞天-台阶"
},
{
["value"] = 3.363116314379561E-41,
["type"] = 16
},
{
["lv"] = 3.363116314379561E-41,
["offset"] = 4,
["type"] = 16
},
{
["lv"] = 1.401298464324817E-45,
["offset"] = 28,
["type"] = 16
},
{
["lv"] = 2.802596928649634E-45,
["offset"] = 52,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 28,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "地基飞天-三角"
},
{
["value"] = 3.363676833765291E-41,
["type"] = 16
},
{
["lv"] = 3.363676833765291E-41,
["offset"] = 4,
["type"] = 16
},
{
["lv"] = 1.401298464324817E-45,
["offset"] = 28,
["type"] = 16
},
{
["lv"] = 2.802596928649634E-45,
["offset"] = 52,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 28,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "地基飞天-阶梯"
},
{
["value"] = 3.364237353151021E-41,
["type"] = 16
},
{
["lv"] = 3.364237353151021E-41,
["offset"] = 4,
["type"] = 16
},
{
["lv"] = 1.401298464324817E-45,
["offset"] = 28,
["type"] = 16
},
{
["lv"] = 2.802596928649634E-45,
["offset"] = 52,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 28,
["type"] = 16
}
}
xqmnb(qmnb)
end
if F == 2 then
qmnb = {
{
["memory"] = 32
},
{
["name"] = "地基飞天-台阶"
},
{
["value"] = 3.363116314379561E-41,
["type"] = 16
},
{
["lv"] = 3.363116314379561E-41,
["offset"] = 4,
["type"] = 16
},
{
["lv"] = 0,
["offset"] = 28,
["type"] = 16
},
{
["lv"] = 2.802596928649634E-45,
["offset"] = 52,
["type"] = 16
}
}
qmxg = {
{
["value"] = 1.401298464324817E-45,
["offset"] = 28,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "地基飞天-三角"
},
{
["value"] = 3.363676833765291E-41,
["type"] = 16
},
{
["lv"] = 3.363676833765291E-41,
["offset"] = 4,
["type"] = 16
},
{
["lv"] = 0,
["offset"] = 28,
["type"] = 16
},
{
["lv"] = 2.802596928649634E-45,
["offset"] = 52,
["type"] = 16
}
}
qmxg = {
{
["value"] = 1.401298464324817E-45,
["offset"] = 28,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "地基飞天-阶梯"
},
{
["value"] = 3.364237353151021E-41,
["type"] = 16
},
{
["lv"] = 3.364237353151021E-41,
["offset"] = 4,
["type"] = 16
},
{
["lv"] = 0,
["offset"] = 28,
["type"] = 16
},
{
["lv"] = 2.802596928649634E-45,
["offset"] = 52,
["type"] = 16
}
}
qmxg = {
{
["value"] = 1.401298464324817E-45,
["offset"] = 28,
["type"] = 16
}
}
xqmnb(qmnb)
end
end
function C()
menu = o4VPu5O5tC5vdPOkrRi8Zm2NGC311qc3DYm81i1l7H23mRe24ojn3VMFCue6dlqjmIZZRh8d({
"全图除树",
"人物夜视",
"全图透视",
("点击返回")
}, nil, "")
if menu == nil then
else
if menu[1] == true then
C1()
end
if menu[2] == true then
C2()
end
if menu[3] == true then
C3()
end
if menu[4] == true then
Main()
end
end
LW1 = 0
LW2 = 0
end
function A1()
qmnb = {
{
["memory"] = 32
},
{
["name"] = ""
},
{
["value"] = "480.0",
["type"] = 16
},
{
["lv"] = "20.0",
["offset"] = -148,
["type"] = 16
},
{
["lv"] = "40.0",
["offset"] = -144,
["type"] = 16
},
{
["lv"] = "6.0",
["offset"] = -136,
["type"] = 16
},
{
["lv"] = "60.0",
["offset"] = -120,
["type"] = 16
},
{
["lv"] = "0.5",
["offset"] = -100,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 16,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 24,
["type"] = 16
},
{
["lv"] = "1.0",
["offset"] = 160,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = -148,
["type"] = 16
},
{
["value"] = 0,
["offset"] = -144,
["type"] = 16
},
{
["value"] = 0,
["offset"] = -136,
["type"] = 16
},
{
["value"] = 0,
["offset"] = -120,
["type"] = 16
},
{
["value"] = 0,
["offset"] = -100,
["type"] = 16
},
{
["value"] = 9999,
["offset"] = 0,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 16,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 24,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 160,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = ""
},
{
["value"] = "735.0",
["type"] = 16
},
{
["lv"] = "15.0",
["offset"] = -148,
["type"] = 16
},
{
["lv"] = "33.0",
["offset"] = -144,
["type"] = 16
},
{
["lv"] = "6.0",
["offset"] = -136,
["type"] = 16
},
{
["lv"] = "20.0",
["offset"] = -108,
["type"] = 16
},
{
["lv"] = "10.0",
["offset"] = -96,
["type"] = 16
},
{
["lv"] = "10.0",
["offset"] = -92,
["type"] = 16
},
{
["lv"] = "10.0",
["offset"] = -88,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 16,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 24,
["type"] = 16
},
{
["lv"] = "1.0",
["offset"] = 160,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = -148,
["type"] = 16
},
{
["value"] = 0,
["offset"] = -144,
["type"] = 16
},
{
["value"] = 0,
["offset"] = -136,
["type"] = 16
},
{
["value"] = 0,
["offset"] = -108,
["type"] = 16
},
{
["value"] = 0,
["offset"] = -96,
["type"] = 16
},
{
["value"] = 0,
["offset"] = -92,
["type"] = 16
},
{
["value"] = 0,
["offset"] = -88,
["type"] = 16
},
{
["value"] = 9999,
["offset"] = 0,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 16,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 24,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 160,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = ""
},
{
["value"] = "12.0",
["type"] = 16
},
{
["lv"] = "6.0",
["offset"] = 12,
["type"] = 16
},
{
["lv"] = "35.0",
["offset"] = 28,
["type"] = 16
},
{
["lv"] = "790.0",
["offset"] = 148,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 164,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 172,
["type"] = 16
},
{
["lv"] = "8.0",
["offset"] = 192,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 0,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 12,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 28,
["type"] = 16
},
{
["value"] = 99999,
["offset"] = 148,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 164,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 172,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 192,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = ""
},
{
["value"] = 12,
["type"] = 16
},
{
["lv"] = "6.0",
["offset"] = 12,
["type"] = 16
},
{
["lv"] = "35.0",
["offset"] = 28,
["type"] = 16
},
{
["lv"] = "830.0",
["offset"] = 148,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 164,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 172,
["type"] = 16
},
{
["lv"] = "8.0",
["offset"] = 192,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 0,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 12,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 28,
["type"] = 16
},
{
["value"] = 99999,
["offset"] = 148,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 164,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 172,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 192,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = ""
},
{
["value"] = 14,
["type"] = 16
},
{
["lv"] = "6.0",
["offset"] = 12,
["type"] = 16
},
{
["lv"] = "40.0",
["offset"] = 28,
["type"] = 16
},
{
["lv"] = "735.0",
["offset"] = 148,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 164,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 172,
["type"] = 16
},
{
["lv"] = "8.0",
["offset"] = 192,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 0,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 12,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 28,
["type"] = 16
},
{
["value"] = 99999,
["offset"] = 148,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 164,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 172,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 192,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = ""
},
{
["value"] = 45,
["type"] = 16
},
{
["lv"] = "3.0",
["offset"] = 12,
["type"] = 16
},
{
["lv"] = "60.0",
["offset"] = 28,
["type"] = 16
},
{
["lv"] = "300.0",
["offset"] = 148,
["type"] = 16
},
{
["lv"] = "15.0",
["offset"] = 164,
["type"] = 16
},
{
["lv"] = "8.0",
["offset"] = 192,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 0,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 12,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 28,
["type"] = 16
},
{
["value"] = 99999,
["offset"] = 148,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 164,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 192,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = ""
},
{
["value"] = 14,
["type"] = 16
},
{
["lv"] = "3.0",
["offset"] = 12,
["type"] = 16
},
{
["lv"] = "25.0",
["offset"] = 28,
["type"] = 16
},
{
["lv"] = "360.0",
["offset"] = 148,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 164,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 172,
["type"] = 16
},
{
["lv"] = "5.0",
["offset"] = 192,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 0,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 12,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 28,
["type"] = 16
},
{
["value"] = 99999,
["offset"] = 148,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 164,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 172,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 192,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = ""
},
{
["value"] = 45,
["type"] = 16
},
{
["lv"] = "3.0",
["offset"] = 12,
["type"] = 16
},
{
["lv"] = "60.0",
["offset"] = 28,
["type"] = 16
},
{
["lv"] = "300.0",
["offset"] = 148,
["type"] = 16
},
{
["lv"] = "13.0",
["offset"] = 164,
["type"] = 16
},
{
["lv"] = "8.0",
["offset"] = 192,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 0,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 12,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 28,
["type"] = 16
},
{
["value"] = 99999,
["offset"] = 148,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 164,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 192,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = ""
},
{
["value"] = 15,
["type"] = 16
},
{
["lv"] = "6.0",
["offset"] = 12,
["type"] = 16
},
{
["lv"] = "30.0",
["offset"] = 28,
["type"] = 16
},
{
["lv"] = "710.0",
["offset"] = 148,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 164,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 172,
["type"] = 16
},
{
["lv"] = "8.0",
["offset"] = 192,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 0,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 12,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 28,
["type"] = 16
},
{
["value"] = 99999,
["offset"] = 148,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 164,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 172,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 192,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = ""
},
{
["value"] = 16,
["type"] = 16
},
{
["lv"] = "2.0",
["offset"] = 12,
["type"] = 16
},
{
["lv"] = "30.0",
["offset"] = 28,
["type"] = 16
},
{
["lv"] = "320.0",
["offset"] = 148,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 164,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 172,
["type"] = 16
},
{
["lv"] = "5.0",
["offset"] = 192,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 0,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 12,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 28,
["type"] = 16
},
{
["value"] = 99999,
["offset"] = 148,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 164,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 172,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 192,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = ""
},
{
["value"] = 15,
["type"] = 16
},
{
["lv"] = "3.0",
["offset"] = 12,
["type"] = 16
},
{
["lv"] = "25.0",
["offset"] = 28,
["type"] = 16
},
{
["lv"] = "300.0",
["offset"] = 148,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 164,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 172,
["type"] = 16
},
{
["lv"] = "1.0",
["offset"] = 192,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 0,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 12,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 28,
["type"] = 16
},
{
["value"] = 99999,
["offset"] = 148,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 164,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 172,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 192,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = ""
},
{
["value"] = 15,
["type"] = 16
},
{
["lv"] = "3.0",
["offset"] = 12,
["type"] = 16
},
{
["lv"] = "10.0",
["offset"] = 40,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 112,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 116,
["type"] = 16
},
{
["lv"] = "2.799999952316284",
["offset"] = 120,
["type"] = 16
},
{
["lv"] = "40.0",
["offset"] = 148,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 0,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 12,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 40,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 112,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 116,
["type"] = 16
},
{
["value"] = 9999,
["offset"] = 148,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = ""
},
{
["value"] = 24,
["type"] = 16
},
{
["lv"] = "24.0",
["offset"] = 12,
["type"] = 16
},
{
["lv"] = "10.0",
["offset"] = 40,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 112,
["type"] = 16
},
{
["lv"] = "4.0",
["offset"] = 116,
["type"] = 16
},
{
["lv"] = "2.799999952316284",
["offset"] = 120,
["type"] = 16
},
{
["lv"] = "25.0",
["offset"] = 148,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 0,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 12,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 40,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 112,
["type"] = 16
},
{
["value"] = 0,
["offset"] = 116,
["type"] = 16
},
{
["value"] = 9999,
["offset"] = 148,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = "第一步"
},
{
["value"] = 0.8845000267028809,
["type"] = 16
},
{
["lv"] = 2,
["offset"] = 164,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0.001,
["offset"] = 164,
["type"] = 16
}
}
xqmnb(qmnb)
s511.clearList()
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(4)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1("2.1666667461395264", 16, false, s511.SIGN_EQUAL, 0, -1, 0, -1)
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(999999)
LKB1bI2ub9bCrFgkmRK9eQ3066Wa4jN9A496iSaIic17gcl1qa1v4x3DE5sp6N6OUm8("1.0E-4", 16)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
s511.clearList()
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(4)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1("2.6666667461395264", 16, false, s511.SIGN_EQUAL, 0, -1, 0, -1)
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(999999)
LKB1bI2ub9bCrFgkmRK9eQ3066Wa4jN9A496iSaIic17gcl1qa1v4x3DE5sp6N6OUm8("1.0E-4", 16)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
s511.clearList()
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(4)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1("2.766666889190674", 16, false, s511.SIGN_EQUAL, 0, -1, 0, -1)
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(999999)
LKB1bI2ub9bCrFgkmRK9eQ3066Wa4jN9A496iSaIic17gcl1qa1v4x3DE5sp6N6OUm8("1.0E-4", 16)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
s511.clearList()
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(4)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1("2.0333335399627686", 16, false, s511.SIGN_EQUAL, 0, -1, 0, -1)
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(999999)
LKB1bI2ub9bCrFgkmRK9eQ3066Wa4jN9A496iSaIic17gcl1qa1v4x3DE5sp6N6OUm8("1.0E-4", 16)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
s511.clearList()
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(4)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1("2.90000009537", 16, false, s511.SIGN_EQUAL, 0, -1, 0, -1)
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(999999)
LKB1bI2ub9bCrFgkmRK9eQ3066Wa4jN9A496iSaIic17gcl1qa1v4x3DE5sp6N6OUm8("1.0E-4", 16)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
s511.clearList()
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(4)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1("2.83333349228", 16, false, s511.SIGN_EQUAL, 0, -1, 0, -1)
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(999999)
LKB1bI2ub9bCrFgkmRK9eQ3066Wa4jN9A496iSaIic17gcl1qa1v4x3DE5sp6N6OUm8("1.0E-4", 16)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
s511.clearList()
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(4)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1("3.500000238418579", 16, false, s511.SIGN_EQUAL, 0, -1, 0, -1)
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(999999)
LKB1bI2ub9bCrFgkmRK9eQ3066Wa4jN9A496iSaIic17gcl1qa1v4x3DE5sp6N6OUm8("1.0E-4", 16)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
s511.clearList()
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(4)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1("4.100000381469727", 16, false, s511.SIGN_EQUAL, 0, -1, 0, -1)
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(999999)
LKB1bI2ub9bCrFgkmRK9eQ3066Wa4jN9A496iSaIic17gcl1qa1v4x3DE5sp6N6OUm8("1.0E-4", 16)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
end
function A2()
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(16384)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1("167,772,163;436,207,616;981,668,463;-509,591,552;-527,499,264;-439,353,344;-442,564,476::", 4, false, gg.SIGN_EQUAL, 0, -1)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1("981,668,463", 4, false, gg.SIGN_EQUAL, 0, -1)
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(99)
LKB1bI2ub9bCrFgkmRK9eQ3066Wa4jN9A496iSaIic17gcl1qa1v4x3DE5sp6N6OUm8("940000000", 4)
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("全枪射速已开启️"))
end
function A3()
F = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("【机瞄八倍开关选择】", "功能开", ("功能关"))
if F == 1 then
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(32)
SearchWrite({
{-1111490560, 6584},
{0, 6588},
{0, 6596}
}, {
{
1084410514,
6584,
false
}
}, 4)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(32)
SearchWrite({
{-1110704128, 36264},
{0, 36256},
{0, 36268}
}, {
{
1084410514,
36264,
false
}
}, 4)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("机瞄十倍开启成功，请勿带镜"))
end
if F == 2 then
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(32)
SearchWrite({
{-1084410514, 6584},
{0, 6588},
{0, 6596}
}, {
{
1111490560,
6584,
false
}
}, 4)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(32)
SearchWrite({
{-1084410514, 36264},
{0, 36256},
{0, 36268}
}, {
{
1110704128,
36264,
false
}
}, 4)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("机瞄十倍已关闭"))
end
end
function A4()
F = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("【地图全除开关选择】", "功能开", ("功能关"))
if F == 1 then
qmnb = {
{
["memory"] = 32
},
{
["name"] = "地图全除开"
},
{
["value"] = 7.006492321624085E-42,
["type"] = 16
},
{
["lv"] = 1.401298464324817E-41,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = -4,
["type"] = 16
}
}
xqmnb(qmnb)
end
if F == 2 then
qmnb = {
{
["memory"] = 32
},
{
["name"] = "地图全除关"
},
{
["value"] = 7.006492321624085E-42,
["type"] = 16
},
{
["lv"] = 0,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 1.401298464324817E-41,
["offset"] = -4,
["type"] = 16
}
}
xqmnb(qmnb)
end
end
function A5()
F = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("【畅享欧皇辅助】", "开", ("关"))
if F == 1 then
qmnb = {
{
["memory"] = 32
},
{
["name"] = "机瞄路飞"
},
{
["value"] = 360,
["type"] = 16
},
{
["lv"] = -50,
["offset"] = -12,
["type"] = 16
},
{
["lv"] = 60,
["offset"] = -8,
["type"] = 16
},
{
["lv"] = -360,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 2,
["offset"] = -28,
["type"] = 16
}
}
xqmnb(qmnb)
end
if F == 2 then
qmnb = {
{
["memory"] = 32
},
{
["name"] = "机瞄路飞"
},
{
["value"] = 360,
["type"] = 16
},
{
["lv"] = -50,
["offset"] = -12,
["type"] = 16
},
{
["lv"] = 60,
["offset"] = -8,
["type"] = 16
},
{
["lv"] = -360,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = -28,
["type"] = 16
}
}
xqmnb(qmnb)
end
end
function A6()
F = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("【畅享欧皇辅助】", "开", ("关"))
if F == 1 then
qmnb = {
{
["memory"] = 32
},
{
["name"] = "机瞄路遁"
},
{
["value"] = 360,
["type"] = 16
},
{
["lv"] = -50,
["offset"] = -12,
["type"] = 16
},
{
["lv"] = 60,
["offset"] = -8,
["type"] = 16
},
{
["lv"] = -360,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = -2,
["offset"] = -28,
["type"] = 16
}
}
xqmnb(qmnb)
end
if F == 2 then
qmnb = {
{
["memory"] = 32
},
{
["name"] = "机瞄路遁"
},
{
["value"] = 360,
["type"] = 16
},
{
["lv"] = -50,
["offset"] = -12,
["type"] = 16
},
{
["lv"] = 60,
["offset"] = -8,
["type"] = 16
},
{
["lv"] = -360,
["offset"] = -4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = -28,
["type"] = 16
}
}
xqmnb(qmnb)
end
end
function B1()
F = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("【天线选择】", "普通天线", ("新版天线"))
if F == 1 then
qmnb = {
{
["memory"] = 4
},
{
["name"] = "天线"
},
{
["value"] = 0.16947640478610992,
["type"] = 16
},
{
["lv"] = -0.16947640478610992,
["offset"] = 20,
["type"] = 16
}
}
qmxg = {
{
["value"] = -999999,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
elseif F == 2 then
qmnb = {
{
["memory"] = 4
},
{
["name"] = "大头天线"
},
{
["value"] = 1.030504822731018,
["type"] = 16
},
{
["lv"] = 1.422524746885756E-6,
["offset"] = 20,
["type"] = 16
},
{
["lv"] = 0.16947640478610992,
["offset"] = 32,
["type"] = 16
},
{
["lv"] = -0.9855342507362366,
["offset"] = 48,
["type"] = 16
},
{
["lv"] = -0.16947640478610992,
["offset"] = 52,
["type"] = 16
}
}
qmxg = {
{
["value"] = -9999,
["offset"] = 20,
["type"] = 16
},
{
["value"] = -9999,
["offset"] = 48,
["type"] = 16
}
}
xqmnb(qmnb)
gg.clearList()
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(16384)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1("51", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(100)
LKB1bI2ub9bCrFgkmRK9eQ3066Wa4jN9A496iSaIic17gcl1qa1v4x3DE5sp6N6OUm8("0.1577", 16)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("大头天线已开启"))
end
end
function B2()
qmnb = {
{
["memory"] = 1048576
},
{
["name"] = "上色"
},
{
["value"] = 3,
["type"] = 16
},
{
["lv"] = 16,
["offset"] = -8,
["type"] = 16
},
{
["lv"] = -12,
["offset"] = -4,
["type"] = 16
},
{
["lv"] = -1,
["offset"] = 8,
["type"] = 16
}
}
qmxg = {
{
["value"] = 999,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
end
function B3()
F = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("【实体穿墙开关选择】", "功能开", ("功能关"))
if F == 1 then
qmnb = {
{
["memory"] = 32
},
{
["name"] = "实体穿墙"
},
{
["value"] = 0.10000000149011612,
["type"] = 16
},
{
["lv"] = 6.699999809265137,
["offset"] = -16,
["type"] = 16
},
{
["lv"] = 0.009999999776482582,
["offset"] = 4,
["type"] = 16
},
{
["lv"] = 0.10000000149011612,
["offset"] = 8,
["type"] = 16
}
}
qmxg = {
{
["value"] = -999,
["offset"] = 0,
["type"] = 16
},
{
["value"] = -999,
["offset"] = 8,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 4
},
{
["name"] = "实体穿墙"
},
{
["value"] = 1.0000000331813535E32,
["type"] = 16
},
{
["lv"] = 0.10000000149011612,
["offset"] = -4,
["type"] = 16
},
{
["lv"] = 0.004999999888241291,
["offset"] = 4,
["type"] = 16
},
{
["lv"] = 0.0024999999441206455,
["offset"] = 8,
["type"] = 16
},
{
["lv"] = 0.3999999761581421,
["offset"] = 12,
["type"] = 16
}
}
qmxg = {
{
["value"] = 8.88479995728,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
end
if F == 2 then
qmnb = {
{
["memory"] = 4
},
{
["name"] = "实体穿墙"
},
{
["value"] = 8.88479995728,
["type"] = 16
},
{
["lv"] = 0.10000000149011612,
["offset"] = -4,
["type"] = 16
},
{
["lv"] = 0.004999999888241291,
["offset"] = 4,
["type"] = 16
},
{
["lv"] = 0.0024999999441206455,
["offset"] = 8,
["type"] = 16
},
{
["lv"] = 0.3999999761581421,
["offset"] = 12,
["type"] = 16
}
}
qmxg = {
{
["value"] = 1.0000000331813535E32,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
end
end
function B4()
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(16384)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1("200", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(10000)
LKB1bI2ub9bCrFgkmRK9eQ3066Wa4jN9A496iSaIic17gcl1qa1v4x3DE5sp6N6OUm8("0", 16)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("全图定怪已开启"))
end
function B5()
F = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("【昼夜交替功能选择】", "功能开", ("功能关"))
if F == 1 then
qmnb = {
{
["memory"] = 4
},
{
["name"] = "昼夜交替"
},
{
["value"] = 0.0066999997943639755,
["type"] = 16
},
{
["lv"] = 9.219422856485836E-41,
["offset"] = 8,
["type"] = 16
},
{
["lv"] = 1.401298464324817E-45,
["offset"] = 32,
["type"] = 16
}
}
qmxg = {
{
["value"] = 999,
["offset"] = 8,
["type"] = 16
}
}
xqmnb(qmnb)
end
if F == 2 then
qmnb = {
{
["memory"] = 4
},
{
["name"] = "昼夜交替"
},
{
["value"] = 0.0066999997943639755,
["type"] = 16
},
{
["lv"] = 999,
["offset"] = 8,
["type"] = 16
},
{
["lv"] = 1.401298464324817E-45,
["offset"] = 32,
["type"] = 16
}
}
qmxg = {
{
["value"] = 9.219422856485836E-41,
["offset"] = 8,
["type"] = 16
}
}
xqmnb(qmnb)
end
end
function B6()
F = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("【开启成功|禁止框架网络权限即可】", "功能开", ("功能关"))
if F == 1 then
qmnb = {
{
["memory"] = 4
},
{
["name"] = "断网穿墙已开启"
},
{
["value"] = -1.0E32,
["type"] = 16
},
{
["lv"] = 999,
["offset"] = 32,
["type"] = 16
},
{
["lv"] = 1.0E32,
["offset"] = 52,
["type"] = 16
},
{
["lv"] = 0.39999997616,
["offset"] = 64,
["type"] = 16
}
}
qmxg = {
{
["value"] = 7.98745632172,
["offset"] = 52,
["type"] = 16
}
}
xqmnb(qmnb)
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("开启成功|禁止框架网络权限即可"))
end
if F == 2 then
qmnb = {
{
["memory"] = 4
},
{
["name"] = "关闭"
},
{
["value"] = -1.0E32,
["type"] = 16
},
{
["lv"] = 999,
["offset"] = 32,
["type"] = 16
},
{
["lv"] = 1.0E32,
["offset"] = 52,
["type"] = 16
},
{
["lv"] = 0.39999997616,
["offset"] = 64,
["type"] = 16
}
}
qmxg = {
{
["value"] = 1.0E32,
["offset"] = 52,
["type"] = 16
}
}
xqmnb(qmnb)
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("断网穿墙已关闭"))
end
end
function B7()
A = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("远程放置", "开启", ("关闭"))
if A == 1 then
qmnb = {
{
["memory"] = 32
},
{
["name"] = "远程放置"
},
{
["value"] = 14308.0009765625,
["type"] = 16
},
{
["lv"] = 12,
["offset"] = -20,
["type"] = 16
}
}
qmxg = {
{
["value"] = 16.5,
["offset"] = -20,
["type"] = 16
}
}
xqmnb(qmnb)
end
if A == 2 then
qmnb = {
{
["memory"] = 32
},
{
["name"] = "远程放置"
},
{
["value"] = 14308.0009765625,
["type"] = 16
},
{
["lv"] = 16.5,
["offset"] = -20,
["type"] = 16
}
}
qmxg = {
{
["value"] = 12,
["offset"] = -20,
["type"] = 16
}
}
xqmnb(qmnb)
end
end
function B8()
qmnb = {
{
["memory"] = 32
},
{
["name"] = "强制建筑"
},
{
["value"] = 15,
["type"] = 16
},
{
["lv"] = 12,
["offset"] = -8,
["type"] = 16
},
{
["lv"] = 54.394535064697266,
["offset"] = 4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 4,
["type"] = 16
}
}
xqmnb(qmnb)
end
function B9()
F = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("【大厅开关】", "开", ("关"))
if F == 1 then
qmnb = {
{
["memory"] = 16384
},
{
["name"] = "地下家1"
},
{
["value"] = 1.401298464324817E-45,
["type"] = 16
},
{
["lv"] = 1,
["offset"] = 20,
["type"] = 16
},
{
["lv"] = -2,
["offset"] = 40,
["type"] = 16
},
{
["lv"] = 2,
["offset"] = 44,
["type"] = 16
},
{
["lv"] = -2,
["offset"] = 48,
["type"] = 16
},
{
["lv"] = -2,
["offset"] = 56,
["type"] = 16
}
}
qmxg = {
{
["value"] = 1.7,
["offset"] = 44,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 16384
},
{
["name"] = "地下家2"
},
{
["value"] = 1.401298464324817E-45,
["type"] = 16
},
{
["lv"] = 1,
["offset"] = 20,
["type"] = 16
},
{
["lv"] = -2,
["offset"] = 56,
["type"] = 16
},
{
["lv"] = 2,
["offset"] = 60,
["type"] = 16
}
}
qmxg = {
{
["value"] = 1.7,
["offset"] = 60,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 16384
},
{
["name"] = "地下家3"
},
{
["value"] = 1.401298464324817E-45,
["type"] = 16
},
{
["lv"] = -2,
["offset"] = -84,
["type"] = 16
},
{
["lv"] = 2,
["offset"] = -80,
["type"] = 16
},
{
["lv"] = 1,
["offset"] = -68,
["type"] = 16
}
}
qmxg = {
{
["value"] = 1.7,
["offset"] = -80,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = "地下家4"
},
{
["value"] = 12,
["type"] = 16
},
{
["lv"] = 15,
["offset"] = 8,
["type"] = 16
},
{
["lv"] = 14308.0009765625,
["offset"] = 20,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 12,
["type"] = 16
}
}
xqmnb(qmnb)
end
if F == 2 then
qmnb = {
{
["memory"] = 16384
},
{
["name"] = "地下家1"
},
{
["value"] = 1.401298464324817E-45,
["type"] = 16
},
{
["lv"] = 1,
["offset"] = 20,
["type"] = 16
},
{
["lv"] = -2,
["offset"] = 40,
["type"] = 16
},
{
["lv"] = -2,
["offset"] = 48,
["type"] = 16
},
{
["lv"] = -2,
["offset"] = 56,
["type"] = 16
}
}
qmxg = {
{
["value"] = 2,
["offset"] = 44,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 16384
},
{
["name"] = "地下家2"
},
{
["value"] = 1.401298464324817E-45,
["type"] = 16
},
{
["lv"] = 1,
["offset"] = 20,
["type"] = 16
},
{
["lv"] = -2,
["offset"] = 56,
["type"] = 16
}
}
qmxg = {
{
["value"] = 2,
["offset"] = 60,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 16384
},
{
["name"] = "地下家3"
},
{
["value"] = 1.401298464324817E-45,
["type"] = 16
},
{
["lv"] = -2,
["offset"] = -84,
["type"] = 16
},
{
["lv"] = 1,
["offset"] = -68,
["type"] = 16
}
}
qmxg = {
{
["value"] = 2,
["offset"] = -80,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 32
},
{
["name"] = ""
},
{
["value"] = 15,
["type"] = 16
},
{
["lv"] = 12,
["offset"] = -8,
["type"] = 16
},
{
["lv"] = 54.394535064697266,
["offset"] = 4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 4,
["type"] = 16
}
}
xqmnb(qmnb)
end
end
function C1()
F = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("【畅享欧皇辅助】", "开", ("关"))
if F == 1 then
qmnb = {
{
["memory"] = 1048576
},
{
["name"] = "近除"
},
{
["value"] = 4.3190137570115934E-29,
["type"] = 16
},
{
["lv"] = 2.802596928649634E-45,
["offset"] = 8,
["type"] = 16
},
{
["lv"] = 1.1202014604847243E-19,
["offset"] = 12,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = 4,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 1048576
},
{
["name"] = "远除"
},
{
["value"] = 4.81460301798796E21,
["type"] = 16
},
{
["lv"] = 4.5753935512084223E-29,
["offset"] = -20,
["type"] = 16
},
{
["lv"] = 4.595115976618609E-29,
["offset"] = -12,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0,
["offset"] = -16,
["type"] = 16
}
}
xqmnb(qmnb)
end
if F == 2 then
qmnb = {
{
["memory"] = 1048576
},
{
["name"] = "近除"
},
{
["value"] = 4.3190137570115934E-29,
["type"] = 16
},
{
["lv"] = 2.802596928649634E-45,
["offset"] = 8,
["type"] = 16
},
{
["lv"] = 1.1202014604847243E-19,
["offset"] = 12,
["type"] = 16
}
}
qmxg = {
{
["value"] = 2.250000238418579,
["offset"] = 4,
["type"] = 16
}
}
xqmnb(qmnb)
qmnb = {
{
["memory"] = 1048576
},
{
["name"] = "远除"
},
{
["value"] = 4.81460301798796E21,
["type"] = 16
},
{
["lv"] = 4.5753935512084223E-29,
["offset"] = -20,
["type"] = 16
},
{
["lv"] = 4.595115976618609E-29,
["offset"] = -12,
["type"] = 16
}
}
qmxg = {
{
["value"] = 2.250000238418579,
["offset"] = -16,
["type"] = 16
}
}
xqmnb(qmnb)
end
end
function C2()
F = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("【人物夜视开关选择】", "功能开", ("功能关"))
if F == 1 then
qmnb = {
{
["memory"] = 16384
},
{
["name"] = "人物夜视"
},
{
["value"] = 0.054999999701976776,
["type"] = 16
},
{
["lv"] = 0.040449999272823334,
["offset"] = -4,
["type"] = 16
},
{
["lv"] = -2.7859867879395754E28,
["offset"] = 4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 1.5,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("夜视已关闭"))
end
if F == 2 then
qmnb = {
{
["memory"] = 16384
},
{
["name"] = "人物夜视"
},
{
["value"] = 1.5,
["type"] = 16
},
{
["lv"] = 0.040449999272823334,
["offset"] = -4,
["type"] = 16
},
{
["lv"] = -2.7859867879395754E28,
["offset"] = 4,
["type"] = 16
}
}
qmxg = {
{
["value"] = 0.054999999701976776,
["offset"] = 0,
["type"] = 16
}
}
xqmnb(qmnb)
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("夜视已关闭"))
end
end
function C3()
F = k4SAQ7E4gEGC470S2h3mjwlrVuSn6RIc1b194P6859yQ1i044WAwUGyAGi8pgO03gC3K64tyA1siXt70drB0g("【全图透视开关选择】", "功能开", ("功能关"))
if F == 1 then
gg.clearList()
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(16384)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1("0.81399995089", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(100)
LKB1bI2ub9bCrFgkmRK9eQ3066Wa4jN9A496iSaIic17gcl1qa1v4x3DE5sp6N6OUm8("10.123", 16)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("全图透视已开启"))
end
if F == 2 then
gg.clearList()
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
qP6x107j57S49caz85bbHyV4H99vKIK4y46OgG1J7ko6kLqts81vi92p8Pb2pWV3Z9VBpO4zx4NwL9l6VkQE(16384)
Q477LOHg2977A9NMBON269sZ65CD4ZTz52gjdq3Txqs9C1NUo50UOl6tFmHa4Czd8FMK1("10.123", 16, false, gg.SIGN_EQUAL, 0, -1, 0, -1)
PkOr6e1ykCG12hBxzD97l3MZ1Fu8w6D669748H9IxHb0C1T4o7dqHixFu60LQ70ZGnpzJcb8l9yBVJPdk12eDZnS7VM6OVc4J5lS(100)
LKB1bI2ub9bCrFgkmRK9eQ3066Wa4jN9A496iSaIic17gcl1qa1v4x3DE5sp6N6OUm8("0.81399995089", 16)
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
BNvI59xt8GC6lLQ6QsAbX8z8K1tpI1krm8zL0F9f8O0I1yEk03c25V94CAhrUc3hEx6(("全图透视已关闭"))
end
end
cs = ""
repeat
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end
wG0ScN5yV3jRhA3NqN6Kuw0F5v05OR91TQ69aA2r88v8zy0xY74WKO7uiM8L95yCznm29OTw1Z2xR0p5Gp95qyfp3()
until XGCK == 1
Main()