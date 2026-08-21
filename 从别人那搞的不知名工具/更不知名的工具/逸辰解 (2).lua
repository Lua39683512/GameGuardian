

print("🔰Mã Hoá -ENCRYPT- V2.3 By YTB Salem CFM")
function HOME()
  MENU = _G["gg"]["choice"]({
    "❶ Menu Trận",
    "❷ Mod Vũ Khí",
    "❸ Mod Nhân Vật",
    "❹ Không Giật Súng",
    "❺ Mã Hack Khác",
    "┌─❀*̥˚───◌───❀*̥˚─┐❒          Ｔｈｏáｔ          ❒└─❀*̥˚───◌───❀*̥˚─┘"
  }, nil, "╔❏ＭＥＮＵ ＣＬＡＮ ＰＭＴ³ ♥ １７０９９２９４ ╚❏ＰＭＴ³丶" .. Name)
  if MENU == nil then
    HOMEDM = -1
  else
    if MENU == 1 then
      MENU1()
    end
    if MENU == 2 then
      MENU2()
    end
    if MENU == 3 then
      MENU3()
    end
    if MENU == 4 then
      MENU4()
    end
    if MENU == 5 then
      MENU5()
    end
    if MENU == 6 then
      EXIT()
    end
    HOMEDM = -1
  end
end

function MENU1()
  R = _G["gg"]["multiChoice"]({
    "📂 ON PV",
    "📂 OFF PV",
    "📂 Khổng Lồ",
    "📂 Wall Nhện",
    "📂 Wall Người ",
    "📂 Data Phạm Vi",
    "📂 Wall Dame Máu",
    "📂 Wall Xiaomi BAD",
    "📂 Khổng Lồ Đội Trận"
  }, nil, "ＭＥＮＵ ＣＬＡＮ ＰＭＴ³ ♥ １７０９９２９４")
  if R == nil then
    HOME()
  else
    if R[1] == true then
      R1()
    end
    if R[2] == true then
      R2()
    end
    if R[3] == true then
      R3()
    end
    if R[4] == true then
      R4()
    end
    if R[5] == true then
      R5()
    end
    if R[6] == true then
      R6()
    end
    if R[7] == true then
      R7()
    end
    if R[8] == true then
      R8()
    end
    if R[9] == true then
      R9()
    end
    xy = _G["gg"]["EXT_CACHE_DIR"] .. "/" .. _G["gg"]["getFile"]():match("[^/]+$") .. ".1cfgg"
    _G["gg"]["saveVariable"](cfgu1, xy)
    xx = _G["gg"]["EXT_CACHE_DIR"] .. "/" .. _G["gg"]["getFile"]():match("[^/]+$") .. ".2cfgg"
    _G["gg"]["saveVariable"](cfgu2, xx)
    while true do
      if _G["gg"]["isVisible"](true) then
        XGCK = 1
        _G["gg"]["setVisible"](false)
        MENU1()
        XGCK = -1
      end
    end
  end
end

function R1()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/pv.txt"))
  t = _G["gg"]["getListItems"]()
  _G["gg"]["loadResults"](t)
  _G["gg"]["getResults"](3)
  _G["gg"]["editAll"]("'" .. ZZ .. "'", 16)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/pv.txt")
  _G["gg"]["removeListItems"](t)
  _G["gg"]["clearResults"]()
end

function R2()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/pv.txt"))
  t = _G["gg"]["getListItems"]()
  t[1].value = 0.5
  t[2].value = 1
  t[3].value = 1.0E-5
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/pv.txt")
  _G["gg"]["removeListItems"](t)
end

