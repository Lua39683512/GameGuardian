gg.alert("/n")
function DZSH()
  menu = gg.multiChoice({
    "1.♥国际服专属♥",
    "2.♥轻量版国际服专属♥",
    "3.♥国际服专属♥",
    "4.♥轻量版国际服框架链接♥",
    "5.♥https://www.lanzous.com/i6chc0h♥",
    "6.♥国际服防第三方检测不闪退框架链接♥",
    "7.♥https://www.lanzous.com/i6cmxkd♥",
    "8.♥轻量版国际服下载群692459962♥",
    "9.♥轻量版国际服开挂不封号哦♥",
    "10.♥♥",
    "11.♥♥",
    "12.♥♥",
    "13.♥♥",
    "14.♥♥",
    "15.♥♥",
    "16.❌退出脚本❌"
  }, nil, "欢迎加入刺激防迷路群86854353，群聊号码：7549772")
  if menu == nil then
  else
    if menu[1] == true then
      HZ1()
    end
    if menu[2] == true then
      HZ2()
    end
    if menu[3] == true then
      HZ3()
    end
    if menu[4] == true then
      HZ4()
    end
    if menu[5] == true then
      HZ5()
    end
    if menu[6] == true then
      HZ6()
    end
    if menu[7] == true then
      HZ7()
    end
    if menu[8] == true then
      HZ8()
    end
    if menu[9] == true then
      HZ9()
    end
    if menu[10] == true then
      HZ10()
    end
    if menu[11] == true then
      HZ11()
    end
    if menu[12] == true then
      HZ12()
    end
    if menu[13] == true then
      HZ13()
    end
    if menu[14] == true then
      HZ14()
    end
    if menu[15] == true then
      HZ15()
    end
    if menu[16] == true then
      HZ16()
    end
  end
  LW1 = 0
  LW2 = 0
end

