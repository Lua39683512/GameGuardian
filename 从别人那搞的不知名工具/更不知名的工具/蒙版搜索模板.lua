
as="E??E0"--地址
ad="0xFFFFFFFF"--蒙版

function Main0()
SN = gg.choice({
	 "Tea编写",
	 "退出脚本",
}, nil, "蒙版搜索")
if SN==1 then
	 a()
end
if SN==2 then
	 exit()
end
FX1=0
end

function a()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber('1001D;1.2', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1.2" ,gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
--[[
gg.searchAddress('A20',0xFFFFFFFF)
gg.searchAddress('B20',0xFF0,gg.TYPE_DWORD,gg.SIGN_NOT_EQUAL)
gg.searchAddress('0B?0',0xFFF,gg.TYPE_FLOAT)
gg.searchAddress('??F??',0xBA0,gg.TYPE_BYTE,gg.SIGN_NOT_EQUAL,0x9000,0xA09000)
]]--
gg.searchAddress(as, ad,gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)--地址搜索
gg.getResults(1)--选择数据
v = gg.prompt({i='修改数值'}, {i='0'})
gg.editAll(v['i'], 16)--修改
gg.clearResults()
end




function exit()
	 os.exit()
end

while true do
if gg.isVisible(true) then
    FX1 = nil
    gg.setVisible(false)
  end
  if FX1 == nil then
    Main0()
  end
end