function R3()
  _G["gg"]["setRanges"](_G["gg"]["REGION_C_ALLOC"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("0.938;4726824D;1::237", 16)
  if _G["gg"]["getResultCount"]() == 0 then
    _G["gg"]["alert"]("╔❏ Không thể bật khổng lồ C4 🚨 ╚❏ Vui lòng không chạy mã quá sớm.")
    HOME()
  else
    _G["gg"]["refineNumber"]("1;1;1::9", 16)
    _G["gg"]["getResults"](6)
    _G["gg"]["editAll"]("" .. BigMan .. "", 16)
  end
end

function R4()
  _G["gg"]["setRanges"](_G["gg"]["REGION_C_ALLOC"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1044694213;2048;1000F::300", 4)
  if _G["gg"]["getResultCount"]() == 0 then
    _G["gg"]["alert"]("╔❏ Không thể bật nhìn xuyên tường 🚨╚❏ Vui lòng không chạy mã quá sớm.")
    HOME()
  else
    _G["gg"]["refineNumber"]("2048;1000F", 4)
    _G["gg"]["getResults"](10)
    _G["gg"]["editAll"]("46.55251693726", 16)
    _G["gg"]["editAll"]("108805", 4)
    _G["gg"]["clearResults"]()
    _G["gg"]["clearResults"]()
    _G["gg"]["searchNumber"]("-3147809", 4)
    _G["gg"]["getResults"](10)
    _G["gg"]["editAll"]("-3147800", 4)
    _G["gg"]["clearResults"]()
  end
end

function R5()
  _G["gg"]["setRanges"](_G["gg"]["REGION_C_ALLOC"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1044694213;2048::100", 4)
  _G["gg"]["refineNumber"]("2048", 4)
  _G["gg"]["getResults"](50)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("108800", 4))
  _G["gg"]["clearResults"]()
end

function R6()
  pv = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](pv)
  _G["gg"]["setRanges"](_G["gg"]["REGION_CODE_APP"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("0.00001;167772251D::29", 16)
  _G["gg"]["refineNumber"]("0.00001", 16)
  pv = _G["gg"]["getResults"](1)
  _G["gg"]["setValues"](pv)
  _G["gg"]["addListItems"](pv)
  pv = _G["gg"]["getListItems"]()
  _G["gg"]["clearResults"]()
  _G["gg"]["setRanges"](_G["gg"]["REGION_C_ALLOC"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("0.5;1;953267991D::17", 16)
  if _G["gg"]["getResultCount"]() == 0 then
    _G["gg"]["alert"]("🚨 Không tìm thấy dữ liệu game ! ➡ Vui lòng không chạy mã nhiều lần.")
    HOME()
  else
    _G["gg"]["refineNumber"]("0.5;1", 16)
    pv = _G["gg"]["getResults"](2)
    _G["gg"]["setValues"](pv)
    _G["gg"]["addListItems"](pv)
    print("SaveList:", _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/pv.txt"))
    pv = _G["gg"]["getListItems"]()
    _G["gg"]["removeListItems"](pv)
    _G["gg"]["clearResults"]()
  end
end

function R7()
  _G["gg"]["setRanges"](_G["gg"]["REGION_C_ALLOC"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1120D;0.3::9", 16)
  _G["gg"]["refineNumber"]("0.3", 16)
  _G["gg"]["getResults"](3)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("500", 16))
  _G["gg"]["clearResults"]()
end

function R8()
  _G["gg"]["setRanges"](1179648)
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("528430", 4)
  _G["gg"]["getResults"](50)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("1", 4))
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("528394", 4)
  _G["gg"]["getResults"](50)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("0", 4))
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1669627915", 4)
  _G["gg"]["getResults"](50)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("1669627916", 4))
  _G["gg"]["clearResults"]()
end

function R9()
  _G["gg"]["alert"]("╔❏ Chỉ Áp Dụng Cho Nhện Xanh ╠❏ Chỉ Chạy Mã Khi Đã Đủ Người╚❏ Chạy Mã Xong Tắt Mạng Rồi Mở Lại")
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1;120000085D::13 ", 16)
  _G["gg"]["refineNumber"]("1;1;1::9", 16)
  _G["gg"]["getResults"](50)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("'" .. KLD .. "'", 16))
  _G["gg"]["clearResults"]()
end

function MENU2()
  A = _G["gg"]["multiChoice"]({
    "📂 AA12 Xmas",
    "📂 Jack Gold",
    "📂 Độ Súng",
    "📂 Lựu Đạn",
    "📂 Cận Chiến",
    "📂 Chém Nhanh",
    "📂 Chế Độ Zoombie"
  }, nil, "ＭＥＮＵ  ＭＯＤ  ＶŨ  ＫＨÍ")
  if A == nil then
    HOME()
  else
    if A[1] == true then
      MOD1()
    end
    if A[2] == true then
      MOD2()
    end
    if A[3] == true then
      MOD3()
    end
    if A[4] == true then
      MOD4()
    end
    if A[5] == true then
      MOD5()
    end
    if A[6] == true then
      MOD6()
    end
    if A[6] == true then
      MOD7()
    end
  end
  HOMEDM = -1
end

function MOD1()
  B = _G["gg"]["multiChoice"]({
    "🔴 Load Hoả Lực",
    "🔄 AK47",
    "🔄 AK47 SS",
    "🔄 AK47 Gilt",
    "🔄 AK47 VIP",
    "🔄 AK47 SSS",
    "🔄 AK47 Glory",
    "🔄 AK47 Peony",
    "🔄 AK47 A Gold",
    "🔄 AK47 Infernor",
    "🔄 AK47 Phoenix",
    "🔄 AK47 Jasmine",
    "🔄 AK47 Mad Men",
    "🔄 AK47 Born Beast",
    "🔄 AK47 Noble Gold",
    "🔄 AK47 Transformer",
    "🔄 AK47 Chaos Dragon",
    "🔄 AK47 Born Beast LV2"
  }, nil, "MENU MOD SÚNG RA AA12-XmasTrang bị lựu đạn khói smoke")
  if B == nil then
    HOME()
  else
    if B[1] == true then
      B1()
    end
    if B[2] == true then
      B2()
    end
    if B[3] == true then
      B3()
    end
    if B[4] == true then
      B4()
    end
    if B[5] == true then
      B5()
    end
    if B[6] == true then
      B6()
    end
    if B[7] == true then
      B7()
    end
    if B[8] == true then
      B8()
    end
    if B[9] == true then
      B9()
    end
    if B[10] == true then
      B10()
    end
    if B[11] == true then
      B11()
    end
    if B[12] == true then
      B12()
    end
    if B[13] == true then
      B13()
    end
    if B[14] == true then
      B14()
    end
    if B[15] == true then
      B15()
    end
    if B[16] == true then
      B16()
    end
    if B[17] == true then
      B17()
    end
    if B[18] == true then
      B18()
    end
  end
  HOMEDM = -1
end

function B1()
  x = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](x)
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("8D;0.26;15D;3;1;1.5;1;2.4;5.5;200000685D;300000001D::517", 16)
  x = _G["gg"]["getResults"](11)
  x[1].value = 300
  x[2].value = 0.1
  x[3].value = 450
  x[4].value = 2
  x[5].value = 1.9
  x[6].value = 0.1
  x[7].value = 20
  x[8].value = 3.8
  x[9].value = 0
  x[10].value = 200000781
  x[11].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["addListItems"](x)
  _G["gg"]["clearResults"]()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("10505004;195::9", 4)
  _G["gg"]["refineNumber"]("10505004", 4)
  x = _G["gg"]["getResults"](5)
  _G["gg"]["setValues"](x)
  _G["gg"]["addListItems"](x)
  _G["gg"]["clearResults"]()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("10803001;4;5::9", 4)
  x = _G["gg"]["getResults"](5)
  _G["gg"]["setValues"](x)
  _G["gg"]["addListItems"](x)
  print("SaveList:", _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  x = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](x)
  _G["gg"]["clearResults"]()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("10101001~10101047;1;4~284;5.60519386e-45F~6.86636248e-44F::13", 4)
  _G["gg"]["refineNumber"]("4~284", 4)
  x = _G["gg"]["getResults"](50)
  _G["gg"]["setValues"](x)
  _G["gg"]["addListItems"](x)
  print("SaveList:", _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  x = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](x)
  _G["gg"]["clearResults"]()
end

function B2()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 2.5
  t[12].value = 10505004
  t[13].value = 10101001
  t[14].value = 1
  t[15].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 151
  t[20].value = 160
  t[22].value = 168
  t[23].value = 224
  t[28].value = 246
  t[30].value = 236
  t[31].value = 284
  t[33].value = 23
  t[34].value = 50
  t[35].value = 48
  t[36].value = 22
  t[38].value = 25
  t[40].value = 195
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B3()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.7
  t[12].value = 10101003
  t[13].value = 10101003
  t[14].value = 1
  t[15].value = 22
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 151
  t[20].value = 160
  t[22].value = 168
  t[23].value = 224
  t[28].value = 246
  t[30].value = 236
  t[31].value = 284
  t[33].value = 23
  t[34].value = 50
  t[35].value = 48
  t[36].value = 195
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B4()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.5
  t[12].value = 10101034
  t[13].value = 10101034
  t[14].value = 1
  t[15].value = 224
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 151
  t[20].value = 160
  t[22].value = 168
  t[23].value = 195
  t[28].value = 246
  t[30].value = 236
  t[31].value = 284
  t[33].value = 23
  t[34].value = 50
  t[35].value = 48
  t[36].value = 22
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B5()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.7
  t[12].value = 10101012
  t[13].value = 10101012
  t[14].value = 1
  t[15].value = 53
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 195
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 151
  t[20].value = 160
  t[22].value = 168
  t[23].value = 224
  t[28].value = 246
  t[30].value = 236
  t[31].value = 284
  t[33].value = 23
  t[34].value = 50
  t[35].value = 48
  t[36].value = 22
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B6()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 2
  t[12].value = 10101036
  t[13].value = 10101036
  t[14].value = 1
  t[15].value = 236
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 151
  t[20].value = 160
  t[22].value = 168
  t[23].value = 224
  t[28].value = 246
  t[30].value = 195
  t[31].value = 284
  t[33].value = 23
  t[34].value = 50
  t[35].value = 48
  t[36].value = 22
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B7()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 2
  t[12].value = 10101025
  t[13].value = 10101025
  t[14].value = 1
  t[15].value = 160
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 151
  t[20].value = 195
  t[22].value = 168
  t[23].value = 224
  t[28].value = 246
  t[30].value = 236
  t[31].value = 284
  t[33].value = 23
  t[34].value = 50
  t[35].value = 48
  t[36].value = 22
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B8()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.8
  t[12].value = 10101026
  t[13].value = 10101026
  t[14].value = 1
  t[15].value = 168
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 151
  t[20].value = 160
  t[22].value = 195
  t[23].value = 224
  t[28].value = 246
  t[30].value = 236
  t[31].value = 284
  t[33].value = 23
  t[34].value = 50
  t[35].value = 48
  t[36].value = 22
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B9()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 2
  t[12].value = 10101011
  t[13].value = 10101011
  t[14].value = 1
  t[15].value = 50
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 151
  t[20].value = 160
  t[22].value = 168
  t[23].value = 224
  t[28].value = 246
  t[30].value = 236
  t[31].value = 284
  t[33].value = 23
  t[34].value = 195
  t[35].value = 48
  t[36].value = 22
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B10()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.55
  t[12].value = 10101006
  t[13].value = 10101006
  t[14].value = 1
  t[15].value = 25
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 151
  t[20].value = 160
  t[22].value = 168
  t[23].value = 224
  t[28].value = 246
  t[30].value = 236
  t[31].value = 284
  t[33].value = 23
  t[34].value = 50
  t[35].value = 48
  t[36].value = 22
  t[38].value = 195
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B11()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 2
  t[12].value = 10101047
  t[13].value = 10101047
  t[14].value = 1
  t[15].value = 284
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 151
  t[20].value = 160
  t[22].value = 168
  t[23].value = 224
  t[28].value = 246
  t[30].value = 236
  t[31].value = 195
  t[33].value = 23
  t[34].value = 50
  t[35].value = 48
  t[36].value = 22
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B12()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.7
  t[12].value = 10101013
  t[13].value = 10101013
  t[14].value = 1
  t[15].value = 65
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 195
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 151
  t[20].value = 160
  t[22].value = 168
  t[23].value = 224
  t[28].value = 246
  t[30].value = 236
  t[31].value = 284
  t[33].value = 23
  t[34].value = 50
  t[35].value = 48
  t[36].value = 22
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B13()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.8
  t[12].value = 10101038
  t[13].value = 10101038
  t[14].value = 1
  t[15].value = 246
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 151
  t[20].value = 160
  t[22].value = 168
  t[23].value = 224
  t[28].value = 195
  t[30].value = 236
  t[31].value = 284
  t[33].value = 23
  t[34].value = 50
  t[35].value = 48
  t[36].value = 22
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B14()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.6
  t[12].value = 10101024
  t[13].value = 10101024
  t[14].value = 1
  t[15].value = 151
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 195
  t[20].value = 160
  t[22].value = 168
  t[23].value = 224
  t[28].value = 246
  t[30].value = 236
  t[31].value = 284
  t[33].value = 23
  t[34].value = 50
  t[35].value = 48
  t[36].value = 22
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B15()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.8
  t[12].value = 10101008
  t[13].value = 10101008
  t[14].value = 1
  t[15].value = 48
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 151
  t[20].value = 160
  t[22].value = 168
  t[23].value = 224
  t[28].value = 246
  t[30].value = 236
  t[31].value = 284
  t[33].value = 23
  t[34].value = 50
  t[35].value = 195
  t[36].value = 22
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B16()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.66
  t[12].value = 10101005
  t[13].value = 10101005
  t[14].value = 1
  t[15].value = 24
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 195
  t[18].value = 170
  t[19].value = 151
  t[20].value = 160
  t[22].value = 168
  t[23].value = 224
  t[28].value = 246
  t[30].value = 236
  t[31].value = 284
  t[33].value = 23
  t[34].value = 50
  t[35].value = 48
  t[36].value = 22
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B17()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.7
  t[12].value = 10101004
  t[13].value = 10101004
  t[14].value = 1
  t[15].value = 23
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 170
  t[19].value = 151
  t[20].value = 160
  t[22].value = 168
  t[23].value = 224
  t[28].value = 246
  t[30].value = 236
  t[31].value = 284
  t[33].value = 195
  t[34].value = 50
  t[35].value = 48
  t[36].value = 22
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function B18()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.6
  t[12].value = 10101028
  t[13].value = 10101028
  t[14].value = 1
  t[15].value = 170
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/xmas.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt"))
  t = _G["gg"]["getListItems"]()
  t[10].value = 65
  t[11].value = 53
  t[12].value = 144
  t[13].value = 24
  t[18].value = 195
  t[19].value = 151
  t[20].value = 160
  t[22].value = 168
  t[23].value = 224
  t[28].value = 246
  t[30].value = 236
  t[31].value = 284
  t[33].value = 23
  t[34].value = 50
  t[35].value = 48
  t[36].value = 22
  t[38].value = 25
  t[40].value = 4
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/list.txt")
  _G["gg"]["removeListItems"](t)
end

function MOD2()
  Q = _G["gg"]["multiChoice"]({
    "🔴 Load Hoả Lực",
    "🔁 M4A1 K",
    "🔁 M4A1 SS",
    "🔁 M4A1 Gilt",
    "🔁 M4A1 SSS",
    "🔁 M4A1 Glory",
    "🔁 M4A1 Angel",
    "🔁 M4A1 Beast",
    "🔁 M4A1 Peony",
    "🔁 M4A1 Ranger",
    "🔁 M4A1 Fantasy",
    "🔁 M4A1 Predator",
    "🔁 M4A1 Red Devil",
    "🔁 M4A1 S Jewelry",
    "🔁 M4A1 Born Beast",
    "🔁 M4A1 XM Winner",
    "🔁 M4A1 Transformer",
    "🔁 M4A1 Ultimate Gold",
    "🔁 M4A1 Royal Dragon",
    "🔁 M4A1 Aruze Jasmine"
  }, nil, "MENU MOD SÚNG RA JACK GOLDTrang bị lựu đạn nổ nade ở balo")
  if Q == nil then
    HOME()
  else
    if Q[1] == true then
      JACK1()
    end
    if Q[2] == true then
      JACK2()
    end
    if Q[3] == true then
      JACK3()
    end
    if Q[4] == true then
      JACK4()
    end
    if Q[5] == true then
      JACK5()
    end
    if Q[6] == true then
      JACK6()
    end
    if Q[7] == true then
      JACK7()
    end
    if Q[8] == true then
      JACK8()
    end
    if Q[9] == true then
      JACK9()
    end
    if Q[10] == true then
      JACK10()
    end
    if Q[11] == true then
      JACK11()
    end
    if Q[12] == true then
      JACK12()
    end
    if Q[13] == true then
      JACK13()
    end
    if Q[14] == true then
      JACK14()
    end
    if Q[15] == true then
      JACK15()
    end
    if Q[16] == true then
      JACK16()
    end
    if Q[17] == true then
      JACK17()
    end
    if Q[18] == true then
      JACK18()
    end
    if Q[19] == true then
      JACK19()
    end
    if Q[20] == true then
      JACK20()
    end
  end
  HOMEDM = -1
end

function JACK1()
  x = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](x)
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("6;0.33F;27;2.9F;1F;1.15F;1F;2.4F;4.5F;200000147;300000001::517", 4)
  x = _G["gg"]["getResults"](11)
  x[1].value = 300
  x[2].value = 0.1
  x[3].value = 450
  x[4].value = 2.1
  x[5].value = 1.9
  x[6].value = 0.1
  x[7].value = 20
  x[8].value = 3.8
  x[9].value = 0
  x[10].value = 200000781
  x[11].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["addListItems"](x)
  _G["gg"]["clearResults"]()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("10502002;45::9", 4)
  _G["gg"]["refineNumber"]("10502002", 4)
  x = _G["gg"]["getResults"](5)
  _G["gg"]["setValues"](x)
  _G["gg"]["addListItems"](x)
  _G["gg"]["clearResults"]()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("10801001;4;1::9", 4)
  x = _G["gg"]["getResults"](5)
  _G["gg"]["setValues"](x)
  _G["gg"]["addListItems"](x)
  print("SaveList:", _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  x = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](x)
  _G["gg"]["clearResults"]()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("10102003~10102060;1;27~297;5.60519386e-45F~8.96831017e-44F::13", 4)
  _G["gg"]["refineNumber"]("27~297", 4)
  x = _G["gg"]["getResults"](50)
  _G["gg"]["setValues"](x)
  _G["gg"]["addListItems"](x)
  print("SaveList:", _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  x = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](x)
  _G["gg"]["clearResults"]()
end

function JACK2()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.5
  t[12].value = 10102039
  t[13].value = 10102039
  t[14].value = 1
  t[15].value = 232
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 45
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK3()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.6
  t[12].value = 10102003
  t[13].value = 10102003
  t[14].value = 1
  t[15].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 45
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK4()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.45
  t[12].value = 10102038
  t[13].value = 10102038
  t[14].value = 1
  t[15].value = 223
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 45
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK5()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.6
  t[12].value = 10102042
  t[13].value = 10102042
  t[14].value = 1
  t[15].value = 237
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 45
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK6()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.73
  t[12].value = 10102026
  t[13].value = 10102026
  t[14].value = 1
  t[15].value = 159
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 45
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK7()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.45
  t[12].value = 10102036
  t[13].value = 10102036
  t[14].value = 1
  t[15].value = 206
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 45
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK8()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.45
  t[12].value = 10102011
  t[13].value = 10102011
  t[14].value = 1
  t[15].value = 54
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 45
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK9()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.73
  t[12].value = 10102028
  t[13].value = 10102028
  t[14].value = 1
  t[15].value = 167
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 45
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK10()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.45
  t[12].value = 10102041
  t[13].value = 10102041
  t[14].value = 1
  t[15].value = 231
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 45
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK11()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.86
  t[12].value = 10102031
  t[13].value = 10102031
  t[14].value = 1
  t[15].value = 196
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 45
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK12()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.5
  t[12].value = 10102025
  t[13].value = 10102025
  t[14].value = 1
  t[15].value = 150
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 45
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK13()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.86
  t[12].value = 10102014
  t[13].value = 10102014
  t[14].value = 1
  t[15].value = 68
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 45
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK14()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.5
  t[12].value = 10102032
  t[13].value = 10102032
  t[14].value = 1
  t[15].value = 193
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 45
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK15()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.45
  t[12].value = 10102006
  t[13].value = 10102006
  t[14].value = 1
  t[15].value = 30
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 45
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK16()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.7
  t[12].value = 10102050
  t[13].value = 10102050
  t[14].value = 1
  t[15].value = 257
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 45
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK17()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.45
  t[12].value = 10102005
  t[13].value = 10102005
  t[14].value = 1
  t[15].value = 29
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 45
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK18()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.86
  t[12].value = 10102008
  t[13].value = 10102008
  t[14].value = 1
  t[15].value = 43
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 45
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK19()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.73
  t[12].value = 10102004
  t[13].value = 10102004
  t[14].value = 1
  t[15].value = 28
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 143
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 45
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function JACK20()
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt"))
  t = _G["gg"]["getListItems"]()
  t[4].value = 1.73
  t[12].value = 10102023
  t[13].value = 10102023
  t[14].value = 1
  t[15].value = 143
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/jack.txt")
  _G["gg"]["removeListItems"](t)
  print("LoadList:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt"))
  t = _G["gg"]["getListItems"]()
  t[11].value = 68
  t[12].value = 150
  t[14].value = 45
  t[15].value = 54
  t[18].value = 196
  t[19].value = 159
  t[21].value = 167
  t[25].value = 223
  t[27].value = 206
  t[30].value = 193
  t[31].value = 257
  t[36].value = 237
  t[37].value = 231
  t[38].value = 232
  t[45].value = 30
  t[46].value = 28
  t[47].value = 43
  t[49].value = 29
  t[50].value = 27
  _G["gg"]["setValues"](t)
  _G["gg"]["addListItems"](t)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/5.txt")
  _G["gg"]["removeListItems"](t)
end

function MOD3()
  W = _G["gg"]["multiChoice"]({
    "📂 M4A1 K",
    "📂 M4A1 SS",
    "📂 M4A1 Gilt",
    "📂 M4A1 SSS",
    "📂 M4A1 Glory",
    "📂 M4A1 Angel",
    "📂 M4A1 Beast",
    "📂 M4A1 Peony",
    "📂 M4A1 Ranger",
    "📂 M4A1 Fantasy",
    "📂 M4A1 Predator",
    "📂 M4A1 Red Devil",
    "📂 M4A1 S Jewelry",
    "📂 M4A1 Born Beast",
    "📂 M4A1 Transformer",
    "📂 RPK Inferno Dragon",
    "📂 M4A1 Ultimate Gold",
    "📂 M4A1 Royal Dragon",
    "📂 M4A1 Aruze Jasmine"
  }, nil, "Mod Súng Để Bắn Phạm Vi")
  if W == nil then
    HOME()
  else
    if W[1] == true then
      W1()
    end
    if W[2] == true then
      W2()
    end
    if W[3] == true then
      W3()
    end
    if W[4] == true then
      W4()
    end
    if W[5] == true then
      W5()
    end
    if W[6] == true then
      W6()
    end
    if W[7] == true then
      W7()
    end
    if W[8] == true then
      W8()
    end
    if W[9] == true then
      W9()
    end
    if W[10] == true then
      W10()
    end
    if W[11] == true then
      W11()
    end
    if W[12] == true then
      W12()
    end
    if W[13] == true then
      W13()
    end
    if W[14] == true then
      W14()
    end
    if W[15] == true then
      W15()
    end
    if W[16] == true then
      W16()
    end
    if W[17] == true then
      W17()
    end
    if W[18] == true then
      W18()
    end
    if W[19] == true then
      W19()
    end
  end
  HOMEDM = -1
end

function W1()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("17380D;1.6;1.17;0.6;1.16::141", 16)
  _G["gg"]["refineNumber"]("1.6;1.17;0.6;1.16::33", 16)
  x = _G["gg"]["getResults"](8)
  x[1].value = 1.5
  x[2].value = 2
  x[3].value = 0.1
  x[4].value = 20
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W2()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.7;1.6;1.37;0.55;1.2;1.2;200000092D;300000001D::389", 16)
  x = _G["gg"]["getResults"](8)
  x[1].value = 1.6
  x[2].value = 1.5
  x[3].value = 1.9
  x[4].value = 0.1
  x[5].value = 20
  x[7].value = 200001075
  x[8].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W3()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.55;1.5;0.6;1.1;200000834D;300000001D::389", 16)
  x = _G["gg"]["getResults"](6)
  x[1].value = 1.45
  x[2].value = 1.9
  x[3].value = 0.1
  x[4].value = 20
  x[5].value = 200000707
  x[6].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W4()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.7;1.51;0.55;1.8;200000933D;300000001D::389", 16)
  x = _G["gg"]["getResults"](6)
  x[1].value = 1.6
  x[2].value = 1.9
  x[3].value = 0.1
  x[4].value = 20
  x[5].value = 200000916
  x[6].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W5()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.83;1.27;0.55;1.2;1.2;200000578D;300000274D::389", 16)
  x = _G["gg"]["getResults"](7)
  x[1].value = 1.73
  x[2].value = 1.9
  x[3].value = 0.1
  x[4].value = 20
  x[6].value = 200000916
  x[7].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W6()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.55;1.6;0.5;1.32;200000813D;300000337D::389", 16)
  x = _G["gg"]["getResults"](6)
  x[1].value = 1.45
  x[2].value = 1.9
  x[3].value = 0.1
  x[4].value = 20
  x[5].value = 200001075
  x[6].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W7()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.55F;1.6F;0.5F;2F;5D;200000392;300000176::389", 4)
  _G["gg"]["refineNumber"]("1.55F;1.6F;0.5F;2F;200000392;300000176::389", 4)
  x = _G["gg"]["getResults"](6)
  x[1].value = 1.45
  x[2].value = 1.9
  x[3].value = 0.1
  x[4].value = 20
  x[5].value = 200000916
  x[6].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W8()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.83;1.27;0.6;1.1;200000554D;300000001D::389", 16)
  x = _G["gg"]["getResults"](6)
  x[1].value = 1.73
  x[2].value = 2
  x[3].value = 0.1
  x[4].value = 20
  x[5].value = 200000916
  x[6].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W9()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.55;1;0.5;1.32;200000916D;300000163D::389", 16)
  x = _G["gg"]["getResults"](6)
  x[1].value = 1.45
  x[2].value = 2
  x[3].value = 0.1
  x[4].value = 20
  x[6].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W10()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.96;1.2;0.6;1.1;200000683D;300000001D::389", 16)
  x = _G["gg"]["getResults"](6)
  x[1].value = 1.86
  x[2].value = 1.9
  x[3].value = 0.1
  x[4].value = 20
  x[5].value = 200000100
  x[6].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W11()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.6;1;0.5;1.2;5D;200000486D;300000163D::389", 16)
  _G["gg"]["refineNumber"]("1.6;1;0.5;1.2;300000163D::389", 16)
  x = _G["gg"]["getResults"](7)
  x[1].value = 1.5
  x[2].value = 1.9
  x[3].value = 0.1
  x[4].value = 20
  x[5].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W12()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("15792D;1.96;1.2;0.6;1.1::141", 16)
  _G["gg"]["refineNumber"]("1.96;1.2;0.6;1.1::33", 16)
  x = _G["gg"]["getResults"](6)
  x[1].value = 1.86
  x[2].value = 1.5
  x[3].value = 0.1
  x[4].value = 20
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W13()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.6;1.17;0.6;1.16;200000707D;300000335D::389", 16)
  _G["gg"]["searchNumber"]("1.6;1.17;0.6;1.16;300000335D::389", 16)
  x = _G["gg"]["getResults"](6)
  x[1].value = 1.5
  x[2].value = 2
  x[3].value = 0.1
  x[4].value = 20
  x[5].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W14()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.55;1;0.5;1.46;200000130D;300000163D::389", 16)
  x = _G["gg"]["getResults"](6)
  x[1].value = 1.45
  x[2].value = 2
  x[3].value = 0.1
  x[4].value = 20
  x[5].value = 200000916
  x[6].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W15()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.55;1.6;0.5;1.32;200000100D;300000147D::389", 16)
  x = _G["gg"]["getResults"](6)
  x[1].value = 1.45
  x[2].value = 2
  x[3].value = 0.1
  x[4].value = 20
  x[5].value = 200001075
  x[6].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W16()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("2.56;1.27;0.9;1.22;200000151D;300000001D::389", 16)
  x = _G["gg"]["getResults"](6)
  x[1].value = 2.55
  x[2].value = 1.5
  x[3].value = 0.1
  x[4].value = 20
  x[5].value = 200000358
  x[6].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W17()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.96;1.2;0.6;1.1;200000104D;300000001D::389", 16)
  x = _G["gg"]["getResults"](6)
  x[1].value = 1.86
  x[2].value = 1.9
  x[3].value = 0.1
  x[4].value = 20
  x[5].value = 200000486
  x[6].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W18()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.83;1.27;0.55;1.2;1.2;200000118D;300000001D::389", 16)
  x = _G["gg"]["getResults"](7)
  x[1].value = 1.73
  x[2].value = 1.8
  x[3].value = 0.1
  x[4].value = 20
  x[6].value = 200001071
  x[7].value = 200000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function W19()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1.83;1.27;0.6;1.1;200000419D;300000001D::389", 16)
  x = _G["gg"]["getResults"](6)
  x[1].value = 1.73
  x[2].value = 1.9
  x[3].value = 0.1
  x[4].value = 20
  x[5].value = 200000100
  x[6].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function MOD4()
  C = _G["gg"]["multiChoice"]({
    "📂 Chống Khói",
    "📂 Chống Choáng",
    "📂 C4 Killer "
  }, nil, "MENU MOD LỰU ĐẠN")
  if C == nil then
    HOME()
  else
    if C[1] == true then
      C1()
    end
    if C[2] == true then
      C2()
    end
    if C[3] == true then
      C3()
    end
  end
  HOMEDM = -1
end

function C1()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1103626240", 4)
  _G["gg"]["getResults"](600)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("0", 4))
  _G["gg"]["clearResults"]()
end

function C2()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1091148186", 4)
  _G["gg"]["getResults"](100)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("0", 4))
  _G["gg"]["clearResults"]()
end

function C3()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("19352;1051260355;1::61", 4)
  _G["gg"]["getResults"](3)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("200", 4))
  _G["gg"]["clearResults"]()
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("10601001;2::9", 4)
  _G["gg"]["refineNumber"]("10601001;2;2::9", 4)
  _G["gg"]["getResults"](3)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("10805001;4;53", 4))
  _G["gg"]["clearResults"]()