function HZ1()
  function split(A0_3, A1_4)
    local L2_5, L3_6, L4_7
    L2_5 = 1
    L3_6 = 1
    L4_7 = {}
    while true do
      if not string.find(A0_3, A1_4, L2_5) then
        L4_7[L3_6] = string.sub(A0_3, L2_5, string.len(A0_3))
        break
      end
      L4_7[L3_6] = string.sub(A0_3, L2_5, string.find(A0_3, A1_4, L2_5) - 1)
      L2_5 = string.find(A0_3, A1_4, L2_5) + string.len(A1_4)
      L3_6 = L3_6 + 1
    end
    return L4_7
  end
  
  function xgxc(A0_8, A1_9)
    local L2_10, L3_11, L4_12, L5_13
    L2_10 = 1
    L3_11 = #A1_9
    for _FORV_5_ = 1, #A1_9 do
      xgpy = A0_8 + A1_9[_FORV_5_]["offset"]
      xglx = A1_9[_FORV_5_]["type"]
      xgsz = A1_9[_FORV_5_]["value"]
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
  
  function xqmnb(A0_14)
    gg.clearResults()
    gg.setRanges(A0_14[1]["memory"])
    gg.searchNumber(A0_14[3]["value"], A0_14[3]["type"])
    if gg.getResultCount() == 0 then
      gg.toast(A0_14[2]["name"] .. "交流群86854353交流群910122248失败")
    else
      gg.refineNumber(A0_14[3]["value"], A0_14[3]["type"])
      gg.refineNumber(A0_14[3]["value"], A0_14[3]["type"])
      gg.refineNumber(A0_14[3]["value"], A0_14[3]["type"])
      if gg.getResultCount() == 0 then
        gg.toast(A0_14[2]["name"] .. "交流群86854353交流群910122248失败")
      else
        sl = gg.getResults(999999)
        sz = gg.getResultCount()
        xgsl = 0
        if 999999 < sz then
          sz = 999999
        end
        for _FORV_4_ = 1, sz do
          pdsz = true
          for _FORV_8_ = 4, #A0_14 do
            if pdsz == true then
              pysz = {}
              pysz[1] = {}
              pysz[1].address = sl[_FORV_4_].address + A0_14[_FORV_8_]["offset"]
              pysz[1].flags = A0_14[_FORV_8_]["type"]
              szpy = gg.getValues(pysz)
              pdpd = A0_14[_FORV_8_]["lv"] .. ";" .. szpy[1].value
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
          gg.toast(A0_14[2]["name"] .. "交流群86854353交流群910122248成功,共修改" .. xgsl .. "条数据")
        else
          gg.toast(A0_14[2]["name"] .. "交流群86854353交流群910122248失败")
        end
      end
    end
  end
  
  function DZSH()
    menu = gg.multiChoice({
      "1.♥660透视上色防闪♥出生岛或者落地/开功能勿捡枪",
      "2.♥660透视上色防闪♥出生岛或者落地/开功能勿捡枪",
      "3.♥855透视上色♥",
      "4.♥4系列透视上色♥",
      "5.♥710/845透视♥",
      "6.♥6系列透视上色♥",
      "7.♥855透视上色♥",
      "8.♥通用蓝色♥",
      "9.♥通用黄色♥",
      "10.♥强力自瞄♥出生岛或者落地/第二把需要从新开",
      "11.♥强力机器自瞄♥落地或者大厅开一次",
      "12.♥穿墙大范围♥落地",
      "13.♥卡墙视角穿墙大范围♥落地或者大厅开一次",
      "14.♥大范围♥落地",
      "15.♥无后秒切枪防抖聚点♥落地或者大厅开一次",
      "16.♥无后秒切枪防抖聚点♥大厅或者落地开一次",
      "17.♥无后防抖聚点♥大厅或者落地开一次",
      "18.♥无后秒切枪防抖聚点♥落地或者大厅开一次",
      "19.♥下蹲路飞♥落地",
      "20.♥步枪瞬击♥落地",
      "21.♥人物天线♥落地",
      "22.♥上帝视角♥落地",
      "23.♥全车加速♥车上",
      "24.♥吉普加速♥车上",
      "25.♥吉普浮空♥车上",
      "26.♥开启20倍加速♥落地",
      "27.♥关闭20倍加速♥落地",
      "28.♥使用20倍加速必须要开这个加速AK/SC/M416伤害♥",
      "29.♥高挑防摔♥落地",
      "30.♥全局天线♥出生岛",
      "31.♥♥",
      "32.♥♥",
      "33.♥♥",
      "34.♥♥",
      "35.♥♥",
      "36.❌退出脚本❌"
    }, nil, "透视上色请勿捡枪开，欢迎加入刺激防迷路群86854353，群聊号码：910122248")
    if menu == nil then
    else
      if menu[1] == true then
        HZ1()
      end
      if menu[2] == true then
        HZ2()
      end
      if menu[3] == true then
        HZ3()
      end
      if menu[4] == true then
        HZ4()
      end
      if menu[5] == true then
        HZ5()
      end
      if menu[6] == true then
        HZ6()
      end
      if menu[7] == true then
        HZ7()
      end
      if menu[8] == true then
        HZ8()
      end
      if menu[9] == true then
        HZ9()
      end
      if menu[10] == true then
        HZ10()
      end
      if menu[11] == true then
        HZ11()
      end
      if menu[12] == true then
        HZ12()
      end
      if menu[13] == true then
        HZ13()
      end
      if menu[14] == true then
        HZ14()
      end
      if menu[15] == true then
        HZ15()
      end
      if menu[16] == true then
        HZ16()
      end
      if menu[17] == true then
        HZ17()
      end
      if menu[18] == true then
        HZ18()
      end
      if menu[19] == true then
        HZ19()
      end
      if menu[20] == true then
        HZ20()
      end
      if menu[21] == true then
        HZ21()
      end
      if menu[22] == true then
        HZ22()
      end
      if menu[23] == true then
        HZ23()
      end
      if menu[24] == true then
        HZ24()
      end
      if menu[25] == true then
        HZ25()
      end
      if menu[26] == true then
        HZ26()
      end
      if menu[27] == true then
        HZ27()
      end
      if menu[28] == true then
        HZ28()
      end
      if menu[29] == true then
        HZ29()
      end
      if menu[30] == true then
        HZ30()
      end
      if menu[31] == true then
        HZ31()
      end
      if menu[32] == true then
        HZ32()
      end
      if menu[33] == true then
        HZ33()
      end
      if menu[34] == true then
        HZ34()
      end
      if menu[35] == true then
        HZ35()
      end
      if menu[36] == true then
        HZ36()
      end
    end
    LW1 = 0
    LW2 = 0
  end
  
  function HZ1()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.toast("透视交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("539,246,599;655,370;1,080,033,292;8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("6", gg.TYPE_DWORD)
    gg.toast("通用黄色")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("4140D;1.1202011e-19~1.1202013e-19;1.1202015e-19~1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("99999", gg.TYPE_FLOAT)
    gg.toast("透视防闪交流群86854353交流群910122248成功")
  end
  
  function HZ2()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("3.75000047684;1.127088e-19;4.7790066e21;1.1270885e-19;4.7777084e21;1.127089e-19;4.7223665e21;5.7922799e21;-5.5695588e-40;3.7615819e-37;-0.0;2.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(200)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("-1.0285578e-38;3.37670946121;6.4292176e-29;3.37548875809;1.911545e22;7.2303317e-15;2.718519e-43;1.3912567e-19;1.1202056e-19;3.7615819e-37;2.0;-127.0;0.24022650719;0.00999999978::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(200)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("539,246,599;655,370;1,080,033,292;8,200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("6", gg.TYPE_DWORD)
    gg.toast("通用黄色")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("4140D;1.1202011e-19~1.1202013e-19;1.1202015e-19~1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("99999", gg.TYPE_FLOAT)
    gg.toast("透视防闪交流群86854353交流群910122248成功")
  end
  
  function HZ3()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("45,120.15234375;1.14920487e-41;1.14906474e-41:21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.14906474e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(15)
    gg.editAll("1.40129846e-45", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("1.1202056e-19F;2.0F;-1.0F;1.0F;-127.0F:125", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(15)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("1.33123354e-43F;1.39125653e-19F;2.0F;1.66231134e-19F:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(15)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.toast("855透视上色交流群86854353交流群910122248成功")
  end
  
  function HZ4()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("2.25048828125;1.8945976e-40;5.7922799e21;-5.5695588e-40:101", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-5.5695588e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("5444", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("5.4602374e21;5.4602402e21;-2.5774027e-39:85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-2.5774027e-39", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("5444", gg.TYPE_FLOAT)
    gg.toast("4系通用透视交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("1,080,033,283D;1,080,035,849D;1,080,033,292D;8,200D;1,194,380,045D;1,661,239,308D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("7", gg.TYPE_DWORD)
    gg.toast("人物红色交流群86854353交流群910122248成功")
  end
  
  function HZ5()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("3.9236357e-44;1.1202056e-19;3.7615819e-37;2.0;-1.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("100", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("4.9621809e21;7.0208711e-29;5.4049168e21;1.3312335e-43;1.3912565e-19;2.0;1.6623113e-19", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("100", gg.TYPE_FLOAT)
    gg.toast("710透视已交流群86854353交流群910122248")
  end
  
  function HZ6()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("4.7408149e21;-5.5695588e-40;4.814603e21;3.7615819e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("35", gg.TYPE_FLOAT)
    gg.toast("交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("1.3912567e-19;3.9236357e-44;1.1202056e-19;3.7615819e-37;2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("35.0", gg.TYPE_FLOAT)
    gg.toast("6系通用透视交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("2.046875;2.0;2.04687547684;2.00048875809;2.8137373e-40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("35.0", gg.TYPE_FLOAT)
    gg.toast("上色交流群86854353交流群910122248成功")
  end
  
  function HZ7()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("2;541,343,815D;65,792D;671,236,134D", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.toast("第一步交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.searchNumber("2;3.7615819e-37;-1.7632462e-38;4.5917748e-41;-1.763246e-38;4.5920551e-41;-1.7632459e-38", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.toast("第二步交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.searchNumber("2;3.7615819e-37;1.1202056e-19;3.9236357e-44;1.3912567e-19;2.8866748e-43", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.toast("855透视交流群86854353交流群910122248成功")
  end
  
  function HZ8()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("1,080,033,292;8200;1,194,380,045;13;14::100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("6", gg.TYPE_DWORD)
    gg.toast("人物蓝色交流群86854353交流群910122248成功")
  end
  
  function HZ9()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("8,192D;256D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll("6", gg.TYPE_DWORD)
    gg.toast("人物黄色交流群86854353交流群910122248成功")
  end
  
  function HZ10()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("30;30;0.3;0.3;80;25;220::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0.03", gg.TYPE_FLOAT)
    gg.toast("变态自瞄第一步交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("36;1065353216;50528513;1203982336:", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1065353216", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("1,090,519,040", gg.TYPE_DWORD)
    gg.toast("变态自瞄第二步交流群86854353交流群910122248成功")
  end
  
  function HZ11()
    gg.clearResults()
    gg.setRanges(8)
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("360;0.0001;1478828288", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("9999", gg.TYPE_FLOAT)
    gg.toast("强力自瞄锁身交流群86854353交流群910122248成功")
  end
  
  function HZ12()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.clearResults()
    gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(200)
    gg.editAll("110", gg.TYPE_FLOAT)
    gg.toast("范围打击交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResultCount()
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("240", gg.TYPE_FLOAT)
    gg.toast("头部范围交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("-460", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("-560", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("250", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("头部残忍锁定已部署")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1F;-8.6457681e12F;15F;28F;16F;26F;8F;18F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("15.0F;28.0F;16.0F;26.0F;8.0F;18.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll("95", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("超级残忍范围已部署")
  end
  
  function HZ13()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("260", gg.TYPE_FLOAT)
    gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("260", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResultCount()
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("240", gg.TYPE_FLOAT)
    gg.toast("范围伤害交流群86854353交流群910122248成功")
  end
  
  function HZ14()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("300", gg.TYPE_FLOAT)
    gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("300", gg.TYPE_FLOAT)
    gg.toast("范围伤害交流群86854353交流群910122248成功")
  end
  
  function HZ15()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-2.3805679e21;-1.3620439e28;-1.3978205e24:9", 16)
    gg.searchNumber("-1.3620439e28", 16)
    gg.getResults(10)
    gg.editAll("0", 16)
    gg.clearResults()
    gg.searchNumber("-6.1550321e27;-5.7270139e27;-2.786982e28;-1.1368874e-13::", 16)
    gg.refineNumber("-2.786982e28", 16)
    gg.getResults(1)
    gg.editAll("0", 16)
    gg.toast("Cd无后开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", 16)
    gg.refineNumber("-1.1144502e28", 16)
    gg.getResults(1)
    gg.editAll("0", 16)
    gg.clearResults()
    gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", 16)
    gg.refineNumber("-1.1144502e28", 16)
    gg.getResults(1)
    gg.editAll("0", 16)
    gg.toast("cd秒切枪防抖开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("2.6469805e-23;-1.2573874e23;-1.2282372e23::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1.2573874e23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.toast("交流群86854353交流群910122248成功")
  end
  
  function HZ16()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1,084,227,584D;1D;0.64999997616F;1.2520827e-32F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.2520827e-32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("99999999", gg.TYPE_FLOAT)
    gg.toast("全枪无后交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", 16)
    gg.refineNumber("-1.1144502e28", 16)
    gg.getResults(1)
    gg.editAll("0", 16)
    gg.clearResults()
    gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", 16)
    gg.refineNumber("-1.1144502e28", 16)
    gg.getResults(1)
    gg.editAll("0", 16)
    gg.toast("cd秒切枪防抖开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("2.6469805e-23;-1.2573874e23;-1.2282372e23::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1.2573874e23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.toast("交流群86854353交流群910122248成功")
  end
  
  function HZ17()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-6.1550321e27;-5.7270139e27;-2.786982e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-2.786982e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.toast("全局午后防抖交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("2.6469805e-23;-1.2573874e23;-1.2282372e23::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1.2573874e23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.toast("交流群86854353交流群910122248成功")
  end
  
  function HZ18()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.toast("正在启动全枪午后")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("-1,082,130,432;1,084,227,584;132,608;1,065,353,216;1;0.05000000075F;8.0F;0.10000000149F;0.55000001192F::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_DWORD)
    gg.toast("全枪午后开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", 16)
    gg.refineNumber("-1.1144502e28", 16)
    gg.getResults(1)
    gg.editAll("0", 16)
    gg.clearResults()
    gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", 16)
    gg.refineNumber("-1.1144502e28", 16)
    gg.getResults(1)
    gg.editAll("0", 16)
    gg.toast("cd秒切枪防抖开启成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("2.6469805e-23;-1.2573874e23;-1.2282372e23::20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1.2573874e23", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.toast("交流群86854353交流群910122248成功")
  end
  
  function HZ19()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("-0.67914116382599;-0.20633073151112;-0.68966287374496;9.49029350281;0.0064272880554199::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("9.49029350281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll("333.0517578125", gg.TYPE_FLOAT)
    gg.toast("蹲下路飞交流群86854353交流群910122248成功！开镜有效果")
  end
  
  function HZ20()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("33000~99999;30D;10D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("33000~99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("40000", gg.TYPE_FLOAT)
    gg.toast("瞬击交流群86854353交流群910122248成功")
  end
  
  function HZ21()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert("数据未搜索到，请重新搜索")
    else
      gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      n = gg.getResultCount()
      jz = gg.getResults(n)
    end
    for _FORV_3_ = 1, n do
      gg.setValues({
        [1] = {
          address = jz[_FORV_3_].address - 52,
          flags = gg.TYPE_FLOAT,
          value = 9999
        }
      })
      gg.toast("天线")
    end
  end
  
  function HZ22()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("220;25;178", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("220", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2220)
    gg.editAll("1000", gg.TYPE_FLOAT)
    gg.toast("上帝视角")
  end
  
  function HZ23()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("50;5;0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.01", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(280)
    gg.editAll("-0.23", gg.TYPE_FLOAT)
    gg.toast("全车加速开起成功")
  end
  
  function HZ24()
    gg.setRanges(32)
    gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", 16, false, 536870912, 0, -1)
    gg.searchNumber("0.74509805441", 16, false, 536870912, 0, -1)
    gg.getResults(9999)
    gg.editAll("88888", 16)
    gg.toast("吉普加速交流群86854353交流群910122248成功")
  end
  
  function HZ25()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(9999)
    gg.editAll("99999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("45F;15F;20F;2500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("500", gg.TYPE_FLOAT)
    gg.toast("吉普浮空交流群86854353交流群910122248成功")
  end
  
  function HZ26()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-1,296,744,149,883,614,555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll(" -1,296,744,153,870,237,696", gg.TYPE_QWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-1,904,987,454,010,553,855", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("-1,904,987,454,002,165,247", gg.TYPE_QWORD)
    gg.clearResults()
    gg.toast("全局加速不拉回交流群86854353交流群910122248")
  end
  
  function HZ27()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-1,296,744,153,870,237,696", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll(" -1,296,744,149,883,614,555", gg.TYPE_QWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-1,904,987,454,002,165,247", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("-1,904,987,454,010,553,855", gg.TYPE_QWORD)
    gg.clearResults()
    gg.toast("全局加速不拉回已关闭")
  end
  
  function HZ28()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("88000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("40000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("M416伤害交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("87000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("40000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("SC伤害交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("71500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("71500")
    gg.getResults(100)
    gg.editAll("40000", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("AKM伤害交流群86854353交流群910122248成功")
  end
  
  function HZ29()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll("3", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("3;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("443", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll("2500", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("300;300;60000;600;8192;0;2;0;0;2048;0;300;0;0.05::120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0;0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll("1000", gg.TYPE_FLOAT)
    gg.toast("加速高挑防摔交流群86854353交流群910122248成功")
  end
  
  function HZ30()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("88.50576019287F;87.27782440186F;1F::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(7)
    gg.editAll("1.96875", gg.TYPE_FLOAT)
    gg.toast("已加载50%")
    gg.clearResults()
    gg.searchNumber("1.96875F;1.96875F;-100.91194152832;1F::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("999", gg.TYPE_FLOAT)
    gg.toast("出生岛天线开启成功")
  end
  
  function HZ31()
    local L0_15, L1_16
  end
  
  function HZ32()
    local L0_17, L1_18
  end
  
  function HZ33()
    local L0_19, L1_20
  end
  
  function HZ34()
    local L0_21, L1_22
  end
  
  function HZ35()
    local L0_23, L1_24
  end
  
  function HZ36()
    gg.toast("退出脚本成功")
    print("欢迎加入刺激防迷路群86854353，群聊号码：7549772")
    print(sj)
    os.exit()
  end
  
  while true do
    sj = os.date("\ %c")
    if gg.isVisible(true) then
      LW1 = nil
      gg.setVisible(false)
    end
    if LW1 == nil then
      DZSH()
    end
  end
end

function HZ2()
  function split(A0_25, A1_26)
    local L2_27, L3_28, L4_29
    L2_27 = 1
    L3_28 = 1
    L4_29 = {}
    while true do
      if not string.find(A0_25, A1_26, L2_27) then
        L4_29[L3_28] = string.sub(A0_25, L2_27, string.len(A0_25))
        break
      end
      L4_29[L3_28] = string.sub(A0_25, L2_27, string.find(A0_25, A1_26, L2_27) - 1)
      L2_27 = string.find(A0_25, A1_26, L2_27) + string.len(A1_26)
      L3_28 = L3_28 + 1
    end
    return L4_29
  end
  
  function xgxc(A0_30, A1_31)
    local L2_32, L3_33, L4_34, L5_35
    L2_32 = 1
    L3_33 = #A1_31
    for _FORV_5_ = 1, #A1_31 do
      xgpy = A0_30 + A1_31[_FORV_5_]["offset"]
      xglx = A1_31[_FORV_5_]["type"]
      xgsz = A1_31[_FORV_5_]["value"]
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
  
  function xqmnb(A0_36)
    gg.clearResults()
    gg.setRanges(A0_36[1]["memory"])
    gg.searchNumber(A0_36[3]["value"], A0_36[3]["type"])
    if gg.getResultCount() == 0 then
      gg.toast(A0_36[2]["name"] .. "交流群86854353交流群910122248失败")
    else
      gg.refineNumber(A0_36[3]["value"], A0_36[3]["type"])
      gg.refineNumber(A0_36[3]["value"], A0_36[3]["type"])
      gg.refineNumber(A0_36[3]["value"], A0_36[3]["type"])
      if gg.getResultCount() == 0 then
        gg.toast(A0_36[2]["name"] .. "交流群86854353交流群910122248失败")
      else
        sl = gg.getResults(999999)
        sz = gg.getResultCount()
        xgsl = 0
        if 999999 < sz then
          sz = 999999
        end
        for _FORV_4_ = 1, sz do
          pdsz = true
          for _FORV_8_ = 4, #A0_36 do
            if pdsz == true then
              pysz = {}
              pysz[1] = {}
              pysz[1].address = sl[_FORV_4_].address + A0_36[_FORV_8_]["offset"]
              pysz[1].flags = A0_36[_FORV_8_]["type"]
              szpy = gg.getValues(pysz)
              pdpd = A0_36[_FORV_8_]["lv"] .. ";" .. szpy[1].value
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
          gg.toast(A0_36[2]["name"] .. "交流群86854353交流群910122248成功,共修改" .. xgsl .. "条数据")
        else
          gg.toast(A0_36[2]["name"] .. "交流群86854353交流群910122248失败")
        end
      end
    end
  end
  
  function DZSH()
    menu = gg.multiChoice({
      "1.♥660透视上色防闪♥出生岛或者落地",
      "2.♥全局无后防抖聚点♥大厅",
      "3.♥高挑防摔♥落地",
      "4.♥下蹲路飞♥落地",
      "5.♥穿墙范围♥落地",
      "6.♥天线♥落地",
      "7.♥范围♥落地",
      "8.♥开启加速♥落地",
      "9.♥关闭加速♥落地",
      "10.♥新天线♥落地",
      "11.♥自瞄♥落地",
      "12.♥全枪瞬击♥",
      "13.♥范围♥大厅",
      "14.♥地线♥",
      "15.♥♥",
      "16.❌退出脚本❌"
    }, nil, "欢迎加入刺激防迷路群86854353，群聊号码：7549772")
    if menu == nil then
    else
      if menu[1] == true then
        HZ1()
      end
      if menu[2] == true then
        HZ2()
      end
      if menu[3] == true then
        HZ3()
      end
      if menu[4] == true then
        HZ4()
      end
      if menu[5] == true then
        HZ5()
      end
      if menu[6] == true then
        HZ6()
      end
      if menu[7] == true then
        HZ7()
      end
      if menu[8] == true then
        HZ8()
      end
      if menu[9] == true then
        HZ9()
      end
      if menu[10] == true then
        HZ10()
      end
      if menu[11] == true then
        HZ11()
      end
      if menu[12] == true then
        HZ12()
      end
      if menu[13] == true then
        HZ13()
      end
      if menu[14] == true then
        HZ14()
      end
      if menu[15] == true then
        HZ15()
      end
      if menu[16] == true then
        HZ16()
      end
    end
    LW1 = 0
    LW2 = 0
  end
  
  function HZ1()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0;0.24022650719;0.69314718246;0.00999999978::29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("2.4382593e-43;1.3312335e-43;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(30)
    gg.editAll("120", gg.TYPE_FLOAT)
    gg.toast("透视交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("8,192D;256D;8200D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll("7", gg.TYPE_DWORD)
    gg.toast("人物深色交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("4140D;1.1202011e-19~1.1202013e-19;1.1202015e-19~1.1202017e-19;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("99999", gg.TYPE_FLOAT)
    gg.toast("透视防闪交流群86854353交流群910122248成功")
  end
  
  function HZ2()
    qmnb = {
      {
        ["memory"] = gg.REGION_C_DATA
      },
      {
        ["name"] = "全局无后"
      },
      {
        ["value"] = -1.2340875E23,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = -5.6462205E23,
        ["offset"] = 32,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = -1.1368837E-13,
        ["offset"] = 56,
        ["type"] = gg.TYPE_FLOAT
      }
    }
    qmxg = {
      {
        ["value"] = 3,
        ["offset"] = 64,
        ["type"] = gg.TYPE_FLOAT
      }
    }
    xqmnb(qmnb)
    qmnb = {
      {
        ["memory"] = gg.REGION_C_DATA
      },
      {
        ["name"] = "防抖第一步"
      },
      {
        ["value"] = -2.8111605430681E28,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = -3.7444097189856E28,
        ["offset"] = 8,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = -1.1144501557583E28,
        ["offset"] = 12,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = 128,
        ["offset"] = 16,
        ["type"] = gg.TYPE_FLOAT
      }
    }
    qmxg = {
      {
        ["value"] = 0,
        ["offset"] = 12,
        ["type"] = gg.TYPE_FLOAT
      }
    }
    xqmnb(qmnb)
    qmnb = {
      {
        ["memory"] = gg.REGION_C_DATA
      },
      {
        ["name"] = "防抖第二步"
      },
      {
        ["value"] = -6.1549453500004E27,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = 1.8638965755821E-20,
        ["offset"] = 8,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = -1.1144501557583E28,
        ["offset"] = 12,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = 0,
        ["offset"] = 20,
        ["type"] = gg.TYPE_FLOAT
      }
    }
    qmxg = {
      {
        ["value"] = 0,
        ["offset"] = 12,
        ["type"] = gg.TYPE_FLOAT
      }
    }
    xqmnb(qmnb)
    qmnb = {
      {
        ["memory"] = gg.REGION_C_DATA
      },
      {
        ["name"] = "全局聚点"
      },
      {
        ["value"] = -1.2382423887994E28,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = -1.4239332766331E28,
        ["offset"] = 4,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = -1.1144501557583E28,
        ["offset"] = 8,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = -1.8331474059342E27,
        ["offset"] = 12,
        ["type"] = gg.TYPE_FLOAT
      }
    }
    qmxg = {
      {
        ["value"] = 90,
        ["offset"] = 8,
        ["type"] = gg.TYPE_FLOAT
      }
    }
    xqmnb(qmnb)
  end
  
  function HZ3()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll("3", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("3;35;443;55;0.57357645035", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("443", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll("2500", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("300;300;60000;600;8192;0;2;0;0;2048;0;300;0;0.05::120", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0;0.05", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll("1000", gg.TYPE_FLOAT)
    gg.toast("加速高挑防摔交流群86854353交流群910122248成功")
  end
  
  function HZ4()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("-0.67914116382599;-0.20633073151112;-0.68966287374496;9.49029350281;0.0064272880554199::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("9.49029350281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll("333.0517578125", gg.TYPE_FLOAT)
    gg.toast("蹲下路飞交流群86854353交流群910122248成功！开镜有效果")
  end
  
  function HZ5()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.clearResults()
    gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(200)
    gg.editAll("110", gg.TYPE_FLOAT)
    gg.toast("范围打击交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResultCount()
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("240", gg.TYPE_FLOAT)
    gg.toast("头部范围交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("-460", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("-560", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("250", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("头部残忍锁定已部署")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1F;-8.6457681e12F;15F;28F;16F;26F;8F;18F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("15.0F;28.0F;16.0F;26.0F;8.0F;18.0F:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(500)
    gg.editAll("95", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("超级残忍范围已部署")
  end
  
  function HZ6()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(6)
    gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("新版天线")
  end
  
  function HZ7()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResultCount()
    gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("280", gg.TYPE_FLOAT)
    gg.toast("范围伤害交流群86854353交流群910122248成功🌹")
  end
  
  function HZ8()
    qmnb = {
      {
        ["memory"] = gg.REGION_C_DATA
      },
      {
        ["name"] = "交流群86854353交流群910122248加速"
      },
      {
        ["value"] = -1.0012947E28,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = -8.795458E22,
        ["offset"] = 4,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = -1.2382424E28,
        ["offset"] = 12,
        ["type"] = gg.TYPE_FLOAT
      }
    }
    qmxg = {
      {
        ["value"] = 0,
        ["offset"] = 12,
        ["type"] = gg.TYPE_FLOAT
      }
    }
    xqmnb(qmnb)
  end
  
  function HZ9()
    qmnb = {
      {
        ["memory"] = gg.REGION_C_DATA
      },
      {
        ["name"] = "关闭加速"
      },
      {
        ["value"] = -1.0012947E28,
        ["type"] = gg.TYPE_FLOAT
      },
      {
        ["lv"] = -8.795458E22,
        ["offset"] = 4,
        ["type"] = gg.TYPE_FLOAT
      }
    }
    qmxg = {
      {
        ["value"] = -1.2382424E28,
        ["offset"] = 12,
        ["type"] = gg.TYPE_FLOAT
      }
    }
    xqmnb(qmnb)
  end
  
  function HZ10()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.98900693655~0.98900723457;0.14786802232~0.14786840975;1.1920926e-7::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    if gg.getResultCount() == 0 then
      gg.alert("数据未搜索到，请重新搜索")
    else
      gg.searchNumber("0.98900693655~0.98900723457", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
      n = gg.getResultCount()
      jz = gg.getResults(n)
    end
    for _FORV_3_ = 1, n do
      gg.setValues({
        [1] = {
          address = jz[_FORV_3_].address - 52,
          flags = gg.TYPE_FLOAT,
          value = 9999
        }
      })
      gg.toast("天线")
    end
  end
  
  function HZ11()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("3.5;1;200;20::999", 16, false, 536870912, 0, -1)
    gg.setVisible(false)
    gg.searchNumber("3.5;1;200;20", 16, false, 536870912, 0, -1)
    gg.getResults(300)
    gg.setVisible(false)
    gg.editAll("-1.0e10", 16)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("3.5;1;0.5;200;20::", gg.TYPE_FLOAT)
    gg.getResults(200)
    gg.editAll("999999999", gg.TYPE_FLOAT)
    gg.toast("自瞄锁头开启成功")
  end
  
  function HZ12()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1 6000~99999;3D;0.1;1D::40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("16000~99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(99)
    gg.editAll("500000", gg.TYPE_FLOAT)
    gg.toast("全枪瞬击开启成功🌴")
  end
  
  function HZ13()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("1;0.0001;1.0020441e-37", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("90", gg.TYPE_FLOAT)
    gg.toast("大厅范围开启成功")
  end
  
  function HZ14()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("-1.68741369247;0.33067199588::15", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1.68741369247", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(5)
    gg.editAll("-9999999", gg.TYPE_FLOAT)
    gg.toast("地线开启成功")
  end
  
  function HZ15()
    local L0_37, L1_38
  end
  
  function HZ16()
    gg.toast("退出脚本成功")
    print("欢迎加入刺激防迷路群86854353，群聊号码：7549772")
    print(sj)
    os.exit()
  end
  
  while true do
    sj = os.date("\ %c")
    if gg.isVisible(true) then
      LW1 = nil
      gg.setVisible(false)
    end
    if LW1 == nil then
      DZSH()
    end
  end
end

function HZ3()
  function split(A0_39, A1_40)
    local L2_41, L3_42, L4_43
    L2_41, L3_42, L4_43 = nil, nil, nil
    L2_41 = 1
    L3_42 = 1
    L4_43 = {}
    while true do
      if not string.find(A0_39, A1_40, L2_41) then
        L4_43[L3_42] = string.sub(A0_39, L2_41, string.len(nil))
        break
      end
      L4_43[L3_42] = string.sub(A0_39, L2_41, string.find(A0_39, A1_40, L2_41) - 1)
      L2_41 = string.find(A0_39, A1_40, L2_41) + string.len(A1_40)
      L3_42 = L3_42 + 1
    end
    return L4_43
  end
  
  function xgxc(A0_44, A1_45)
    local L2_46, L3_47, L4_48, L5_49, L6_50, L7_51, L8_52, L9_53
    L2_46, L3_47, L4_48, L5_49 = nil, nil, nil, nil
    L2_46 = 1
    L3_47 = #A1_45
    L6_50 = 1
    L7_51 = #A1_45
    for _FORV_9_ = 1, #A1_45 do
      xgpy = A0_44 + A1_45[_FORV_9_].offset
      xglx = A1_45[_FORV_9_].type
      xgsz = A1_45[_FORV_9_].value
      xgdj = A1_45[_FORV_9_].freeze
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
  
  function xqmnb(A0_54)
    gg.clearResults()
    gg.setRanges(A0_54[1].memory)
    gg.searchNumber(A0_54[3].value, A0_54[3].type)
    if gg.getResultCount() == 0 then
      gg.toast(A0_54[2].name .. "交流群86854353交流群910122248失败")
    else
      gg.refineNumber(A0_54[3].value, A0_54[3].type)
      gg.refineNumber(A0_54[3].value, A0_54[3].type)
      gg.refineNumber(A0_54[3].value, A0_54[3].type)
      if gg.getResultCount() == 0 then
        gg.toast(A0_54[2].name .. "交流群86854353交流群910122248失败")
      else
        sl = gg.getResults(999999)
        sz = gg.getResultCount()
        xgsl = 0
        if 999999 < sz then
          sz = 999999
        end
        for _FORV_4_ = 1, sz do
          pdsz = true
          for _FORV_8_ = 4, #A0_54 do
            if pdsz == true then
              pysz = pdsz
              pysz[1] = nil
              pysz[1].address = sl[_FORV_4_].address + A0_54[_FORV_8_].offset
              pysz[1].flags = A0_54[_FORV_8_].type
              szpy = gg.getValues(pysz)
              pdpd = A0_54[_FORV_8_].lv .. ";" .. szpy[1].value
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
          end
        end
        if xgjg == true then
          gg.toast(A0_54[2].name .. "交流群86854353交流群910122248成功,共修改" .. xgsl .. "条数据")
        else
          gg.toast(A0_54[2].name .. "交流群86854353交流群910122248失败")
        end
      end
    end
  end
  
  RElove_ture3 = gg.searchNumber
  RElove_ture4 = gg.editAll
  RElove_ture5 = gg.setRanges
  RElove_ture6 = gg.getResults
  RElove_ture7 = gg.clearResults
  RElove_ture8 = gg.searchAddress
  RElove_ture9 = gg.getResultCount
  RElove_ture10 = gg.REGION_BAD
  RElove_ture11 = gg.REGION_ANONYMOUS
  RElove_ture12 = gg.REGION_C_ALLOC
  RElove_ture13 = gg.REGION_C_DATA
  RElove_ture14 = gg.REGION_C_HEAP
  RElove_ture15 = gg.REGION_CODE_APP
  RElove_ture16 = gg.REGION_CODE_SYS
  RElove_ture17 = gg.REGION_JAVA_HEAP
  RElove_ture18 = gg.REGION_VIDEO
  RElove_ture19 = gg.TYPE_FLOAT
  RElove_ture20 = gg.SIGN_EQUAL
  RElove_ture21 = gg.TYPE_DWORD
  RElove_ture22 = gg.TYPE_BYTE
  RElove_ture23 = gg.TYPE_WORD
  function DZSH()
    menu = gg.multiChoice({
      "1.♥通用透视♥",
      "2.♥通用黄色♥",
      "3.♥通用红色♥",
      "4.♥完美透视♥",
      "5.♥660/625透视♥",
      "6.♥通用白色♥",
      "7.♥通用绿色♥",
      "8.♥通用防闪♥",
      "9.♥联发科♥",
      "10.♥麒麟透视♥",
      "11.♥麒麟上色♥",
      "12.♥全屏强力自瞄♥",
      "13.♥无后防抖聚点♥",
      "14.♥范围♥",
      "15.♥穿墙范围♥",
      "16.♥高挑防摔♥",
      "17.♥蹲下趴下路飞♥",
      "18.♥全局天线♥",
      "19.♥♥",
      "20.♥吉普加速♥",
      "21.♥吉普浮空♥",
      "22.♥开加速♥",
      "23.♥关加速♥",
      "24.♥瞬移开关♥",
      "25.♥♥",
      "26.♥♥",
      "27.♥♥",
      "28.♥♥",
      "29.♥♥",
      "30.♥♥",
      "31.♥♥",
      "32.♥♥",
      "33.♥♥",
      "34.♥♥",
      "35.♥♥",
      "36.❌退出脚本❌"
    }, nil, "透视上色防闪出生岛，其他的落地或者持枪。欢迎加入刺激防迷路群86854353，群聊号码：7549772交流群910122248")
    if menu == nil then
    else
      if menu[1] == true then
        HZ1()
      end
      if menu[2] == true then
        HZ2()
      end
      if menu[3] == true then
        HZ3()
      end
      if menu[4] == true then
        HZ4()
      end
      if menu[5] == true then
        HZ5()
      end
      if menu[6] == true then
        HZ6()
      end
      if menu[7] == true then
        HZ7()
      end
      if menu[8] == true then
        HZ8()
      end
      if menu[9] == true then
        HZ9()
      end
      if menu[10] == true then
        HZ10()
      end
      if menu[11] == true then
        HZ11()
      end
      if menu[12] == true then
        HZ12()
      end
      if menu[13] == true then
        HZ13()
      end
      if menu[14] == true then
        HZ14()
      end
      if menu[15] == true then
        HZ15()
      end
      if menu[16] == true then
        HZ16()
      end
      if menu[17] == true then
        HZ17()
      end
      if menu[18] == true then
        HZ18()
      end
      if menu[19] == true then
        HZ19()
      end
      if menu[20] == true then
        HZ20()
      end
      if menu[21] == true then
        HZ21()
      end
      if menu[22] == true then
        HZ22()
      end
      if menu[23] == true then
        HZ23()
      end
      if menu[24] == true then
        HZ24()
      end
      if menu[25] == true then
        HZ25()
      end
      if menu[26] == true then
        HZ26()
      end
      if menu[27] == true then
        HZ27()
      end
      if menu[28] == true then
        HZ28()
      end
      if menu[29] == true then
        HZ29()
      end
      if menu[30] == true then
        HZ30()
      end
      if menu[31] == true then
        HZ31()
      end
      if menu[32] == true then
        HZ32()
      end
      if menu[33] == true then
        HZ33()
      end
      if menu[34] == true then
        HZ34()
      end
      if menu[35] == true then
        HZ35()
      end
      if menu[36] == true then
        HZ36()
      end
    end
    LW1 = 0
    LW2 = 0
  end
  
  function HZ1()
    RElove_ture7()
    RElove_ture5(RElove_ture10)
    RElove_ture3("135,215D;4,140D;3.7615819e-37;2::", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("2", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(30)
    RElove_ture4("120", RElove_ture19)
    RElove_ture7()
    RElove_ture5(RElove_ture10)
    RElove_ture3("194D;3.7615819e-37;2;-1;1;-127::", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("2", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(30)
    RElove_ture4("120", RElove_ture19)
    RElove_ture7()
    RElove_ture5(RElove_ture10)
    RElove_ture3("4.5919149e-41;3.7615819e-37;2;0.11999511719::", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("2", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(30)
    RElove_ture4("120", RElove_ture19)
    gg.toast("通用透视交流群86854353交流群910122248成功")
  end
  
  function HZ2()
    RElove_ture7()
    RElove_ture5(RElove_ture10)
    RElove_ture3("1.3912525e-19F;8200;96", RElove_ture21, false, RElove_ture20, 0, -1)
    RElove_ture3("8200", RElove_ture21, false, RElove_ture20, 0, -1)
    RElove_ture6(10)
    RElove_ture4("6", RElove_ture21)
    gg.toast("通用黄色上色交流群86854353交流群910122248成功")
  end
  
  function HZ3()
    RElove_ture7()
    RElove_ture5(RElove_ture10)
    RElove_ture3("1.3912525e-19F;8200;96", RElove_ture21, false, RElove_ture20, 0, -1)
    RElove_ture3("8200", RElove_ture21, false, RElove_ture20, 0, -1)
    RElove_ture6(100)
    RElove_ture4("7", RElove_ture21)
    gg.toast("人物红色交流群86854353交流群910122248成功")
  end
  
  function HZ4()
    RElove_ture7()
    RElove_ture5(RElove_ture10)
    RElove_ture3("2.718519e-43F;3.7615819e-37F;2.0F;0.00999999978F::200", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("2", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(30)
    RElove_ture4("120", RElove_ture19)
    RElove_ture7()
    RElove_ture5(RElove_ture10)
    RElove_ture3("3.7615819e-37;1.3912552e-19;2.0;-1.0", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("2", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(30)
    RElove_ture4("120", RElove_ture19)
    RElove_ture7()
    RElove_ture5(RElove_ture10)
    RElove_ture3("5.8013756e-42F;-5.5695588e-40F;2.0F::100", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("2", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(30)
    RElove_ture4("120", RElove_ture19)
    RElove_ture7()
    RElove_ture5(RElove_ture10)
    RElove_ture3("2.0;4.7961574e21;4.7408166e21", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("2", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(30)
    RElove_ture4("120", RElove_ture19)
    RElove_ture7()
    RElove_ture5(RElove_ture10)
    RElove_ture3("2.0;4.8699472e21;4.8699466e21", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("2", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(30)
    RElove_ture4("120", RElove_ture19)
    RElove_ture7()
    RElove_ture5(RElove_ture10)
    RElove_ture3("2.0;4.7777152e21;4.7777146e21", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("2", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(30)
    RElove_ture4("120", RElove_ture19)
    RElove_ture7()
    gg.toast("完美人物透视已交流群86854353交流群910122248")
  end
  
  function HZ5()
    RElove_ture7()
    RElove_ture5(RElove_ture10)
    RElove_ture3("135,215D;4,140D;3.7615819e-37;2::", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("2", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(10)
    RElove_ture4("130", RElove_ture19)
    RElove_ture7()
    RElove_ture5(RElove_ture10)
    RElove_ture3("194D;3.7615819e-37;2;-1;1;-127::", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("2", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(10)
    RElove_ture4("130", RElove_ture19)
    gg.toast("660/625完美透视交流群86854353交流群910122248成功")
  end
  
  function HZ6()
    RElove_ture7()
    RElove_ture5(RElove_ture11)
    RElove_ture3("0.05499718338;1.0F::", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("1", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(10)
    RElove_ture4("9999", RElove_ture19)
    gg.toast("人物白色交流群86854353交流群910122248成功")
  end
  
  function HZ7()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("0.02000427246;2.3802073e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2.3802073e21", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("12", gg.TYPE_FLOAT)
    gg.toast("人物绿色交流群86854353交流群910122248成功")
  end
  
  function HZ8()
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("5.2806111e-40;6.50000333786;3.7615819e-37;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll("9999", gg.TYPE_FLOAT)
    gg.toast("房屋防闪交流群86854353交流群910122248")
    gg.clearResults()
    gg.setRanges(gg.REGION_BAD)
    gg.searchNumber("1.1202011e-19;1.1202015e-19;3.7615819e-37;255.0;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(20)
    gg.editAll("9999", gg.TYPE_FLOAT)
    gg.toast("山部分防闪交流群86854353交流群910122248")
    gg.toast("透视防闪交流群86854353交流群910122248")
  end
  
  function HZ9()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("0.5;12000", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    jg = gg.getResults(100)
    sl = gg.getResultCount()
    if 100 < sl then
      sl = 100
    end
    for _FORV_3_ = 1, sl do
      dzy = jg[_FORV_3_].address
      gg.addListItems({
        [1] = {
          address = dzy,
          flags = gg.TYPE_FLOAT,
          freeze = true,
          value = 2
        }
      })
    end
    gg.toast("冻结间隔记得改0")
    gg.clearResults()
  end
  
  function HZ10()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("1.1210388e-44F;0.5F;0.5F:81", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    jg = gg.getResults(100)
    sl = gg.getResultCount()
    for _FORV_3_ = 1, sl do
      dzy = jg[_FORV_3_].address
      gg.addListItems({
        [1] = {
          address = dzy,
          flags = gg.TYPE_FLOAT,
          freeze = true,
          value = 1.9
        }
      })
    end
    gg.toast("麒麟透视交流群86854353交流群910122248成功")
    gg.clearResults()
  end
  
  function HZ11()
    gg.clearResults()
    gg.setRanges(4)
    gg.searchNumber("16D;32D;40D::25", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("16", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    jg = gg.getResults(100)
    sl = gg.getResultCount()
    for _FORV_3_ = 1, sl do
      dzy = jg[_FORV_3_].address
      gg.addListItems({
        [1] = {
          address = dzy,
          flags = gg.TYPE_DWORD,
          freeze = true,
          value = 26
        }
      })
    end
    gg.toast("麒麟上色交流群86854353交流群910122248成功")
    gg.clearResults()
  end
  
  function HZ12()
    RElove_ture7()
    RElove_ture5(RElove_ture11)
    RElove_ture3("3.5;1;200;20::999", RElove_ture19)
    RElove_ture3("3.5;1;200;20::999", RElove_ture19)
    RElove_ture6(666)
    RElove_ture4("-9999999999", RElove_ture19)
    gg.toast("全屏自瞄交流群86854353交流群910122248成功！")
  end
  
  function HZ13()
    gg.clearResults()
    gg.setRanges(32)
    gg.searchNumber("1,084,227,584D;1D;0.64999997616F;1.2520827e-32F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1.2520827e-32", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("99999999", gg.TYPE_FLOAT)
    gg.toast("全枪无后交流群86854353交流群910122248成功")
    RElove_ture7()
    RElove_ture5(RElove_ture13)
    RElove_ture3("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("-1.1144502e28", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(1)
    RElove_ture4("0", RElove_ture19)
    RElove_ture7()
    RElove_ture5(RElove_ture13)
    RElove_ture3("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("-1.1144502e28", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(1)
    RElove_ture4("0", RElove_ture19)
    gg.toast("大厅防抖交流群86854353交流群910122248成功")
    Rain = "大厅防抖交流群86854353交流群910122248成功"
    RElove_ture7()
    RElove_ture5(RElove_ture13)
    RElove_ture3("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("-1.1144502e28", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(2)
    RElove_ture4("90", RElove_ture19)
    gg.toast("大厅聚点交流群86854353交流群910122248成功")
    Rain = "大厅聚点交流群86854353交流群910122248成功"
  end
  
  function HZ14()
    RElove_ture7()
    RElove_ture5(RElove_ture11)
    RElove_ture3("23;25;30.5::", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(500)
    RElove_ture4("-500;500;500", RElove_ture19)
    RElove_ture7()
    RElove_ture5(RElove_ture11)
    RElove_ture3("16;26::", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(500)
    RElove_ture4("-500", RElove_ture19)
    RElove_ture7()
    RElove_ture5(RElove_ture11)
    RElove_ture3("8;15;18;28", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(500)
    RElove_ture4("-500", RElove_ture19)
    RElove_ture7()
    RElove_ture5(RElove_ture11)
    RElove_ture3("27.25", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(500)
    RElove_ture4("-500", RElove_ture19)
    RElove_ture5(RElove_ture11)
    RElove_ture3("10;35;33;69.5", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(500)
    RElove_ture4("-500", RElove_ture19)
    RElove_ture5(RElove_ture11)
    RElove_ture3("45;33;69.5", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(500)
    RElove_ture4("-500", RElove_ture19)
    gg.toast("稳定范围交流群86854353交流群910122248成功")
  end
  
  function HZ15()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("295", gg.TYPE_FLOAT)
    gg.toast("范围打击交流群86854353交流群910122248成功")
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_C_BSS)
    gg.searchNumber("1.0e-7;1;2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("-10", gg.TYPE_FLOAT)
    gg.toast("子弹穿墙交流群86854353交流群910122248成功")
  end
  
  function HZ16()
    RElove_ture7()
    RElove_ture5(RElove_ture11)
    RElove_ture3("1;35;443;55;0.57357645035", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("1", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(500)
    RElove_ture4("3", RElove_ture19)
    RElove_ture7()
    RElove_ture5(RElove_ture11)
    RElove_ture3("3;35;443;55;0.57357645035", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("443", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(500)
    RElove_ture4("2500", RElove_ture19)
    RElove_ture7()
    RElove_ture5(RElove_ture11)
    RElove_ture3("300;300;60000;600;8192;0;2;0;0;2048;0;300;0;0.05::120", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("0;0.05", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(500)
    RElove_ture4("1000", RElove_ture19)
    gg.toast("加速高跳防摔交流群86854353交流群910122248成功.")
  end
  
  function HZ17()
    RElove_ture7()
    RElove_ture5(RElove_ture11)
    RElove_ture3("", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("-0.004204273223877", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(10)
    RElove_ture4("-330", RElove_ture19)
    gg.toast("下蹲左手路飞交流群86854353交流群910122248成功")
    RElove_ture7()
    RElove_ture5(RElove_ture11)
    RElove_ture3("18.38614463806;0.53446578979;-3.42663908005F;0.69551950693F::", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture9()
    RElove_ture3("18.38614463806;0.53446578979", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(100)
    RElove_ture4("240", RElove_ture19)
    gg.toast("趴下路飞交流群86854353交流群910122248成功\n趴下开镜有效果")
  end
  
  function HZ18()
    RElove_ture7()
    RElove_ture5(RElove_ture11)
    RElove_ture3("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("88.50576019287F;87.27782440186F;1F", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(6)
    RElove_ture4("1.96875;1.96875;999;1.96875;1.96875;999", RElove_ture19)
    gg.toast("全局天线交流群86854353交流群910122248成功")
  end
  
  function HZ19()
    local L0_55, L1_56
  end
  
  function HZ20()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(520)
    gg.editAll("500", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("150;85;45;-129;-85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(520)
    gg.editAll("700", gg.TYPE_FLOAT)
    gg.toast("吉普加速成功")
  end
  
  function HZ21()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.76000005007;0.96078431606;1;0.74509805441::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.74509805441", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(9999)
    gg.editAll("99999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("45F;15F;20F;2500F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("500", gg.TYPE_FLOAT)
    gg.toast("吉普浮空交流群86854353交流群910122248成功")
  end
  
  function HZ22()
    RElove_ture7()
    gg.alert("拉回的时候关闭")
    RElove_ture5(RElove_ture11)
    RElove_ture3("50;50;50;1000;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1F;1,065,353,216D::218", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("1", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(30)
    RElove_ture4("3", RElove_ture19)
    gg.toast("加速交流群86854353交流群910122248成功")
  end
  
  function HZ23()
    RElove_ture7()
    RElove_ture5(RElove_ture11)
    RElove_ture3("50;50;50;1000;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;3F;1,065,353,216D::218", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture3("3", RElove_ture19, false, RElove_ture20, 0, -1)
    RElove_ture6(30)
    RElove_ture4("1", RElove_ture19)
    gg.toast("关闭成功")
  end
  
  function HZ24()
    sr = gg.multiChoice({
      "瞬移交流群86854353交流群910122248",
      "瞬移关闭",
      "返回"
    }, nil, "人生如戏，全靠演技")
    if sr == nil then
    else
      if sr[1] == true then
        sr1()
      end
      if sr[2] == true then
        sr2()
      end
      if sr[3] == true then
        Main()
      end
    end
    GLWW = -1
  end
  
  function sr1()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("50;50;50;1000;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1F;1,065,353,216D::218", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("4.5", gg.TYPE_FLOAT)
    gg.toast("瞬移已交流群86854353交流群910122248")
    gg.clearResults()
  end
  
  function sr2()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("50;50;50;1000;4.5,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1,065,353,216D;1F;1,065,353,216D::218", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("4.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("1", gg.TYPE_FLOAT)
    gg.toast("瞬移已关闭")
    gg.clearResults()
  end
  
  function HZ25()
    local L0_57, L1_58
  end
  
  function HZ26()
    local L0_59, L1_60
  end
  
  function HZ27()
    local L0_61, L1_62
  end
  
  function HZ28()
    local L0_63, L1_64
  end
  
  function HZ29()
    local L0_65, L1_66
  end
  
  function HZ30()
    local L0_67, L1_68
  end
  
  function HZ31()
    local L0_69, L1_70
  end
  
  function HZ32()
    local L0_71, L1_72
  end
  
  function HZ33()
    local L0_73, L1_74
  end
  
  function HZ34()
    local L0_75, L1_76
  end
  
  function HZ35()
    local L0_77, L1_78
  end
  
  function HZ36()
    gg.toast("退出脚本成功")
    print("欢迎加入刺激防迷路群86854353，群聊号码：7549772")
    print(sj)
    os.exit()
  end
  
  while true do
    sj = os.date("\ %c")
    if gg.isVisible(true) then
      LW1 = nil
      gg.setVisible(false)
    end
    if LW1 == nil then
      DZSH()
    end
  end
end

function HZ4()
  local L0_79, L1_80
end

function HZ5()
  local L0_81, L1_82
end

function HZ6()
  local L0_83, L1_84
end

function HZ7()
  local L0_85, L1_86
end

function HZ8()
  local L0_87, L1_88
end

function HZ9()
  local L0_89, L1_90
end

function HZ10()
  local L0_91, L1_92
end

function HZ11()
  local L0_93, L1_94
end

function HZ12()
  local L0_95, L1_96
end

function HZ13()
  local L0_97, L1_98
end

function HZ14()
  local L0_99, L1_100
end

function HZ15()
  local L0_101, L1_102
end

function HZ16()
  gg.toast("退出脚本成功")
  print("欢迎加入刺激防迷路群86854353，群聊号码：7549772")
  print(sj)
  os.exit()
end

while true do
  sj = os.date("\ %c")
  if gg.isVisible(true) then
    LW1 = nil
    gg.setVisible(false)
  end
  if LW1 == nil then
    DZSH()
  end
end