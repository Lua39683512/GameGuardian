

    function Main0()
    SN = gg.choice({
    "测试",
    "退出"
     }, nil, "本脚本不接受log测试")
     if SN==1 then
	 gg.clearResults()
	 gg.setRanges(-1032320)
	 gg.searchNumber("66666", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	 gg.getResults(1)
	 gg.editAll("66666", gg.TYPE_DWORD)
	 gg.toast("修改成功")
	 gg.clearResults()
end
   end
      Main0()
      if SN==2 then
     os.exit()
end
Main0()