end

function MOD5()
  G = _G["gg"]["multiChoice"]({
    "📂 Vuốt Rồng",
    "📂 Black Steel",
    "📂 Kukri Beast",
    "📂 Kukri Infernor",
    "📂 Butterfly Knife",
    "📂 Gạch Xây Nhà",
    "📂 Nunchaku Gold",
    "📂 Rìu Transformer",
    "📂 Shovel Born Beast",
    "📂 Knife Ultimate Gold",
    "📂 Bladed Knuckles Infernor"
  }, nil, "MENU MOD CẬN CHIẾN")
  if G == nil then
    HOME()
  else
    if G[1] == true then
      G1()
    end
    if G[2] == true then
      G2()
    end
    if G[3] == true then
      G3()
    end
    if G[4] == true then
      G4()
    end
    if G[5] == true then
      G5()
    end
    if G[6] == true then
      G6()
    end
    if G[7] == true then
      G7()
    end
    if G[8] == true then
      G8()
    end
    if G[9] == true then
      G9()
    end
    if G[10] == true then
      G10()
    end
    if G[11] == true then
      G11()
    end
  end
  HOMEDM = -1
end

function G1()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("200000060;200005061::17", 4)
  _G["gg"]["refineNumber"]("200000060", 4)
  _G["gg"]["getResults"](5)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("200000469", 4))
  _G["gg"]["clearResults"]()
