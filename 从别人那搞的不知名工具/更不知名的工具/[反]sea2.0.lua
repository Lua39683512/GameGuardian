if flase then
end
gg.alert("该工具为Father所有！\n禁止添加卡密！\n禁止倒卖和任何非法用途！\nQQ群:202892449", "我同意")
gg.setVisible(false)
function Sortx_qmnb(A0_176, A1_177)
local L2_178, L3_179
L2_178 = flase
if L2_178 then
L2_178 = _X
_X = L2_178
L2_178 = _X
_X = L2_178
L2_178 = _X
_X = L2_178
end
L2_178 = {}
L3_179 = {}
for _FORV_7_ = 1, #A0_176 do
L2_178[_FORV_7_], L3_179[_FORV_7_] = "", ""
for _FORV_11_, _FORV_12_ in pairs(A0_176[_FORV_7_]) do
if tonumber(_FORV_12_) then
L3_179[_FORV_7_] = L3_179[_FORV_7_] .. "[\"" .. _FORV_11_ .. "\"]=Main_char,[\"" .. _FORV_11_ .. "\"]=Mix_char,"
L2_178[_FORV_7_] = L2_178[_FORV_7_] .. "[\"" .. _FORV_11_ .. "\"]=Main_char,[\"" .. _FORV_11_ .. "\"]=\"" .. _FORV_12_ .. "\"+0,"
elseif _FORV_12_ == true or _FORV_12_ == false then
L3_179[_FORV_7_] = L3_179[_FORV_7_] .. "[\"" .. _FORV_11_ .. "\"]=Main_char,[\"" .. _FORV_11_ .. "\"]=Mix_char,"
L2_178[_FORV_7_] = L2_178[_FORV_7_] .. "[\"" .. _FORV_11_ .. "\"]=Main_char,[\"" .. _FORV_11_ .. "\"]=" .. tostring(_FORV_12_) .. ","
else
L3_179[_FORV_7_] = L3_179[_FORV_7_] .. "[\"" .. _FORV_11_ .. "\"]=Main_char,[\"" .. _FORV_11_ .. "\"]=Mix_char,"
L2_178[_FORV_7_] = L2_178[_FORV_7_] .. "[\"" .. _FORV_11_ .. "\"]=Main_char,[\"" .. _FORV_11_ .. "\"]=\"" .. _FORV_12_ .. "\","
end
end
L3_179[_FORV_7_] = A1_177 .. "[#" .. A1_177 .. "+1]={" .. L3_179[_FORV_7_] .. "}\n"
L2_178[_FORV_7_] = A1_177 .. "[#" .. A1_177 .. "]={" .. L2_178[_FORV_7_] .. "}\n"
end
for _FORV_8_ = 1, #L2_178 do
end
return (A1_177 .. "={}\n") .. L3_179[_FORV_8_] .. L2_178[_FORV_8_]
end

function xqmnb()
return "seaunc=seaunc\n" .. (Sortx_qmnb(qmnb, "qmnb") .. Sortx_qmnb(qmxg, "qmxg")) .. "seaunc=seaunc"
end

function ResF(A0_180, A1_181, A2_182, A3_183, A4_184, A5_185, A6_186)
A0_180 = string.char(34) .. A0_180 .. string.char(34)
A5_185 = string.char(34) .. A5_185 .. string.char(34)
A2_182 = string.char(34) .. A2_182 .. string.char(34) .. "+0"
return [[
if true then
local data,Taa,Teb
gg.searchNumber(]] .. A0_180 .. "," .. A1_181 .. [[
)
data=gg.getResults(]] .. A4_184 .. [[
)
if #data~=0 then
seaunc=seaunc
data=gg.getValues(data)
Taa={}
Teb=]] .. A2_182 .. [[

for i=1,#data do if data[i].value==Teb then Taa[#Taa+1]={address=Main_char,address=data[i].address,flags=Main_char,flags=]] .. A6_186 .. ",value=Main_char,value=" .. A5_185 .. [[
} end end
if #Taa~=0 then gg.setValues(Taa) end
seaunc=seaunc
end
end
]]
end

function gg.searchNumber(A0_187, A1_188)
local L2_189, L3_190, L5_191, L6_192
L2_189 = flase
if L2_189 then
L2_189 = _X
_X = L2_189
L2_189 = _X
_X = L2_189
L2_189 = _X
_X = L2_189
end
L2_189 = Trefine
L3_190 = Trefine
L3_190 = #L3_190
L3_190 = L3_190 + 1
L5_191 = {L6_192, A1_188}
L6_192 = A0_187
L2_189[L3_190] = L5_191
L2_189 = flase
if L2_189 then
L2_189 = _X
_X = L2_189
end
end

function gg.getResults(A0_193)
local L1_194, L2_195, L4_196
L1_194 = flase
if L1_194 then
L1_194 = _X
_X = L1_194
L1_194 = _X
_X = L1_194
end
L1_194 = Trefine
L2_195 = Trefine
L2_195 = #L2_195
L2_195 = L2_195 + 1
L4_196 = {A0_193}
L1_194[L2_195] = L4_196
L1_194 = flase
if L1_194 then
L1_194 = _X
_X = L1_194
L1_194 = _X
_X = L1_194
L1_194 = _X
_X = L1_194
end
end

function gg.editAll(A0_197, A1_198)
if tonumber(Trefine[2][1]) and tonumber(A0_197) then
STr = ResF(Trefine[1][1], Trefine[1][2], Trefine[2][1], Trefine[2][2], Trefine[3][1], A0_197, A1_198)
end
end

function NewDefine(A0_199)
isTonumber = true
files1 = io.open(A0_199)
s = 0
Stable = {}
repeat
text = text or ""
text = files1:read("*l")
if text and text ~= "" then
s = s + 1
Stable[s] = text
end
until text == nil
if io.open(A0_199):read("*a"):find("qmnb") and gg.alert("你在用qmnb的防xs，是否兼容Table混淆？\n注意是[qmnb和qmxg]Table名才能混淆！", "是", nil, "否") then
for _FORV_5_ = 1, #Stable do
if not (Stable[_FORV_5_] ~= "" and Stable[_FORV_5_ + 1]) or not Stack then
else
STr = STr .. Stable[_FORV_5_] .. string.char(10)
Stable[_FORV_5_] = ""
if Stable[_FORV_5_ + 1]:find("xqmnb") then
seaunc = seaunc
pcall(load(STr))
STr = xqmnb()
Stable[_FORV_5_] = STr
Stack = nil
seaunc = seaunc
end
end
if Stable[_FORV_5_]:find("qmnb") and load(Stable[_FORV_5_] .. "}") and not Stack then
Stack = true
STr = Stable[_FORV_5_] .. string.char(10)
Stable[_FORV_5_] = ""
end
end
end
for _FORV_5_ = 1, #Stable do
if Stable[_FORV_5_] ~= "" and Stable[_FORV_5_ + 3] then
if load(Stable[_FORV_5_] .. Stable[_FORV_5_ + 1] .. Stable[_FORV_5_ + 2] .. Stable[_FORV_5_ + 3]) and Stable[_FORV_5_]:find("searchNumber") and Stable[_FORV_5_ + 1]:find("searchNumber") and Stable[_FORV_5_ + 2]:find("getResults") and Stable[_FORV_5_ + 3]:find("editAll") then
STr = ""
Trefine = {}
pcall((load(Stable[_FORV_5_] .. Stable[_FORV_5_ + 1] .. Stable[_FORV_5_ + 2] .. Stable[_FORV_5_ + 3])))
if STr ~= "" then
Stable[_FORV_5_] = STr
Stable[_FORV_5_ + 1] = ""
Stable[_FORV_5_ + 2] = ""
Stable[_FORV_5_ + 3] = ""
end
end
end
end
for _FORV_5_ = 1, #Stable do
if Stable[_FORV_5_] ~= "" then
end
end
return "" .. Stable[_FORV_5_] .. string.char(10)
end

