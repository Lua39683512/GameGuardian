arg={}for i, v in pairs(gg) do table.insert(arg, gg[i]) arg[i]=gg[i]end arh={}for i, v in pairs(io) do table.insert(arh, io[i]) arh[i]=io[i]end ari={}for i, v in pairs(os) do table.insert(ari, os[i]) ari[i]=os[i]end arj={}for i, v in pairs(string) do table.insert(arj, string[i]) arj[i]=string[i]end ark={}for i, v in pairs(table) do table.insert(ark, table[i]) ark[i]=table[i]end arl={}for i,v in pairs(debug) do table.insert(arl, debug[i]) arl[i]=debug[i] end 

if arg["VERSION"] == "96.4" then
  arg["toast"]("验证成功")
else
  arg["processKill"]()
  print(".验证失败，非专属修改器")
  ari["exit"]()
  while true do
  end
end
if arg["BUILD"] == "15508" then
  arg["toast"]("验证成功")
else
  arg["processKill"]()
  print(".验证失败，非专属修改器")
  ari["exit"]()
  while true do
  end
end
if arg["PACKAGE"] == "com.tencent.kknb" then
  arg["toast"]("验证成功")
else
  arg["processKill"]()
  print(".验证失败，非专属修改器")
  ari["exit"]()
  while true do
  end