end

function G2()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("200000060;200005061::17", 4)
  _G["gg"]["refineNumber"]("200000060", 4)
  _G["gg"]["getResults"](5)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("200001147", 4))
  _G["gg"]["clearResults"]()
end

function G3()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("200000060;200005061::17", 4)
  _G["gg"]["refineNumber"]("200000060", 4)
  _G["gg"]["getResults"](5)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("200000132", 4))
  _G["gg"]["clearResults"]()
end

function G4()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("200000060;200005061::17", 4)
  _G["gg"]["refineNumber"]("200000060", 4)
  _G["gg"]["getResults"](5)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("200000701", 4))
  _G["gg"]["clearResults"]()
end

function G5()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("200000060;200005061::17", 4)
  _G["gg"]["refineNumber"]("200000060", 4)
  _G["gg"]["getResults"](5)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("200001007", 4))
  _G["gg"]["clearResults"]()
end

function G6()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("200000060;200005061::17", 4)
  _G["gg"]["refineNumber"]("200000060", 4)
  _G["gg"]["getResults"](5)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("200001141", 4))
  _G["gg"]["clearResults"]()
end

function G7()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("200000060;200005061::17", 4)
  _G["gg"]["refineNumber"]("200000060", 4)
  _G["gg"]["getResults"](5)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("2000001051", 4))
  _G["gg"]["clearResults"]()