countsel = 0
seachar_base = [[

local charbase={}
for i=0,255 do
charbase[i]=string.char(i)
bs=bs..charbase[i]
end
for i=1,12 do
bs=bs..bs
end
]]
function tempstrs(A0_200)
Sums = Sums or 0
Sums = Sums + 1
for _FORV_6_ = 1, A0_200 do
end
return ("" .. " goto sS" .. Sums .. " ") .. " ::sS" .. Sums .. ":: "
end

function xhx()
local L0_201, L1_202
L0_201 = flase
if L0_201 then
L0_201 = _X
_X = L0_201
L0_201 = _X
_X = L0_201
end
L0_201 = _UPVALUE1_
L0_201 = L0_201 + 1
_UPVALUE1_ = L0_201
L0_201 = flase
if L0_201 then
L0_201 = _X
_X = L0_201
L0_201 = _X
_X = L0_201
L0_201 = _X
_X = L0_201
L0_201 = _X
_X = L0_201
end
L0_201 = _UPVALUE1_
if L0_201 >= 4 then
L0_201 = _UPVALUE1_
if L0_201 <= 38 then
L0_201 = _UPVALUE1_
return L0_201
end
end
L0_201 = flase
if L0_201 then
L0_201 = _X
_X = L0_201
L0_201 = _X
_X = L0_201
L0_201 = _X
_X = L0_201
L0_201 = _X
_X = L0_201
end
L0_201 = 4
_UPVALUE1_ = L0_201
L0_201 = flase
if L0_201 then
L0_201 = _X
_X = L0_201
L0_201 = _X
_X = L0_201
end
L0_201 = 4
return L0_201
end

function tempstr(A0_203, A1_204)
A0_203 = A0_203 or xhx()
for _FORV_8_ = 1, A0_203 do
end
if A1_204 then
end
return ((" if nil then " .. ("" .. " goto " .. string.char(math.random(97, 122)) .. " ") .. " ::" .. string.char(math.random(97, 122)) .. ":: end _Y_=_Y_ while not (function()end) do end"):gsub("_Y_=_Y_", ""))
end

function fourcom(A0_205)
local L1_206
if A0_205 == 1 then
L1_206 = "0"
return L1_206
end
if A0_205 == 2 then
L1_206 = "4"
return L1_206
end
if A0_205 == 3 then
L1_206 = "8"
return L1_206
end
if A0_205 == 4 then
L1_206 = "C"
return L1_206
end
end

function localset()
local L1_207, L2_208
L1_207 = string
L1_207 = L1_207.char
L2_208 = 0
return L1_207(L2_208, 0, math.random(0, 30), tonumber("0x" .. fourcom(math.random(1, 4)) .. "1"))
end