end
;(function()
  xxxvhs = "http://api.yiyanzheng.cn"
  lburle = "13296"
  tosyidwjbzhpd = "83"
  cdtzbrvijyt = "16001"
  nobxnviggeekuhjlhuqjecasf = "58F9LceT6WYMn4bAidNZXgw2OJ3lsD1/ymIxq0arufCGRpQKBEktjUVPSo7+vHzh"
  version = "1.5"
  filename = "/sdcard/Android/data/mac" .. lburle
  kmfile = "/sdcard/Android/kami" .. lburle
  skwxeqmwo = arg["makeRequest"]
  function xxxvhslburle(A0_0)
    local L1_1
    L1_1 = nobxnviggeekuhjlhuqjecasf
    return (A0_0:gsub(".", function(A0_2)
      local L1_3
      L1_3 = kIdZF
      L1_3 = L1_3[12]
      for _FORV_6_ = 8, 1, -1 do
        L1_3 = L1_3 .. (A0_2:byte() % 2 ^ _FORV_6_ - A0_2:byte() % 2 ^ (_FORV_6_ - 1) > 0 and "1" or "0")
      end
      return L1_3
    end
    ) .. "0000"):gsub("%d%d%d?%d?%d?%d?", function(A0_4)
      local L1_5
      L1_5 = #A0_4
      if L1_5 < 6 then
        L1_5 = kIdZF
        L1_5 = L1_5[17]
        return L1_5
      end
      L1_5 = 0
      for _FORV_5_ = 1, 6 do
        L1_5 = L1_5 + (A0_4:sub(_FORV_5_, _FORV_5_) == "1" and 2 ^ (6 - _FORV_5_) or 0)
      end
      return L1_1:sub(L1_5 + 1, L1_5 + 1)
    end
    ) .. ({
      "",
      "==",
      "="
    })[#A0_0 % 3 + 1]
  end
  
  function lburletosyidwjbzhpd(A0_6)
    A0_6 = arj["gsub"](A0_6, "[^" .. nobxnviggeekuhjlhuqjecasf .. "=]", "")
    return (A0_6:gsub(".", function(A0_7)
      local L1_8
      L1_8 = n77uK
      L1_8 = L1_8[7]
      if A0_7 == L1_8 then
        L1_8 = n77uK
        L1_8 = L1_8[8]
        return L1_8
      end
      L1_8 = n77uK
      L1_8 = L1_8[9]
      for _FORV_6_ = 6, 1, -1 do
        L1_8 = L1_8 .. ((_UPVALUE1_:find(A0_7) - 1) % 2 ^ _FORV_6_ - (_UPVALUE1_:find(A0_7) - 1) % 2 ^ (_FORV_6_ - 1) > 0 and "1" or "0")
      end
      return L1_8
    end
    ):gsub("%d%d%d?%d?%d?%d?%d?%d?", function(A0_9)
      local L1_10
      L1_10 = #A0_9
      if L1_10 ~= 8 then
        L1_10 = n77uK
        L1_10 = L1_10[13]
        return L1_10
      end
      L1_10 = 0
      for _FORV_5_ = 1, 8 do
        L1_10 = L1_10 + (A0_9:sub(_FORV_5_, _FORV_5_) == "1" and 2 ^ (8 - _FORV_5_) or 0)
      end
      return arj["char"](L1_10)
    end
    ))
  end
  
  function cdtzbrvijytx(A0_11, A1_12)
    A0_11 = tostring(A0_11)
    if A1_12 == "加" then
      for _FORV_7_ = 1, A0_11:len() do
      end
      return arj["lower"]("" .. arj["format"]("%02X", A0_11:sub(_FORV_7_):byte()))
    else
      A0_11 = A0_11:gsub("[%s%p]", ""):upper()
      for _FORV_7_ = 1, A0_11:len(), 2 do
      end
      return "" .. arj["char"](tonumber(A0_11:sub(_FORV_7_, _FORV_7_ + 1), 16))
    end
  end
  
  file = arh["open"](filename, "rb")
  if file == nil then
    imeis = xxxvhslburle(math.random(10000000000, 999999999999) .. ari["time"]())
    arh["open"](filename, "w")
    arh["open"](filename, "w"):write(imeis):close()
  end
  imei = lburletosyidwjbzhpd(arh["open"](filename):read("*a"))
  function nobxnviggeeku(A0_13)
    rc4 = xxxvhslburle(A0_13)
    sljz = cdtzbrvijytx(rc4, "加")
    return sljz
  end
  
  kami = arh["open"](kmfile, "rb")
  if kami == nil then
    kami = ""
  else
    kami = arh["open"](kmfile):read("*a")
  end
  function main()
    getnew()
    if aleckmrnctrwt == lburle then
      skwxeqmwoaleckmrnctrwt()
    elseif arg["pOoO"]({
      "❤KK防封登陆系统❤"
    }, {
      kami
    }, {
      "text"
    }) == nil then
    elseif arg["pOoO"]({
      "❤KK防封登陆系统❤"
    }, {
      kami
    }, {
      "text"
    })[1] == "购买" then
      pay()
    else
      km = arg["pOoO"]({
        "❤KK防封登陆系统❤"
      }, {
        kami
      }, {
        "text"
      })[1]
      if skwxeqmwo(xxxvhs .. "/user/kmdenglu.php?appid=" .. lburle .. "&km=" .. nobxnviggeeku(arg["pOoO"]({
        "❤KK防封登陆系统❤"
      }, {
        kami
      }, {
        "text"
      })[1]) .. "&imei=" .. nobxnviggeeku(imei)).content == nil then
        arg["toast"]("登录失败")
        ari["exit"]()
      else
        ends = lburletosyidwjbzhpd(skwxeqmwo(xxxvhs .. "/user/kmdenglu.php?appid=" .. lburle .. "&km=" .. nobxnviggeeku(arg["pOoO"]({
          "❤KK防封登陆系统❤"
        }, {
          kami
        }, {
          "text"
        })[1]) .. "&imei=" .. nobxnviggeeku(imei)).content):match("到期时间:(.-);")
        if lburletosyidwjbzhpd(skwxeqmwo(xxxvhs .. "/user/kmdenglu.php?appid=" .. lburle .. "&km=" .. nobxnviggeeku(arg["pOoO"]({
          "❤KK防封登陆系统❤"
        }, {
          kami
        }, {
          "text"
        })[1]) .. "&imei=" .. nobxnviggeeku(imei)).content):match("登录验证:(.-);") == "成功" then
          if tosyidwjbzhpd + lburletosyidwjbzhpd(skwxeqmwo(xxxvhs .. "/user/kmdenglu.php?appid=" .. lburle .. "&km=" .. nobxnviggeeku(arg["pOoO"]({
            "❤KK防封登陆系统❤"
          }, {
            kami
          }, {
            "text"
          })[1]) .. "&imei=" .. nobxnviggeeku(imei)).content):match("卡密ID:(.-);") .. cdtzbrvijyt .. km .. lburletosyidwjbzhpd(skwxeqmwo(xxxvhs .. "/user/kmdenglu.php?appid=" .. lburle .. "&km=" .. nobxnviggeeku(arg["pOoO"]({
            "❤KK防封登陆系统❤"
          }, {
            kami
          }, {
            "text"
          })[1]) .. "&imei=" .. nobxnviggeeku(imei)).content):match("卡密ID:(.-);") .. ari["date"]("%Y%m%d%H%M") == lburletosyidwjbzhpd((lburletosyidwjbzhpd(skwxeqmwo(xxxvhs .. "/user/kmdenglu.php?appid=" .. lburle .. "&km=" .. nobxnviggeeku(arg["pOoO"]({
            "❤KK防封登陆系统❤"
          }, {
            kami
          }, {
            "text"
          })[1]) .. "&imei=" .. nobxnviggeeku(imei)).content):match("识别码:(.-);"))) then
            arg["toast"]("登录成功,到期时间:" .. ends)
            aleckmrnctrwt = lburle
            arh["open"](kmfile, "w")
            arh["open"](kmfile, "w"):write(km):close()
            skwxeqmwoaleckmrnctrwt()
          else
            arg["alert"]("登录失败，数据异常，请重试！")
          end
        else
          arg["alert"]((lburletosyidwjbzhpd(skwxeqmwo(xxxvhs .. "/user/kmdenglu.php?appid=" .. lburle .. "&km=" .. nobxnviggeeku(arg["pOoO"]({
            "❤KK防封登陆系统❤"
          }, {
            kami
          }, {
            "text"
          })[1]) .. "&imei=" .. nobxnviggeeku(imei)).content)))
          lburlex()
        end
      end
    end
    XGCK = -1
  end
  
  function skwxeqmwoaleckmrnctrwt()
    function edit(A0_14, A1_15)
      _om = A0_14[1].memory or A0_14[1][1]
      _ov = A0_14[3].value or A0_14[3][1]
      _on = A0_14[2].name or A0_14[2][1]
      arg["clearResults"]()
      arg["setRanges"](_om)
      arg["searchNumber"](_ov, A0_14[3].type or A0_14[3][2])
      sz = arg["getResultCount"]()
      if 1 > sz then
        arg["toast"](_on .. "开启失败")
      else
        sl = arg["getResults"](720)
        for _FORV_5_ = 1, sz do
          ist = true
          for _FORV_9_ = 4, #A0_14 do
            if ist == true and sl[_FORV_5_].value == _ov then
              cd = {
                {}
              }
              cd[1].address = sl[_FORV_5_].address + (A0_14[_FORV_9_].offset or A0_14[_FORV_9_][2])
              cd[1].flags = A0_14[_FORV_9_].type or A0_14[_FORV_9_][3]
              szpy = arg["getValues"](cd)
              cdlv = A0_14[_FORV_9_].lv or A0_14[_FORV_9_][1]
              cdv = szpy[1].value
              if cdlv == cdv then
                pdjg = true
                ist = true
              else
                pdjg = false
                ist = false
              end
            end
          end
          if pdjg == true then
            szpy = sl[_FORV_5_].address
            for _FORV_9_ = 1, #A1_15 do
              xgpy = szpy + (A1_15[_FORV_9_].offset or A1_15[_FORV_9_][2])
              xglx = A1_15[_FORV_9_].type or A1_15[_FORV_9_][3]
              xgsz = A1_15[_FORV_9_].value or A1_15[_FORV_9_][1]
              xgdj = A1_15[_FORV_9_].freeze or A1_15[_FORV_9_][4]
              xgsj = {
                {
                  address = xgpy,
                  flags = xglx,
                  value = xgsz
                }
              }
              if xgdj == true then
                xgsj[1].freeze = xgdj
                arg["addListItems"](xgsj)
              else
                arg["setValues"](xgsj)
              end
            end
            xgjg = true
          end
        end
        if xgjg == true then
          arg["toast"](_on .. "开启成功")
        else
          arg["toast"](_on .. "开启失败")
        end
      end
    end
    
    function SearchWrite(A0_16, A1_17, A2_18)
      arg["clearResults"]()
      arg["setVisible"](false)
      arg["searchNumber"](A0_16[1][1], A2_18)
      arg["clearResults"]()
      if arg["getResultCount"]() > 0 then
        for _FORV_10_, _FORV_11_ in ipairs((arg["getResults"]((arg["getResultCount"]())))) do
          _FORV_11_.isUseful = true
        end
        for _FORV_10_ = 2, #A0_16 do
          for _FORV_17_, _FORV_18_ in ipairs((arg["getResults"]((arg["getResultCount"]())))) do
            ;({})[#{}].address = _FORV_18_.address + (A0_16[_FORV_10_][2] - A0_16[1][2])
            ;({})[#{}].flags = _FORV_18_.flags
          end
          for _FORV_17_, _FORV_18_ in ipairs((arg["getValues"]({}))) do
            if tostring(_FORV_18_.value) ~= tostring(A0_16[_FORV_10_][1]) then
              arg["getResults"]((arg["getResultCount"]()))[_FORV_17_].isUseful = false
            end
          end
        end
        for _FORV_10_, _FORV_11_ in ipairs((arg["getResults"]((arg["getResultCount"]())))) do
        end
        if 0 < #{} then
          arg["toast"]("搜索到" .. #{} .. "条数据")
          for _FORV_12_ = 1, #{} do
            for _FORV_16_, _FORV_17_ in ipairs(A1_17) do
              offset = _FORV_17_[2] - A0_16[1][2]
              ;({})[#{}].address = ({})[_FORV_12_] + offset
              ;({})[#{}].flags = A2_18
              ;({})[#{}].value = _FORV_17_[1]
              if _FORV_17_[3] == true then
                ;({})[#{}].freeze = true
                arg["addListItems"]({})
              end
            end
          end
          arg["setValues"]({})
          arg["toast"]("已修改" .. #{} .. "条数据")
          arg["addListItems"]({})
        else
          arg["toast"]("not found", false)
          return false
        end
      else
        arg["toast"]("Not Found")
        return false
      end
    end
    
    function split(A0_19, A1_20)
      local L2_21, L3_22, L4_23
      L2_21 = 1
      L3_22 = 1
      L4_23 = {}
      while true do
        if not arj["find"](A0_19, A1_20, L2_21) then
          L4_23[L3_22] = arj["sub"](A0_19, L2_21, arj["len"](A0_19))
          break
        end
        L4_23[L3_22] = arj["sub"](A0_19, L2_21, arj["find"](A0_19, A1_20, L2_21) - 1)
        L2_21 = arj["find"](A0_19, A1_20, L2_21) + arj["len"](A1_20)
        L3_22 = L3_22 + 1
      end
      return L4_23
    end
    
    function xgxc(A0_24, A1_25)
      local L2_26, L3_27, L4_28, L5_29
      L2_26 = 1
      L3_27 = #A1_25
      for _FORV_5_ = 1, #A1_25 do
        xgpy = A0_24 + A1_25[_FORV_5_]["offset"]
        xglx = A1_25[_FORV_5_]["type"]
        xgsz = A1_25[_FORV_5_]["value"]
        xgdj = A1_25[_FORV_5_]["freeze"]
        if xgdj == nil or xgdj == "" then
          arg["setValues"]({
            [1] = {
              address = xgpy,
              flags = xglx,
              value = xgsz
            }
          })
        else
          arg["addListItems"]({
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
    
    function xqmnb(A0_30)
      arg["clearResults"]()
      arg["setRanges"](A0_30[1]["memory"])
      arg["searchNumber"](A0_30[3]["value"], A0_30[3]["type"])
      if arg["getResultCount"]() == 0 then
        arg["toast"](A0_30[2]["name"] .. "开启失败")
      else
        arg["refineNumber"](A0_30[3]["value"], A0_30[3]["type"])
        arg["refineNumber"](A0_30[3]["value"], A0_30[3]["type"])
        arg["refineNumber"](A0_30[3]["value"], A0_30[3]["type"])
        if arg["getResultCount"]() == 0 then
          arg["toast"](A0_30[2]["name"] .. "开启失败")
        else
          sl = arg["getResults"](999999)
          sz = arg["getResultCount"]()
          xgsl = 0
          if 999999 < sz then
            sz = 999999
          end
          for _FORV_4_ = 1, sz do
            pdsz = true
            for _FORV_8_ = 4, #A0_30 do
              if pdsz == true then
                pysz = {}
                pysz[1] = {}
                pysz[1].address = sl[_FORV_4_].address + A0_30[_FORV_8_]["offset"]
                pysz[1].flags = A0_30[_FORV_8_]["type"]
                szpy = arg["getValues"](pysz)
                pdpd = A0_30[_FORV_8_]["lv"] .. ";" .. szpy[1].value
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
            arg["toast"](A0_30[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据")
          else
            arg["toast"](A0_30[2]["name"] .. "开启失败")
          end
        end
      end
    end
    
    function yiyz_Main()
      SN = arg["choice"]({
        "大厅防封<第一步> [先随便进个图在退出来在大厅开启]",
        "大厅防封<第二步> [先随便进个图在退出来在大厅开启]",
        "57自瞄 [大厅开启即可]",
        "透视 [游戏中开启即可]",
        "退出脚本"
      }, nil, (ari["date"]("KK科技  <游戏隐藏23旁路选择没有！>现在时间：%c")))
      if SN == 1 then
        a()
      end
      if SN == 2 then
        b()
      end
      if SN == 3 then
        a1()
      end
      if SN == 4 then
        j()
      end
      if SN == 5 then
        kk()
      end
      XGCK = -1
    end
    
    function c()
      arg["clearResults"]()
      arg["setRanges"](arg["REGION_C_ALLOC"])
      arg["searchNumber"]("114D;476D;0;0:13", arg["TYPE_FLOAT"], false, arg["SIGN_EQUAL"], 0, -1)
      arg["searchNumber"]("0", arg["TYPE_FLOAT"], false, arg["SIGN_EQUAL"], 0, -1)
      arg["getResults"](10)
      arg["editAll"]("99", arg["TYPE_FLOAT"])
      arg["toast"]("隔墙瞄准开启成功")
    end
    
    function a()
      qmnb = {
        {
          ["memory"] = 16
        },
        {
          ["name"] = "大厅防封"
        },
        {
          ["value"] = 1,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 12,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 20,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 28,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 36,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 44,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 52,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 60,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 68,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 76,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 84,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 92,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 108,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 116,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 148,
          ["type"] = 4
        },
        {
          ["lv"] = 16384,
          ["offset"] = 156,
          ["type"] = 4
        }
      }
      qmxg = {
        {
          ["value"] = 11781,
          ["offset"] = 12,
          ["type"] = 4,
          ["freeze"] = true
        },
        {
          ["value"] = 11781,
          ["offset"] = 20,
          ["type"] = 4,
          ["freeze"] = true
        },
        {
          ["value"] = 11781,
          ["offset"] = 28,
          ["type"] = 4,
          ["freeze"] = true
        },
        {
          ["value"] = 11781,
          ["offset"] = 36,
          ["type"] = 4,
          ["freeze"] = true
        },
        {
          ["value"] = 11781,
          ["offset"] = 44,
          ["type"] = 4,
          ["freeze"] = true
        },
        {
          ["value"] = 11781,
          ["offset"] = 52,
          ["type"] = 4,
          ["freeze"] = true
        },
        {
          ["value"] = 11781,
          ["offset"] = 60,
          ["type"] = 4,
          ["freeze"] = true
        },
        {
          ["value"] = 11781,
          ["offset"] = 68,
          ["type"] = 4,
          ["freeze"] = true
        },
        {
          ["value"] = 11781,
          ["offset"] = 76,
          ["type"] = 4,
          ["freeze"] = true
        },
        {
          ["value"] = 11781,
          ["offset"] = 84,
          ["type"] = 4,
          ["freeze"] = true
        },
        {
          ["value"] = 11781,
          ["offset"] = 92,
          ["type"] = 4,
          ["freeze"] = true
        },
        {
          ["value"] = 11781,
          ["offset"] = 108,
          ["type"] = 4,
          ["freeze"] = true
        },
        {
          ["value"] = 11781,
          ["offset"] = 116,
          ["type"] = 4,
          ["freeze"] = true
        },
        {
          ["value"] = 11781,
          ["offset"] = 148,
          ["type"] = 4,
          ["freeze"] = true
        },
        {
          ["value"] = 11781,
          ["offset"] = 156,
          ["type"] = 4,
          ["freeze"] = true
        }
      }
      xqmnb(qmnb)
    end
    
    function b()
      arg["clearResults"]()
      arg["setRanges"](arg["REGION_C_ALLOC"])
      arg["searchNumber"]("3;16384;16384;16384::21", arg["TYPE_DWORD"], false, arg["SIGN_EQUAL"], 0, -1)
      arg["refineNumber"]("16384", arg["TYPE_DWORD"], false, arg["SIGN_EQUAL"], 0, -1)
      revert = arg["getResults"](100, nil, nil, nil, nil, nil, nil, nil, nil)
      for _FORV_4_, _FORV_5_ in ipairs((arg["getResults"](100, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_5_.flags == arg["TYPE_DWORD"] then
          _FORV_5_.value = "-1"
          _FORV_5_.freeze = true
        end
      end
      arg["addListItems"]((arg["getResults"](100, nil, nil, nil, nil, nil, nil, nil, nil)))
      arg["clearResults"]()
      arg["setRanges"](arg["REGION_C_ALLOC"])
      arg["searchNumber"]("2;16384;16384;16384::21", arg["TYPE_DWORD"], false, arg["SIGN_EQUAL"], 0, -1)
      arg["refineNumber"]("16384", arg["TYPE_DWORD"], false, arg["SIGN_EQUAL"], 0, -1)
      revert = arg["getResults"](100, nil, nil, nil, nil, nil, nil, nil, nil)
      for _FORV_5_, _FORV_6_ in ipairs((arg["getResults"](100, nil, nil, nil, nil, nil, nil, nil, nil))) do
        if _FORV_6_.flags == arg["TYPE_DWORD"] then
          _FORV_6_.value = "-1"
          _FORV_6_.freeze = true
        end
      end
      arg["addListItems"]((arg["getResults"](100, nil, nil, nil, nil, nil, nil, nil, nil)))
      arg["toast"]("大厅防开启成功！")
    end
    
    function j()
      arg["clearResults"]()
      arg["setRanges"](36)
      arg["searchNumber"]("1008981770;1148846080;2048", arg["TYPE_DWORD"], false, arg["SIGN_EQUAL"], 0, -1)
      arg["searchNumber"]("2048", arg["TYPE_DWORD"], false, arg["SIGN_EQUAL"], 0, -1)
      arg["getResults"](100)
      arg["editAll"]("108800", arg["TYPE_DWORD"])
      arg["toast"]("透视开启成功")
    end
    
    function a1()
      arg["clearResults"]()
      arg["setRanges"](4)
      arg["searchNumber"]("57.29578018188;1000;0.5", arg["TYPE_FLOAT"], false, arg["SIGN_EQUAL"], 0, -1)
      arg["searchNumber"]("57.29578018188;0.5", arg["TYPE_FLOAT"], false, arg["SIGN_EQUAL"], 0, -1)
      arg["getResults"](100)
      arg["editAll"]("1000;0", arg["TYPE_FLOAT"])
      arg["toast"]("自瞄开启成功")
      arg["clearResults"]()
    end
    
    function kk()
      ari["exit"]()
    end
    
    while true do
      if arg["isVisible"](true) then
        XGCK = 1
        arg["setVisible"](false)
      end
      arg["clearResults"]()
      if XGCK == 1 then
        yiyz_Main()
      end
    end
  end
  
  function pay()
    sp = arg["choice"]({
      "购买1分钟会员的卡密xx元",
      "购买1小时会员的卡密xx元",
      "购买1天会员的卡密xx元",
      "购买1周会员的卡密xx元",
      "购买1月会员的卡密xx元",
      "购买1季度会员的卡密xx元",
      "购买半年会员的卡密xx元",
      "购买1年会员的卡密xx元",
      "购买永久会员的卡密xx元",
      "<<<返回上一步"
    }, nil, "在线支付购买卡密-请选择服务类型")
    if sp == 1 then
      play("0")
    end
    if sp == 2 then
      play("1")
    end
    if sp == 3 then
      play("2")
    end
    if sp == 4 then
      play("3")
    end
    if sp == 5 then
      play("4")
    end
    if sp == 6 then
      play("5")
    end
    if sp == 7 then
      play("6")
    end
    if sp == 8 then
      play("7")
    end
    if sp == 9 then
      play("8")
    end
    if sp == 10 then
      main()
    end
    XGCK = -1
  end
  
  function getnew()
    if yjjcgx ~= "ok" then
      yjjcgx = "ok"
      if lburletosyidwjbzhpd(skwxeqmwo(xxxvhs .. "/user/getapp.php?appid=" .. lburle).content):match("APPID:(.-);") ~= lburle then
        arg["toast"]("无法获取云端版本号")
      elseif lburletosyidwjbzhpd(skwxeqmwo(xxxvhs .. "/user/getapp.php?appid=" .. lburle).content):match("版本号:(.-);") > version then
        arg["copyText"]((lburletosyidwjbzhpd(skwxeqmwo(xxxvhs .. "/user/getapp.php?appid=" .. lburle).content):match("更新链接:(.-);")))
        arg["alert"]("检测到新版本，以下是更新内容：============================" .. lburletosyidwjbzhpd(skwxeqmwo(xxxvhs .. "/user/getapp.php?appid=" .. lburle).content):match("更新内容:(.-);") .. "============================(已经自动为您复制新版的下载链接请打开浏览器粘贴链接访问进行下载新版本)")
        ari["exit"]()
      end
    else
    end
  end
  
  function play(A0_31)
    url = "http://www.yiyanzheng.cn/pay/app.php?appid=" .. lburle .. "&type=kami&v=" .. A0_31
    arg["copyText"](url)
    arg["alert"]("生成支付链接成功！，已经自动给您复制了支付链接，您需要打开浏览器粘贴链接并访问进行支付！链接：" .. url)
  end
  
  function lburlex()
    while true do
      if arg["isVisible"](true) then
        XGCK = 1
        arg["setVisible"](false)
      end
      arg["clearResults"]()
      if XGCK == 1 then
        main()
      end
    end
  end
  
  lburlex()