end

function G8()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("200000060;200005061::17", 4)
  _G["gg"]["refineNumber"]("200000060", 4)
  _G["gg"]["getResults"](5)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("200000846", 4))
  _G["gg"]["clearResults"]()
end

function G9()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("200000060;200005061::17", 4)
  _G["gg"]["refineNumber"]("200000060", 4)
  _G["gg"]["getResults"](5)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("200000914", 4))
  _G["gg"]["clearResults"]()
end

function G10()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("200000060;200005061::17", 4)
  _G["gg"]["refineNumber"]("200000060", 4)
  _G["gg"]["getResults"](5)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("200000895", 4))
  _G["gg"]["clearResults"]()
end

function G11()
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("200000060;200005061::17", 4)
  _G["gg"]["refineNumber"]("200000060", 4)
  _G["gg"]["getResults"](5)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("200001013", 4))
  _G["gg"]["clearResults"]()
end

function MOD6()
  CN = _G["gg"]["multiChoice"]({
    "🔴 LOAD DATA",
    "🔁 CHẾ ĐỘ PVP",
    "🔁 CHẾ ĐỘ PVE"
  }, nil, "❖︵Chém Nhanh & Chém Xa︵❖")
  if CN == nil then
    HOME()
  else
    if CN[1] == true then
      CNDATA()
    end
    if CN[2] == true then
      PVP()
    end
    if CN[3] == true then
      PVE()
    end
    HOMEDM = -1
  end
end

function CNDATA()
  G = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](G)
  _G["gg"]["clearResults"]()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("13852D~20118D;0.467F~1.2F;0D;1F~1.67F;0D;0D;0D;0D~1D;140D~150D;1F~1.24F;1103626240D~1112014848D;0.033F~0.6F::189", 4, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  XC = _G["gg"]["getResults"](5000)
  _G["gg"]["addListItems"](XC)
  _G["gg"]["searchNumber"]("13852D~20118D;0.467F~1.2F::33", 4, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["getResults"](5000)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("0.00005", 16))
  _G["gg"]["clearResults"]()
  XD = _G["gg"]["getListItems"]()
  _G["gg"]["loadResults"](XD)
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("0.00005F;1F~1.24F;1103626240D~1112014848D::145", 4, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["searchNumber"]("1F~1.24F;1103626240D~1112014848D::5", 4, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["getResults"](20000)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("11026", 16))
  _G["gg"]["clearResults"]()
  _G["gg"]["loadResults"](XD)
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("11026F;0.033~0.6F::13", 16, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["searchNumber"]("0.033~0.6", 16, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["getResults"](500)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("0.000002", 16))
  _G["gg"]["clearResults"]()
  _G["gg"]["loadResults"](XD)
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["removeListItems"](XD)
  _G["gg"]["searchNumber"]("11026", 16, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  XE = _G["gg"]["getResults"](5000)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("1.1", 16))
  _G["gg"]["addListItems"](XE)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/ChemNhanh1.txt")
  _G["gg"]["removeListItems"](XE)
  _G["gg"]["clearResults"]()
  _G["gg"]["clearResults"]()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("0.6F;1065353216D;145D;180D;1045220557Q::21", 4, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["getResults"](50)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("897988541", 32))
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("0.00005", 16))
  _G["gg"]["clearResults"]()
  _G["gg"]["clearResults"]()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("0D;0.6F;1065353216D;0D;1065353216D::17", 16, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["getResults"](50)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("0.00005", 16))
  _G["gg"]["clearResults"]()
  _G["gg"]["clearResults"]()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("13852D~20118D;1065353216D~1077936128D;90D~4000D;1F~1.5F::200", 4, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["searchNumber"]("1065353216D~1077936128D;90D~4000D;1F~1.5F::9", 4, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  P = _G["gg"]["getResults"](500, nil, nil, nil, "1,0", "1,5")
  _G["gg"]["addListItems"](P)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/ChemNhanh2.txt")
  P = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](P)
  _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/ChemNhanh2.txt", 2)
  t = _G["gg"]["getListItems"]()
  _G["gg"]["loadResults"](t)
  _G["gg"]["getResults"](5000)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("11025", 16))
  _G["gg"]["clearResults"]()
  _G["gg"]["removeListItems"](t)
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("90D~4000D;1177306112D;1F~1.5F::37", _G["gg"]["TYPE_QWORD"], false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  P = _G["gg"]["getResults"](5000, nil, nil, nil, "1,0", "1,5")
  _G["gg"]["addListItems"](P)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/ChemNhanh3.txt")
  P = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](P)
  _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/ChemNhanh3.txt", 2)
  t = _G["gg"]["getListItems"]()
  _G["gg"]["loadResults"](t)
  _G["gg"]["getResults"](5000)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("11023", 16))
  _G["gg"]["clearResults"]()
  _G["gg"]["removeListItems"](t)
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("13852D~20118D;0.2F~0.99F;30D~2200D;0.2F~2F;1065353216D~1077936128D;90D~4000D;11025F;0.001F~1.5F;11023F:300", 4, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  XA = _G["gg"]["getResults"](5000)
  _G["gg"]["addListItems"](XA)
  XB = _G["gg"]["getListItems"]()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("90D~4000D;11025F;0.001F~1.5F;0.001F~1.5F;0.001F~1.5F::45", 4, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["getResults"](5000, nil, nil, nil, "0,001", "1,5")
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("0.000005", 16))
  _G["gg"]["clearResults"]()
  _G["gg"]["loadResults"](XB)
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("0.2F~0.99F;60D~4000D;11025F::21", 4, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["getResults"](5000, nil, nil, nil, "0,2", "0,99")
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("0.00005", 16))
  _G["gg"]["clearResults"]()
  _G["gg"]["loadResults"](XB)
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("13852D~20118D;0.2F~0.99F;30D~2200D;11025F::173", 4, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["searchNumber"]("13852D~20118D;0.2F~0.99F;30D~2200D::77", 4, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["getResults"](5000)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("0.00005", 16))
  _G["gg"]["clearResults"]()
  _G["gg"]["loadResults"](XB)
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("1.01F~2F;11025F::13", 4, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["getResults"](5000, nil, nil, nil, "1,01", "2")
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("1.0e-7", 16))
  _G["gg"]["searchNumber"]("1.0e-7F;11025F::9", 16, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["getResults"](5000, nil, nil, nil, "1,0e-7", "1,0e-7")
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("1.1", 16))
  _G["gg"]["clearResults"]()
  _G["gg"]["clearResults"]()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("11023F;0.001F~1.5F::13", 4, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
  _G["gg"]["getResults"](5000, nil, nil, nil, "0,001", "1,5")
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("0.000002", 16))
  _G["gg"]["clearResults"]()
  PVP()
end

function PVP()
  _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/ChemNhanh1.txt", 10)
  _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/ChemNhanh2.txt", 10)
  _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/ChemNhanh3.txt", 10)
  _G["gg"]["toast"]("🔴Đã Bật Chém Nhanh PVP")
  C = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](C)
end

function PVE()
  print("Load xong:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/ChemNhanh1.txt", 2))
  t = _G["gg"]["getListItems"]()
  _G["gg"]["loadResults"](t)
  _G["gg"]["getResults"](5000)
  _G["gg"]["editAll"]("11026", 16)
  _G["gg"]["clearResults"]()
  _G["gg"]["removeListItems"](t)
  print("Load xong:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/ChemNhanh2.txt", 2))
  t = _G["gg"]["getListItems"]()
  _G["gg"]["loadResults"](t)
  _G["gg"]["getResults"](5000)
  _G["gg"]["editAll"]("11026", 16)
  _G["gg"]["clearResults"]()
  _G["gg"]["removeListItems"](t)
  print("Load xong:", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/ChemNhanh3.txt", 2))
  t = _G["gg"]["getListItems"]()
  _G["gg"]["loadResults"](t)
  _G["gg"]["getResults"](5000)
  _G["gg"]["editAll"]("11026", 16)
  _G["gg"]["clearResults"]()
  _G["gg"]["toast"]("🔴Đã Bật Chém Xa PVE")
  _G["gg"]["removeListItems"](t)
end

function MOD7()
  ZB = _G["gg"]["multiChoice"]({
    "📂 AK47 ➧ FAL Camo",
    "📂 USP ➧ Dragon VIP",
    "📂 Dao Găm ➧ Dual Kukri"
  }, nil, "MENU MOD VŨ KHÍ ZOOMBIE")
  if ZB == nil then
    HOME()
  else
    if ZB[1] == true then
      ZB1()
    end
    if ZB[2] == true then
      ZB2()
    end
    if ZB[3] == true then
      ZB3()
    end
  end
  HOMEDM = -1
end

function ZB1()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("10101001;1;4::9", 4)
  _G["gg"]["refineNumber"]("10101001;4", 4)
  _G["gg"]["getResults"](2)
  print("Giá trị đã sửa:", _G["gg"]["editAll"]("10111001;125", 4))
  _G["gg"]["clearResults"]()
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("2.833F;1F;1.167F;1F;1017370378;1022739087;1077097267;1073741824;1.2F;200000255;300000001::389", 4)
  x = _G["gg"]["getResults"](14)
  x[1].value = 2.74
  x[2].value = 1.5
  x[3].value = 0.1
  x[4].value = 20
  x[5].value = 1
  x[6].value = 1
  x[7].value = 1
  x[8].value = 1
  x[10].value = 200000781
  x[11].value = 300000442
  _G["gg"]["setValues"](x)
  _G["gg"]["clearResults"]()
end

function ZB2()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("10601001;2::9", 4)
  _G["gg"]["refineNumber"]("10601001;2;2::9", 4)
  _G["gg"]["getResults"](3)
  _G["gg"]["editAll"]("10606003;2;30", 4)
  _G["gg"]["clearResults"]()
end

function ZB3()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("10702001;3;2::9", 4)
  _G["gg"]["refineNumber"]("10702001;2", 4)
  _G["gg"]["getResults"](5)
  _G["gg"]["editAll"]("10701005;108", 4)
  _G["gg"]["clearResults"]()
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("200000033;200000034::5", 4)
  _G["gg"]["refineNumber"]("200000033", 4)
  _G["gg"]["getResults"](50)
  _G["gg"]["editAll"]("200000132", 4)
  _G["gg"]["clearResults"]()
end

function MENU3()
  D = _G["gg"]["multiChoice"]({
    "🔴 Load Data",
    "🔄 Người",
    "🔄 Nhện PB",
    "🔄 Nhện Đỏ",
    "🔄 Nhện Xanh",
    "📂 Chạy Nhảy",
    "📂 Bay Xác Trận",
    "📂 Zombie ➧ Nhện",
    "📂 Mod Tay Nhân Vật"
  }, nil, "ＭＥＮＵ  ＭＯＤ  ＮＨÂＮ  ＶẬＴ")
  if D == nil then
    HOME()
  else
    if D[1] == true then
      D1()
    end
    if D[2] == true then
      D2()
    end
    if D[3] == true then
      NVX = "120000085;120000039"
      D3()
    end
    if D[4] == true then
      NVX = "120000039"
      D3()
    end
    if D[5] == true then
      NVX = "120000085"
      D3()
    end
    if D[6] == true then
      D4()
    end
    if D[7] == true then
      D5()
    end
    if D[8] == true then
      D6()
    end
    if D[9] == true then
      D7()
    end
  end
  HOMEDM = -1
end

function D1()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("0~46;2.0e-35F~2.0000001e-34F;100000006~100000178;2.0e-35F~2.0000001e-34F;100000006~100000178::25", 4)
  _G["gg"]["refineNumber"]("100000006~100000178", 4)
  _G["gg"]["getResults"](100)
  r = _G["gg"]["getResults"](200, nil, nil, nil, "100000006", "100000178")
  _G["gg"]["addListItems"](r)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/nhanvat.txt")
  _G["gg"]["clearResults"]()
  C = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](C)
  _G["gg"]["clearResults"]()