function xZiJie(A0_209)
if A0_209 >= 7 then
for _FORV_6_ = 1, A0_209 - 4 do
if _FORV_6_ == math.random(1, A0_209 - 4) then
end
if math.random(1, 2) == 1 then
else
end
end
else
for _FORV_5_ = 1, A0_209 do
if math.random(1, 2) == 1 then
else
end
end
end
return ((((string.char() .. string.char(240, 159, 135, 184, 32, 240, 159, 135, 170, 32, 240, 159, 135, 166, 0, 26)) .. localset()) .. string.char(216, math.random(128, 165), math.random(215, 230), _UPVALUE1_[math.random(1, #_UPVALUE1_)])) .. string.char(216, math.random(128, 165), math.random(215, 230), _UPVALUE1_[math.random(1, #_UPVALUE1_)])) .. localset()
end

function dumpplus(A0_210)
local L1_211, L2_212
L1_211 = flase
if L1_211 then
L1_211 = _X
_X = L1_211
L1_211 = _X
_X = L1_211
end
L1_211 = 38
L2_212 = 4
gg.toast("🥟️:编译进度0%")
gg.toast("🕊️️:编译进度20%")
zjms = {}
for _FORV_7_ = L1_211, L2_212, -1 do
zjms[_FORV_7_] = {
string.dump(load(tempstr(_FORV_7_)), true):sub(34, 34 + _FORV_7_ * 4 - 1),
string.dump(load(tempstr(_FORV_7_)), true):sub(34, 34 + _FORV_7_ * 4 - 1):sub(0, 4)
}
end
gg.toast("🥳️️:编译进度35%")
for _FORV_7_ = L1_211, L2_212, -1 do
gg.toast("🥳️️:编译进度" .. 35 + (L1_211 + 1 - _FORV_7_) * 1.85 .. "% 时间:" .. os.clock() - inittime .. "秒")
end
rxass = string.char(0, 0, 0, 4, 0, 0, 0, 27, 128, 0, 128, 23, 128, 0, 0, 23, 128, 0, 0, 23, 0, 0, 0, 4, 0, 128, 0)
rxhxs = string.char(128, 49, 16, 23, 128, 1, 16, 23, 128, 8, 130, 3, 128, 5, 0, 24, 128, 8, 0, 25, 0, 128, 5, 26, 8, 128, 42)
return xsdump((string.dump(A0_210, true))):gsub(zjms[_FORV_7_][1], zjms[_FORV_7_][2] .. xZiJie(_FORV_7_ - 1)):gsub(string.char(2, 0, 0, 0, 1, 0, 128, 0, 31), "�\000\000\000\000"):gsub(rxass, rxhxs):gsub("AesSeaA", string.char(0, 10, 0, 10, 0, 10, 0)):gsub(string.char(4, 0, 0, 0, 4, 95, 89, 95), string.char(4, 0, 0, 80, 1) .. string.rep("\n", 20480))
end

function xsdump(A0_213)
for _FORV_6_ = 1, 360 do
if math.random(1, 2) ~= 1 then
elseif math.random(1, 2) == 1 then
else
end
end
A0_213 = A0_213:gsub(((string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8)) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8)) .. (string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8)) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8) .. string.char(128, 2, 192, 23, 128, 2, 128, 23, 128, 2, 64, 23, 128, 2, 0, 23, 128, 1, 192, 23, 128, 1, 128, 23, 128, 1, 64, 23, 128, 1, 0, 23, 128, 0, 192, 23, 128, 0, 128, 23, 128, 0, 64, 23, 128, 0, 0, 23, 127, 255, 192, 23, 0, 64, 128, 6, 129, 0, 0, 8), (("" .. string.char(128, 64, 64, 8)) .. string.char(math.random(8, 12), 10, 10, _UPVALUE1_[math.random(1, #_UPVALUE1_)])) .. localset())
A0_213 = A0_213:gsub(string.char(128, 64, 64, 8) .. string.char(128, 64, 64, 8) .. string.char(128, 64, 64, 8) .. string.char(128, 64, 64, 8), string.char(240, 159, 135, 184, 32, 240, 159, 135, 170, 32, 240, 159, 135, 166, 0, 26))
A0_213 = A0_213:gsub("SeaPro", string.char(10, 0, 10, 10, 0, 10))
return A0_213
end

function protect()
local L0_214, L1_215
L0_214 = flase
if L0_214 then
L0_214 = _X
_X = L0_214
L0_214 = _X
_X = L0_214
L0_214 = _X
_X = L0_214
L0_214 = _X
_X = L0_214
end
L0_214 = " if nil then goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s ::s::end _=_ if nil then goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s ::s::end _=_ if nil then goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s ::s::end _=_ if nil then goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s ::s::end _=_ if nil then goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s ::s::end _=_ if nil then goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s goto s ::s::end _=_ "
L1_215 = flase
if L1_215 then
L1_215 = _X
_X = L1_215
L1_215 = _X
_X = L1_215
L1_215 = _X
_X = L1_215
L1_215 = _X
_X = L1_215
end
L1_215 = flase
if L1_215 then
L1_215 = _X
_X = L1_215
end
L1_215 = "SeaPro"
for _FORV_5_ = 1, 10 do
L0_214 = L0_214 .. L0_214
end
for _FORV_5_ = 1, 14 do
L1_215 = L1_215 .. L1_215
end
return " local function Ips() " .. L1_215 .. "=1 " .. L0_214 .. " end "
end

function gg.supertip(A0_216)
print(A0_216)
gg.toast(A0_216, true)
end

function replace(A0_217)
local L1_218
L1_218 = flase
if L1_218 then
L1_218 = _X
_X = L1_218
end
L1_218 = {}
for _FORV_5_ = 1, A0_217 do
L1_218[_FORV_5_] = _FORV_5_
end
return shuffle(L1_218)
end

function shuffle(A0_219)
if type(A0_219) ~= "table" then
return
end
while #A0_219 ~= 0 do
if A0_219[math.random(0, #A0_219)] ~= nil then
table.remove(A0_219, (math.random(0, #A0_219)))
end
end
return {
[1] = A0_219[math.random(0, #A0_219)]
}
end

function Iceom(A0_220, A1_221, A2_222)
local L3_223, L4_224
L3_223 = flase
if L3_223 then
L3_223 = _X
_X = L3_223
L3_223 = _X
_X = L3_223
L3_223 = _X
_X = L3_223
end
A1_221 = A1_221 or "a"
L3_223 = flase
if L3_223 then
L3_223 = _X
_X = L3_223
L3_223 = _X
_X = L3_223
L3_223 = _X
_X = L3_223
end
L3_223 = flase
if L3_223 then
L3_223 = _X
_X = L3_223
L3_223 = _X
_X = L3_223
L3_223 = _X
_X = L3_223
L3_223 = _X
_X = L3_223
end
A2_222 = A2_222 or "s"
L3_223 = flase
if L3_223 then
L3_223 = _X
_X = L3_223
L3_223 = _X
_X = L3_223
L3_223 = _X
_X = L3_223
L3_223 = _X
_X = L3_223
end
L3_223 = flase
if L3_223 then
L3_223 = _X
_X = L3_223
L3_223 = _X
_X = L3_223
end
L3_223 = #A0_220
L4_224 = flase
if L4_224 then
L4_224 = _X
_X = L4_224
L4_224 = _X
_X = L4_224
L4_224 = _X
_X = L4_224
end
L4_224 = flase
if L4_224 then
L4_224 = _X
_X = L4_224
end
L4_224 = nil
if L3_223 < 3 then
if L3_223 == 0 then
L4_224 = "local " .. A1_221 .. "={}"
elseif L3_223 == 1 then
L4_224 = "local " .. A1_221 .. "={" .. A0_220[1] .. "}"
elseif L3_223 == 2 then
L4_224 = "local " .. A1_221 .. "={" .. A0_220[1] .. "," .. A0_220[2] .. "}"
end
return L4_224
end
L4_224 = "local " .. A1_221 .. "={} " .. A1_221 .. "[br]=" .. A0_220[1] .. " goto " .. A2_222 .. "1 "
for _FORV_9_ = 1, #replace(#A0_220 - 2) do
L4_224 = L4_224 .. "::" .. A2_222 .. replace(#A0_220 - 2)[_FORV_9_] .. ":: "
L4_224 = L4_224 .. A1_221 .. "[#" .. A1_221 .. "+br]=bs " .. tempstr(math.random(4, 13), true) .. A1_221 .. "[#" .. A1_221 .. "]=" .. A0_220[replace(#A0_220 - 2)[_FORV_9_] + 1] .. " "
L4_224 = L4_224 .. "goto " .. A2_222 .. replace(#A0_220 - 2)[_FORV_9_] + 1 .. " " .. tempstrs(math.random(4, 13)) .. " "
end
L4_224 = L4_224 .. "::" .. A2_222 .. #replace(#A0_220 - 2) + 1 .. ":: "
L4_224 = L4_224 .. A1_221 .. "[#" .. A1_221 .. "+br]=" .. A0_220[#A0_220]
return L4_224
end

function ProTect()
local L0_225
L0_225 = flase
if L0_225 then
L0_225 = _X
_X = L0_225
L0_225 = _X
_X = L0_225
L0_225 = _X
_X = L0_225
L0_225 = _X
_X = L0_225
end
L0_225 = "AesSeaA"
for _FORV_4_ = 1, 12 do
L0_225 = L0_225 .. L0_225
end
L0_225 = L0_225 .. L0_225 .. L0_225
return " goto Mains " .. L0_225 .. "=nil ::Mains:: "
end

function Unvalfun(A0_226)
return "function ()" .. Iceom(A0_226) .. " return a end "
end

function mirb(A0_227, A1_228)
local L2_229
L2_229 = flase
if L2_229 then
L2_229 = _X
_X = L2_229
L2_229 = _X
_X = L2_229
end
L2_229 = ""
for _FORV_6_ = 1, math.random(3, 8) do
L2_229 = L2_229 .. A0_227[math.random(1, #A0_227)] .. " goto Sel" .. countsel .. math.random(1, A1_228) .. " " .. tempstr()
end
return L2_229
end

function Iceon(A0_230)
local L2_231
L2_231 = flase
if L2_231 then
L2_231 = _X
_X = L2_231
L2_231 = _X
_X = L2_231
L2_231 = _X
_X = L2_231
end
L2_231 = #A0_230
countsel = countsel + 1
for _FORV_7_ = 1, #replace(#A0_230 - 2) do
end
return ((((((A0_230[1] .. " goto Sel" .. countsel .. "1 ") .. "::Sel" .. countsel .. replace(#A0_230 - 2)[_FORV_7_] .. ":: " .. tempstr()) .. A0_230[replace(#A0_230 - 2)[_FORV_7_] + 1] .. " ") .. "goto Sel" .. countsel .. replace(#A0_230 - 2)[_FORV_7_] + 1 .. " " .. tempstr()) .. mirb(A0_230, #replace(#A0_230 - 2))) .. "::Sel" .. countsel .. #replace(#A0_230 - 2) + 1 .. ":: ") .. A0_230[#A0_230]
end

function toolong(A0_232)
local L1_233, L2_234, L3_235, L4_236, L5_237
L1_233 = flase
if L1_233 then
L1_233 = _X
_X = L1_233
L1_233 = _X
_X = L1_233
L1_233 = _X
_X = L1_233
end
L1_233 = #A0_232
L1_233 = L1_233 / 579
L2_234 = flase
if L2_234 then
L2_234 = _X
_X = L2_234
L2_234 = _X
_X = L2_234
end
L2_234 = flase
if L2_234 then
L2_234 = _X
_X = L2_234
end
L2_234 = {}
L3_235 = flase
if L3_235 then
L3_235 = _X
_X = L3_235
L3_235 = _X
_X = L3_235
L3_235 = _X
_X = L3_235
L3_235 = _X
_X = L3_235
end
L3_235 = flase
if L3_235 then
L3_235 = _X
_X = L3_235
L3_235 = _X
_X = L3_235
L3_235 = _X
_X = L3_235
end
L3_235 = 579 * L1_233
L4_236 = flase
if L4_236 then
L4_236 = _X
_X = L4_236
L4_236 = _X
_X = L4_236
L4_236 = _X
_X = L4_236
L4_236 = _X
_X = L4_236
end
L4_236 = 1
L5_237 = L1_233
for _FORV_7_ = 1, L1_233 do
for _FORV_12_ = 1, 579 do
end
L2_234[_FORV_7_] = Unvalfun({
[_FORV_12_] = A0_232[_FORV_12_ + (_FORV_7_ - 1) * 579]
})
end
L4_236 = flase
if L4_236 then
L4_236 = _X
_X = L4_236
L4_236 = _X
_X = L4_236
end
L4_236 = {}
L5_237 = flase
if L5_237 then
L5_237 = _X
_X = L5_237
L5_237 = _X
_X = L5_237
L5_237 = _X
_X = L5_237
end
L5_237 = L3_235 + 1
for _FORV_8_ = L3_235 + 1, #A0_232 do
L4_236[_FORV_8_ - L3_235] = A0_232[_FORV_8_]
end
L5_237 = flase
if L5_237 then
L5_237 = _X
_X = L5_237
end
L5_237 = #L2_234
L5_237 = L5_237 + 1
L2_234[L5_237] = Unvalfun(L4_236)
L5_237 = flase
if L5_237 then
L5_237 = _X
_X = L5_237
L5_237 = _X
_X = L5_237
L5_237 = _X
_X = L5_237
L5_237 = _X
_X = L5_237
end
L5_237 = flase
if L5_237 then
L5_237 = _X
_X = L5_237
L5_237 = _X
_X = L5_237
L5_237 = _X
_X = L5_237
L5_237 = _X
_X = L5_237
end
L5_237 = "local smain={} "
for _FORV_9_ = 1, #L2_234 do
L5_237 = L5_237 .. " smain[" .. _FORV_9_ .. "]=" .. L2_234[_FORV_9_] .. " "
end
return L5_237
end

function lockstr(A0_238, A1_239)
local L2_240
L2_240 = flase
if L2_240 then
L2_240 = _X
_X = L2_240
end
L2_240 = A0_238.gsub
L2_240 = L2_240(A0_238, string.char(92, 110), string.char(10))
A0_238 = L2_240
L2_240 = flase
if L2_240 then
L2_240 = _X
_X = L2_240
L2_240 = _X
_X = L2_240
end
L2_240 = flase
if L2_240 then
L2_240 = _X
_X = L2_240
L2_240 = _X
_X = L2_240
L2_240 = _X
_X = L2_240
end
L2_240 = {
A0_238:byte(0, -1)
}
for _FORV_6_ = 1, #L2_240 do
stable[#stable + 1] = L2_240[_FORV_6_]
end
end

function minum(A0_241)
local L1_242, L2_243
L1_242 = flase
if L1_242 then
L1_242 = _X
_X = L1_242
end
L1_242 = A0_241 / 255
L2_243 = flase
if L2_243 then
L2_243 = _X
_X = L2_243
end
L2_243 = flase
if L2_243 then
L2_243 = _X
_X = L2_243
L2_243 = _X
_X = L2_243
L2_243 = _X
_X = L2_243
end
L2_243 = A0_241 % 255
return "(brt*" .. L1_242 .. "+" .. L2_243 .. ")"
end

function litenum(A0_244)
local L1_245, L2_246
L1_245 = flase
if L1_245 then
L1_245 = _X
_X = L1_245
L1_245 = _X
_X = L1_245
end
L1_245 = A0_244 / 255
L2_246 = flase
if L2_246 then
L2_246 = _X
_X = L2_246
end
L2_246 = flase
if L2_246 then
L2_246 = _X
_X = L2_246
L2_246 = _X
_X = L2_246
L2_246 = _X
_X = L2_246
end
L2_246 = A0_244 % 255
if L1_245 > 255 then
L1_245 = minum(L1_245)
end
return "brt*" .. L1_245 .. "+" .. L2_246
end

function pop()
local L0_247, L1_248
L0_247 = flase
if L0_247 then
L0_247 = _X
_X = L0_247
L0_247 = _X
_X = L0_247
end
L0_247 = nil
L1_248 = flase
if L1_248 then
L1_248 = _X
_X = L1_248
end
L1_248 = flase
if L1_248 then
L1_248 = _X
_X = L1_248
end
L1_248 = ""
for _FORV_5_ = 2, #dates do
if dates[_FORV_5_] ~= dates[1] then
L1_248 = L1_248 .. string.char(dates[_FORV_5_])
end
end
if L1_248 ~= "" then
L0_247 = "(GCN(" .. litenum(#stable + 1) .. ","
lockstr(L1_248, long)
L0_247 = L0_247 .. litenum(#stable) .. "))"
end
return L0_247
end

function push(A0_249)
local L1_250
L1_250 = flase
if L1_250 then
L1_250 = _X
_X = L1_250
L1_250 = _X
_X = L1_250
L1_250 = _X
_X = L1_250
end
L1_250 = nil
if dates == nil then
instdates = A0_249
datesdi = 1
dates = {}
end
dates[datesdi] = A0_249
if datesdi ~= 1 and A0_249 == instdates then
L1_250 = pop()
if L1_250 == nil then
L1_250 = string.char(instdates) .. string.char(instdates)
end
dates = nil
end
datesdi = datesdi + 1
return L1_250
end

function byte(A0_251)
gg.supertip("✨:正在处理所有字符串……")
stable = {}
len = #{
A0_251:byte(0, -1)
}
for _FORV_6_ = 1, len do
if ({
A0_251:byte(0, -1)
})[_FORV_6_] == 34 or ({
A0_251:byte(0, -1)
})[_FORV_6_] == 39 or dates ~= nil then
if push(({
A0_251:byte(0, -1)
})[_FORV_6_]) ~= nil then
end
else
end
end
return getsfg(("" .. push(({
A0_251:byte(0, -1)
})[_FORV_6_])) .. string.char(({
A0_251:byte(0, -1)
})[_FORV_6_]))
end

function hx2(A0_252)
A0_252 = A0_252 or math.random(70, 90)
for _FORV_5_ = 1, A0_252 do
end
return " repeat break " .. ("" .. randtext()) .. " until true "
end

function randtext(A0_253)
local L1_254
L1_254 = flase
if L1_254 then
L1_254 = _X
_X = L1_254
L1_254 = _X
_X = L1_254
L1_254 = _X
_X = L1_254
end
L1_254 = string
L1_254 = L1_254.char
L1_254 = L1_254(math.random(97, 121), math.random(97, 121) - 32, math.random(48, 57))
A0_253 = A0_253 or math.random(1, 3)
countsum = countsum + 1
if A0_253 == 1 then
elseif A0_253 == 2 and not strtrue then
elseif A0_253 == 3 then
end
return tempstr() .. "_=_ " .. tempstr()
end

function getsfg(A0_255)
io.open("/sdcard/seatemp", "w"):write(A0_255)
if io.open("/sdcard/seatemp"):read("*l") and io.open("/sdcard/seatemp"):read("*l") ~= "" then
end
bitsav = nil
repeat
if flase then
repeat
do break end
do break end
bitsav = {}
until true
end
until true
if seaunc and ({})[nil] then
bitsav[#bitsav + 1] = ({})[nil]
elseif ({})[nil] then
end
return "" .. ({})[nil] .. string.char(10)
end

function ffile(A0_256)
local L1_257, L2_258
L1_257 = flase
if L1_257 then
L1_257 = _X
_X = L1_257
L1_257 = _X
_X = L1_257
end
L1_257 = ""
L2_258 = 0
if pro_hook then
end
if Code_plus then
else
end
if ([=[
local TEMP_TABLE={}
local _ENV=_ENV
seaunc=seaunc
TEMP_TABLE[8]=os.clock()
if 1 then else _ENV=nil return end
if tostring(debug.getinfo):find("@") then _ENV=nil return end
if not pcall(string.dump,debug.getinfo) then else _ENV=nil return end
if not 1 then _ENV=nil return end
if #tostring(tostring)==18 then else _ENV=nil return end
if 1+1~=2 then _ENV=nil return end
if tostring(package):find("@") then _ENV=nil return end
if 2+1==2 then _ENV=nil return end
if debug.getinfo(3) then _ENV=nil return end
if true and false then _ENV=nil return end
if debug.getinfo(2) then else _ENV=nil return end
if true or false then else _ENV=nil return end
if tostring(pcall):find("/") then _ENV=nil return end
if not pcall(string.dump,gg.getValues) then else _ENV=nil return end
seaunc=seaunc
local Srpitin=gg.getFile()
local Miv_char,Mix_char=string.char(0),string.char(0,37)
for i=1,19 do
seaunc=seaunc
if not TEMP_TABLE[8] then gg=nil end
Mix_char=Mix_char..Mix_char
Miv_char=Miv_char..Miv_char
if true~=true then TEMP_TABLE=-1 end
while true and false do end
seaunc=seaunc
end
if not ("1048576"+0==#Mix_char and "524288"+0==#Miv_char) then
os.exit()
gg=nil
end
local Tyu_ss="800"..Miv_char..Miv_char
local searchNumber
seaunc=seaunc
for i=1,60 do pcall(gg.searchNumber,Tyu_ss,4,0,0,0) end
while (debug.traceback():gsub(gg.getFile(),"")):find("/") do _ENV=nil return end
if 1+1>2 then i=2+2+"6467676" end
gg[1]=gg[1]
searchNumber=gg.searchNumber
seaunc=seaunc
local Cha_ssr="0000000"
for i=1,15 do
Cha_ssr=Cha_ssr..Cha_ssr
end
Cha_ssr=Cha_ssr
function gg.searchNumber(a,b,c,d,e,f,g,h)
_Y_=_Y_
seaunc=seaunc
gg.setVisible(false)
TEMP_TABLE=pcall(debug.getinfo,gg)
if TEMP_TABLE then while true do gg.clearResults() os.exit() gg=nil end _ENV=nil return end
for i=1,3 do pcall(searchNumber,Tyu_ss,5,0,0,0) end
for i=1,7 do pcall(searchNumber,Cha_ssr,5,0,0,0) end
if gg.isVisible() then while true do gg.clearResults() os.exit() gg=nil end _ENV=nil return end
searchNumber(Cha_ssr..a..Miv_char,b,c,d,e,f,g,h)
if gg.isVisible() then while true do gg.clearResults() os.exit() gg=nil end _ENV=nil return end
for i=1,3 do pcall(searchNumber,Cha_ssr..1,5,0,0,0) end
for i=1,7 do pcall(searchNumber,Tyu_ss,5,0,0,0) end
seaunc=seaunc
end
if not pcall(string.dump,gg.setValues) then else _ENV=nil return end
local Main_char=string.char(0,10)
for i=1,24 do
Main_char=Main_char..Main_char
end
local Tempxs_={Main_char,Main_char,Main_char,Main_char}
local setValues,getValues=gg.setValues,gg.getValues
function gg.setValues(t)
_Y_=_Y_
if #t==1 then
return setValues({[Tempxs_]=t[1]})
end
local i,data=0,{}
local temp
for i=1,#t do
seaunc=seaunc
temp={}
temp={address=Main_char,flags=Main_char,value=Main_char}
data[temp]={Main_char,address=t[i].address,Main_char,flags=t[i].flags,Main_char,value=t[i].value}
data[temp].values=Main_char
seaunc=seaunc
end
return setValues(data)
end
if pcall(string.dump,gg.setValues) then else _ENV=nil return end
function gg.getValues(t)
_Y_=_Y_
if #t==1 then
return{getValues({[Tempxs_]=t[1]})[Tempxs_]}
end
local temp,data={},{}
for i=1,#t do
seaunc=seaunc
temp[i]={address=Main_char,flags=Main_char,Main_char}
data[i]={address=t[i].address-((i+100)^2),flags=4,Main_char}
data[temp[i]]={address=Main_char,address=t[i].address,flags=Main_char,flags=t[i].flags}
data[#data+1]={address=t[i].address-((i+100)^2),flags=4,Main_char}
seaunc=seaunc
end
local lensde,a=#t,{}
seaunc=seaunc
a[1]=1
repeat break until true
a[2]=a[1]
if true then end
a[3]=a[2]
data=getValues(data)
for i=1,lensde do t[i]=temp[i] t[i]=data[temp[i]] end
seaunc=seaunc
return t
end
local Time_1,Time_2=os.clock(),os.time()
seaunc=seaunc
if true then end
gg.getValues({{address=0,flags=1}})
if true then end
gg.setValues({{address=0,flags=4,value=0}})
if true then end
gg.getValues({{address=0,flags=1}})
if true then end
if not (os.clock()-Time_1<1.2 and os.time()-Time_2<2) then while true do os.exit() _ENV=nil end return end
if tostring(gg):find(Srpitin)==nil then _ENV=nil return end
seaunc=seaunc
local My_choice,My_multiChoice,My_prompt=gg.choice,gg.multiChoice,gg.prompt
function gg.multiChoice(a,b,c)
_Y_=_Y_
for i=1,30 do
qnmd={lv=Mix_char,lv=Main_char,offset=Mix_char,offset=Main_char}
qxmg={{offset=Mix_char,lv=Main_char,value=Mix_char}}
end
local re=My_multiChoice(a,b,c)
for i=1,60 do
address={Mix_char,Mix_char,0,{Main_char}}
flags={qxmg,Mix_char}
end
return re
end
if tostring(gg.choice):find("@") then _ENV=nil return end
function gg.choice(a,b,c)
_Y_=_Y_
for i=1,30 do
qnmd={lv=Mix_char,lv=Main_char,offset=Mix_char,offset=Main_char}
qxmg={{offset=Mix_char,lv=Main_char,value=Mix_char}}
end
local re=My_choice(a,b,c)
for i=1,60 do
address={Mix_char,Mix_char,0,{Main_char}}
flags={qxmg,Mix_char}
end
return re
end
seaunc=seaunc
if os.clock()-TEMP_TABLE[8]>9 then _ENV=nil return end
TEMP_TABLE[#TEMP_TABLE+1]=Main_char
TEMP_TABLE[1]=TEMP_TABLE[0]
if true then else _ENV=nil return end
TEMP_TABLE=pcall(nil)
if not tostring(gg.choice):find(Srpitin) then _ENV=nil return end
TEMP_TABLE=tostring
if not pcall(string.dump,gg.choice) then _ENV=nil return end
seaunc=seaunc
function gg.prompt(a,b,c)
_Y_=_Y_
for i=1,30 do
qnmd={lv=Mix_char,lv=Main_char,offset=Mix_char,offset=Main_char}
qxmg={{offset=Mix_char,lv=Main_char,value=Mix_char}}
end
local re=My_prompt(a,b,c)
for i=1,60 do
address={Mix_char,Mix_char,0,{Main_char}}
flags={qxmg,Mix_char}
end
return re
end
if not pcall(string.dump,gg.prompt) then _ENV=nil return end
]=] .. NewDefine(A0_256)) .. io.open(A0_256):read("*a"):find("yiyanzheng") or ([=[
local TEMP_TABLE={}
local _ENV=_ENV
seaunc=seaunc
TEMP_TABLE[8]=os.clock()
if 1 then else _ENV=nil return end
if tostring(debug.getinfo):find("@") then _ENV=nil return end
if not pcall(string.dump,debug.getinfo) then else _ENV=nil return end
if not 1 then _ENV=nil return end
if #tostring(tostring)==18 then else _ENV=nil return end
if 1+1~=2 then _ENV=nil return end
if tostring(package):find("@") then _ENV=nil return end
if 2+1==2 then _ENV=nil return end
if debug.getinfo(3) then _ENV=nil return end
if true and false then _ENV=nil return end
if debug.getinfo(2) then else _ENV=nil return end
if true or false then else _ENV=nil return end
if tostring(pcall):find("/") then _ENV=nil return end
if not pcall(string.dump,gg.getValues) then else _ENV=nil return end
seaunc=seaunc
local Srpitin=gg.getFile()
local Miv_char,Mix_char=string.char(0),string.char(0,37)
for i=1,19 do
seaunc=seaunc
if not TEMP_TABLE[8] then gg=nil end
Mix_char=Mix_char..Mix_char
Miv_char=Miv_char..Miv_char
if true~=true then TEMP_TABLE=-1 end
while true and false do end
seaunc=seaunc
end
if not ("1048576"+0==#Mix_char and "524288"+0==#Miv_char) then
os.exit()
gg=nil
end
local Tyu_ss="800"..Miv_char..Miv_char
local searchNumber
seaunc=seaunc
for i=1,60 do pcall(gg.searchNumber,Tyu_ss,4,0,0,0) end
while (debug.traceback():gsub(gg.getFile(),"")):find("/") do _ENV=nil return end
if 1+1>2 then i=2+2+"6467676" end
gg[1]=gg[1]
searchNumber=gg.searchNumber
seaunc=seaunc
local Cha_ssr="0000000"
for i=1,15 do
Cha_ssr=Cha_ssr..Cha_ssr
end
Cha_ssr=Cha_ssr
function gg.searchNumber(a,b,c,d,e,f,g,h)
_Y_=_Y_
seaunc=seaunc
gg.setVisible(false)
TEMP_TABLE=pcall(debug.getinfo,gg)
if TEMP_TABLE then while true do gg.clearResults() os.exit() gg=nil end _ENV=nil return end
for i=1,3 do pcall(searchNumber,Tyu_ss,5,0,0,0) end
for i=1,7 do pcall(searchNumber,Cha_ssr,5,0,0,0) end
if gg.isVisible() then while true do gg.clearResults() os.exit() gg=nil end _ENV=nil return end
searchNumber(Cha_ssr..a..Miv_char,b,c,d,e,f,g,h)
if gg.isVisible() then while true do gg.clearResults() os.exit() gg=nil end _ENV=nil return end
for i=1,3 do pcall(searchNumber,Cha_ssr..1,5,0,0,0) end
for i=1,7 do pcall(searchNumber,Tyu_ss,5,0,0,0) end
seaunc=seaunc
end
if not pcall(string.dump,gg.setValues) then else _ENV=nil return end
local Main_char=string.char(0,10)
for i=1,24 do
Main_char=Main_char..Main_char
end
local Tempxs_={Main_char,Main_char,Main_char,Main_char}
local setValues,getValues=gg.setValues,gg.getValues
function gg.setValues(t)
_Y_=_Y_
if #t==1 then
return setValues({[Tempxs_]=t[1]})
end
local i,data=0,{}
local temp
for i=1,#t do
seaunc=seaunc
temp={}
temp={address=Main_char,flags=Main_char,value=Main_char}
data[temp]={Main_char,address=t[i].address,Main_char,flags=t[i].flags,Main_char,value=t[i].value}
data[temp].values=Main_char
seaunc=seaunc
end
return setValues(data)
end
if pcall(string.dump,gg.setValues) then else _ENV=nil return end
function gg.getValues(t)
_Y_=_Y_
if #t==1 then
return{getValues({[Tempxs_]=t[1]})[Tempxs_]}
end
local temp,data={},{}
for i=1,#t do
seaunc=seaunc
temp[i]={address=Main_char,flags=Main_char,Main_char}
data[i]={address=t[i].address-((i+100)^2),flags=4,Main_char}
data[temp[i]]={address=Main_char,address=t[i].address,flags=Main_char,flags=t[i].flags}
data[#data+1]={address=t[i].address-((i+100)^2),flags=4,Main_char}
seaunc=seaunc
end
local lensde,a=#t,{}
seaunc=seaunc
a[1]=1
repeat break until true
a[2]=a[1]
if true then end
a[3]=a[2]
data=getValues(data)
for i=1,lensde do t[i]=temp[i] t[i]=data[temp[i]] end
seaunc=seaunc
return t
end
local Time_1,Time_2=os.clock(),os.time()
seaunc=seaunc
if true then end
gg.getValues({{address=0,flags=1}})
if true then end
gg.setValues({{address=0,flags=4,value=0}})
if true then end
gg.getValues({{address=0,flags=1}})
if true then end
if not (os.clock()-Time_1<1.2 and os.time()-Time_2<2) then while true do os.exit() _ENV=nil end return end
if tostring(gg):find(Srpitin)==nil then _ENV=nil return end
seaunc=seaunc
local My_choice,My_multiChoice,My_prompt=gg.choice,gg.multiChoice,gg.prompt
function gg.multiChoice(a,b,c)
_Y_=_Y_
for i=1,30 do
qnmd={lv=Mix_char,lv=Main_char,offset=Mix_char,offset=Main_char}
qxmg={{offset=Mix_char,lv=Main_char,value=Mix_char}}
end
local re=My_multiChoice(a,b,c)
for i=1,60 do
address={Mix_char,Mix_char,0,{Main_char}}
flags={qxmg,Mix_char}
end
return re
end
if tostring(gg.choice):find("@") then _ENV=nil return end
function gg.choice(a,b,c)
_Y_=_Y_
for i=1,30 do
qnmd={lv=Mix_char,lv=Main_char,offset=Mix_char,offset=Main_char}
qxmg={{offset=Mix_char,lv=Main_char,value=Mix_char}}
end
local re=My_choice(a,b,c)
for i=1,60 do
address={Mix_char,Mix_char,0,{Main_char}}
flags={qxmg,Mix_char}
end
return re
end
seaunc=seaunc
if os.clock()-TEMP_TABLE[8]>9 then _ENV=nil return end
TEMP_TABLE[#TEMP_TABLE+1]=Main_char
TEMP_TABLE[1]=TEMP_TABLE[0]
if true then else _ENV=nil return end
TEMP_TABLE=pcall(nil)
if not tostring(gg.choice):find(Srpitin) then _ENV=nil return end
TEMP_TABLE=tostring
if not pcall(string.dump,gg.choice) then _ENV=nil return end
seaunc=seaunc
function gg.prompt(a,b,c)
_Y_=_Y_
for i=1,30 do
qnmd={lv=Mix_char,lv=Main_char,offset=Mix_char,offset=Main_char}
qxmg={{offset=Mix_char,lv=Main_char,value=Mix_char}}
end
local re=My_prompt(a,b,c)
for i=1,60 do
address={Mix_char,Mix_char,0,{Main_char}}
flags={qxmg,Mix_char}
end
return re
end
if not pcall(string.dump,gg.prompt) then _ENV=nil return end
]=] .. NewDefine(A0_256)) .. io.open(A0_256):read("*a"):find("eydata") or ([=[
local TEMP_TABLE={}
local _ENV=_ENV
seaunc=seaunc
TEMP_TABLE[8]=os.clock()
if 1 then else _ENV=nil return end
if tostring(debug.getinfo):find("@") then _ENV=nil return end
if not pcall(string.dump,debug.getinfo) then else _ENV=nil return end
if not 1 then _ENV=nil return end
if #tostring(tostring)==18 then else _ENV=nil return end
if 1+1~=2 then _ENV=nil return end
if tostring(package):find("@") then _ENV=nil return end
if 2+1==2 then _ENV=nil return end
if debug.getinfo(3) then _ENV=nil return end
if true and false then _ENV=nil return end
if debug.getinfo(2) then else _ENV=nil return end
if true or false then else _ENV=nil return end
if tostring(pcall):find("/") then _ENV=nil return end
if not pcall(string.dump,gg.getValues) then else _ENV=nil return end
seaunc=seaunc
local Srpitin=gg.getFile()
local Miv_char,Mix_char=string.char(0),string.char(0,37)
for i=1,19 do
seaunc=seaunc
if not TEMP_TABLE[8] then gg=nil end
Mix_char=Mix_char..Mix_char
Miv_char=Miv_char..Miv_char
if true~=true then TEMP_TABLE=-1 end
while true and false do end
seaunc=seaunc
end
if not ("1048576"+0==#Mix_char and "524288"+0==#Miv_char) then
os.exit()
gg=nil
end
local Tyu_ss="800"..Miv_char..Miv_char
local searchNumber
seaunc=seaunc
for i=1,60 do pcall(gg.searchNumber,Tyu_ss,4,0,0,0) end
while (debug.traceback():gsub(gg.getFile(),"")):find("/") do _ENV=nil return end
if 1+1>2 then i=2+2+"6467676" end
gg[1]=gg[1]
searchNumber=gg.searchNumber
seaunc=seaunc
local Cha_ssr="0000000"
for i=1,15 do
Cha_ssr=Cha_ssr..Cha_ssr
end
Cha_ssr=Cha_ssr
function gg.searchNumber(a,b,c,d,e,f,g,h)
_Y_=_Y_
seaunc=seaunc
gg.setVisible(false)
TEMP_TABLE=pcall(debug.getinfo,gg)
if TEMP_TABLE then while true do gg.clearResults() os.exit() gg=nil end _ENV=nil return end
for i=1,3 do pcall(searchNumber,Tyu_ss,5,0,0,0) end
for i=1,7 do pcall(searchNumber,Cha_ssr,5,0,0,0) end
if gg.isVisible() then while true do gg.clearResults() os.exit() gg=nil end _ENV=nil return end
searchNumber(Cha_ssr..a..Miv_char,b,c,d,e,f,g,h)
if gg.isVisible() then while true do gg.clearResults() os.exit() gg=nil end _ENV=nil return end
for i=1,3 do pcall(searchNumber,Cha_ssr..1,5,0,0,0) end
for i=1,7 do pcall(searchNumber,Tyu_ss,5,0,0,0) end
seaunc=seaunc
end
if not pcall(string.dump,gg.setValues) then else _ENV=nil return end
local Main_char=string.char(0,10)
for i=1,24 do
Main_char=Main_char..Main_char
end
local Tempxs_={Main_char,Main_char,Main_char,Main_char}
local setValues,getValues=gg.setValues,gg.getValues
function gg.setValues(t)
_Y_=_Y_
if #t==1 then
return setValues({[Tempxs_]=t[1]})
end
local i,data=0,{}
local temp
for i=1,#t do
seaunc=seaunc
temp={}
temp={address=Main_char,flags=Main_char,value=Main_char}
data[temp]={Main_char,address=t[i].address,Main_char,flags=t[i].flags,Main_char,value=t[i].value}
data[temp].values=Main_char
seaunc=seaunc
end
return setValues(data)
end
if pcall(string.dump,gg.setValues) then else _ENV=nil return end
function gg.getValues(t)
_Y_=_Y_
if #t==1 then
return{getValues({[Tempxs_]=t[1]})[Tempxs_]}
end
local temp,data={},{}
for i=1,#t do
seaunc=seaunc
temp[i]={address=Main_char,flags=Main_char,Main_char}
data[i]={address=t[i].address-((i+100)^2),flags=4,Main_char}
data[temp[i]]={address=Main_char,address=t[i].address,flags=Main_char,flags=t[i].flags}
data[#data+1]={address=t[i].address-((i+100)^2),flags=4,Main_char}
seaunc=seaunc
end
local lensde,a=#t,{}
seaunc=seaunc
a[1]=1
repeat break until true
a[2]=a[1]
if true then end
a[3]=a[2]
data=getValues(data)
for i=1,lensde do t[i]=temp[i] t[i]=data[temp[i]] end
seaunc=seaunc
return t
end
local Time_1,Time_2=os.clock(),os.time()
seaunc=seaunc
if true then end
gg.getValues({{address=0,flags=1}})
if true then end
gg.setValues({{address=0,flags=4,value=0}})
if true then end
gg.getValues({{address=0,flags=1}})
if true then end
if not (os.clock()-Time_1<1.2 and os.time()-Time_2<2) then while true do os.exit() _ENV=nil end return end
if tostring(gg):find(Srpitin)==nil then _ENV=nil return end
seaunc=seaunc
local My_choice,My_multiChoice,My_prompt=gg.choice,gg.multiChoice,gg.prompt
function gg.multiChoice(a,b,c)
_Y_=_Y_
for i=1,30 do
qnmd={lv=Mix_char,lv=Main_char,offset=Mix_char,offset=Main_char}
qxmg={{offset=Mix_char,lv=Main_char,value=Mix_char}}
end
local re=My_multiChoice(a,b,c)
for i=1,60 do
address={Mix_char,Mix_char,0,{Main_char}}
flags={qxmg,Mix_char}
end
return re
end
if tostring(gg.choice):find("@") then _ENV=nil return end
function gg.choice(a,b,c)
_Y_=_Y_
for i=1,30 do
qnmd={lv=Mix_char,lv=Main_char,offset=Mix_char,offset=Main_char}
qxmg={{offset=Mix_char,lv=Main_char,value=Mix_char}}
end
local re=My_choice(a,b,c)
for i=1,60 do
address={Mix_char,Mix_char,0,{Main_char}}
flags={qxmg,Mix_char}
end
return re
end
seaunc=seaunc
if os.clock()-TEMP_TABLE[8]>9 then _ENV=nil return end
TEMP_TABLE[#TEMP_TABLE+1]=Main_char
TEMP_TABLE[1]=TEMP_TABLE[0]
if true then else _ENV=nil return end
TEMP_TABLE=pcall(nil)
if not tostring(gg.choice):find(Srpitin) then _ENV=nil return end
TEMP_TABLE=tostring
if not pcall(string.dump,gg.choice) then _ENV=nil return end
seaunc=seaunc
function gg.prompt(a,b,c)
_Y_=_Y_
for i=1,30 do
qnmd={lv=Mix_char,lv=Main_char,offset=Mix_char,offset=Main_char}
qxmg={{offset=Mix_char,lv=Main_char,value=Mix_char}}
end
local re=My_prompt(a,b,c)
for i=1,60 do
address={Mix_char,Mix_char,0,{Main_char}}
flags={qxmg,Mix_char}
end
return re
end
if not pcall(string.dump,gg.prompt) then _ENV=nil return end
]=] .. NewDefine(A0_256)) .. io.open(A0_256):read("*a"):find("yiyz.net") then
while true do
os.remove(A0_256)
os.exit()
end
end
gg.supertip("✨:开始字符串处理……")
io.open("/sdcard/seatemp", "w"):write((byte((seachar_base .. [=[
 local Mta,sei=smain[1](),{}
for i=2,#smain do
local s=smain[i]()
for j=1,#s do
Mta[#Mta+1]=s[j]
end
end
local function GCN(a,b)
local s=sei[""..a..b]
if not s then
s=""
for i=a,b do
s=s..charbase[Mta[i]]
end
sei[""..a..b]=s
end
return s
end
while "195819936"~="195819936" do return 0 end
]=]) .. ([=[
local TEMP_TABLE={}
local _ENV=_ENV
seaunc=seaunc
TEMP_TABLE[8]=os.clock()
if 1 then else _ENV=nil return end
if tostring(debug.getinfo):find("@") then _ENV=nil return end
if not pcall(string.dump,debug.getinfo) then else _ENV=nil return end
if not 1 then _ENV=nil return end
if #tostring(tostring)==18 then else _ENV=nil return end
if 1+1~=2 then _ENV=nil return end
if tostring(package):find("@") then _ENV=nil return end
if 2+1==2 then _ENV=nil return end
if debug.getinfo(3) then _ENV=nil return end
if true and false then _ENV=nil return end
if debug.getinfo(2) then else _ENV=nil return end
if true or false then else _ENV=nil return end
if tostring(pcall):find("/") then _ENV=nil return end
if not pcall(string.dump,gg.getValues) then else _ENV=nil return end
seaunc=seaunc
local Srpitin=gg.getFile()
local Miv_char,Mix_char=string.char(0),string.char(0,37)
for i=1,19 do
seaunc=seaunc
if not TEMP_TABLE[8] then gg=nil end
Mix_char=Mix_char..Mix_char
Miv_char=Miv_char..Miv_char
if true~=true then TEMP_TABLE=-1 end
while true and false do end
seaunc=seaunc
end
if not ("1048576"+0==#Mix_char and "524288"+0==#Miv_char) then
os.exit()
gg=nil
end
local Tyu_ss="800"..Miv_char..Miv_char
local searchNumber
seaunc=seaunc
for i=1,60 do pcall(gg.searchNumber,Tyu_ss,4,0,0,0) end
while (debug.traceback():gsub(gg.getFile(),"")):find("/") do _ENV=nil return end
if 1+1>2 then i=2+2+"6467676" end
gg[1]=gg[1]
searchNumber=gg.searchNumber
seaunc=seaunc
local Cha_ssr="0000000"
for i=1,15 do
Cha_ssr=Cha_ssr..Cha_ssr
end
Cha_ssr=Cha_ssr
function gg.searchNumber(a,b,c,d,e,f,g,h)
_Y_=_Y_
seaunc=seaunc
gg.setVisible(false)
TEMP_TABLE=pcall(debug.getinfo,gg)
if TEMP_TABLE then while true do gg.clearResults() os.exit() gg=nil end _ENV=nil return end
for i=1,3 do pcall(searchNumber,Tyu_ss,5,0,0,0) end
for i=1,7 do pcall(searchNumber,Cha_ssr,5,0,0,0) end
if gg.isVisible() then while true do gg.clearResults() os.exit() gg=nil end _ENV=nil return end
searchNumber(Cha_ssr..a..Miv_char,b,c,d,e,f,g,h)
if gg.isVisible() then while true do gg.clearResults() os.exit() gg=nil end _ENV=nil return end
for i=1,3 do pcall(searchNumber,Cha_ssr..1,5,0,0,0) end
for i=1,7 do pcall(searchNumber,Tyu_ss,5,0,0,0) end
seaunc=seaunc
end
if not pcall(string.dump,gg.setValues) then else _ENV=nil return end
local Main_char=string.char(0,10)
for i=1,24 do
Main_char=Main_char..Main_char
end
local Tempxs_={Main_char,Main_char,Main_char,Main_char}
local setValues,getValues=gg.setValues,gg.getValues
function gg.setValues(t)
_Y_=_Y_
if #t==1 then
return setValues({[Tempxs_]=t[1]})
end
local i,data=0,{}
local temp
for i=1,#t do
seaunc=seaunc
temp={}
temp={address=Main_char,flags=Main_char,value=Main_char}
data[temp]={Main_char,address=t[i].address,Main_char,flags=t[i].flags,Main_char,value=t[i].value}
data[temp].values=Main_char
seaunc=seaunc
end
return setValues(data)
end
if pcall(string.dump,gg.setValues) then else _ENV=nil return end
function gg.getValues(t)
_Y_=_Y_
if #t==1 then
return{getValues({[Tempxs_]=t[1]})[Tempxs_]}
end
local temp,data={},{}
for i=1,#t do
seaunc=seaunc
temp[i]={address=Main_char,flags=Main_char,Main_char}
data[i]={address=t[i].address-((i+100)^2),flags=4,Main_char}
data[temp[i]]={address=Main_char,address=t[i].address,flags=Main_char,flags=t[i].flags}
data[#data+1]={address=t[i].address-((i+100)^2),flags=4,Main_char}
seaunc=seaunc
end
local lensde,a=#t,{}
seaunc=seaunc
a[1]=1
repeat break until true
a[2]=a[1]
if true then end
a[3]=a[2]
data=getValues(data)
for i=1,lensde do t[i]=temp[i] t[i]=data[temp[i]] end
seaunc=seaunc
return t
end
local Time_1,Time_2=os.clock(),os.time()
seaunc=seaunc
if true then end
gg.getValues({{address=0,flags=1}})
if true then end
gg.setValues({{address=0,flags=4,value=0}})
if true then end
gg.getValues({{address=0,flags=1}})
if true then end
if not (os.clock()-Time_1<1.2 and os.time()-Time_2<2) then while true do os.exit() _ENV=nil end return end
if tostring(gg):find(Srpitin)==nil then _ENV=nil return end
seaunc=seaunc
local My_choice,My_multiChoice,My_prompt=gg.choice,gg.multiChoice,gg.prompt
function gg.multiChoice(a,b,c)
_Y_=_Y_
for i=1,30 do
qnmd={lv=Mix_char,lv=Main_char,offset=Mix_char,offset=Main_char}
qxmg={{offset=Mix_char,lv=Main_char,value=Mix_char}}
end
local re=My_multiChoice(a,b,c)
for i=1,60 do
address={Mix_char,Mix_char,0,{Main_char}}
flags={qxmg,Mix_char}
end
return re
end
if tostring(gg.choice):find("@") then _ENV=nil return end
function gg.choice(a,b,c)
_Y_=_Y_
for i=1,30 do
qnmd={lv=Mix_char,lv=Main_char,offset=Mix_char,offset=Main_char}
qxmg={{offset=Mix_char,lv=Main_char,value=Mix_char}}
end
local re=My_choice(a,b,c)
for i=1,60 do
address={Mix_char,Mix_char,0,{Main_char}}
flags={qxmg,Mix_char}
end
return re
end
seaunc=seaunc
if os.clock()-TEMP_TABLE[8]>9 then _ENV=nil return end
TEMP_TABLE[#TEMP_TABLE+1]=Main_char
TEMP_TABLE[1]=TEMP_TABLE[0]
if true then else _ENV=nil return end
TEMP_TABLE=pcall(nil)
if not tostring(gg.choice):find(Srpitin) then _ENV=nil return end
TEMP_TABLE=tostring
if not pcall(string.dump,gg.choice) then _ENV=nil return end
seaunc=seaunc
function gg.prompt(a,b,c)
_Y_=_Y_
for i=1,30 do
qnmd={lv=Mix_char,lv=Main_char,offset=Mix_char,offset=Main_char}
qxmg={{offset=Mix_char,lv=Main_char,value=Mix_char}}
end
local re=My_prompt(a,b,c)
for i=1,60 do
address={Mix_char,Mix_char,0,{Main_char}}
flags={qxmg,Mix_char}
end
return re
end
if not pcall(string.dump,gg.prompt) then _ENV=nil return end
]=] .. NewDefine(A0_256)) .. io.open(A0_256):read("*a"))))
files1 = io.open("/sdcard/seatemp")
gg.supertip("✨:字符串混淆完毕")
repeat
text = files1:read("*l")
if text then
if text ~= "" and load(text) and not text:find("return") then
L1_257 = L1_257 .. string.char(10) .. randtext() .. string.char(10) .. text .. string.char(10) .. randtext() .. string.char(10)
else
L1_257 = L1_257 .. text .. string.char(10)
end
end
until text == nil
os.remove("/sdcard/seatemp")
gg.supertip("✨:混淆脚本完成")
return toolong(stable) .. L1_257
end

function Ens(A0_259)
while A0_259:find(string.char(10)) do
A0_259 = A0_259:gsub(string.char(10), tempstr(nil, true), 1)
end
return A0_259
end

function bian()
countsum = 0
if loadfile("/sdcard/.ini1.6x") then
savedate = loadfile("/sdcard/.ini1.6x")()
end
savedate = savedate or {}
savedate[1] = savedate[1] or gg.getFile()
choicefile = gg.prompt({
"文件:",
"禁止记录大多数调用",
"转义指针修改"
}, savedate, {
"file",
"checkbox",
"checkbox"
})
if choicefile and loadfile(choicefile[1]) then
if choicefile[1]:find("方舟手游.lua") then
file_out = choicefile[1]:gsub("方舟手游.lua", "i.lua")
else
file_out = choicefile[1] .. ".lua"
end
if choicefile[2] then
pro_hook = true
end
if choicefile[3] then
Code_plus = true
end
gg.saveVariable(choicefile, "/sdcard/.ini1.6x")
inittime = os.clock()
gg.supertip("✨:成功导入一个脚本" .. choicefile[1])
filestr = ffile(choicefile[1]) .. string.char(10)
filestr = filestr:gsub(string.char(10, 10), string.char(10))
filestr = filestr:gsub("", " ")
filestr = "Sea=1 local bs,br='',Sea " .. protect() .. "(function ()" .. ProTect() .. hx2(320) .. Ens([[
local ARK_Sea={}
local h,i,j
local k,l,m
local n,o,p,q
local r,s,t
local brt=255
]]) .. filestr .. hx2(320) .. " end)()"
filestr1, Error = load(filestr)
if filestr1 then
gg.supertip("✨:验证成功，正在编译……")
if not load((dumpplus(filestr1))) then
gg.alert("阿哦？出现一个错误！再来一次吧！")
return
end
io.open(file_out, "w"):write((dumpplus(filestr1)))
gg.supertip("✨:完成！\n消耗时间" .. os.clock() - inittime)
gg.alert("加密成功路径:\n" .. file_out)
else
io.open(file_out, "w"):write(filestr)
gg.alert("未知错误:\n" .. Error)
end
end
end

bian()
