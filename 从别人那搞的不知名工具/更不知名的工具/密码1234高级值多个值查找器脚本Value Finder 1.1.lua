
local f = "Value Finder 1.1.lua"
local thisFile = gg.getFile():match("[^/]+$")
if thisFile == f then
    gg.alert("Correct File name")
    else
    gg.alert("Incorrect File name")
    gg.alert("File needs to be"..f)
end

--Password for script:

local thisPassword = "1234"
local ask = gg.prompt({"Enter Password"},{[1] = '0'},{[1] = 'number'})
if ask[1] == thisPassword then
    gg.alert("Correct Password")
    else
    gg.alert("Incorrect Password")
    os.exit()
end

function Main()
local t = gg.multiChoice({
'(0.1) - (0.19)', 
'(1.1) - (1.19)', 
'(-1) - (-19)',
'(2.1) - (2.19)',
'(1) - (19)',
'Set Ranges',
'Special Values',
'EXIT'},
nil,'Value Finder 1.1 by Luckyday999')
if t == nil then gg.sleep(1)
else
if t[1] then F1() end
if t[2] then F2() end
if t[3] then F3() end
if t[4] then F4() end
if t[5] then F5() end
if t[6] then F6() end
if t[7] then F7() end
if t[8] then Exit() end
end
XGCK=-1
end

function F1()
Menu = gg.choice({"0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","0.10","0.11","0.12","0.13","0.14","0.15","0.16","0.17","0.18","0.19","Back"}, nil,"0.1 - 0.19")

if Menu == 1 then A1() end
if Menu == 2 then A2() end
if Menu == 3 then A3() end
if Menu == 4 then A4() end
if Menu == 5 then A5() end
if Menu == 6 then A6() end
if Menu == 7 then A7() end
if Menu == 8 then A8() end
if Menu == 9 then A9() end
if Menu == 10 then A10() end
if Menu == 11 then A11() end
if Menu == 12 then A12() end
if Menu == 13 then A13() end
if Menu == 14 then A14() end
if Menu == 15 then A15() end
if Menu == 16 then A16() end
if Menu == 17 then A17() end
if Menu == 18 then A18() end
if Menu == 19 then A19() end
if Menu == 20 then Main()end
end