end

function D2()
  print("Load List :", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/nhanvat.txt", 10))
  C = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](C)
end

function D3()
  print("Load List :", _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/nhanvat.txt", 2))
  t = _G["gg"]["getListItems"]()
  _G["gg"]["loadResults"](t)
  _G["gg"]["getResults"](200)
  _G["gg"]["editAll"](NVX, 4)
  _G["gg"]["clearResults"]()
  _G["gg"]["removeListItems"](t)
end

function D4()
  local L0_8
  L0_8 = nil
  L0_8 = {}
  L0_8.info = nil
  L0_8.config = _G["gg"]["EXT_CACHE_DIR"] .. "/" .. _G["gg"]["getFile"]():match("[^/]+$") .. ".cn1"
  L0_8.data = loadfile(L0_8.config)
  if L0_8.data ~= nil then
    L0_8.info = L0_8.data()
    L0_8.data = nil
  end
  if L0_8.info == nil then
    L0_8.info = {
      [1] = "2",
      [2] = "-2",
      [3] = "2.1",
      [4] = "6.5",
      [5] = "30",
      [6] = "50",
      [7] = "20",
      [8] = false
    }
  end
  if L0_8.info[8] == true then
    cdcn = "✅Giảm Giật C4,Đội | ⛔Chế Độ Full"
  else
    cdcn = "⛔Giảm Giật C4,Đội |  ✅ Chế Độ Full"
  end
  while true do
    L0_8.info = _G["gg"]["prompt"]({
      "Chạy Ngồi | DF 0,33",
      "Đáp Hạ | DF -2,8",
      "Nhảy Cao | DF 0,6",
      "Chạy Nhanh | DF 0,6",
      "Bay Lên | DF 4,6858",
      "🔵 Chống Trôi | DF 50 [50;100]" ,
      "🔵 Giảm Trễ Di Chuyển | DF 20 [20;50]",
      cdcn
    }, L0_8.info, {
      [1] = "number",
      [2] = "number",
      [3] = "number",
      [4] = "number",
      [5] = "number",
      [6] = "number",
      [7] = "number",
      [8] = "checkbox"
    })
    duliu = _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/check.txt", 0)
    if duliu == true then
      t = _G["gg"]["getListItems"]()
      r = _G["gg"]["getValues"](t)
      if r[1].value == 14622 then
        _G["gg"]["clearResults"]()
        _G["gg"]["removeListItems"](t)
      else
        loadcn()
      end
    else
      loadcn()
    end
    if L0_8.info == nil then
      break
    end
    _G["gg"]["saveVariable"](L0_8.info, L0_8.config)
    if L0_8.info[8] == true then
      cdcn = "✅ Giảm Giật C4,Đội | ⛔Chế Độ Full"
      _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/cnxvideo.txt", 10)
      t = _G["gg"]["getListItems"]()
      _G["gg"]["loadResults"](t)
      _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
      _G["gg"]["searchNumber"]("-2.8F;4.685800075534F;0.6F;20F;50F;90F;0.33F;0.6F::117", 16, false, _G["gg"]["SIGN_EQUAL"], 0, -1)
      _G["gg"]["getResults"](5000)
      _G["gg"]["editAll"]("'" .. L0_8.info[2] .. ";" .. L0_8.info[5] .. ";" .. L0_8.info[3] .. ";" .. L0_8.info[7] .. ";" .. L0_8.info[6] .. ";90;" .. L0_8.info[1] .. ";" .. L0_8.info[4] .. "'", 16)
      _G["gg"]["clearResults"]()
      _G["gg"]["removeListItems"](t)
    else
      cdcn = "⛔Giảm Giật C4,Đội | ✅ Chế Độ Full"
      _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/cnxvideo.txt", 10)
      t = _G["gg"]["getListItems"]()
      _G["gg"]["loadResults"](t)
      _G["gg"]["getResults"](5000)
      _G["gg"]["editAll"]("'" .. L0_8.info[2] .. ";" .. L0_8.info[5] .. ";" .. L0_8.info[3] .. ";" .. L0_8.info[7] .. ";" .. L0_8.info[6] .. ";90;" .. L0_8.info[1] .. ";" .. L0_8.info[4] .. "'", 16)
      _G["gg"]["clearResults"]()
      _G["gg"]["removeListItems"](t)
    end
    _G["gg"]["toast"]("Đã lưu thông số thành công ✅")
  end
end

function loadcn()
  _G["gg"]["clearResults"]()
  C = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](C)
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["searchNumber"]("10000D~20000D;-2.8;4.6858;0.6~0.73;20;50;80~90;0.33;0.6::129", 16)
  if _G["gg"]["getResultCount"]() == 0 then
    _G["gg"]["alert"]("🚨 Không thể Load Dữ liệu !")
    HOME()
  else
    _G["gg"]["refineNumber"]("-2.8;4.6858;0.6~0.73;20;50;80~90;0.33;0.6::117", 16)
    r = _G["gg"]["getResults"](5000)
    _G["gg"]["addListItems"](r)
    print("Save List:", _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/cnxvideo.txt"))
    t = _G["gg"]["getListItems"]()
    _G["gg"]["removeListItems"](t)
    _G["gg"]["clearResults"]()
    _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
    _G["gg"]["searchNumber"]("14622", 4)
    if _G["gg"]["getResultCount"]() == 0 then
      _G["gg"]["alert"]("🚨 Không thể Load Dữ liệu !")
      HOME()
    else
      r = _G["gg"]["getResults"](1)
      _G["gg"]["addListItems"](r)
      _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/check.txt")
      t = _G["gg"]["getListItems"]()
      _G["gg"]["removeListItems"](t)
      _G["gg"]["clearResults"]()
    end
  end
end

function D5()
  _G["gg"]["setRanges"](_G["gg"]["REGION_C_HEAP"] + _G["gg"]["REGION_C_ALLOC"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("0.3;0.01;8::33", 16)
  if _G["gg"]["getResultCount"]() == 0 then
    _G["gg"]["alert"]("╔❏ Không thể bật bay xác nhân vật 🚨╚❏ Vui lòng không chạy mã ngoài sảnh hoặc nhiều lần.")
    HOME()
  else
    _G["gg"]["refineNumber"]("0.01", 16)
    _G["gg"]["getResults"](100)
    print("Giá trị đã sửa :", _G["gg"]["editAll"]("-10", 16))
    _G["gg"]["clearResults"]()
  end
end

function D6()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("2.3122356e-35F~2.3122465e-35F;100000011~100000087;10000~10011::9", 4)
  _G["gg"]["refineNumber"]("100000011~100000087", 4)
  _G["gg"]["getResults"](500)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("120000085", 4))
  _G["gg"]["clearResults"]()
end

function D7()
  TAY = _G["gg"]["multiChoice"]({
    "🔴 Load Data",
    "🔄 Tay Lora",
    "🔄 Tay Hero",
    "🔄 Tay Tia Chớp",
    "🔄 Tay Terminator",
    "🔄 Tay Kẻ Hủy Diệt"
  }, nil, " ＭＥＮＵ  ＭＯＤ  ＴＡＹ  ＮＨÂＮ  ＶẬＴ")
  if TAY == nil then
    HOME()
  else
    if TAY[1] == true then
      DATATAY()
    end
    if TAY[2] == true then
      TAYZ = "100000177"
      TAYX()
    end
    if TAY[3] == true then
      TAYZ = "100000013"
      TAYX()
    end
    if D[4] == true then
      TAYZ = "100000047"
      TAYX()
    end
    if D[5] == true then
      TAYZ = "100000017"
      TAYX()
    end
    if D[6] == true then
      TAYZ = "100000019"
      TAYX()
    end
  end
  HOMEDM = -1
end

function DATATAY()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("0~46;100000006~100000178;2.0e-35F~2.0000001e-34F;100000006~100000178;2.0e-35F~2.0000001e-34F::25", 4)
  _G["gg"]["refineNumber"]("100000006~100000178", 4)
  r = _G["gg"]["getResults"](200, nil, nil, nil, "100000006", "100000178")
  _G["gg"]["addListItems"](r)
  _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/tay.txt")
  _G["gg"]["clearResults"]()
  C = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](C)
end

function TAYX()
  _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/tay.txt", 10)
  t = _G["gg"]["getListItems"]()
  _G["gg"]["loadResults"](t)
  _G["gg"]["getResults"](5000, nil, nil, ni, 100000006, 100000178)
  _G["gg"]["editAll"](TAYZ, 4)
  _G["gg"]["removeListItems"](t)
  _G["gg"]["clearResults"]()
end

function MENU4()
  X = _G["gg"]["multiChoice"]({
    "┌─❀*̥˚───────◌───────❀*̥˚─┐  AK47 + M4A1 ✿ M16 + AUG + KAC    9A91 + AN94 ✿ M249 + M14EBR  └─❀*̥˚───────◌───────❀*̥˚─┘",
    "📂 Không Giật SNIP",
    "📂 Không Giật TMP",
    "📂 Không Giật MG3 + RPK",
    "📂 Không Giật QBZ",
    "📂 Không Giật SCAR",
    "📂 Không Giật GATLING",
    "📂 Không Giật THOMPSON",
    "📂 Không Giật Tất Cả Súng"
  }, nil, "ＭＥＮＵ  ＫＨÔＮＧ  ＧＩẬＴ  ＳÚＮＧ")
  if X == nil then
    HOME()
  else
    if X[1] == true then
      X1()
    end
    if X[2] == true then
      X2()
    end
    if X[3] == true then
      X3()
    end
    if X[4] == true then
      X4()
    end
    if X[5] == true then
      X5()
    end
    if X[6] == true then
      X6()
    end
    if X[7] == true then
      X7()
    end
    if X[8] == true then
      X8()
    end
    if X[9] == true then
      X9()
    end
  end
  HOMEDM = -1
end

function X1()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1014350479~1019517862;1013276738~1024416809;1077936128~1082759578;1065353216~1076677837::45", 4)
  _G["gg"]["getResults"](1000)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("1", 4))
  _G["gg"]["clearResults"]()
end

function X2()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1058642330;1045220557;1077936128~1082130432;1084227584::49", 4)
  _G["gg"]["searchNumber"]("1058642330;1045220557;1077936128~1082130432;1084227584", 4)
  _G["gg"]["getResults"](500)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("1", 4))
  _G["gg"]["clearResults"]()
end

function X3()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1039516303~1063675494;1018980991~1028443341;1074580685~1075838976;1065353216~1072902963::49", 4)
  _G["gg"]["searchNumber"]("1039516303~1063675494;1018980991~1028443341;1074580685~1075838976;1065353216~1072902963", 4)
  _G["gg"]["getResults"](555)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("1", 4))
  _G["gg"]["clearResults"]()
end

function X4()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1061997773;1021665346~1022739087;1080872141~1081291571;1076887552~1077936128::49", 4)
  _G["gg"]["searchNumber"]("1061997773;1021665346~1022739087;1080872141~1081291571;1076887552~1077936128", 4)
  _G["gg"]["getResults"](555)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("1", 4))
  _G["gg"]["clearResults"]()
end

function X5()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1008981770~1014350479;1012202996~1021665346;1077936128~1083179008;1065353216~1072064102::45", 4)
  _G["gg"]["searchNumber"]("1008981770~1014350479;1012202996~1021665346;1077936128~1083179008;1065353216~1072064102", 4)
  _G["gg"]["getResults"](500)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("1", 4))
  _G["gg"]["clearResults"]()
end

function X6()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1008981770~1011129254;1021665346~1022739087;1078774989~1079613850;1073741824~1075000115::45", 4)
  _G["gg"]["searchNumber"]("1008981770~1011129254;1021665346~1022739087;1078774989~1079613850;1073741824~1075000115", 4)
  _G["gg"]["getResults"](500)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("1", 4))
  _G["gg"]["clearResults"]()
end

function X7()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1062836634;1021665346;1076677837;1073741824::49", 4)
  _G["gg"]["searchNumber"]("1062836634;1021665346;1076677837;1073741824", 4)
  _G["gg"]["getResults"](500)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("1", 4))
  _G["gg"]["clearResults"]()
end

function X8()
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("1063675494;1020054733;1076677837;1073741824::49", 4)
  _G["gg"]["searchNumber"]("1063675494;1020054733;1076677837;1073741824", 4)
  _G["gg"]["getResults"](500)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("1", 4))
  _G["gg"]["clearResults"]()
end

function X9()
  x = _G["gg"]["getListItems"]()
  _G["gg"]["removeListItems"](x)
  _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("2~3;0.05F;1046562734;1024416809~1026832728;1081845219;1080033280~1083179008;1069547520::57", 4)
  if _G["gg"]["getResultCount"]() < 96 then
    _G["gg"]["alert"]("╔❏ Không Thể Bật Không Giật Full Súng 🚨 ╚❏ Vui lòng chạy mã này đầu tiên.")
    HOME()
  else
    _G["gg"]["refineNumber"]("1046562734;1024416809~1026832728;1081845219;1080033280~1083179008;1069547520::45", 4)
    x = _G["gg"]["getResults"](100)
    _G["gg"]["addListItems"](x)
    _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/fixrecoil.txt")
    _G["gg"]["removeListItems"](x)
    _G["gg"]["clearResults"]()
    _G["gg"]["clearResults"]()
    _G["gg"]["searchNumber"]("1~8;1008981770~1063675494;1012202996~1028443341;1074580685~1083179008;1065353216~1077936128::57", 4)
    _G["gg"]["refineNumber"]("1008981770~1063675494;1012202996~1028443341;1074580685~1083179008;1065353216~1077936128::49", 4)
    _G["gg"]["getResults"](6666)
    print("Giá trị đã sửa :", _G["gg"]["editAll"]("1", 4))
    _G["gg"]["clearResults"]()
    _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/fixrecoil.txt", 10)
    t = _G["gg"]["getListItems"]()
    _G["gg"]["removeListItems"](t)
  end