function A1()
  gg.searchNumber("0.1", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A2()
  gg.searchNumber("0.2", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A3()
  gg.searchNumber("0.3", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
gg.toast("✅")
end

function A4()
  gg.searchNumber("0.4", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A5()
  gg.searchNumber("0.5", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A6()
  gg.searchNumber("0.6", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end
function A7()
  gg.searchNumber("0.7", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A8()
  gg.searchNumber("0.8", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A9()
  gg.searchNumber("0.9", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A10()
  gg.searchNumber("0.10", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A11()
  gg.searchNumber("0.11", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A12()
  gg.searchNumber("0.12", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A13()
  gg.searchNumber("0.13", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A14()
  gg.searchNumber("0.14", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A15()
  gg.searchNumber("0.15", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A16()
  gg.searchNumber("0.16", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A17()
  gg.searchNumber("0.17", gg.TYPE_FLOAT)
  gg.getResults(1000)
   gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A18()
  gg.searchNumber("0.18", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function A19()
  gg.searchNumber("0.19", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function F2()
Menu = gg.choice({"1.1","1.2","1.3","1.4","1.5","1.6","1.7","1.8","1.9","1.10","1.11","1.12","1.13","1.14","1.15","1.16","1.17","1.18","1.19","Back"}, nil,"1.1 - 1.19")

if Menu == 1 then B1() end
if Menu == 2 then B2() end
if Menu == 3 then B3() end
if Menu == 4 then B4() end
if Menu == 5 then B5() end
if Menu == 6 then B6() end
if Menu == 7 then B7() end
if Menu == 8 then B8() end
if Menu == 9 then B9() end
if Menu == 10 then B10() end
if Menu == 11 then B11() end
if Menu == 12 then B12() end
if Menu == 13 then B13() end
if Menu == 14 then B14() end
if Menu == 15 then B15() end
if Menu == 16 then B16() end
if Menu == 17 then B17() end
if Menu == 18 then B18() end
if Menu == 19 then B19() end
if Menu == 20 then Main()end
end

function B1()
  gg.searchNumber("1.1", gg.TYPE_FLOAT)
  gg.getResults(1000)
end

function B2()
  gg.searchNumber("1.2", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B3()
  gg.searchNumber("1.3", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
gg.toast("✅")
end

function B4()
  gg.searchNumber("1.4", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B5()
  gg.searchNumber("1.5", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B6()
  gg.searchNumber("1.6", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end
function B7()
  gg.searchNumber("1.7", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B8()
  gg.searchNumber("1.8", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B9()
  gg.searchNumber("1.9", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B10()
  gg.searchNumber("1.10", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B11()
  gg.searchNumber("1.11", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B12()
  gg.searchNumber("1.12", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B13()
  gg.searchNumber("1.13", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B14()
  gg.searchNumber("1.14", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B15()
  gg.searchNumber("1.15", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B16()
  gg.searchNumber("1.16", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B17()
  gg.searchNumber("1.17", gg.TYPE_FLOAT)
  gg.getResults(1000)
   gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B18()
  gg.searchNumber("1.18", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function B19()
  gg.searchNumber("1.19", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end


function F3()
Menu = gg.choice({"-1","-2","-3","-4","-5","-6","-7","-8","-9","-10","-11","-12","-13","-14","-815","-16","-17","-18","-19","Back"}, nil,"-1 - -19")

if Menu == 1 then C1() end
if Menu == 2 then C2() end
if Menu == 3 then C3() end
if Menu == 4 then C4() end
if Menu == 5 then C5() end
if Menu == 6 then C6() end
if Menu == 7 then C7() end
if Menu == 8 then C8() end
if Menu == 9 then C9() end
if Menu == 10 then C10() end
if Menu == 11 then C11() end
if Menu == 12 then C12() end
if Menu == 13 then C13() end
if Menu == 14 then C14() end
if Menu == 15 then C15() end
if Menu == 16 then C16() end
if Menu == 17 then C17() end
if Menu == 18 then C18() end
if Menu == 19 then C19() end
if Menu == 20 then Main()end
end

function C1()
  gg.searchNumber("-1", gg.TYPE_FLOAT)
  gg.getResults(1000)
end

function C2()
  gg.searchNumber("-2", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C3()
  gg.searchNumber("-3", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
gg.toast("✅")
end

function C4()
  gg.searchNumber("-4", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C5()
  gg.searchNumber("-5", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C6()
  gg.searchNumber("-6", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end
function C7()
  gg.searchNumber("-7", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C8()
  gg.searchNumber("-8", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C9()
  gg.searchNumber("-9", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C10()
  gg.searchNumber("-10", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C11()
  gg.searchNumber("-11", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C12()
  gg.searchNumber("-12", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C13()
  gg.searchNumber("-13", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C14()
  gg.searchNumber("-14", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C15()
  gg.searchNumber("-15", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C16()
  gg.searchNumber("-16", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C17()
  gg.searchNumber("-17", gg.TYPE_FLOAT)
  gg.getResults(1000)
   gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C18()
  gg.searchNumber("-18", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function C19()
  gg.searchNumber("-19", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end


function F4()
Menu = gg.choice({"2.1","1.2","2.3","1.4","2.5","2.6","2.7","2.8","2.9","2.10","2.11","2.12","2.13","2.14","2.15","2.16","2.17","2.18","2.19","Back"}, nil,"2.1 - 2.19")

if Menu == 1 then D1() end
if Menu == 2 then D2() end
if Menu == 3 then D3() end
if Menu == 4 then D4() end
if Menu == 5 then D5() end
if Menu == 6 then D6() end
if Menu == 7 then D7() end
if Menu == 8 then D8() end
if Menu == 9 then D9() end
if Menu == 10 then D10() end
if Menu == 11 then D11() end
if Menu == 12 then D12() end
if Menu == 13 then D13() end
if Menu == 14 then D14() end
if Menu == 15 then D15() end
if Menu == 16 then D16() end
if Menu == 17 then D17() end
if Menu == 18 then D18() end
if Menu == 19 then D19() end
if Menu == 20 then Main()end
end

function D1()
  gg.searchNumber("2.1", gg.TYPE_FLOAT)
  gg.getResults(1000)
end

function D2()
  gg.searchNumber("2.2", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D3()
  gg.searchNumber("2.3", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
gg.toast("✅")
end

function D4()
  gg.searchNumber("2.4", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D5()
  gg.searchNumber("2.5", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D6()
  gg.searchNumber("2.6", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end
function D7()
  gg.searchNumber("2.7", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D8()
  gg.searchNumber("2.8", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D9()
  gg.searchNumber("2.9", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D10()
  gg.searchNumber("2.10", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D11()
  gg.searchNumber("2.11", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D12()
  gg.searchNumber("2.12", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D13()
  gg.searchNumber("2.13", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D14()
  gg.searchNumber("2.14", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D15()
  gg.searchNumber("2.15", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D16()
  gg.searchNumber("2.16", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D17()
  gg.searchNumber("2.17", gg.TYPE_FLOAT)
  gg.getResults(1000)
   gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D18()
  gg.searchNumber("2.18", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function D19()
  gg.searchNumber("2.19", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end


function F5()
Menu = gg.choice({"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","Back"}, nil,"1 - 19")

if Menu == 1 then E1() end
if Menu == 2 then E2() end
if Menu == 3 then E3() end
if Menu == 4 then E4() end
if Menu == 5 then E5() end
if Menu == 6 then E6() end
if Menu == 7 then E7() end
if Menu == 8 then E8() end
if Menu == 9 then E9() end
if Menu == 10 then E10() end
if Menu == 11 then E11() end
if Menu == 12 then E12() end
if Menu == 13 then E13() end
if Menu == 14 then E14() end
if Menu == 15 then E15() end
if Menu == 16 then E16() end
if Menu == 17 then E17() end
if Menu == 18 then E18() end
if Menu == 19 then E19() end
if Menu == 20 then Main()end
end

function E1()
  gg.searchNumber("1", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E2()
  gg.searchNumber("2", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E3()
  gg.searchNumber("3", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
gg.toast("✅")
end

function E4()
  gg.searchNumber("4", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E5()
  gg.searchNumber("5", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E6()
  gg.searchNumber("6", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end
function E7()
  gg.searchNumber("7", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E8()
  gg.searchNumber("8", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E9()
  gg.searchNumber("9", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E10()
  gg.searchNumber("10", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E11()
  gg.searchNumber("11", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E12()
  gg.searchNumber("12", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E13()
  gg.searchNumber("13", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E14()
  gg.searchNumber("14", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E15()
  gg.searchNumber("15", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E16()
  gg.searchNumber("16", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E17()
  gg.searchNumber("17", gg.TYPE_FLOAT)
  gg.getResults(1000)
   gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E18()
  gg.searchNumber("18", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function E19()
  gg.searchNumber("19", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("1000", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end


function F6()
Menu = gg.choice({"Region Anoymous","Region Video","Region C_BSS","Region_Code_App","Region C_Alloc","Back"}, nil,"GG Regions")

if Menu == 1 then G1() end
if Menu == 2 then G2() end
if Menu == 3 then G3() end
if Menu == 4 then G4() end
if Menu == 5 then G5() end
if Menu == 6 then Main()end
end

function G1()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.toast("✅")
end

function G2()
gg.setRanges(gg.REGION_VIDEO)
gg.toast("✅")
end

function G3()
gg.setRanges(gg.REGION_C_BSS)
gg.toast("✅")
end

function G4()
gg.setRanges(gg.REGION_CODE_APP)
gg.toast("✅")
end

function G5()
 gg.setRanges(gg.REGION_C_ALLOC)
gg.toast("✅")
end


function F7()
Menu = gg.choice({"Wall Climb Value (Works On Alot Of Games)","Transparent Walls Value (Works On Alot Of Games)","Wall Shoot Value (Works On Some Games)","Back"}, nil,"Special Values")

if Menu == 1 then H1() end
if Menu == 2 then H2() end
if Menu == 3 then H3() end
if Menu == 4 then Main()end
end

function H1()
  gg.searchNumber("0.30", gg.TYPE_FLOAT)
  gg.getResults(1000)
  gg.editAll("30", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("✅")
end

function H2()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.searchNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0.1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0.99900000149", gg.TYPE_FLOAT)
gg.refineNumber("99999999999999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.toast("✅")
end

function H3()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber(9.9999997e-10, gg.TYPE_FLOAT)
gg.getResults(4)
gg.editAll(900.355145, gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("✅")
end

function Exit()
print("Value Finder Script By Luckyday999 - gameguardian.net")
gg.toast("Script by luckyday999 - gameguardian.net")
os.exit()
end

-------------END OF FUNCTIONS LIST OF MAIN MENU--------------------

cs = 'Oof'
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()
end
end