end

function MENU5()
  Z = _G["gg"]["multiChoice"]({
    "📂 Aimbot",
    "📂 Khổng Lồ Đội",
    "📂 Mở Khoá Level",
    "📂 Tùy Chỉnh KL & PV",
    "📂 Thông Tin Menu Hack"
  }, nil, "ᴹᵉⁿᵘ ᴴᵃᶜᵏ ᶜʳᵒˢˢᶠⁱʳᵉ ᴸᵉⁿᵍᵉⁿᵈˢ")
  if Z == nil then
    HOME()
  else
    if Z[1] == true then
      Z1()
    end
    if Z[2] == true then
      Z2()
    end
    if Z[3] == true then
      Z3()
    end
    if Z[4] == true then
      Z4()
    end
    if Z[5] == true then
      Z5()
    end
  end
  HOMEDM = -1
end

function Z1()
  Y = _G["gg"]["alert"]("MENU CHỨC NĂNG AIMBOT", "◀ Back", "💀 Táo", "🔵 Thường")
  if Y == 1 then
    HOME()
  end
  if Y == 2 then
    Y1()
  end
  if Y == 3 then
    Y2()
  end
end

function Y1()
  _G["gg"]["setRanges"](_G["gg"]["REGION_C_ALLOC"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("57.29578;1148846080D;0.5::17", 16)
  _G["gg"]["refineNumber"]("57.29578;0.5", 16)
  _G["gg"]["getResults"](2)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("3000;0", 16))
  _G["gg"]["clearResults"]()
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("80D;0.6::17", 16)
  _G["gg"]["refineNumber"]("0.6", 16)
  _G["gg"]["getResults"](2)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("0.82", 16))
  _G["gg"]["clearResults"]()
end

function Y2()
  _G["gg"]["setRanges"](_G["gg"]["REGION_C_ALLOC"])
  _G["gg"]["clearResults"]()
  _G["gg"]["searchNumber"]("57.29578;1148846080D;0.5::17", 16)
  _G["gg"]["refineNumber"]("57.29578;0.5", 16)
  _G["gg"]["getResults"](2)
  print("Giá trị đã sửa :", _G["gg"]["editAll"]("1000;0", 16))
  _G["gg"]["clearResults"]()
end

function Z2()
  W = _G["gg"]["alert"]("MENU BẬT/TẮT KHỔNG LỒ ĐỘI", "◀ Back", "🔵 Tắt", "🔴 Bật")
  if W == 1 then
    HOME()
  end
  if W == 2 then
    _G["gg"]["toast"]("Đã Tắt  Khổng Lồ Đội")
    _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/KhongLoDoi.txt", 10)
    t = _G["gg"]["getListItems"]()
    _G["gg"]["removeListItems"](t)
  end
  if W == 3 then
    _G["gg"]["setRanges"](_G["gg"]["REGION_C_BSS"])
    _G["gg"]["clearResults"]()
    _G["gg"]["searchNumber"]("2139095040D;1::25", 16)
    _G["gg"]["refineNumber"]("1;1;1::9", 16)
    x = _G["gg"]["getResults"](6)
    _G["gg"]["addListItems"](x)
    _G["gg"]["saveList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/KhongLoDoi.txt")
    _G["gg"]["removeListItems"](x)
    _G["gg"]["clearResults"]()
    _G["gg"]["loadList"](_G["gg"]["EXT_STORAGE"] .. "/Script Hack/Data/KhongLoDoi.txt", 2)
    t = _G["gg"]["getListItems"]()
    _G["gg"]["loadResults"](t)
    _G["gg"]["getValues"](t)
    _G["gg"]["getResults"](6)
    _G["gg"]["editAll"]("'" .. KLD .. "'", 16)
    _G["gg"]["toast"]("Đã Bật Khổng Lồ Đội")
    _G["gg"]["clearResults"]()
    _G["gg"]["removeListItems"](t)
  end
end

function Z3()
  prompt = _G["gg"]["prompt"]({
    "Số Level Hiện Tại",
    "Số Gem Hiện Tại",
    "Số Vàng Hiện Tại"
  }, {
    [1] = "3",
    [2] = "120",
    [3] = "10000"
  }, {
    [1] = "number",
    [2] = "number",
    [3] = "number"
  })
  if prompt == nil then
    HOME()
  else
    _G["gg"]["setRanges"](_G["gg"]["REGION_ANONYMOUS"])
    _G["gg"]["clearResults"]()
    _G["gg"]["searchNumber"](prompt[1] .. ";" .. prompt[3] .. ";" .. prompt[2] .. "::13", 4)
    if _G["gg"]["getResultCount"]() == 0 then
      _G["gg"]["alert"]("🚨 Không Thể Mod Level ! ➡ Vui lòng kiểm tra lại thông tin.")
      HOME()
    else
      _G["gg"]["refineNumber"](prompt[1], 4)
      _G["gg"]["getResults"](2)
      print("Giá trị đã sửa :", _G["gg"]["editAll"]("100", 4))
      _G["gg"]["clearResults"]()
    end
  end
end

function START()
  local L0_9
  L0_9 = {}
  L0_9.config = _G["gg"]["EXT_CACHE_DIR"] .. "/" .. _G["gg"]["getFile"]():match("[^/]+$") .. ".kl"
  L0_9.data = loadfile(L0_9.config)
  if L0_9.data == nil then
    _G["gg"]["alert"]("ＶＵＩ ＬÒＮＧ ＮＨẬＰ ＴＨÔＮＧ ＳỐ")
    Z4()
  else
    L0_9.xida = L0_9.data()
    BigMan = L0_9.xida[1]
    KLD = L0_9.xida[2]
    ZZ = L0_9.xida[3]
    Name = L0_9.xida[4]
  end
end

function Z4()
  local L0_10
  L0_10 = {}
  L0_10.xida = nil
  L0_10.config = _G["gg"]["EXT_CACHE_DIR"] .. "/" .. _G["gg"]["getFile"]():match("[^/]+$") .. ".kl"
  L0_10.data = loadfile(L0_10.config)
  if L0_10.data ~= nil then
    L0_10.xida = L0_10.data()
    L0_10.data = nil
  end
  if L0_10.data == nil then
    L0_10.xida = {
      [1] = "12;0.6;-1",
      [2] = "6;2.3;-4",
      [3] = "9;9;9",
      [4] = "ＢｅＴｈａｎｈ１１Ｔ"
    }
  end
  while true do
    L0_10.xida = _G["gg"]["prompt"]({
      "Ｔhôｎg ｓố  kｈổｎg ｌồ (C4)" ,
      "Ｔhôｎg ｓố  kｈổｎg ｌồ Đội",
      "Ｔhôｎg ｓố  Phạm Vi",
      "Ｔêｎ ｃủａ ｂạｎ"
    }, L0_10.xida, {
      [1] = "number",
      [2] = "number",
      [3] = "number",
      [4] = "text"
    })
    if L0_10.xida == nil then
      break
    end
    repeat
      repeat
        do break end
        do break end
        HOME()
      until true
    until true
    _G["gg"]["saveVariable"](L0_10.xida, L0_10.config)
    _G["gg"]["toast"]("Đã lưu thành công ✅")
  end
  START()
end

function Z5()
  CTT = _G["gg"]["alert"]("╔❏ Menu Clan PMT³ - 17099294╠❏ Chủ Clan: Phạm Kim Thành ╚❏ Mã hack thuộc về Salem & BeThanh11T", "Zalo", "YouTube", "Chanel Salem")
  if CTT == nil then
    HOME()
  else
    if CTT == 1 then
      _G["gg"]["copyText"]("0796497134", true)
      Z5()
    end
    if CTT == 2 then
      _G["gg"]["copyText"]("https://youtube.com/channel/UCplKANxOaAoItEHu25hfpyQ", true)
      Z5()
    end
    if CTT == 3 then
      _G["gg"]["copyText"]("https://youtube.com/channel/UCIsHC1YJ3_2YYLMIoTxaJKw", true)
      Z5()
    end
  end
end

function EXIT()
  print(os["date"](""))
  os["exit"]()
end

while true do
  if _G["gg"]["isVisible"](true) then
    HOMEDM = 1
    _G["gg"]["setVisible"](false)
  end
  if HOMEDM == 1 then
    START()
    HOME()
  end
end