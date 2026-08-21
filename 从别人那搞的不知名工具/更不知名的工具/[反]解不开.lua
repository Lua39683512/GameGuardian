
local function jie(Text)Text = Text:gsub([[ ]],"")return(Text:gsub("..",function(Text)return string.char((tonumber(Text,16))%256)end))end
a=[=[
L2_132 = _G
L2_132 = L2_132.gg
L2_132 = L2_132.SIGN_INEQUAL
L3_133 = _G
L3_133 = L3_133.gg
L3_133 = L3_133.REGION_ANONYMOUS
L4_134 = _G
L4_134 = L4_134.gg
L4_134 = L4_134.multiChoice
L5_135 = _G
L5_135 = L5_135.gg
L5_135 = L5_135.clearResults
L6_136 = _G
L6_136 = L6_136.gg
L6_136 = L6_136.bytes
L7_137 = _G
L7_137 = L7_137.gg
L7_137 = L7_137.TYPE_QWORD
L8_138 = _G
L8_138 = L8_138.gg
L8_138 = L8_138.editAll
L9_139 = _G
L9_139 = L9_139.gg
L9_139 = L9_139.setValues
L10_140 = _G
L10_140 = L10_140.gg
L10_140 = L10_140.refineAddress
L11_141 = _G
L11_141 = L11_141.gg
L11_141 = L11_141.refineNumber
L12_142 = _G
L12_142 = L12_142.gg
L12_142 = L12_142.TYPE_XOR
L13_143 = _G
L13_143 = L13_143.gg
L13_143 = L13_143.loadResults
L14_144 = _G
L14_144 = L14_144.gg
L14_144 = L14_144.getTargetPackage
L15_145 = _G
L15_145 = L15_145.gg
L15_145 = L15_145.TYPE_FLOAT
L16_146 = _G
L16_146 = L16_146.gg
L16_146 = L16_146.alert
L17_147 = _G
L17_147 = L17_147.gg
L17_147 = L17_147.processKill
L18_148 = _G
L18_148 = L18_148.gg
L18_148 = L18_148.choice
L19_149 = _G
L19_149 = L19_149.gg
L19_149 = L19_149.getRanges
L20_150 = _G
L20_150 = L20_150.gg
L20_150 = L20_150.setRanges
L21_151 = _G
L21_151 = L21_151.gg
L21_151 = L21_151.getLine
L22_152 = _G
L22_152 = L22_152.gg
L22_152 = L22_152.SIGN_EQUAL
L23_153 = _G
L23_153 = L23_153.gg
L23_153 = L23_153.TYPE_WORD
L24_154 = _G
L24_154 = L24_154.gg
L24_154 = L24_154.TYPE_BYTE
L25_155 = _G
L25_155 = L25_155.gg
L25_155 = L25_155.isVisible
L26_156 = _G
L26_156 = L26_156.gg
L26_156 = L26_156.REGION_BAD
L27_157 = _G
L27_157 = L27_157.gg
L27_157 = L27_157.prompt
L28_158 = _G
L28_158 = L28_158.gg
L28_158 = L28_158.toast
L29_159 = _G
L29_159 = L29_159.gg
L29_159 = L29_159.makeRequest
L30_160 = _G
L30_160 = L30_160.gg
L30_160 = L30_160.searchNumber
L31_161 = _G
L31_161 = L31_161.gg
L31_161 = L31_161.TYPE_DOUBLE
L32_162 = _G
L32_162 = L32_162.gg
L32_162 = L32_162.isPackageInstalled
L33_163 = _G
L33_163 = L33_163.gg
L33_163 = L33_163.clearList
L34_164 = _G
L34_164 = L34_164.gg
L34_164 = L34_164.getResults
L35_165 = _G
L35_165 = L35_165.gg
L35_165 = L35_165.REGION_C_ALLOC
L36_166 = _G
L36_166 = L36_166.gg
L36_166 = L36_166.REGION_CODE_APP
L37_167 = _G
L37_167 = L37_167.gg
L37_167 = L37_167.copyText
L38_168 = _G
L38_168 = L38_168.gg
L38_168 = L38_168.sleep
L39_169 = _G
L39_169 = L39_169.gg
L39_169 = L39_169.TYPE_DWORD
L40_170 = _G
L40_170 = L40_170.gg
L40_170 = L40_170.VERSION
L41_171 = _G
L41_171 = L41_171.gg
L41_171 = L41_171.PACKAGE
L42_172 = _G
L42_172 = L42_172.gg
L42_172 = L42_172.BUILD
L43_173 = _G
L43_173 = L43_173.gg
L43_173 = L43_173.TYPE_AUTO
L44_174 = _G
L44_174 = L44_174.gg
L44_174 = L44_174.searchAddress
L45_175 = _G
L45_175 = L45_175.math
L45_175 = L45_175.random
L46_176 = _G
L46_176 = L46_176.string
L46_176 = L46_176.dump
L47_177 = _G
L47_177 = L47_177.string
L47_177 = L47_177.char
L48_178 = _G
L48_178 = L48_178.string
L48_178 = L48_178.match
L49_179 = _G
L49_179 = L49_179.string
L49_179 = L49_179.gsub
L50_180 = _G
L50_180 = L50_180.string
L50_180 = L50_180.find
L51_181 = _G
L51_181 = L51_181.string
L51_181 = L51_181.gmatch
L52_182 = _G
L52_182 = L52_182.string
L52_182 = L52_182.format
L53_183 = _G
L53_183 = L53_183.string
L53_183 = L53_183.rep
L54_184 = _G
L54_184 = L54_184.string
L54_184 = L54_184.sub
L55_185 = _G
L55_185 = L55_185.string
L55_185 = L55_185.byte
L56_186 = _G
L56_186 = L56_186.string
L56_186 = L56_186.len
L57_187 = _G
L57_187 = L57_187.os
L57_187 = L57_187.clock
L58_188 = _G
L58_188 = L58_188.os
L58_188 = L58_188.execute
L59_189 = _G
L59_189 = L59_189.os
L59_189 = L59_189.exit
L60_190 = _G
L60_190 = L60_190.os
L60_190 = L60_190.remove
L61_191 = _G
L61_191 = L61_191.os
L61_191 = L61_191.time
L62_192 = _G
L62_192 = L62_192.io
L62_192 = L62_192.open
L63_193 = _G
L63_193 = L63_193.io
L63_193 = L63_193.stderr
L64_194 = _G
L64_194 = L64_194.io
L64_194 = L64_194.type

function split(A0_212, A1_213)
  local L2_214, L3_215, L4_216
  L2_214 = 1
  L3_215 = 1
  L4_216 = {}
  while true do
    if not L50_180(A0_212, A1_213, L2_214) then
      L4_216[L3_215] = L54_184(A0_212, L2_214, L56_186(A0_212))
      break
    end
    L4_216[L3_215] = L54_184(A0_212, L2_214, L50_180(A0_212, A1_213, L2_214) - 1)
    L2_214 = L50_180(A0_212, A1_213, L2_214) + L56_186(A1_213)
    L3_215 = L3_215 + 1
  end
  return L4_216
end

function xgxc(A0_217, A1_218)
  local L2_219, L3_220, L4_221, L5_222
  L2_219 = 1
  L3_220 = #A1_218
  for _FORV_5_ = 1, #A1_218 do
    xgpy = A0_217 + A1_218[_FORV_5_][L1_131(Y, "6F6666736574")]
    xglx = A1_218[_FORV_5_][L1_131(R, "74797065")]
    xgsz = A1_218[_FORV_5_][L1_131(S, "76616C7565")]
    L9_139({
      [1] = {
        address = xgpy,
        flags = xglx,
        value = xgsz
      }
    })
    xgsl = xgsl + 1
  end
end

function xqmnb(A0_223)
  L5_135()
  L20_150(A0_223[1][L1_131(T, "6D656D6F7279")])
  L30_160(A0_223[3][L1_131(G, "76616C7565")], A0_223[3][L1_131(T, "74797065")])
  if gg.getResultCount() == 0 then
    L28_158(A0_223[2][L1_131(D, "6E616D65")] .. L1_131(Y, "E5BC80E590AFE5A4B1E8B4A5"))
  else
    L11_141(A0_223[3][L1_131(D, "76616C7565")], A0_223[3][L1_131(N, "74797065")])
    L11_141(A0_223[3][L1_131(Z, "76616C7565")], A0_223[3][L1_131(X, "74797065")])
    L11_141(A0_223[3][L1_131(K, "76616C7565")], A0_223[3][L1_131(J, "74797065")])
    if gg.getResultCount() == 0 then
      L28_158(A0_223[2][L1_131(H, "6E616D65")] .. L1_131(H, "E5BC80E590AFE5A4B1E8B4A5"))
    else
      sl = L34_164(999999)
      sz = gg.getResultCount()
      xgsl = 0
      if 999999 < sz then
        sz = 999999
      end
      for _FORV_4_ = 1, sz do
        pdsz = true
        for _FORV_8_ = 4, #A0_223 do
          if pdsz == true then
            pysz = {}
            pysz[1] = {}
            pysz[1].address = sl[_FORV_4_].address + A0_223[_FORV_8_][L1_131(D, "6F6666736574")]
            pysz[1].flags = A0_223[_FORV_8_][L1_131(Y, "74797065")]
            szpy = gg.getValues(pysz)
            pdpd = A0_223[_FORV_8_][L1_131(S, "6C76")] .. L1_131(R, "3B") .. szpy[1].value
            szpd = split(pdpd, L1_131(C, "3B"))
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
        L28_158(A0_223[2][L1_131(Y, "6E616D65")] .. L1_131(F, "E5BC80E590AFE68890E58A9F2CE585B1E4BFAEE694B9") .. xgsl .. L1_131(J, "E69DA1E695B0E68DAE"))
      else
        L28_158(A0_223[2][L1_131(Y, "6E616D65")] .. L1_131(K, "E5BC80E590AFE5A4B1E8B4A5"))
      end
    end
  end
end

function Main()
  menu = L18_148({
    L1_131(D, "E6AF92E89891E88F87"),
    L1_131(S, "E781AB2DE586B0E9BE99E88D89"),
    L1_131(P, "E7ABB9E7AC8B"),
    L1_131(U, "E58C97E9959CE5AE9DE7AEB1"),
    L1_131(A, "E69DBEE99CB2"),
    L1_131(Y, "E7BE8EE4BABAE9B1BC"),
    L1_131(H, "E8BEA3E6A492"),
    L1_131(G, "E6B0B4E699B6E98197E8BFB9"),
    L1_131(T, "E7BAA2E8939DE88EB2"),
    L1_131(Z, "E781AFE5A194"),
    L1_131(F, "E6B0A4E6B0B2E4B98BE681AF"),
    L1_131(S, "E9BB91E88080E98197E8BFB9"),
    L1_131(R, "E58887E885B9E887AAE5B0BD"),
    L1_131(B, "E4BA91E69691E9B9A6E9B89F"),
    L1_131(E, "E5B9BCE9B2ADE9B2A8"),
    L1_131(J, "E781B0E9B2ADE9B2A8"),
    L1_131(T, "E781ABE99984E9AD94E79FB3"),
    L1_131(A, "E586B0E99984E9AD94E79FB3"),
    L1_131(X, "E794B5E99984E9AD94E79FB3"),
    L1_131(L, "E69A97E9BB91E99CB8E78E8BE9BE99"),
    L1_131(S, "E79FBFE58CBA"),
    L1_131(X, "E8BE85E58AA9E58A9FE883BD"),
    L1_131(T, "E98080E587BAE8849AE69CAC")
  }, 2018, L1_131(B, "E69CACE8BE85E58AA9E794B1E38085E6A2A6E9AD87E38085E7B2BEE5BF83E68993E980A0"))
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
    D()
  end
  if menu == 5 then
    E()
  end
  if menu == 6 then
    F()
  end
  if menu == 7 then
    G()
  end
  if menu == 8 then
    H()
  end
  if menu == 9 then
    I()
  end
  if menu == 10 then
    J()
  end
  if menu == 11 then
    K()
  end
  if menu == 12 then
    L()
  end
  if menu == 13 then
    M()
  end
  if menu == 14 then
    N()
  end
  if menu == 15 then
    O()
  end
  if menu == 16 then
    P()
  end
  if menu == 17 then
    Q()
  end
  if menu == 18 then
    R()
  end
  if menu == 19 then
    S()
  end
  if menu == 20 then
    T()
  end
  if menu == 21 then
    U()
  end
  if menu == 22 then
    V()
  end
  if menu == 23 then
    Exit()
  end
  XGCK = -1
end

function A()
  menu1 = L4_134({
    L1_131(P, "E6AF92E89891E88F8731"),
    L1_131(D, "E6AF92E89891E88F8732"),
    L1_131(B, "E6AF92E89891E88F8733"),
    L1_131(B, "E6AF92E89891E88F8734"),
    L1_131(D, "E6AF92E89891E88F8735"),
    L1_131(U, "E6AF92E89891E88F8736"),
    L1_131(Y, "E6AF92E89891E88F8737"),
    L1_131(W, "E6AF92E89891E88F8738"),
    L1_131(D, "E6AF92E89891E88F8739"),
    L1_131(Z, "E6AF92E89891E88F873130"),
    L1_131(Y, "E6AF92E89891E88F873131"),
    L1_131(Z, "E6AF92E89891E88F873132"),
    L1_131(Z, "E6AF92E89891E88F873133"),
    L1_131(D, "E6AF92E89891E88F873134"),
    L1_131(T, "E6AF92E89891E88F873135"),
    L1_131(W, "E6AF92E89891E88F873136"),
    L1_131(L, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(Q, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      a1()
    end
    if menu1[2] == true then
      a2()
    end
    if menu1[3] == true then
      a3()
    end
    if menu1[4] == true then
      a4()
    end
    if menu1[5] == true then
      a5()
    end
    if menu1[6] == true then
      a6()
    end
    if menu1[7] == true then
      a7()
    end
    if menu1[8] == true then
      a8()
    end
    if menu1[9] == true then
      a9()
    end
    if menu1[10] == true then
      a10()
    end
    if menu1[11] == true then
      a11()
    end
    if menu1[12] == true then
      a12()
    end
    if menu1[13] == true then
      a13()
    end
    if menu1[14] == true then
      a14()
    end
    if menu1[15] == true then
      a15()
    end
    if menu1[16] == true then
      a16()
    end
    if menu1[17] == true then
      HOME()
    end
  end
  GLWW = -1
end

function B()
  menu1 = L4_134({
    L1_131(K, "E781ABE9BE99E88D8931"),
    L1_131(Y, "E781ABE9BE99E88D8932"),
    L1_131(E, "E781ABE9BE99E88D8933"),
    L1_131(A, "E781ABE9BE99E88D8934"),
    L1_131(U, "E781ABE9BE99E88D8935"),
    L1_131(Q, "E781ABE9BE99E88D8936"),
    L1_131(R, "E586B0E9BE99E88D8931"),
    L1_131(N, "E586B0E9BE99E88D893228E69BB4E696B0E5BF85E588B729"),
    L1_131(U, "E586B0E9BE99E88D8933"),
    L1_131(U, "E586B0E9BE99E88D8934"),
    L1_131(O, "E586B0E9BE99E88D8935"),
    L1_131(E, "E586B0E9BE99E88D8936"),
    L1_131(K, "E586B0E9BE99E88D8937"),
    L1_131(U, "E586B0E9BE99E88D893828E69BB4E696B0E5BF85E588B729"),
    L1_131(V, "E586B0E9BE99E88D8939"),
    L1_131(H, "E586B0E9BE99E88D893130"),
    L1_131(J, "E586B0E9BE99E88D893131"),
    L1_131(B, "E586B0E9BE99E88D893132"),
    L1_131(D, "E586B0E9BE99E88D893133"),
    L1_131(Z, "E586B0E9BE99E88D893134"),
    L1_131(D, "E586B0E9BE99E88D89313528E69BB4E696B0E5BF85E588B729"),
    L1_131(E, "E586B0E9BE99E88D89313628E69BB4E696B0E5BF85E588B729"),
    L1_131(J, "E586B0E9BE99E88D893137"),
    L1_131(G, "E586B0E9BE99E88D893138"),
    L1_131(G, "E586B0E9BE99E88D893139"),
    L1_131(P, "E586B0E9BE99E88D893230"),
    L1_131(Z, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(Z, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      b1()
    end
    if menu1[2] == true then
      b2()
    end
    if menu1[3] == true then
      b3()
    end
    if menu1[4] == true then
      b4()
    end
    if menu1[5] == true then
      b5()
    end
    if menu1[6] == true then
      b6()
    end
    if menu1[7] == true then
      b7()
    end
    if menu1[8] == true then
      b8()
    end
    if menu1[9] == true then
      b9()
    end
    if menu1[10] == true then
      b10()
    end
    if menu1[11] == true then
      b11()
    end
    if menu1[12] == true then
      b12()
    end
    if menu1[13] == true then
      b13()
    end
    if menu1[14] == true then
      b14()
    end
    if menu1[15] == true then
      b15()
    end
    if menu1[16] == true then
      b16()
    end
    if menu1[17] == true then
      b17()
    end
    if menu1[18] == true then
      b18()
    end
    if menu1[19] == true then
      b19()
    end
    if menu1[20] == true then
      b20()
    end
    if menu1[21] == true then
      b21()
    end
    if menu1[22] == true then
      b22()
    end
    if menu1[23] == true then
      b23()
    end
    if menu1[24] == true then
      b24()
    end
    if menu1[25] == true then
      b25()
    end
    if menu1[26] == true then
      b26()
    end
    if menu1[27] == true then
      HOME()
    end
  end
  GLWW = -1
end

function C()
  menu1 = L4_134({
    L1_131(E, "E7ABB9E7AC8B31"),
    L1_131(S, "E7ABB9E7AC8B32"),
    L1_131(L, "E7ABB9E7AC8B33"),
    L1_131(W, "E7ABB9E7AC8B34"),
    L1_131(Z, "E7ABB9E7AC8B35"),
    L1_131(T, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(G, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      c1()
    end
    if menu1[2] == true then
      c2()
    end
    if menu1[3] == true then
      c3()
    end
    if menu1[4] == true then
      c4()
    end
    if menu1[5] == true then
      c5()
    end
    if menu1[6] == true then
      HOME()
    end
  end
  GLWW = -1
end

function D()
  menu1 = L4_134({
    L1_131(K, "E58C97E5A283E5AE9DE7AEB131"),
    L1_131(G, "E58C97E5A283E5AE9DE7AEB132"),
    L1_131(A, "E58C97E5A283E5AE9DE7AEB133"),
    L1_131(G, "E58C97E5A283E5AE9DE7AEB134"),
    L1_131(H, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(Q, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      d1()
    end
    if menu1[2] == true then
      d2()
    end
    if menu1[3] == true then
      d3()
    end
    if menu1[4] == true then
      d4()
    end
    if menu1[5] == true then
      HOME()
    end
  end
  GLWW = -1
end

function E()
  menu1 = L4_134({
    L1_131(F, "E69DBEE99CB231"),
    L1_131(H, "E69DBEE99CB232"),
    L1_131(K, "E69DBEE99CB233"),
    L1_131(J, "E69DBEE99CB234"),
    L1_131(D, "E69DBEE99CB235"),
    L1_131(B, "E69DBEE99CB236"),
    L1_131(F, "E69DBEE99CB237"),
    L1_131(N, "E69DBEE99CB238"),
    L1_131(E, "E69DBEE99CB239"),
    L1_131(J, "E69DBEE99CB23130"),
    L1_131(N, "E69DBEE99CB23131"),
    L1_131(R, "E69DBEE99CB23132"),
    L1_131(H, "E69DBEE99CB23133"),
    L1_131(F, "E69DBEE99CB23134"),
    L1_131(U, "E69DBEE99CB23135"),
    L1_131(P, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(G, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      e1()
    end
    if menu1[2] == true then
      e2()
    end
    if menu1[3] == true then
      e3()
    end
    if menu1[4] == true then
      e4()
    end
    if menu1[5] == true then
      e5()
    end
    if menu1[6] == true then
      e6()
    end
    if menu1[7] == true then
      e7()
    end
    if menu1[8] == true then
      e8()
    end
    if menu1[9] == true then
      e9()
    end
    if menu1[10] == true then
      e10()
    end
    if menu1[11] == true then
      e11()
    end
    if menu1[12] == true then
      e12()
    end
    if menu1[13] == true then
      e13()
    end
    if menu1[14] == true then
      e14()
    end
    if menu1[15] == true then
      e15()
    end
    if menu1[16] == true then
      HOME()
    end
  end
  GLWW = -1
end

function F()
  menu1 = L4_134({
    L1_131(W, "E7BE8EE4BABAE9B1BC31"),
    L1_131(S, "E7BE8EE4BABAE9B1BC32"),
    L1_131(V, "E7BE8EE4BABAE9B1BC33"),
    L1_131(J, "E7BE8EE4BABAE9B1BC34"),
    L1_131(X, "E7BE8EE4BABAE9B1BC35"),
    L1_131(U, "E7BE8EE4BABAE9B1BC36"),
    L1_131(O, "E7BE8EE4BABAE9B1BC37"),
    L1_131(Z, "E7BE8EE4BABAE9B1BC38"),
    L1_131(Q, "E7BE8EE4BABAE9B1BC39"),
    L1_131(R, "E7BE8EE4BABAE9B1BC3130"),
    L1_131(U, "E7BE8EE4BABAE9B1BC3131"),
    L1_131(L, "E7BE8EE4BABAE9B1BC3132"),
    L1_131(O, "E7BE8EE4BABAE9B1BC3133"),
    L1_131(J, "E7BE8EE4BABAE9B1BC3134"),
    L1_131(J, "E7BE8EE4BABAE9B1BC3135"),
    L1_131(Q, "E7BE8EE4BABAE9B1BC3136"),
    L1_131(V, "E7BE8EE4BABAE9B1BC3137"),
    L1_131(L, "E7BE8EE4BABAE9B1BC3138"),
    L1_131(A, "E7BE8EE4BABAE9B1BC3139"),
    L1_131(Z, "E7BE8EE4BABAE9B1BC3230"),
    L1_131(K, "E7BE8EE4BABAE9B1BC3231"),
    L1_131(L, "E7BE8EE4BABAE9B1BC3232"),
    L1_131(Z, "E7BE8EE4BABAE9B1BC3233"),
    L1_131(F, "E7BE8EE4BABAE9B1BC3234"),
    L1_131(H, "E7BE8EE4BABAE9B1BC3235"),
    L1_131(Y, "E7BE8EE4BABAE9B1BC3236"),
    L1_131(R, "E7BE8EE4BABAE9B1BC3237"),
    L1_131(P, "E7BE8EE4BABAE9B1BC3238"),
    L1_131(U, "E7BE8EE4BABAE9B1BC3239"),
    L1_131(O, "E7BE8EE4BABAE9B1BC3330"),
    L1_131(P, "E7BE8EE4BABAE9B1BC3331"),
    L1_131(B, "E7BE8EE4BABAE9B1BC3332"),
    L1_131(A, "E7BE8EE4BABAE9B1BC3333"),
    L1_131(M, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(Y, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      f1()
    end
    if menu1[2] == true then
      f2()
    end
    if menu1[3] == true then
      f3()
    end
    if menu1[4] == true then
      f4()
    end
    if menu1[5] == true then
      f5()
    end
    if menu1[6] == true then
      f6()
    end
    if menu1[7] == true then
      f7()
    end
    if menu1[8] == true then
      f8()
    end
    if menu1[9] == true then
      f9()
    end
    if menu1[10] == true then
      f10()
    end
    if menu1[11] == true then
      f11()
    end
    if menu1[12] == true then
      f12()
    end
    if menu1[13] == true then
      f13()
    end
    if menu1[14] == true then
      f14()
    end
    if menu1[15] == true then
      f15()
    end
    if menu1[16] == true then
      f16()
    end
    if menu1[17] == true then
      f17()
    end
    if menu1[18] == true then
      f18()
    end
    if menu1[19] == true then
      f19()
    end
    if menu1[20] == true then
      f20()
    end
    if menu1[21] == true then
      f21()
    end
    if menu1[22] == true then
      f22()
    end
    if menu1[23] == true then
      f23()
    end
    if menu1[24] == true then
      f24()
    end
    if menu1[25] == true then
      f25()
    end
    if menu1[26] == true then
      f26()
    end
    if menu1[27] == true then
      f27()
    end
    if menu1[28] == true then
      f28()
    end
    if menu1[29] == true then
      f29()
    end
    if menu1[30] == true then
      f30()
    end
    if menu1[31] == true then
      f31()
    end
    if menu1[32] == true then
      f32()
    end
    if menu1[33] == true then
      f33()
    end
    if menu1[34] == true then
      HOME()
    end
  end
  GLWW = -1
end

function G()
  menu1 = L4_134({
    L1_131(R, "E8BEA3E6A49231"),
    L1_131(M, "E8BEA3E6A49232"),
    L1_131(A, "E8BEA3E6A49233"),
    L1_131(U, "E8BEA3E6A49234"),
    L1_131(B, "E8BEA3E6A49235"),
    L1_131(Q, "E8BEA3E6A49236"),
    L1_131(L, "E8BEA3E6A49237"),
    L1_131(U, "E8BEA3E6A49238"),
    L1_131(L, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(X, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      g1()
    end
    if menu1[2] == true then
      g2()
    end
    if menu1[3] == true then
      g3()
    end
    if menu1[4] == true then
      g4()
    end
    if menu1[5] == true then
      g5()
    end
    if menu1[6] == true then
      g6()
    end
    if menu1[7] == true then
      g7()
    end
    if menu1[8] == true then
      g8()
    end
    if menu1[9] == true then
      HOME()
    end
  end
  GLWW = -1
end

function H()
  menu1 = L4_134({
    L1_131(K, "E6B0B4E699B6E98197E8BFB931"),
    L1_131(W, "E6B0B4E699B6E98197E8BFB932"),
    L1_131(E, "E6B0B4E699B6E98197E8BFB933"),
    L1_131(R, "E6B0B4E699B6E98197E8BFB934"),
    L1_131(G, "E6B0B4E699B6E98197E8BFB935"),
    L1_131(F, "E6B0B4E699B6E98197E8BFB936"),
    L1_131(Y, "E6B0B4E699B6E98197E8BFB937"),
    L1_131(U, "E6B0B4E699B6E98197E8BFB938"),
    L1_131(K, "E6B0B4E699B6E98197E8BFB939"),
    L1_131(D, "E6B0B4E699B6E98197E8BFB93130"),
    L1_131(H, "E6B0B4E699B6E98197E8BFB93131"),
    L1_131(R, "E6B0B4E699B6E98197E8BFB93132"),
    L1_131(G, "E6B0B4E699B6E98197E8BFB93133"),
    L1_131(Y, "E6B0B4E699B6E98197E8BFB93134"),
    L1_131(V, "E6B0B4E699B6E98197E8BFB93135"),
    L1_131(H, "E6B0B4E699B6E98197E8BFB93136"),
    L1_131(D, "E6B0B4E699B6E98197E8BFB93137"),
    L1_131(B, "E6B0B4E699B6E98197E8BFB93138"),
    L1_131(R, "E6B0B4E699B6E98197E8BFB93139"),
    L1_131(A, "E6B0B4E699B6E98197E8BFB93230"),
    L1_131(G, "E6B0B4E699B6E98197E8BFB93231"),
    L1_131(T, "E6B0B4E699B6E98197E8BFB93232"),
    L1_131(Y, "E6B0B4E699B6E98197E8BFB93233"),
    L1_131(R, "E6B0B4E699B6E98197E8BFB93234"),
    L1_131(K, "E6B0B4E699B6E98197E8BFB93235"),
    L1_131(T, "E6B0B4E699B6E98197E8BFB93236"),
    L1_131(Z, "E6B0B4E699B6E98197E8BFB93237"),
    L1_131(H, "E6B0B4E699B6E98197E8BFB93238"),
    L1_131(A, "E6B0B4E699B6E98197E8BFB93239"),
    L1_131(E, "E6B0B4E699B6E98197E8BFB93330"),
    L1_131(M, "E6B0B4E699B6E98197E8BFB93331"),
    L1_131(G, "E6B0B4E699B6E98197E8BFB93332"),
    L1_131(K, "E6B0B4E699B6E98197E8BFB93333"),
    L1_131(E, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(Z, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      h1()
    end
    if menu1[2] == true then
      h2()
    end
    if menu1[3] == true then
      h3()
    end
    if menu1[4] == true then
      h4()
    end
    if menu1[5] == true then
      h5()
    end
    if menu1[6] == true then
      h6()
    end
    if menu1[7] == true then
      h7()
    end
    if menu1[8] == true then
      h8()
    end
    if menu1[9] == true then
      h9()
    end
    if menu1[10] == true then
      h10()
    end
    if menu1[11] == true then
      h11()
    end
    if menu1[12] == true then
      h12()
    end
    if menu1[13] == true then
      h13()
    end
    if menu1[14] == true then
      h14()
    end
    if menu1[15] == true then
      h15()
    end
    if menu1[16] == true then
      h16()
    end
    if menu1[17] == true then
      h17()
    end
    if menu1[18] == true then
      h18()
    end
    if menu1[19] == true then
      h19()
    end
    if menu1[20] == true then
      h20()
    end
    if menu1[21] == true then
      h21()
    end
    if menu1[22] == true then
      h22()
    end
    if menu1[23] == true then
      h23()
    end
    if menu1[24] == true then
      h24()
    end
    if menu1[25] == true then
      h25()
    end
    if menu1[26] == true then
      h26()
    end
    if menu1[27] == true then
      h27()
    end
    if menu1[28] == true then
      h28()
    end
    if menu1[29] == true then
      h29()
    end
    if menu1[30] == true then
      h30()
    end
    if menu1[31] == true then
      h31()
    end
    if menu1[32] == true then
      h32()
    end
    if menu1[33] == true then
      h33()
    end
    if menu1[34] == true then
      HOME()
    end
  end
  GLWW = -1
end

function I()
  menu1 = L4_134({
    L1_131(P, "E8939DE88EB231"),
    L1_131(R, "E8939DE88EB232"),
    L1_131(E, "E8939DE88EB233"),
    L1_131(P, "E8939DE88EB234"),
    L1_131(O, "E8939DE88EB235"),
    L1_131(C, "E7BAA2E88EB231"),
    L1_131(N, "E7BAA2E88EB232"),
    L1_131(L, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(P, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      i1()
    end
    if menu1[2] == true then
      i2()
    end
    if menu1[3] == true then
      i3()
    end
    if menu1[4] == true then
      i4()
    end
    if menu1[5] == true then
      i5()
    end
    if menu1[6] == true then
      i6()
    end
    if menu1[7] == true then
      i7()
    end
    if menu1[8] == true then
      HOME()
    end
  end
  GLWW = -1
end

function J()
  menu1 = L4_134({
    L1_131(D, "E58D97E69E81E6989F"),
    L1_131(E, "E58C97E79EADE69C9B"),
    L1_131(R, "E58C97E69E81E6989F"),
    L1_131(G, "E58D97E79EADE69C9B"),
    L1_131(T, "E4B990E4B990E6B2B3E8B0B7"),
    L1_131(L, "E7BAB3E59DA6E5B29B"),
    L1_131(P, "E6B5B7E8A792E6A3AEE69E97"),
    L1_131(F, "E993B6E69C88E4B898E999B5"),
    L1_131(M, "E697A7E799BDE98791E6B5B7E6B9BE"),
    L1_131(J, "E697A7E98381E98791E9A699E5B9B3E58E9F"),
    L1_131(O, "E697A7E99DA2E58C85E5B29B"),
    L1_131(T, "E697A7E69785E8A18CE88085E4B898E999B5"),
    L1_131(M, "E68B89E9B281E781ABE5B1B1"),
    L1_131(Q, "E69EAFE9AAA8E5B1B1E88489"),
    L1_131(M, "E58C97E5A283"),
    L1_131(T, "E5ADA4E5BDB1E99BAAE5B1B1"),
    L1_131(H, "E4B883E9878CE9A699E5B9B3E58E9F"),
    L1_131(F, "E698A5E697A5E6B5B7E5B2B8"),
    L1_131(Y, "E98791E8B0B7E88D89E58E9F"),
    L1_131(A, "E69AAEE58589E5B1B1E8A792"),
    L1_131(A, "E4B990E59BADE5B29B"),
    L1_131(D, "E697A7E699A8E99BBEE6A3AEE69E97"),
    L1_131(F, "E789A7E9878EE5B9B3E58E9F"),
    L1_131(K, "E890BDE58FB6E5B1B1E88489"),
    L1_131(X, "E6B8A9E78E89E5B9B3E58E9F"),
    L1_131(X, "E4BC8AE5A78BE4B98BE59CB031"),
    L1_131(A, "E4BC8AE5A78BE4B98BE59CB032"),
    L1_131(S, "E4BC8AE5A78BE4B98BE59CB033"),
    L1_131(J, "E4BC8AE5A78BE4B98BE59CB034"),
    L1_131(F, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(N, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      j1()
    end
    if menu1[2] == true then
      j2()
    end
    if menu1[3] == true then
      j3()
    end
    if menu1[4] == true then
      j4()
    end
    if menu1[5] == true then
      j5()
    end
    if menu1[6] == true then
      j6()
    end
    if menu1[7] == true then
      j7()
    end
    if menu1[8] == true then
      j8()
    end
    if menu1[9] == true then
      j9()
    end
    if menu1[10] == true then
      j10()
    end
    if menu1[11] == true then
      j11()
    end
    if menu1[12] == true then
      j12()
    end
    if menu1[13] == true then
      j13()
    end
    if menu1[14] == true then
      j14()
    end
    if menu1[15] == true then
      j15()
    end
    if menu1[16] == true then
      j16()
    end
    if menu1[17] == true then
      j17()
    end
    if menu1[18] == true then
      j18()
    end
    if menu1[19] == true then
      j19()
    end
    if menu1[20] == true then
      j20()
    end
    if menu1[21] == true then
      j21()
    end
    if menu1[22] == true then
      j22()
    end
    if menu1[23] == true then
      j23()
    end
    if menu1[24] == true then
      j24()
    end
    if menu1[25] == true then
      j25()
    end
    if menu1[26] == true then
      j26()
    end
    if menu1[27] == true then
      j27()
    end
    if menu1[28] == true then
      j28()
    end
    if menu1[29] == true then
      j29()
    end
    if menu1[30] == true then
      HOME()
    end
  end
  GLWW = -1
end

function K()
  menu1 = L4_134({
    L1_131(P, "E6B0A4E6B0B2E4B98BE681AF31"),
    L1_131(X, "E6B0A4E6B0B2E4B98BE681AF32"),
    L1_131(F, "E6B0A4E6B0B2E4B98BE681AF33"),
    L1_131(F, "E6B0A4E6B0B2E4B98BE681AF34"),
    L1_131(M, "E6B0A4E6B0B2E4B98BE681AF35"),
    L1_131(P, "E6B0A4E6B0B2E4B98BE681AF36"),
    L1_131(Q, "E6B0A4E6B0B2E4B98BE681AF37"),
    L1_131(M, "E6B0A4E6B0B2E4B98BE681AF38"),
    L1_131(F, "E6B0A4E6B0B2E4B98BE681AF39"),
    L1_131(X, "E6B0A4E6B0B2E4B98BE681AF3130"),
    L1_131(V, "E6B0A4E6B0B2E4B98BE681AF3131"),
    L1_131(P, "E6B0A4E6B0B2E4B98BE681AF3132"),
    L1_131(R, "E6B0A4E6B0B2E4B98BE681AF3133"),
    L1_131(H, "E6B0A4E6B0B2E4B98BE681AF3134"),
    L1_131(F, "E6B0A4E6B0B2E4B98BE681AF3135"),
    L1_131(B, "E6B0A4E6B0B2E4B98BE681AF3136"),
    L1_131(R, "E6B0A4E6B0B2E4B98BE681AF3137"),
    L1_131(P, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(M, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      k1()
    end
    if menu1[2] == true then
      k2()
    end
    if menu1[3] == true then
      k3()
    end
    if menu1[4] == true then
      k4()
    end
    if menu1[5] == true then
      k5()
    end
    if menu1[6] == true then
      k6()
    end
    if menu1[7] == true then
      k7()
    end
    if menu1[8] == true then
      k8()
    end
    if menu1[9] == true then
      k9()
    end
    if menu1[10] == true then
      k10()
    end
    if menu1[11] == true then
      k11()
    end
    if menu1[12] == true then
      k12()
    end
    if menu1[13] == true then
      k13()
    end
    if menu1[14] == true then
      k14()
    end
    if menu1[15] == true then
      k15()
    end
    if menu1[16] == true then
      k16()
    end
    if menu1[17] == true then
      k17()
    end
    if menu1[18] == true then
      HOME()
    end
  end
  GLWW = -1
end

function L()
  menu1 = L4_134({
    L1_131(A, "E9BB91E88080E98197E8BFB931"),
    L1_131(F, "E9BB91E88080E98197E8BFB932"),
    L1_131(H, "E9BB91E88080E98197E8BFB933"),
    L1_131(J, "E9BB91E88080E98197E8BFB934"),
    L1_131(M, "E9BB91E88080E98197E8BFB935"),
    L1_131(G, "E9BB91E88080E98197E8BFB936"),
    L1_131(D, "E9BB91E88080E98197E8BFB937"),
    L1_131(O, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(E, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      l1()
    end
    if menu1[2] == true then
      l2()
    end
    if menu1[3] == true then
      l3()
    end
    if menu1[4] == true then
      l4()
    end
    if menu1[5] == true then
      l5()
    end
    if menu1[6] == true then
      l6()
    end
    if menu1[7] == true then
      l7()
    end
    if menu1[8] == true then
      HOME()
    end
  end
  GLWW = -1
end

function M()
  menu1 = L4_134({
    L1_131(C, "E887AAE69D80"),
    L1_131(G, "E68DA1E58C85"),
    L1_131(L, "E887AAE5AE9AE4B989E59D90E6A087E79EACE7A7BB"),
    L1_131(D, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(J, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      m1()
    end
    if menu1[2] == true then
      m2()
    end
    if menu1[3] == true then
      m3()
    end
    if menu1[4] == true then
      HOME()
    end
  end
  GLWW = -1
end

function N()
  menu1 = L4_134({
    L1_131(A, "E4BA91E69691E9B9A6E9B89F31"),
    L1_131(F, "E4BA91E69691E9B9A6E9B89F32"),
    L1_131(Y, "E4BA91E69691E9B9A6E9B89F3328E69BB4E696B0E5BF85E588B729"),
    L1_131(U, "E4BA91E69691E9B9A6E9B89F34"),
    L1_131(B, "E4BA91E69691E9B9A6E9B89F3528E69BB4E696B0E5BF85E588B729"),
    L1_131(N, "E4BA91E69691E9B9A6E9B89F36"),
    L1_131(O, "E4BA91E69691E9B9A6E9B89F37"),
    L1_131(P, "E4BA91E69691E9B9A6E9B89F38"),
    L1_131(P, "E4BA91E69691E9B9A6E9B89F39"),
    L1_131(B, "E4BA91E69691E9B9A6E9B89F3130"),
    L1_131(H, "E4BA91E69691E9B9A6E9B89F3131"),
    L1_131(R, "E4BA91E69691E9B9A6E9B89F3132"),
    L1_131(G, "E4BA91E69691E9B9A6E9B89F3133"),
    L1_131(P, "E4BA91E69691E9B9A6E9B89F313428E69BB4E696B0E5BF85E588B729"),
    L1_131(T, "E4BA91E69691E9B9A6E9B89F313528E69BB4E696B0E5BF85E588B729"),
    L1_131(W, "E4BA91E69691E9B9A6E9B89F3136"),
    L1_131(X, "E4BA91E69691E9B9A6E9B89F3137"),
    L1_131(J, "E4BA91E69691E9B9A6E9B89F3138"),
    L1_131(V, "E4BA91E69691E9B9A6E9B89F313928E69BB4E696B0E5BF85E588B729"),
    L1_131(N, "E4BA91E69691E9B9A6E9B89F3230"),
    L1_131(J, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(C, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      n1()
    end
    if menu1[2] == true then
      n2()
    end
    if menu1[3] == true then
      n3()
    end
    if menu1[4] == true then
      n4()
    end
    if menu1[5] == true then
      n5()
    end
    if menu1[6] == true then
      n6()
    end
    if menu1[7] == true then
      n7()
    end
    if menu1[8] == true then
      n8()
    end
    if menu1[9] == true then
      n9()
    end
    if menu1[10] == true then
      n10()
    end
    if menu1[11] == true then
      n11()
    end
    if menu1[12] == true then
      n12()
    end
    if menu1[13] == true then
      n13()
    end
    if menu1[14] == true then
      n14()
    end
    if menu1[15] == true then
      n15()
    end
    if menu1[16] == true then
      n16()
    end
    if menu1[17] == true then
      n17()
    end
    if menu1[18] == true then
      n18()
    end
    if menu1[19] == true then
      n19()
    end
    if menu1[20] == true then
      n20()
    end
    if menu1[21] == true then
      HOME()
    end
  end
  GLWW = -1
end

function O()
  menu1 = L4_134({
    L1_131(E, "E5B9BCE9B2ADE9B2A831"),
    L1_131(S, "E5B9BCE9B2ADE9B2A832"),
    L1_131(H, "E5B9BCE9B2ADE9B2A833"),
    L1_131(P, "E5B9BCE9B2ADE9B2A834"),
    L1_131(T, "E5B9BCE9B2ADE9B2A835"),
    L1_131(O, "E5B9BCE9B2ADE9B2A836"),
    L1_131(Z, "E5B9BCE9B2ADE9B2A837"),
    L1_131(Q, "E5B9BCE9B2ADE9B2A838"),
    L1_131(G, "E5B9BCE9B2ADE9B2A839"),
    L1_131(Y, "E5B9BCE9B2ADE9B2A83130"),
    L1_131(R, "E5B9BCE9B2ADE9B2A83131"),
    L1_131(P, "E5B9BCE9B2ADE9B2A83132"),
    L1_131(Y, "E5B9BCE9B2ADE9B2A83133"),
    L1_131(D, "E5B9BCE9B2ADE9B2A83134"),
    L1_131(C, "E5B9BCE9B2ADE9B2A83135"),
    L1_131(N, "E5B9BCE9B2ADE9B2A83136"),
    L1_131(H, "E5B9BCE9B2ADE9B2A83137"),
    L1_131(V, "E5B9BCE9B2ADE9B2A83138"),
    L1_131(Y, "E5B9BCE9B2ADE9B2A83139"),
    L1_131(Q, "E5B9BCE9B2ADE9B2A83230"),
    L1_131(B, "E5B9BCE9B2ADE9B2A83231"),
    L1_131(B, "E5B9BCE9B2ADE9B2A83232"),
    L1_131(O, "E5B9BCE9B2ADE9B2A83233"),
    L1_131(B, "E5B9BCE9B2ADE9B2A83234"),
    L1_131(F, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(H, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      o1()
    end
    if menu1[2] == true then
      o2()
    end
    if menu1[3] == true then
      o3()
    end
    if menu1[4] == true then
      o4()
    end
    if menu1[5] == true then
      o5()
    end
    if menu1[6] == true then
      o6()
    end
    if menu1[7] == true then
      o7()
    end
    if menu1[8] == true then
      o8()
    end
    if menu1[9] == true then
      o9()
    end
    if menu1[10] == true then
      o10()
    end
    if menu1[11] == true then
      o11()
    end
    if menu1[12] == true then
      o12()
    end
    if menu1[13] == true then
      o13()
    end
    if menu1[14] == true then
      o14()
    end
    if menu1[15] == true then
      o15()
    end
    if menu1[16] == true then
      o16()
    end
    if menu1[17] == true then
      o17()
    end
    if menu1[18] == true then
      o18()
    end
    if menu1[19] == true then
      o19()
    end
    if menu1[20] == true then
      o20()
    end
    if menu1[21] == true then
      o21()
    end
    if menu1[22] == true then
      o22()
    end
    if menu1[23] == true then
      o23()
    end
    if menu1[24] == true then
      o24()
    end
    if menu1[25] == true then
      HOME()
    end
  end
  GLWW = -1
end

function P()
  menu1 = L4_134({
    L1_131(Z, "E781B0E9B2ADE9B2A831"),
    L1_131(G, "E781B0E9B2ADE9B2A832"),
    L1_131(C, "E781B0E9B2ADE9B2A833"),
    L1_131(B, "E781B0E9B2ADE9B2A834"),
    L1_131(B, "E781B0E9B2ADE9B2A835"),
    L1_131(H, "E781B0E9B2ADE9B2A836"),
    L1_131(K, "E781B0E9B2ADE9B2A837"),
    L1_131(W, "E781B0E9B2ADE9B2A838"),
    L1_131(X, "E781B0E9B2ADE9B2A839"),
    L1_131(J, "E781B0E9B2ADE9B2A83130"),
    L1_131(Y, "E781B0E9B2ADE9B2A83131"),
    L1_131(A, "E781B0E9B2ADE9B2A83132"),
    L1_131(K, "E781B0E9B2ADE9B2A83133"),
    L1_131(B, "E781B0E9B2ADE9B2A83134"),
    L1_131(R, "E781B0E9B2ADE9B2A83135"),
    L1_131(W, "E781B0E9B2ADE9B2A83136"),
    L1_131(A, "E781B0E9B2ADE9B2A83137"),
    L1_131(E, "E781B0E9B2ADE9B2A83138"),
    L1_131(Y, "E781B0E9B2ADE9B2A83139"),
    L1_131(A, "E8998EE79AAEE9B2A831"),
    L1_131(H, "E8998EE79AAEE9B2A832"),
    L1_131(V, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(L, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      p1()
    end
    if menu1[2] == true then
      p2()
    end
    if menu1[3] == true then
      p3()
    end
    if menu1[4] == true then
      p4()
    end
    if menu1[5] == true then
      p5()
    end
    if menu1[6] == true then
      p6()
    end
    if menu1[7] == true then
      p7()
    end
    if menu1[8] == true then
      p8()
    end
    if menu1[9] == true then
      p9()
    end
    if menu1[10] == true then
      p10()
    end
    if menu1[11] == true then
      p11()
    end
    if menu1[12] == true then
      p12()
    end
    if menu1[13] == true then
      p13()
    end
    if menu1[14] == true then
      p14()
    end
    if menu1[15] == true then
      p15()
    end
    if menu1[16] == true then
      p16()
    end
    if menu1[17] == true then
      p17()
    end
    if menu1[18] == true then
      p18()
    end
    if menu1[19] == true then
      p19()
    end
    if menu1[20] == true then
      p20()
    end
    if menu1[21] == true then
      p21()
    end
    if menu1[22] == true then
      HOME()
    end
  end
  GLWW = -1
end

function Q()
  menu1 = L4_134({
    L1_131(Y, "E781ABE99984E9AD94E79FB331"),
    L1_131(Y, "E781ABE99984E9AD94E79FB332"),
    L1_131(R, "E781ABE99984E9AD94E79FB333"),
    L1_131(P, "E781ABE99984E9AD94E79FB334"),
    L1_131(A, "E781ABE99984E9AD94E79FB335"),
    L1_131(Q, "E781ABE99984E9AD94E79FB336"),
    L1_131(F, "E781ABE99984E9AD94E79FB337"),
    L1_131(O, "E781ABE99984E9AD94E79FB338"),
    L1_131(F, "E781ABE99984E9AD94E79FB339"),
    L1_131(F, "E781ABE99984E9AD94E79FB33130"),
    L1_131(P, "E781ABE99984E9AD94E79FB33131"),
    L1_131(G, "E781ABE99984E9AD94E79FB33132"),
    L1_131(T, "E781ABE99984E9AD94E79FB33133"),
    L1_131(Z, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(L, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      q1()
    end
    if menu1[2] == true then
      q2()
    end
    if menu1[3] == true then
      q3()
    end
    if menu1[4] == true then
      q4()
    end
    if menu1[5] == true then
      q5()
    end
    if menu1[6] == true then
      q6()
    end
    if menu1[7] == true then
      q7()
    end
    if menu1[8] == true then
      q8()
    end
    if menu1[9] == true then
      q9()
    end
    if menu1[10] == true then
      q10()
    end
    if menu1[11] == true then
      q11()
    end
    if menu1[12] == true then
      q12()
    end
    if menu1[13] == true then
      q13()
    end
    if menu1[14] == true then
      HOME()
    end
  end
  GLWW = -1
end

function R()
  menu1 = L4_134({
    L1_131(K, "E586B0E99984E9AD94E79FB331"),
    L1_131(O, "E586B0E99984E9AD94E79FB332"),
    L1_131(Z, "E586B0E99984E9AD94E79FB333"),
    L1_131(G, "E586B0E99984E9AD94E79FB334"),
    L1_131(O, "E586B0E99984E9AD94E79FB335"),
    L1_131(L, "E586B0E99984E9AD94E79FB336"),
    L1_131(Z, "E586B0E99984E9AD94E79FB337"),
    L1_131(R, "E586B0E99984E9AD94E79FB338"),
    L1_131(K, "E586B0E99984E9AD94E79FB339"),
    L1_131(Z, "E586B0E99984E9AD94E79FB33130"),
    L1_131(C, "E586B0E99984E9AD94E79FB33131"),
    L1_131(N, "E586B0E99984E9AD94E79FB33132"),
    L1_131(G, "E586B0E99984E9AD94E79FB33133"),
    L1_131(Z, "E586B0E99984E9AD94E79FB33134"),
    L1_131(L, "E586B0E99984E9AD94E79FB33135"),
    L1_131(X, "E586B0E99984E9AD94E79FB33136"),
    L1_131(H, "E586B0E99984E9AD94E79FB33137"),
    L1_131(W, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(X, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      r1()
    end
    if menu1[2] == true then
      r2()
    end
    if menu1[3] == true then
      r3()
    end
    if menu1[4] == true then
      r4()
    end
    if menu1[5] == true then
      r5()
    end
    if menu1[6] == true then
      r6()
    end
    if menu1[7] == true then
      r7()
    end
    if menu1[8] == true then
      r8()
    end
    if menu1[9] == true then
      r9()
    end
    if menu1[10] == true then
      r10()
    end
    if menu1[11] == true then
      r11()
    end
    if menu1[12] == true then
      r12()
    end
    if menu1[13] == true then
      r13()
    end
    if menu1[14] == true then
      r14()
    end
    if menu1[15] == true then
      r15()
    end
    if menu1[16] == true then
      r16()
    end
    if menu1[17] == true then
      r17()
    end
    if menu1[18] == true then
      HOME()
    end
  end
  GLWW = -1
end

function S()
  menu1 = L4_134({
    L1_131(S, "E794B5E99984E9AD94E79FB331"),
    L1_131(W, "E794B5E99984E9AD94E79FB332"),
    L1_131(H, "E794B5E99984E9AD94E79FB333"),
    L1_131(F, "E794B5E99984E9AD94E79FB334"),
    L1_131(J, "E794B5E99984E9AD94E79FB335"),
    L1_131(K, "E794B5E99984E9AD94E79FB336"),
    L1_131(Z, "E794B5E99984E9AD94E79FB337"),
    L1_131(V, "E794B5E99984E9AD94E79FB338"),
    L1_131(Y, "E794B5E99984E9AD94E79FB339"),
    L1_131(F, "E794B5E99984E9AD94E79FB33130"),
    L1_131(M, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(A, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      s1()
    end
    if menu1[2] == true then
      s2()
    end
    if menu1[3] == true then
      s3()
    end
    if menu1[4] == true then
      s4()
    end
    if menu1[5] == true then
      s5()
    end
    if menu1[6] == true then
      s6()
    end
    if menu1[7] == true then
      s7()
    end
    if menu1[8] == true then
      s8()
    end
    if menu1[9] == true then
      s9()
    end
    if menu1[10] == true then
      s10()
    end
    if menu1[11] == true then
      HOME()
    end
  end
  GLWW = -1
end

function T()
  menu1 = L4_134({
    L1_131(V, "E69A97E9BB91E99CB8E78E8BE9BE9931"),
    L1_131(J, "E69A97E9BB91E99CB8E78E8BE9BE9932"),
    L1_131(S, "E69A97E9BB91E99CB8E78E8BE9BE9933"),
    L1_131(X, "E69A97E9BB91E99CB8E78E8BE9BE9934"),
    L1_131(N, "E69A97E9BB91E99CB8E78E8BE9BE9935"),
    L1_131(A, "E69A97E9BB91E99CB8E78E8BE9BE9936"),
    L1_131(N, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(A, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      t1()
    end
    if menu1[2] == true then
      t2()
    end
    if menu1[3] == true then
      t3()
    end
    if menu1[4] == true then
      t4()
    end
    if menu1[5] == true then
      t5()
    end
    if menu1[6] == true then
      t6()
    end
    if menu1[7] == true then
      HOME()
    end
  end
  GLWW = -1
end

function U()
  menu1 = L4_134({
    L1_131(W, "E98791E79FBF31"),
    L1_131(J, "E98791E79FBF32"),
    L1_131(C, "E98791E79FBF33"),
    L1_131(Y, "E98791E79FBF34"),
    L1_131(B, "E98791E79FBF35"),
    L1_131(X, "E6B0B4E699B6E79FBF31"),
    L1_131(Q, "E6B0B4E699B6E79FBF32"),
    L1_131(Y, "E6B0B4E699B6E79FBF33"),
    L1_131(C, "E6B0B4E699B6E79FBF34"),
    L1_131(D, "E6B0B4E699B6E79FBF35"),
    L1_131(O, "E9BB91E88080E79FB3E79FBF31"),
    L1_131(C, "E9BB91E88080E79FB3E79FBF32"),
    L1_131(Y, "E9BB91E69B9CE79FB3E79FBF33"),
    L1_131(C, "E9BB91E88080E79FB3E79FBF34"),
    L1_131(P, "E9BB91E88080E79FB3E79FBF35"),
    L1_131(G, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(Q, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      u1()
    end
    if menu1[2] == true then
      u2()
    end
    if menu1[3] == true then
      u3()
    end
    if menu1[4] == true then
      u4()
    end
    if menu1[5] == true then
      u5()
    end
    if menu1[6] == true then
      u6()
    end
    if menu1[7] == true then
      u7()
    end
    if menu1[8] == true then
      u8()
    end
    if menu1[9] == true then
      u9()
    end
    if menu1[10] == true then
      u10()
    end
    if menu1[11] == true then
      u11()
    end
    if menu1[12] == true then
      u12()
    end
    if menu1[13] == true then
      u13()
    end
    if menu1[14] == true then
      u14()
    end
    if menu1[15] == true then
      u15()
    end
    if menu1[16] == true then
      HOME()
    end
  end
  GLWW = -1
end

function V()
  menu1 = L4_134({
    L1_131(X, "E588A0E999A4E5BBBAE7AD91E789A9"),
    L1_131(D, "E681A2E5A48DE5BBBAE7AD91E789A9"),
    L1_131(E, "E4BABAE789A9E9AB98E8B7B3"),
    L1_131(D, "E8BDBBE58A9FE6B0B4E4B88AE6BC82"),
    L1_131(M, "E5AE9AE680AA"),
    L1_131(C, "E58AA0E9809FE7ACACE4B880E6ADA5"),
    L1_131(S, "E58AA0E9809FE7ACACE4BA8CE6ADA5"),
    L1_131(T, "E4BABAE789A9E98181E59CB0"),
    L1_131(K, "E59CB0E5BDA2E4B88AE58D87"),
    L1_131(Q, "E58AA8E4BD9CE58AA0E9809F"),
    L1_131(Q, "EFB88FE9809FE5BAA6E5A29EE58AA028E5BF85E9A1BBE5BC80E590AFE5898DE4B8A4E4B8AAE58AA0E9809FE6898DE58FAFE4BBA529"),
    L1_131(K, "E681A2E5A48DE58AA0E9809FE694BBE587BBE4BD8DE7BDAEE5818FE7A7BB627567"),
    L1_131(F, "E58AA0E9809FE681A2E5A48D28E4B88AE99DA2E79A84E4B99FE8A681E5BC80E590AF29"),
    L1_131(R, "E88C83E59BB4E694BBE587BB"),
    L1_131(K, "E68BBEE58F96E88C83E59BB4"),
    L1_131(J, "E697A0E99990E99481E5AE9A"),
    L1_131(E, "E694BBE9809F"),
    L1_131(R, "E5BC93E887AAE79E84E5BC80E590AF"),
    L1_131(K, "E5BC93E887AAE79E84E585B3E997AD"),
    L1_131(L, "E69EAAE6A2B0E887AAE79E84E5BC80E590AF"),
    L1_131(M, "E69EAAE6A2B0E887AAE79E84E585B3E997AD"),
    L1_131(N, "E8BF94E59B9EE4B88AE4B880E9A1B5")
  }, nil, L1_131(A, "E6A2A6E9AD87E69C80E5B885"))
  if menu1 == nil then
  else
    if menu1[1] == true then
      v1()
    end
    if menu1[2] == true then
      v2()
    end
    if menu1[3] == true then
      v3()
    end
    if menu1[4] == true then
      v4()
    end
    if menu1[5] == true then
      v5()
    end
    if menu1[6] == true then
      v6()
    end
    if menu1[7] == true then
      v7()
    end
    if menu1[8] == true then
      v8()
    end
    if menu1[9] == true then
      v9()
    end
    if menu1[10] == true then
      v10()
    end
    if menu1[11] == true then
      v11()
    end
    if menu1[12] == true then
      v12()
    end
    if menu1[13] == true then
      v13()
    end
    if menu1[14] == true then
      v14()
    end
    if menu1[15] == true then
      v15()
    end
    if menu1[16] == true then
      v16()
    end
    if menu1[17] == true then
      v17()
    end
    if menu1[18] == true then
      v18()
    end
    if menu1[19] == true then
      v19()
    end
    if menu1[20] == true then
      v20()
    end
    if menu1[21] == true then
      v21()
    end
    if menu1[22] == true then
      HOME()
    end
  end
  GLWW = -1
end

function a1()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(R, "E6AF92E89891E88F8731")
    },
    {
      [L1_131(X, "76616C7565")] = 1092616192,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 1061997773,
      [L1_131(P, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(J, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 6415,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(P, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 11688,
      [L1_131(P, "6F6666736574")] = -52,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 0,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a2()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(J, "E6AF92E89891E88F8732")
    },
    {
      [L1_131(P, "76616C7565")] = 1092616192,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 1061997773,
      [L1_131(E, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 65540,
      [L1_131(F, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 7356,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 12190,
      [L1_131(C, "6F6666736574")] = -52,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 0,
      [L1_131(R, "6F6666736574")] = -60,
      [L1_131(G, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a3()
  qmnb = {
    {
      [L1_131(Z, "6D656D6F7279")] = 4
    },
    {
      [L1_131(A, "6E616D65")] = L1_131(K, "E6AF92E89891E88F8733")
    },
    {
      [L1_131(J, "76616C7565")] = 1092616192,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(G, "6F6666736574")] = 4,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 65540,
      [L1_131(N, "6F6666736574")] = 8,
      [L1_131(J, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 8098,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 13108,
      [L1_131(Y, "6F6666736574")] = -52,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 0,
      [L1_131(Q, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a4()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(T, "E6AF92E89891E88F8734")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 1061997773,
      [L1_131(D, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(G, "6F6666736574")] = 8,
      [L1_131(Q, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(C, "76616C7565")] = 8468,
      [L1_131(P, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 10636,
      [L1_131(E, "6F6666736574")] = -52,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 0,
      [L1_131(J, "6F6666736574")] = -60,
      [L1_131(T, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a5()
  qmnb = {
    {
      [L1_131(W, "6D656D6F7279")] = 4
    },
    {
      [L1_131(T, "6E616D65")] = L1_131(B, "E6AF92E89891E88F8735")
    },
    {
      [L1_131(U, "76616C7565")] = 1092616192,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 1061997773,
      [L1_131(P, "6F6666736574")] = 4,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 65540,
      [L1_131(F, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(V, "76616C7565")] = 7707,
      [L1_131(N, "6F6666736574")] = -68,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 10516,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 0,
      [L1_131(T, "6F6666736574")] = -60,
      [L1_131(X, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a6()
  qmnb = {
    {
      [L1_131(L, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(K, "E6AF92E89891E88F8736")
    },
    {
      [L1_131(X, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 1061997773,
      [L1_131(L, "6F6666736574")] = 4,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(Q, "6F6666736574")] = 8,
      [L1_131(X, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(W, "76616C7565")] = 7631,
      [L1_131(K, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 10356,
      [L1_131(P, "6F6666736574")] = -52,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 0,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(H, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a7()
  qmnb = {
    {
      [L1_131(C, "6D656D6F7279")] = 4
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(O, "E6AF92E89891E88F8737")
    },
    {
      [L1_131(M, "76616C7565")] = 1092616192,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(O, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(P, "76616C7565")] = 7532,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 9930,
      [L1_131(D, "6F6666736574")] = -52,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 0,
      [L1_131(H, "6F6666736574")] = -60,
      [L1_131(W, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a8()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(F, "E6AF92E89891E88F8738")
    },
    {
      [L1_131(O, "76616C7565")] = 1092616192,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 1061997773,
      [L1_131(F, "6F6666736574")] = 4,
      [L1_131(C, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 65540,
      [L1_131(Q, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(R, "76616C7565")] = 7814,
      [L1_131(S, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 6521,
      [L1_131(O, "6F6666736574")] = -52,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 0,
      [L1_131(U, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a9()
  qmnb = {
    {
      [L1_131(Q, "6D656D6F7279")] = 4
    },
    {
      [L1_131(C, "6E616D65")] = L1_131(A, "E6AF92E89891E88F8739")
    },
    {
      [L1_131(J, "76616C7565")] = 1092616192,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 1061997773,
      [L1_131(W, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 65540,
      [L1_131(R, "6F6666736574")] = 8,
      [L1_131(B, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(P, "76616C7565")] = 7967,
      [L1_131(Z, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 6510,
      [L1_131(O, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 0,
      [L1_131(N, "6F6666736574")] = -60,
      [L1_131(W, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a10()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(O, "E6AF92E89891E88F873130")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(W, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(S, "6C76")] = 65540,
      [L1_131(N, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(G, "76616C7565")] = 7989,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 6671,
      [L1_131(C, "6F6666736574")] = -52,
      [L1_131(P, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 0,
      [L1_131(T, "6F6666736574")] = -60,
      [L1_131(R, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a11()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = 4
    },
    {
      [L1_131(N, "6E616D65")] = L1_131(M, "E6AF92E89891E88F873131")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(E, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(W, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 10617,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 7853,
      [L1_131(W, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 0,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(E, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a12()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = 4
    },
    {
      [L1_131(U, "6E616D65")] = L1_131(T, "E6AF92E89891E88F873132")
    },
    {
      [L1_131(Q, "76616C7565")] = 1092616192,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 1061997773,
      [L1_131(F, "6F6666736574")] = 4,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(S, "6C76")] = 65540,
      [L1_131(E, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 15853,
      [L1_131(H, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 11385,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 0,
      [L1_131(F, "6F6666736574")] = -60,
      [L1_131(S, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a13()
  qmnb = {
    {
      [L1_131(Z, "6D656D6F7279")] = 4
    },
    {
      [L1_131(V, "6E616D65")] = L1_131(C, "E6AF92E89891E88F873133")
    },
    {
      [L1_131(R, "76616C7565")] = 1092616192,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 1061997773,
      [L1_131(U, "6F6666736574")] = 4,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 65540,
      [L1_131(R, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(K, "76616C7565")] = 16027,
      [L1_131(K, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 10163,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 0,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(H, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a14()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(B, "E6AF92E89891E88F873134")
    },
    {
      [L1_131(B, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(J, "6F6666736574")] = 4,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 65540,
      [L1_131(Q, "6F6666736574")] = 8,
      [L1_131(B, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 13446,
      [L1_131(H, "6F6666736574")] = -68,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 10044,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 0,
      [L1_131(N, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a15()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(F, "E6AF92E89891E88F873135")
    },
    {
      [L1_131(G, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(Z, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(O, "76616C7565")] = 13301,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 10040,
      [L1_131(G, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 0,
      [L1_131(K, "6F6666736574")] = -60,
      [L1_131(W, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function a16()
  qmnb = {
    {
      [L1_131(L, "6D656D6F7279")] = 4
    },
    {
      [L1_131(V, "6E616D65")] = L1_131(N, "E6AF92E89891E88F873136")
    },
    {
      [L1_131(B, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 1061997773,
      [L1_131(Y, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 65540,
      [L1_131(H, "6F6666736574")] = 8,
      [L1_131(W, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(U, "76616C7565")] = 13798,
      [L1_131(B, "6F6666736574")] = -68,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 7325,
      [L1_131(D, "6F6666736574")] = -52,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 0,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(K, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b1()
  qmnb = {
    {
      [L1_131(F, "6D656D6F7279")] = 4
    },
    {
      [L1_131(G, "6E616D65")] = L1_131(X, "E781ABE9BE99E88D8931")
    },
    {
      [L1_131(L, "76616C7565")] = 1092616192,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(R, "6F6666736574")] = 4,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(H, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 11156,
      [L1_131(Q, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 10737,
      [L1_131(X, "6F6666736574")] = -52,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 0,
      [L1_131(F, "6F6666736574")] = -60,
      [L1_131(O, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b2()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = 4
    },
    {
      [L1_131(C, "6E616D65")] = L1_131(N, "E781ABE9BE99E88D8932")
    },
    {
      [L1_131(M, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 1061997773,
      [L1_131(O, "6F6666736574")] = 4,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 65540,
      [L1_131(K, "6F6666736574")] = 8,
      [L1_131(E, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 11315,
      [L1_131(H, "6F6666736574")] = -68,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 10714,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 0,
      [L1_131(H, "6F6666736574")] = -60,
      [L1_131(F, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b3()
  qmnb = {
    {
      [L1_131(W, "6D656D6F7279")] = 4
    },
    {
      [L1_131(A, "6E616D65")] = L1_131(K, "E781ABE9BE99E88D8933")
    },
    {
      [L1_131(C, "76616C7565")] = 1092616192,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 1061997773,
      [L1_131(S, "6F6666736574")] = 4,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 65540,
      [L1_131(S, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Z, "76616C7565")] = 10504,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 9886,
      [L1_131(L, "6F6666736574")] = -52,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 0,
      [L1_131(X, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b4()
  qmnb = {
    {
      [L1_131(Z, "6D656D6F7279")] = 4
    },
    {
      [L1_131(S, "6E616D65")] = L1_131(V, "E781ABE9BE99E88D8934")
    },
    {
      [L1_131(T, "76616C7565")] = 1092616192,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(P, "6F6666736574")] = 4,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 65540,
      [L1_131(X, "6F6666736574")] = 8,
      [L1_131(S, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 10416,
      [L1_131(Q, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 9783,
      [L1_131(L, "6F6666736574")] = -52,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b5()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(T, "6E616D65")] = L1_131(X, "E781ABE9BE99E88D8935")
    },
    {
      [L1_131(C, "76616C7565")] = 1092616192,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(O, "6F6666736574")] = 8,
      [L1_131(T, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 11478,
      [L1_131(Y, "6F6666736574")] = -68,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 9048,
      [L1_131(D, "6F6666736574")] = -52,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 0,
      [L1_131(Q, "6F6666736574")] = -60,
      [L1_131(U, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b6()
  qmnb = {
    {
      [L1_131(C, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(U, "E781ABE9BE99E88D8936")
    },
    {
      [L1_131(M, "76616C7565")] = 1092616192,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(Z, "6F6666736574")] = 8,
      [L1_131(H, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(C, "76616C7565")] = 11545,
      [L1_131(B, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 9057,
      [L1_131(J, "6F6666736574")] = -52,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 0,
      [L1_131(B, "6F6666736574")] = -60,
      [L1_131(S, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b7()
  qmnb = {
    {
      [L1_131(P, "6D656D6F7279")] = 4
    },
    {
      [L1_131(U, "6E616D65")] = L1_131(J, "E586B0E9BE99E88D8931")
    },
    {
      [L1_131(B, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 1061997773,
      [L1_131(U, "6F6666736574")] = 4,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 65540,
      [L1_131(F, "6F6666736574")] = 8,
      [L1_131(S, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 11600,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 18370,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 73,
      [L1_131(Q, "6F6666736574")] = -60,
      [L1_131(O, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b8()
  qmnb = {
    {
      [L1_131(G, "6D656D6F7279")] = 4
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(K, "E586B0E9BE99E88D8932")
    },
    {
      [L1_131(Q, "76616C7565")] = 1092616192,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 1061997773,
      [L1_131(U, "6F6666736574")] = 4,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 65540,
      [L1_131(F, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(W, "76616C7565")] = 11605,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 18270,
      [L1_131(O, "6F6666736574")] = -52,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 38,
      [L1_131(K, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b9()
  qmnb = {
    {
      [L1_131(U, "6D656D6F7279")] = 4
    },
    {
      [L1_131(G, "6E616D65")] = L1_131(L, "E586B0E9BE99E88D8933")
    },
    {
      [L1_131(S, "76616C7565")] = 1092616192,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(S, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 65540,
      [L1_131(L, "6F6666736574")] = 8,
      [L1_131(D, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(B, "76616C7565")] = 11645,
      [L1_131(Z, "6F6666736574")] = -68,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 18209,
      [L1_131(O, "6F6666736574")] = -52,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 64,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(G, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b10()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = 4
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(M, "E586B0E9BE99E88D8934")
    },
    {
      [L1_131(W, "76616C7565")] = 1092616192,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 1061997773,
      [L1_131(Q, "6F6666736574")] = 4,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(Z, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(Z, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(F, "76616C7565")] = 11780,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 18389,
      [L1_131(Y, "6F6666736574")] = -52,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 32,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(V, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b11()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = 4
    },
    {
      [L1_131(L, "6E616D65")] = L1_131(J, "E586B0E9BE99E88D8935")
    },
    {
      [L1_131(O, "76616C7565")] = 1092616192,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 1061997773,
      [L1_131(R, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 65540,
      [L1_131(S, "6F6666736574")] = 8,
      [L1_131(X, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(J, "76616C7565")] = 11800,
      [L1_131(L, "6F6666736574")] = -68,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 18285,
      [L1_131(N, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 50,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(H, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b12()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = 4
    },
    {
      [L1_131(C, "6E616D65")] = L1_131(X, "E586B0E9BE99E88D8936")
    },
    {
      [L1_131(N, "76616C7565")] = 1092616192,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 65540,
      [L1_131(T, "6F6666736574")] = 8,
      [L1_131(V, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 12270,
      [L1_131(L, "6F6666736574")] = -68,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 18260,
      [L1_131(L, "6F6666736574")] = -52,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 28,
      [L1_131(N, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b13()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(V, "E586B0E9BE99E88D8937")
    },
    {
      [L1_131(N, "76616C7565")] = 1092616192,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(X, "6F6666736574")] = 4,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 65540,
      [L1_131(K, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(U, "76616C7565")] = 12350,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 18150,
      [L1_131(S, "6F6666736574")] = -52,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 24,
      [L1_131(Z, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b14()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(D, "6E616D65")] = L1_131(P, "E586B0E9BE99E88D8938")
    },
    {
      [L1_131(Y, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 65540,
      [L1_131(P, "6F6666736574")] = 8,
      [L1_131(A, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(T, "76616C7565")] = 12295,
      [L1_131(B, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 18140,
      [L1_131(X, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 23,
      [L1_131(H, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b15()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(D, "E586B0E9BE99E88D8939")
    },
    {
      [L1_131(V, "76616C7565")] = 1092616192,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 1061997773,
      [L1_131(L, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 65540,
      [L1_131(P, "6F6666736574")] = 8,
      [L1_131(D, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(K, "76616C7565")] = 12200,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 18100,
      [L1_131(P, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 28,
      [L1_131(H, "6F6666736574")] = -60,
      [L1_131(J, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b16()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(N, "6E616D65")] = L1_131(W, "E586B0E9BE99E88D893130")
    },
    {
      [L1_131(N, "76616C7565")] = 1092616192,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(S, "6F6666736574")] = 4,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 65540,
      [L1_131(C, "6F6666736574")] = 8,
      [L1_131(P, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(K, "76616C7565")] = 12300,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 18050,
      [L1_131(D, "6F6666736574")] = -52,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 23,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b17()
  qmnb = {
    {
      [L1_131(F, "6D656D6F7279")] = 4
    },
    {
      [L1_131(F, "6E616D65")] = L1_131(Q, "E586B0E9BE99E88D893131")
    },
    {
      [L1_131(W, "76616C7565")] = 1092616192,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 65540,
      [L1_131(K, "6F6666736574")] = 8,
      [L1_131(J, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(R, "76616C7565")] = 12150,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 17810,
      [L1_131(W, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 50,
      [L1_131(J, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b18()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = 4
    },
    {
      [L1_131(O, "6E616D65")] = L1_131(H, "E586B0E9BE99E88D893132")
    },
    {
      [L1_131(L, "76616C7565")] = 1092616192,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(Y, "6F6666736574")] = 4,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(J, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 12061,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 17810,
      [L1_131(E, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 69,
      [L1_131(V, "6F6666736574")] = -60,
      [L1_131(J, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b19()
  qmnb = {
    {
      [L1_131(Z, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(H, "E586B0E9BE99E88D893133")
    },
    {
      [L1_131(R, "76616C7565")] = 1092616192,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(Z, "6C76")] = 1061997773,
      [L1_131(G, "6F6666736574")] = 4,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 65540,
      [L1_131(E, "6F6666736574")] = 8,
      [L1_131(K, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 12130,
      [L1_131(S, "6F6666736574")] = -68,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 17776,
      [L1_131(G, "6F6666736574")] = -52,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 47,
      [L1_131(A, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b20()
  qmnb = {
    {
      [L1_131(W, "6D656D6F7279")] = 4
    },
    {
      [L1_131(N, "6E616D65")] = L1_131(N, "E586B0E9BE99E88D893134")
    },
    {
      [L1_131(V, "76616C7565")] = 1092616192,
      [L1_131(U, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 1061997773,
      [L1_131(L, "6F6666736574")] = 4,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 65540,
      [L1_131(C, "6F6666736574")] = 8,
      [L1_131(P, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 12025,
      [L1_131(L, "6F6666736574")] = -68,
      [L1_131(P, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 17725,
      [L1_131(W, "6F6666736574")] = -52,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 78,
      [L1_131(A, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b21()
  qmnb = {
    {
      [L1_131(C, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(R, "E586B0E9BE99E88D893135")
    },
    {
      [L1_131(R, "76616C7565")] = 1092616192,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 1061997773,
      [L1_131(P, "6F6666736574")] = 4,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(N, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(E, "76616C7565")] = 12060,
      [L1_131(P, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 17690,
      [L1_131(L, "6F6666736574")] = -52,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 68,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(S, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b22()
  qmnb = {
    {
      [L1_131(E, "6D656D6F7279")] = 4
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(K, "E586B0E9BE99E88D893136")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 1061997773,
      [L1_131(L, "6F6666736574")] = 4,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 65540,
      [L1_131(E, "6F6666736574")] = 8,
      [L1_131(W, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 11600,
      [L1_131(L, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 17700,
      [L1_131(L, "6F6666736574")] = -52,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 38,
      [L1_131(V, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b23()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = 4
    },
    {
      [L1_131(A, "6E616D65")] = L1_131(E, "E586B0E9BE99E88D893137")
    },
    {
      [L1_131(O, "76616C7565")] = 1092616192,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 1061997773,
      [L1_131(P, "6F6666736574")] = 4,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 65540,
      [L1_131(G, "6F6666736574")] = 8,
      [L1_131(G, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Z, "76616C7565")] = 11700,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 17660,
      [L1_131(D, "6F6666736574")] = -52,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 65,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(L, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b24()
  qmnb = {
    {
      [L1_131(Z, "6D656D6F7279")] = 4
    },
    {
      [L1_131(P, "6E616D65")] = L1_131(Z, "E586B0E9BE99E88D893138")
    },
    {
      [L1_131(N, "76616C7565")] = 1092616192,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(P, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(G, "76616C7565")] = 11577,
      [L1_131(U, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 17650,
      [L1_131(O, "6F6666736574")] = -52,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 28,
      [L1_131(H, "6F6666736574")] = -60,
      [L1_131(Q, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b25()
  qmnb = {
    {
      [L1_131(K, "6D656D6F7279")] = 4
    },
    {
      [L1_131(L, "6E616D65")] = L1_131(K, "E586B0E9BE99E88D893139")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(S, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 65540,
      [L1_131(K, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 11700,
      [L1_131(V, "6F6666736574")] = -68,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 17590,
      [L1_131(J, "6F6666736574")] = -52,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 56,
      [L1_131(B, "6F6666736574")] = -60,
      [L1_131(H, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function b26()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(G, "6E616D65")] = L1_131(A, "E586B0E9BE99E88D893230")
    },
    {
      [L1_131(L, "76616C7565")] = 1092616192,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 65540,
      [L1_131(W, "6F6666736574")] = 8,
      [L1_131(W, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 11566,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 17569,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 48,
      [L1_131(T, "6F6666736574")] = -60,
      [L1_131(R, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function c1()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(R, "E7ABB9E7AC8B31")
    },
    {
      [L1_131(S, "76616C7565")] = 1092616192,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 1061997773,
      [L1_131(R, "6F6666736574")] = 4,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 65540,
      [L1_131(Q, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(K, "76616C7565")] = 5199,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 14157,
      [L1_131(Z, "6F6666736574")] = -52,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 0,
      [L1_131(U, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function c2()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = 4
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(Z, "E7ABB9E7AC8B32")
    },
    {
      [L1_131(K, "76616C7565")] = 1092616192,
      [L1_131(C, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 1061997773,
      [L1_131(G, "6F6666736574")] = 4,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 65540,
      [L1_131(O, "6F6666736574")] = 8,
      [L1_131(A, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(L, "76616C7565")] = 13431,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 6679,
      [L1_131(K, "6F6666736574")] = -52,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 0,
      [L1_131(Q, "6F6666736574")] = -60,
      [L1_131(F, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function c3()
  qmnb = {
    {
      [L1_131(G, "6D656D6F7279")] = 4
    },
    {
      [L1_131(G, "6E616D65")] = L1_131(V, "E7ABB9E7AC8B33")
    },
    {
      [L1_131(A, "76616C7565")] = 1092616192,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(U, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 15715,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 11267,
      [L1_131(A, "6F6666736574")] = -52,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 0,
      [L1_131(T, "6F6666736574")] = -60,
      [L1_131(C, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function c4()
  qmnb = {
    {
      [L1_131(F, "6D656D6F7279")] = 4
    },
    {
      [L1_131(A, "6E616D65")] = L1_131(B, "E7ABB9E7AC8B34")
    },
    {
      [L1_131(V, "76616C7565")] = 1092616192,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 65540,
      [L1_131(R, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 16241,
      [L1_131(R, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 11242,
      [L1_131(X, "6F6666736574")] = -52,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 0,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function c5()
  qmnb = {
    {
      [L1_131(V, "6D656D6F7279")] = 4
    },
    {
      [L1_131(S, "6E616D65")] = L1_131(P, "E7ABB9E7AC8B35")
    },
    {
      [L1_131(H, "76616C7565")] = 1092616192,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 65540,
      [L1_131(E, "6F6666736574")] = 8,
      [L1_131(Q, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(K, "76616C7565")] = 15998,
      [L1_131(V, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 11236,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 0,
      [L1_131(U, "6F6666736574")] = -60,
      [L1_131(Y, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function d1()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(V, "E58C97E5A283E5AE9DE7AEB131")
    },
    {
      [L1_131(C, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(M, "74797065")] = L31_161
    },
    {
      [L1_131(P, "6C76")] = 0.125,
      [L1_131(J, "6F6666736574")] = -16,
      [L1_131(F, "74797065")] = L31_161
    },
    {
      [L1_131(U, "6C76")] = 3.207297995686531E-4,
      [L1_131(P, "6F6666736574")] = -68,
      [L1_131(S, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(J, "76616C7565")] = 12244,
      [L1_131(K, "6F6666736574")] = 20,
      [L1_131(J, "74797065")] = L31_161
    },
    {
      [L1_131(R, "76616C7565")] = 0,
      [L1_131(A, "6F6666736574")] = 28,
      [L1_131(C, "74797065")] = L31_161
    },
    {
      [L1_131(R, "76616C7565")] = 18135,
      [L1_131(R, "6F6666736574")] = 36,
      [L1_131(N, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function d2()
  qmnb = {
    {
      [L1_131(L, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(M, "6E616D65")] = L1_131(N, "E58C97E5A283E5AE9DE7AEB132")
    },
    {
      [L1_131(X, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(M, "74797065")] = L31_161
    },
    {
      [L1_131(K, "6C76")] = 0.125,
      [L1_131(C, "6F6666736574")] = -16,
      [L1_131(H, "74797065")] = L31_161
    },
    {
      [L1_131(N, "6C76")] = 3.207297995686531E-4,
      [L1_131(S, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 11689,
      [L1_131(A, "6F6666736574")] = 20,
      [L1_131(N, "74797065")] = L31_161
    },
    {
      [L1_131(B, "76616C7565")] = 0,
      [L1_131(J, "6F6666736574")] = 28,
      [L1_131(R, "74797065")] = L31_161
    },
    {
      [L1_131(Q, "76616C7565")] = 17998,
      [L1_131(Y, "6F6666736574")] = 36,
      [L1_131(J, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function d3()
  qmnb = {
    {
      [L1_131(U, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(Q, "6E616D65")] = L1_131(V, "E58C97E5A283E5AE9DE7AEB133")
    },
    {
      [L1_131(H, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(T, "74797065")] = L31_161
    },
    {
      [L1_131(S, "6C76")] = 0.125,
      [L1_131(J, "6F6666736574")] = -16,
      [L1_131(B, "74797065")] = L31_161
    },
    {
      [L1_131(G, "6C76")] = 3.207297995686531E-4,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(C, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(C, "76616C7565")] = 11847,
      [L1_131(O, "6F6666736574")] = 20,
      [L1_131(X, "74797065")] = L31_161
    },
    {
      [L1_131(R, "76616C7565")] = 263,
      [L1_131(W, "6F6666736574")] = 28,
      [L1_131(U, "74797065")] = L31_161
    },
    {
      [L1_131(R, "76616C7565")] = 17809,
      [L1_131(Y, "6F6666736574")] = 36,
      [L1_131(T, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function d4()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(H, "E58C97E5A283E5AE9DE7AEB134")
    },
    {
      [L1_131(A, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(A, "74797065")] = L31_161
    },
    {
      [L1_131(J, "6C76")] = 0.125,
      [L1_131(R, "6F6666736574")] = -16,
      [L1_131(B, "74797065")] = L31_161
    },
    {
      [L1_131(A, "6C76")] = 3.207297995686531E-4,
      [L1_131(E, "6F6666736574")] = -68,
      [L1_131(E, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 11939,
      [L1_131(P, "6F6666736574")] = 20,
      [L1_131(F, "74797065")] = L31_161
    },
    {
      [L1_131(C, "76616C7565")] = 0,
      [L1_131(M, "6F6666736574")] = 28,
      [L1_131(J, "74797065")] = L31_161
    },
    {
      [L1_131(C, "76616C7565")] = 17583,
      [L1_131(J, "6F6666736574")] = 36,
      [L1_131(J, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e1()
  qmnb = {
    {
      [L1_131(E, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(G, "E69DBEE99CB231")
    },
    {
      [L1_131(X, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(J, "74797065")] = L31_161
    },
    {
      [L1_131(X, "6C76")] = 0.125,
      [L1_131(J, "6F6666736574")] = -16,
      [L1_131(F, "74797065")] = L31_161
    },
    {
      [L1_131(W, "6C76")] = 3.207297995686531E-4,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 8853,
      [L1_131(M, "6F6666736574")] = 20,
      [L1_131(T, "74797065")] = L31_161
    },
    {
      [L1_131(Y, "76616C7565")] = 0,
      [L1_131(B, "6F6666736574")] = 28,
      [L1_131(F, "74797065")] = L31_161
    },
    {
      [L1_131(G, "76616C7565")] = 14684,
      [L1_131(O, "6F6666736574")] = 36,
      [L1_131(W, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e2()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(Z, "E69DBEE99CB232")
    },
    {
      [L1_131(C, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(S, "74797065")] = L31_161
    },
    {
      [L1_131(L, "6C76")] = 0.125,
      [L1_131(D, "6F6666736574")] = -16,
      [L1_131(M, "74797065")] = L31_161
    },
    {
      [L1_131(O, "6C76")] = 3.207297995686531E-4,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(P, "76616C7565")] = 9245,
      [L1_131(F, "6F6666736574")] = 20,
      [L1_131(N, "74797065")] = L31_161
    },
    {
      [L1_131(A, "76616C7565")] = 0,
      [L1_131(V, "6F6666736574")] = 28,
      [L1_131(C, "74797065")] = L31_161
    },
    {
      [L1_131(B, "76616C7565")] = 14078,
      [L1_131(G, "6F6666736574")] = 36,
      [L1_131(W, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e3()
  qmnb = {
    {
      [L1_131(L, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(P, "6E616D65")] = L1_131(N, "E69DBEE99CB233")
    },
    {
      [L1_131(Y, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(B, "74797065")] = L31_161
    },
    {
      [L1_131(F, "6C76")] = 0.125,
      [L1_131(Y, "6F6666736574")] = -16,
      [L1_131(N, "74797065")] = L31_161
    },
    {
      [L1_131(A, "6C76")] = 3.207297995686531E-4,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 10004,
      [L1_131(E, "6F6666736574")] = 20,
      [L1_131(V, "74797065")] = L31_161
    },
    {
      [L1_131(J, "76616C7565")] = 0,
      [L1_131(F, "6F6666736574")] = 28,
      [L1_131(G, "74797065")] = L31_161
    },
    {
      [L1_131(A, "76616C7565")] = 15499,
      [L1_131(H, "6F6666736574")] = 36,
      [L1_131(P, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e4()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(H, "E69DBEE99CB234")
    },
    {
      [L1_131(F, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(Y, "74797065")] = L31_161
    },
    {
      [L1_131(Z, "6C76")] = 0.125,
      [L1_131(A, "6F6666736574")] = -16,
      [L1_131(G, "74797065")] = L31_161
    },
    {
      [L1_131(Y, "6C76")] = 3.207297995686531E-4,
      [L1_131(N, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(F, "76616C7565")] = 10323,
      [L1_131(U, "6F6666736574")] = 20,
      [L1_131(D, "74797065")] = L31_161
    },
    {
      [L1_131(W, "76616C7565")] = 0,
      [L1_131(J, "6F6666736574")] = 28,
      [L1_131(O, "74797065")] = L31_161
    },
    {
      [L1_131(B, "76616C7565")] = 7473,
      [L1_131(U, "6F6666736574")] = 36,
      [L1_131(U, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e5()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(D, "E69DBEE99CB235")
    },
    {
      [L1_131(L, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(G, "74797065")] = L31_161
    },
    {
      [L1_131(S, "6C76")] = 0.125,
      [L1_131(H, "6F6666736574")] = -16,
      [L1_131(L, "74797065")] = L31_161
    },
    {
      [L1_131(A, "6C76")] = 3.207297995686531E-4,
      [L1_131(J, "6F6666736574")] = -68,
      [L1_131(V, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(V, "76616C7565")] = 10337,
      [L1_131(Y, "6F6666736574")] = 20,
      [L1_131(W, "74797065")] = L31_161
    },
    {
      [L1_131(E, "76616C7565")] = 0,
      [L1_131(V, "6F6666736574")] = 28,
      [L1_131(B, "74797065")] = L31_161
    },
    {
      [L1_131(Y, "76616C7565")] = 7571,
      [L1_131(X, "6F6666736574")] = 36,
      [L1_131(Y, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e6()
  qmnb = {
    {
      [L1_131(C, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(H, "6E616D65")] = L1_131(Y, "E69DBEE99CB236")
    },
    {
      [L1_131(K, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(M, "74797065")] = L31_161
    },
    {
      [L1_131(N, "6C76")] = 0.125,
      [L1_131(Q, "6F6666736574")] = -16,
      [L1_131(C, "74797065")] = L31_161
    },
    {
      [L1_131(Y, "6C76")] = 3.207297995686531E-4,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(N, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(O, "76616C7565")] = 10279,
      [L1_131(Y, "6F6666736574")] = 20,
      [L1_131(N, "74797065")] = L31_161
    },
    {
      [L1_131(E, "76616C7565")] = 0,
      [L1_131(J, "6F6666736574")] = 28,
      [L1_131(Q, "74797065")] = L31_161
    },
    {
      [L1_131(L, "76616C7565")] = 7658,
      [L1_131(U, "6F6666736574")] = 36,
      [L1_131(O, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e7()
  qmnb = {
    {
      [L1_131(E, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(K, "6E616D65")] = L1_131(P, "E69DBEE99CB237")
    },
    {
      [L1_131(P, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(J, "74797065")] = L31_161
    },
    {
      [L1_131(N, "6C76")] = 0.125,
      [L1_131(L, "6F6666736574")] = -16,
      [L1_131(J, "74797065")] = L31_161
    },
    {
      [L1_131(Y, "6C76")] = 3.207297995686531E-4,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(N, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(Z, "76616C7565")] = 10303,
      [L1_131(C, "6F6666736574")] = 20,
      [L1_131(A, "74797065")] = L31_161
    },
    {
      [L1_131(J, "76616C7565")] = 0,
      [L1_131(Z, "6F6666736574")] = 28,
      [L1_131(U, "74797065")] = L31_161
    },
    {
      [L1_131(V, "76616C7565")] = 7699,
      [L1_131(A, "6F6666736574")] = 36,
      [L1_131(K, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e8()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(H, "E69DBEE99CB238")
    },
    {
      [L1_131(R, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(H, "74797065")] = L31_161
    },
    {
      [L1_131(R, "6C76")] = 0.125,
      [L1_131(R, "6F6666736574")] = -16,
      [L1_131(G, "74797065")] = L31_161
    },
    {
      [L1_131(D, "6C76")] = 3.207297995686531E-4,
      [L1_131(Q, "6F6666736574")] = -68,
      [L1_131(O, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(V, "76616C7565")] = 10421,
      [L1_131(S, "6F6666736574")] = 20,
      [L1_131(E, "74797065")] = L31_161
    },
    {
      [L1_131(B, "76616C7565")] = 0,
      [L1_131(O, "6F6666736574")] = 28,
      [L1_131(X, "74797065")] = L31_161
    },
    {
      [L1_131(Q, "76616C7565")] = 7700,
      [L1_131(M, "6F6666736574")] = 36,
      [L1_131(L, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e9()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(P, "6E616D65")] = L1_131(F, "E69DBEE99CB239")
    },
    {
      [L1_131(Q, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(G, "74797065")] = L31_161
    },
    {
      [L1_131(M, "6C76")] = 0.125,
      [L1_131(S, "6F6666736574")] = -16,
      [L1_131(J, "74797065")] = L31_161
    },
    {
      [L1_131(A, "6C76")] = 3.207297995686531E-4,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(E, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(O, "76616C7565")] = 14041,
      [L1_131(Y, "6F6666736574")] = 20,
      [L1_131(X, "74797065")] = L31_161
    },
    {
      [L1_131(W, "76616C7565")] = 0,
      [L1_131(A, "6F6666736574")] = 28,
      [L1_131(Y, "74797065")] = L31_161
    },
    {
      [L1_131(J, "76616C7565")] = 7295,
      [L1_131(J, "6F6666736574")] = 36,
      [L1_131(N, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e10()
  qmnb = {
    {
      [L1_131(E, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(T, "6E616D65")] = L1_131(N, "E69DBEE99CB23130")
    },
    {
      [L1_131(U, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(T, "74797065")] = L31_161
    },
    {
      [L1_131(L, "6C76")] = 0.125,
      [L1_131(T, "6F6666736574")] = -16,
      [L1_131(A, "74797065")] = L31_161
    },
    {
      [L1_131(M, "6C76")] = 3.207297995686531E-4,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(U, "76616C7565")] = 14037,
      [L1_131(X, "6F6666736574")] = 20,
      [L1_131(D, "74797065")] = L31_161
    },
    {
      [L1_131(V, "76616C7565")] = 0,
      [L1_131(M, "6F6666736574")] = 28,
      [L1_131(R, "74797065")] = L31_161
    },
    {
      [L1_131(W, "76616C7565")] = 7630,
      [L1_131(E, "6F6666736574")] = 36,
      [L1_131(J, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e11()
  qmnb = {
    {
      [L1_131(Q, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(F, "6E616D65")] = L1_131(V, "E69DBEE99CB23131")
    },
    {
      [L1_131(Y, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(K, "74797065")] = L31_161
    },
    {
      [L1_131(W, "6C76")] = 0.125,
      [L1_131(R, "6F6666736574")] = -16,
      [L1_131(U, "74797065")] = L31_161
    },
    {
      [L1_131(G, "6C76")] = 3.207297995686531E-4,
      [L1_131(V, "6F6666736574")] = -68,
      [L1_131(E, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(P, "76616C7565")] = 13854,
      [L1_131(E, "6F6666736574")] = 20,
      [L1_131(K, "74797065")] = L31_161
    },
    {
      [L1_131(M, "76616C7565")] = 0,
      [L1_131(E, "6F6666736574")] = 28,
      [L1_131(X, "74797065")] = L31_161
    },
    {
      [L1_131(C, "76616C7565")] = 8030,
      [L1_131(T, "6F6666736574")] = 36,
      [L1_131(P, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e12()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(K, "6E616D65")] = L1_131(E, "E69DBEE99CB23132")
    },
    {
      [L1_131(N, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(R, "74797065")] = L31_161
    },
    {
      [L1_131(H, "6C76")] = 0.125,
      [L1_131(J, "6F6666736574")] = -16,
      [L1_131(S, "74797065")] = L31_161
    },
    {
      [L1_131(H, "6C76")] = 3.207297995686531E-4,
      [L1_131(U, "6F6666736574")] = -68,
      [L1_131(L, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(F, "76616C7565")] = 13560,
      [L1_131(D, "6F6666736574")] = 20,
      [L1_131(A, "74797065")] = L31_161
    },
    {
      [L1_131(M, "76616C7565")] = 0,
      [L1_131(H, "6F6666736574")] = 28,
      [L1_131(Y, "74797065")] = L31_161
    },
    {
      [L1_131(Y, "76616C7565")] = 7530,
      [L1_131(U, "6F6666736574")] = 36,
      [L1_131(H, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e13()
  qmnb = {
    {
      [L1_131(W, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(M, "6E616D65")] = L1_131(Q, "E69DBEE99CB23133")
    },
    {
      [L1_131(G, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(L, "74797065")] = L31_161
    },
    {
      [L1_131(L, "6C76")] = 0.125,
      [L1_131(O, "6F6666736574")] = -16,
      [L1_131(S, "74797065")] = L31_161
    },
    {
      [L1_131(Y, "6C76")] = 3.207297995686531E-4,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(O, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 13118,
      [L1_131(N, "6F6666736574")] = 20,
      [L1_131(R, "74797065")] = L31_161
    },
    {
      [L1_131(L, "76616C7565")] = 0,
      [L1_131(L, "6F6666736574")] = 28,
      [L1_131(X, "74797065")] = L31_161
    },
    {
      [L1_131(J, "76616C7565")] = 7211,
      [L1_131(H, "6F6666736574")] = 36,
      [L1_131(G, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e14()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(P, "E69DBEE99CB23134")
    },
    {
      [L1_131(W, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(O, "74797065")] = L31_161
    },
    {
      [L1_131(K, "6C76")] = 0.125,
      [L1_131(Y, "6F6666736574")] = -16,
      [L1_131(R, "74797065")] = L31_161
    },
    {
      [L1_131(P, "6C76")] = 3.207297995686531E-4,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(W, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 6878,
      [L1_131(D, "6F6666736574")] = 20,
      [L1_131(S, "74797065")] = L31_161
    },
    {
      [L1_131(P, "76616C7565")] = 0,
      [L1_131(T, "6F6666736574")] = 28,
      [L1_131(V, "74797065")] = L31_161
    },
    {
      [L1_131(Q, "76616C7565")] = 15658,
      [L1_131(A, "6F6666736574")] = 36,
      [L1_131(K, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function e15()
  qmnb = {
    {
      [L1_131(C, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(F, "6E616D65")] = L1_131(A, "E69DBEE99CB23135")
    },
    {
      [L1_131(A, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(S, "74797065")] = L31_161
    },
    {
      [L1_131(G, "6C76")] = 0.125,
      [L1_131(F, "6F6666736574")] = -16,
      [L1_131(C, "74797065")] = L31_161
    },
    {
      [L1_131(S, "6C76")] = 3.207297995686531E-4,
      [L1_131(L, "6F6666736574")] = -68,
      [L1_131(B, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 10061,
      [L1_131(A, "6F6666736574")] = 20,
      [L1_131(S, "74797065")] = L31_161
    },
    {
      [L1_131(D, "76616C7565")] = 0,
      [L1_131(E, "6F6666736574")] = 28,
      [L1_131(V, "74797065")] = L31_161
    },
    {
      [L1_131(W, "76616C7565")] = 14349,
      [L1_131(A, "6F6666736574")] = 36,
      [L1_131(P, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function f1()
  qmnb = {
    {
      [L1_131(Z, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(N, "E7BE8EE4BABAE9B1BC31")
    },
    {
      [L1_131(P, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 65540,
      [L1_131(R, "6F6666736574")] = 8,
      [L1_131(F, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(L, "76616C7565")] = 1241,
      [L1_131(Z, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 19735,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 21,
      [L1_131(D, "6F6666736574")] = -60,
      [L1_131(T, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f2()
  qmnb = {
    {
      [L1_131(S, "6D656D6F7279")] = 4
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(U, "E7BE8EE4BABAE9B1BC32")
    },
    {
      [L1_131(N, "76616C7565")] = 1092616192,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 1061997773,
      [L1_131(Y, "6F6666736574")] = 4,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(W, "6C76")] = 65540,
      [L1_131(X, "6F6666736574")] = 8,
      [L1_131(D, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 2241,
      [L1_131(L, "6F6666736574")] = -68,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 19735,
      [L1_131(X, "6F6666736574")] = -52,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 21,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(B, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f3()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(A, "E7BE8EE4BABAE9B1BC33")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 1061997773,
      [L1_131(C, "6F6666736574")] = 4,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(S, "6C76")] = 65540,
      [L1_131(K, "6F6666736574")] = 8,
      [L1_131(F, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(R, "76616C7565")] = 3741,
      [L1_131(U, "6F6666736574")] = -68,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 19735,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 21,
      [L1_131(T, "6F6666736574")] = -60,
      [L1_131(S, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f4()
  qmnb = {
    {
      [L1_131(E, "6D656D6F7279")] = 4
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(F, "E7BE8EE4BABAE9B1BC34")
    },
    {
      [L1_131(L, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 1061997773,
      [L1_131(P, "6F6666736574")] = 4,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(M, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 4241,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 18735,
      [L1_131(D, "6F6666736574")] = -52,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 21,
      [L1_131(J, "6F6666736574")] = -60,
      [L1_131(G, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f5()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = 4
    },
    {
      [L1_131(C, "6E616D65")] = L1_131(C, "E7BE8EE4BABAE9B1BC35")
    },
    {
      [L1_131(W, "76616C7565")] = 1092616192,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 1061997773,
      [L1_131(O, "6F6666736574")] = 4,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 65540,
      [L1_131(J, "6F6666736574")] = 8,
      [L1_131(G, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(L, "76616C7565")] = 741,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 18235,
      [L1_131(V, "6F6666736574")] = -52,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 21,
      [L1_131(Q, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f6()
  qmnb = {
    {
      [L1_131(X, "6D656D6F7279")] = 4
    },
    {
      [L1_131(L, "6E616D65")] = L1_131(E, "E7BE8EE4BABAE9B1BC36")
    },
    {
      [L1_131(G, "76616C7565")] = 1092616192,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 1061997773,
      [L1_131(F, "6F6666736574")] = 4,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 65540,
      [L1_131(D, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(V, "76616C7565")] = 741,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 17235,
      [L1_131(A, "6F6666736574")] = -52,
      [L1_131(P, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 21,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(F, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f7()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = 4
    },
    {
      [L1_131(V, "6E616D65")] = L1_131(D, "E7BE8EE4BABAE9B1BC37")
    },
    {
      [L1_131(C, "76616C7565")] = 1092616192,
      [L1_131(C, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(C, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(S, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(P, "76616C7565")] = 3741,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 17235,
      [L1_131(C, "6F6666736574")] = -52,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 21,
      [L1_131(E, "6F6666736574")] = -60,
      [L1_131(B, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f8()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(F, "E7BE8EE4BABAE9B1BC38")
    },
    {
      [L1_131(J, "76616C7565")] = 1092616192,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(X, "6F6666736574")] = 8,
      [L1_131(S, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(B, "76616C7565")] = 2241,
      [L1_131(Q, "6F6666736574")] = -68,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 16735,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 21,
      [L1_131(L, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f9()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = 4
    },
    {
      [L1_131(V, "6E616D65")] = L1_131(E, "E7BE8EE4BABAE9B1BC39")
    },
    {
      [L1_131(M, "76616C7565")] = 1092616192,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 65540,
      [L1_131(F, "6F6666736574")] = 8,
      [L1_131(A, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 19241,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 19735,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 21,
      [L1_131(N, "6F6666736574")] = -60,
      [L1_131(R, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f10()
  qmnb = {
    {
      [L1_131(Q, "6D656D6F7279")] = 4
    },
    {
      [L1_131(G, "6E616D65")] = L1_131(O, "E7BE8EE4BABAE9B1BC3130")
    },
    {
      [L1_131(B, "76616C7565")] = 1092616192,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 1061997773,
      [L1_131(R, "6F6666736574")] = 4,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(S, "6C76")] = 65540,
      [L1_131(N, "6F6666736574")] = 8,
      [L1_131(T, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(L, "76616C7565")] = 17741,
      [L1_131(Y, "6F6666736574")] = -68,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 19735,
      [L1_131(O, "6F6666736574")] = -52,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 21,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f11()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(Z, "E7BE8EE4BABAE9B1BC3131")
    },
    {
      [L1_131(Y, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 1061997773,
      [L1_131(C, "6F6666736574")] = 4,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 65540,
      [L1_131(K, "6F6666736574")] = 8,
      [L1_131(E, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 15241,
      [L1_131(Z, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 19235,
      [L1_131(E, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 21,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f12()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(X, "E7BE8EE4BABAE9B1BC3132")
    },
    {
      [L1_131(Z, "76616C7565")] = 1092616192,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 1061997773,
      [L1_131(C, "6F6666736574")] = 4,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(E, "6F6666736574")] = 8,
      [L1_131(N, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 19241,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 18735,
      [L1_131(R, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 21,
      [L1_131(D, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f13()
  qmnb = {
    {
      [L1_131(X, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(V, "E7BE8EE4BABAE9B1BC3133")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 1061997773,
      [L1_131(R, "6F6666736574")] = 4,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(W, "6C76")] = 65540,
      [L1_131(E, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(U, "76616C7565")] = 14241,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 18235,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 21,
      [L1_131(N, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f14()
  qmnb = {
    {
      [L1_131(E, "6D656D6F7279")] = 4
    },
    {
      [L1_131(L, "6E616D65")] = L1_131(Y, "E7BE8EE4BABAE9B1BC3134")
    },
    {
      [L1_131(C, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 1061997773,
      [L1_131(Y, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 65540,
      [L1_131(S, "6F6666736574")] = 8,
      [L1_131(Q, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(B, "76616C7565")] = 18241,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 17735,
      [L1_131(Q, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 21,
      [L1_131(D, "6F6666736574")] = -60,
      [L1_131(S, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f15()
  qmnb = {
    {
      [L1_131(F, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(D, "E7BE8EE4BABAE9B1BC3135")
    },
    {
      [L1_131(T, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(S, "6F6666736574")] = 8,
      [L1_131(X, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(U, "76616C7565")] = 17741,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 3735,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(P, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 21,
      [L1_131(L, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f16()
  qmnb = {
    {
      [L1_131(P, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(B, "E7BE8EE4BABAE9B1BC3136")
    },
    {
      [L1_131(Y, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 1061997773,
      [L1_131(A, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(X, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Z, "76616C7565")] = 19241,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 3235,
      [L1_131(K, "6F6666736574")] = -52,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 21,
      [L1_131(E, "6F6666736574")] = -60,
      [L1_131(E, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f17()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Q, "6E616D65")] = L1_131(F, "E7BE8EE4BABAE9B1BC3137")
    },
    {
      [L1_131(H, "76616C7565")] = 1092616192,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(F, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(Z, "6C76")] = 65540,
      [L1_131(J, "6F6666736574")] = 8,
      [L1_131(K, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Z, "76616C7565")] = 14741,
      [L1_131(L, "6F6666736574")] = -68,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 2238,
      [L1_131(G, "6F6666736574")] = -52,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 21,
      [L1_131(H, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f18()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = 4
    },
    {
      [L1_131(D, "6E616D65")] = L1_131(R, "E7BE8EE4BABAE9B1BC3138")
    },
    {
      [L1_131(Q, "76616C7565")] = 1092616192,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 1061997773,
      [L1_131(N, "6F6666736574")] = 4,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(P, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(F, "76616C7565")] = 18741,
      [L1_131(U, "6F6666736574")] = -68,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 1735,
      [L1_131(G, "6F6666736574")] = -52,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 21,
      [L1_131(L, "6F6666736574")] = -60,
      [L1_131(U, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f19()
  qmnb = {
    {
      [L1_131(Z, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(M, "E7BE8EE4BABAE9B1BC3139")
    },
    {
      [L1_131(X, "76616C7565")] = 1092616192,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 1061997773,
      [L1_131(D, "6F6666736574")] = 4,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 65540,
      [L1_131(Q, "6F6666736574")] = 8,
      [L1_131(U, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(W, "76616C7565")] = 18241,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 235,
      [L1_131(Q, "6F6666736574")] = -52,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 21,
      [L1_131(A, "6F6666736574")] = -60,
      [L1_131(V, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f20()
  qmnb = {
    {
      [L1_131(S, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(X, "E7BE8EE4BABAE9B1BC3230")
    },
    {
      [L1_131(G, "76616C7565")] = 1092616192,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(X, "6F6666736574")] = 4,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 65540,
      [L1_131(L, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(J, "76616C7565")] = 241,
      [L1_131(J, "6F6666736574")] = -68,
      [L1_131(P, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 1735,
      [L1_131(B, "6F6666736574")] = -52,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 21,
      [L1_131(E, "6F6666736574")] = -60,
      [L1_131(S, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f21()
  qmnb = {
    {
      [L1_131(V, "6D656D6F7279")] = 4
    },
    {
      [L1_131(O, "6E616D65")] = L1_131(A, "E7BE8EE4BABAE9B1BC3231")
    },
    {
      [L1_131(T, "76616C7565")] = 1092616192,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 1061997773,
      [L1_131(U, "6F6666736574")] = 4,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(X, "6F6666736574")] = 8,
      [L1_131(H, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(L, "76616C7565")] = 1241,
      [L1_131(Z, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 735,
      [L1_131(E, "6F6666736574")] = -52,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 21,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f22()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = 4
    },
    {
      [L1_131(S, "6E616D65")] = L1_131(H, "E7BE8EE4BABAE9B1BC3232")
    },
    {
      [L1_131(K, "76616C7565")] = 1092616192,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 1061997773,
      [L1_131(J, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 65540,
      [L1_131(Z, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(B, "76616C7565")] = 5741,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 2235,
      [L1_131(J, "6F6666736574")] = -52,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 21,
      [L1_131(X, "6F6666736574")] = -60,
      [L1_131(G, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f23()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(D, "6E616D65")] = L1_131(H, "E7BE8EE4BABAE9B1BC3233")
    },
    {
      [L1_131(C, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 65540,
      [L1_131(Z, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 4241,
      [L1_131(Z, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 1735,
      [L1_131(X, "6F6666736574")] = -52,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 21,
      [L1_131(N, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f24()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = 4
    },
    {
      [L1_131(T, "6E616D65")] = L1_131(R, "E7BE8EE4BABAE9B1BC3234")
    },
    {
      [L1_131(Y, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 1061997773,
      [L1_131(E, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(Z, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 5741,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 235,
      [L1_131(X, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 21,
      [L1_131(T, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f25()
  qmnb = {
    {
      [L1_131(X, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(P, "E7BE8EE4BABAE9B1BC3235")
    },
    {
      [L1_131(N, "76616C7565")] = 1092616192,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 1061997773,
      [L1_131(U, "6F6666736574")] = 4,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(E, "76616C7565")] = 2741,
      [L1_131(E, "6F6666736574")] = -68,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 8235,
      [L1_131(C, "6F6666736574")] = -52,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 21,
      [L1_131(Q, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f26()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(T, "6E616D65")] = L1_131(U, "E7BE8EE4BABAE9B1BC3236")
    },
    {
      [L1_131(N, "76616C7565")] = 1092616192,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 1061997773,
      [L1_131(O, "6F6666736574")] = 4,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 65540,
      [L1_131(O, "6F6666736574")] = 8,
      [L1_131(A, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(B, "76616C7565")] = 5241,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 8235,
      [L1_131(A, "6F6666736574")] = -52,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 21,
      [L1_131(G, "6F6666736574")] = -60,
      [L1_131(C, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f27()
  qmnb = {
    {
      [L1_131(M, "6D656D6F7279")] = 4
    },
    {
      [L1_131(F, "6E616D65")] = L1_131(L, "E7BE8EE4BABAE9B1BC3237")
    },
    {
      [L1_131(G, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 65540,
      [L1_131(T, "6F6666736574")] = 8,
      [L1_131(P, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(L, "76616C7565")] = 1741,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 7735,
      [L1_131(J, "6F6666736574")] = -52,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 21,
      [L1_131(K, "6F6666736574")] = -60,
      [L1_131(Z, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f28()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(N, "6E616D65")] = L1_131(V, "E7BE8EE4BABAE9B1BC3238")
    },
    {
      [L1_131(S, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 1061997773,
      [L1_131(T, "6F6666736574")] = 4,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 65540,
      [L1_131(S, "6F6666736574")] = 8,
      [L1_131(F, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 5741,
      [L1_131(L, "6F6666736574")] = -68,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 7235,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 21,
      [L1_131(R, "6F6666736574")] = -60,
      [L1_131(Y, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f29()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(B, "E7BE8EE4BABAE9B1BC3239")
    },
    {
      [L1_131(V, "76616C7565")] = 1092616192,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 1061997773,
      [L1_131(D, "6F6666736574")] = 4,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(V, "6F6666736574")] = 8,
      [L1_131(W, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(P, "76616C7565")] = 1241,
      [L1_131(W, "6F6666736574")] = -68,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 6735,
      [L1_131(W, "6F6666736574")] = -52,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 21,
      [L1_131(A, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f30()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = 4
    },
    {
      [L1_131(T, "6E616D65")] = L1_131(N, "E7BE8EE4BABAE9B1BC3330")
    },
    {
      [L1_131(A, "76616C7565")] = 1092616192,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 1061997773,
      [L1_131(L, "6F6666736574")] = 4,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 65540,
      [L1_131(W, "6F6666736574")] = 8,
      [L1_131(D, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 1741,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 6235,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 21,
      [L1_131(X, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f31()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(A, "E7BE8EE4BABAE9B1BC3331")
    },
    {
      [L1_131(S, "76616C7565")] = 1092616192,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 1061997773,
      [L1_131(H, "6F6666736574")] = 4,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(W, "6C76")] = 65540,
      [L1_131(U, "6F6666736574")] = 8,
      [L1_131(T, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(V, "76616C7565")] = 2741,
      [L1_131(S, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 5235,
      [L1_131(V, "6F6666736574")] = -52,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 21,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(L, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f32()
  qmnb = {
    {
      [L1_131(M, "6D656D6F7279")] = 4
    },
    {
      [L1_131(D, "6E616D65")] = L1_131(A, "E7BE8EE4BABAE9B1BC3332")
    },
    {
      [L1_131(R, "76616C7565")] = 1092616192,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(Z, "6C76")] = 1061997773,
      [L1_131(E, "6F6666736574")] = 4,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(X, "6F6666736574")] = 8,
      [L1_131(Q, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 5241,
      [L1_131(S, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 5235,
      [L1_131(L, "6F6666736574")] = -52,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 21,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function f33()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = 4
    },
    {
      [L1_131(K, "6E616D65")] = L1_131(B, "E7BE8EE4BABAE9B1BC3333")
    },
    {
      [L1_131(W, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(C, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 65540,
      [L1_131(W, "6F6666736574")] = 8,
      [L1_131(T, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(P, "76616C7565")] = 3741,
      [L1_131(L, "6F6666736574")] = -68,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 4735,
      [L1_131(D, "6F6666736574")] = -52,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 21,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(S, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function g1()
  qmnb = {
    {
      [L1_131(G, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(K, "E8BEA3E6A49231")
    },
    {
      [L1_131(Z, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(V, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(T, "76616C7565")] = 15721,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 8090,
      [L1_131(W, "6F6666736574")] = -52,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 0,
      [L1_131(U, "6F6666736574")] = -60,
      [L1_131(L, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function g2()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(L, "E8BEA3E6A49232")
    },
    {
      [L1_131(X, "76616C7565")] = 1092616192,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(Z, "6C76")] = 1061997773,
      [L1_131(H, "6F6666736574")] = 4,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 65540,
      [L1_131(N, "6F6666736574")] = 8,
      [L1_131(E, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(C, "76616C7565")] = 16166,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 8050,
      [L1_131(E, "6F6666736574")] = -52,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 0,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(U, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function g3()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = 4
    },
    {
      [L1_131(U, "6E616D65")] = L1_131(B, "E8BEA3E6A49233")
    },
    {
      [L1_131(M, "76616C7565")] = 1092616192,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(H, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(O, "6F6666736574")] = 8,
      [L1_131(D, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 15821,
      [L1_131(V, "6F6666736574")] = -68,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 7951,
      [L1_131(R, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 0,
      [L1_131(Q, "6F6666736574")] = -60,
      [L1_131(R, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function g4()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(N, "E8BEA3E6A49234")
    },
    {
      [L1_131(U, "76616C7565")] = 1092616192,
      [L1_131(U, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 1061997773,
      [L1_131(O, "6F6666736574")] = 4,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 65540,
      [L1_131(X, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(W, "76616C7565")] = 15681,
      [L1_131(W, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 7759,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 0,
      [L1_131(P, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function g5()
  qmnb = {
    {
      [L1_131(K, "6D656D6F7279")] = 4
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(E, "E8BEA3E6A49235")
    },
    {
      [L1_131(J, "76616C7565")] = 1092616192,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 1061997773,
      [L1_131(T, "6F6666736574")] = 4,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(S, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(M, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 16103,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 7948,
      [L1_131(W, "6F6666736574")] = -52,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 0,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(O, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function g6()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = 4
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(J, "E8BEA3E6A49236")
    },
    {
      [L1_131(K, "76616C7565")] = 1092616192,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 1061997773,
      [L1_131(E, "6F6666736574")] = 4,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(E, "6F6666736574")] = 8,
      [L1_131(F, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 5715,
      [L1_131(Z, "6F6666736574")] = -68,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 11928,
      [L1_131(G, "6F6666736574")] = -52,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 0,
      [L1_131(P, "6F6666736574")] = -60,
      [L1_131(Q, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function g7()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(E, "E8BEA3E6A49237")
    },
    {
      [L1_131(T, "76616C7565")] = 1092616192,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 65540,
      [L1_131(E, "6F6666736574")] = 8,
      [L1_131(Q, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 5303,
      [L1_131(Q, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 11545,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(L, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function g8()
  qmnb = {
    {
      [L1_131(F, "6D656D6F7279")] = 4
    },
    {
      [L1_131(A, "6E616D65")] = L1_131(E, "E8BEA3E6A49238")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 1061997773,
      [L1_131(P, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 65540,
      [L1_131(Q, "6F6666736574")] = 8,
      [L1_131(O, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 4980,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 11171,
      [L1_131(P, "6F6666736574")] = -52,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 0,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(H, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h1()
  qmnb = {
    {
      [L1_131(S, "6D656D6F7279")] = 4
    },
    {
      [L1_131(C, "6E616D65")] = L1_131(T, "E6B0B4E699B6E98197E8BFB931")
    },
    {
      [L1_131(A, "76616C7565")] = 1092616192,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 65540,
      [L1_131(W, "6F6666736574")] = 8,
      [L1_131(T, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 18647,
      [L1_131(E, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 15360,
      [L1_131(Z, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 0,
      [L1_131(N, "6F6666736574")] = -60,
      [L1_131(K, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h2()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Q, "6E616D65")] = L1_131(Q, "E6B0B4E699B6E98197E8BFB932")
    },
    {
      [L1_131(N, "76616C7565")] = 1092616192,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(Z, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(X, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(L, "76616C7565")] = 18029,
      [L1_131(Y, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 15296,
      [L1_131(U, "6F6666736574")] = -52,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(Z, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h3()
  qmnb = {
    {
      [L1_131(P, "6D656D6F7279")] = 4
    },
    {
      [L1_131(N, "6E616D65")] = L1_131(P, "E6B0B4E699B6E98197E8BFB933")
    },
    {
      [L1_131(S, "76616C7565")] = 1092616192,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(B, "76616C7565")] = 18625,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 14368,
      [L1_131(C, "6F6666736574")] = -52,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 0,
      [L1_131(Q, "6F6666736574")] = -60,
      [L1_131(L, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h4()
  qmnb = {
    {
      [L1_131(X, "6D656D6F7279")] = 4
    },
    {
      [L1_131(F, "6E616D65")] = L1_131(Q, "E6B0B4E699B6E98197E8BFB934")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 1061997773,
      [L1_131(S, "6F6666736574")] = 4,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(M, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(J, "76616C7565")] = 18293,
      [L1_131(P, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 13562,
      [L1_131(R, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(B, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h5()
  qmnb = {
    {
      [L1_131(W, "6D656D6F7279")] = 4
    },
    {
      [L1_131(O, "6E616D65")] = L1_131(L, "E6B0B4E699B6E98197E8BFB935")
    },
    {
      [L1_131(P, "76616C7565")] = 1092616192,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 65540,
      [L1_131(S, "6F6666736574")] = 8,
      [L1_131(P, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 17552,
      [L1_131(U, "6F6666736574")] = -68,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 14084,
      [L1_131(V, "6F6666736574")] = -52,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 0,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(H, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h6()
  qmnb = {
    {
      [L1_131(L, "6D656D6F7279")] = 4
    },
    {
      [L1_131(D, "6E616D65")] = L1_131(D, "E6B0B4E699B6E98197E8BFB936")
    },
    {
      [L1_131(A, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 1061997773,
      [L1_131(O, "6F6666736574")] = 4,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 65540,
      [L1_131(T, "6F6666736574")] = 8,
      [L1_131(S, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(X, "76616C7565")] = 17663,
      [L1_131(T, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 14518,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(E, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h7()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = 4
    },
    {
      [L1_131(N, "6E616D65")] = L1_131(X, "E6B0B4E699B6E98197E8BFB937")
    },
    {
      [L1_131(S, "76616C7565")] = 1092616192,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 1061997773,
      [L1_131(O, "6F6666736574")] = 4,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 65540,
      [L1_131(H, "6F6666736574")] = 8,
      [L1_131(G, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(G, "76616C7565")] = 16110,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 15924,
      [L1_131(S, "6F6666736574")] = -52,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 0,
      [L1_131(G, "6F6666736574")] = -60,
      [L1_131(S, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h8()
  qmnb = {
    {
      [L1_131(E, "6D656D6F7279")] = 4
    },
    {
      [L1_131(V, "6E616D65")] = L1_131(B, "E6B0B4E699B6E98197E8BFB938")
    },
    {
      [L1_131(V, "76616C7565")] = 1092616192,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(U, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 65540,
      [L1_131(C, "6F6666736574")] = 8,
      [L1_131(S, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(J, "76616C7565")] = 16231,
      [L1_131(W, "6F6666736574")] = -68,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 15777,
      [L1_131(C, "6F6666736574")] = -52,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 0,
      [L1_131(K, "6F6666736574")] = -60,
      [L1_131(B, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h9()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = 4
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(E, "E6B0B4E699B6E98197E8BFB939")
    },
    {
      [L1_131(L, "76616C7565")] = 1092616192,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(T, "6F6666736574")] = 4,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 65540,
      [L1_131(C, "6F6666736574")] = 8,
      [L1_131(T, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 15570,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 16476,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(Y, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h10()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(S, "E6B0B4E699B6E98197E8BFB93130")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 1061997773,
      [L1_131(C, "6F6666736574")] = 4,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 65540,
      [L1_131(K, "6F6666736574")] = 8,
      [L1_131(J, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 15807,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 16300,
      [L1_131(G, "6F6666736574")] = -52,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 0,
      [L1_131(A, "6F6666736574")] = -60,
      [L1_131(V, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h11()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = 4
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(X, "E6B0B4E699B6E98197E8BFB93131")
    },
    {
      [L1_131(Z, "76616C7565")] = 1092616192,
      [L1_131(C, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 1061997773,
      [L1_131(C, "6F6666736574")] = 4,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(F, "76616C7565")] = 16595,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 16631,
      [L1_131(B, "6F6666736574")] = -52,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 0,
      [L1_131(B, "6F6666736574")] = -60,
      [L1_131(F, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h12()
  qmnb = {
    {
      [L1_131(K, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(Q, "E6B0B4E699B6E98197E8BFB93132")
    },
    {
      [L1_131(B, "76616C7565")] = 1092616192,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 1061997773,
      [L1_131(L, "6F6666736574")] = 4,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 65540,
      [L1_131(L, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 14097,
      [L1_131(B, "6F6666736574")] = -68,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 15521,
      [L1_131(E, "6F6666736574")] = -52,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 0,
      [L1_131(P, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h13()
  qmnb = {
    {
      [L1_131(U, "6D656D6F7279")] = 4
    },
    {
      [L1_131(S, "6E616D65")] = L1_131(Y, "E6B0B4E699B6E98197E8BFB93133")
    },
    {
      [L1_131(G, "76616C7565")] = 1092616192,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 1061997773,
      [L1_131(G, "6F6666736574")] = 4,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 65540,
      [L1_131(V, "6F6666736574")] = 8,
      [L1_131(U, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 13868,
      [L1_131(Q, "6F6666736574")] = -68,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 15959,
      [L1_131(O, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 0,
      [L1_131(P, "6F6666736574")] = -60,
      [L1_131(L, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h14()
  qmnb = {
    {
      [L1_131(Z, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(Z, "E6B0B4E699B6E98197E8BFB93134")
    },
    {
      [L1_131(N, "76616C7565")] = 1092616192,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(S, "6C76")] = 65540,
      [L1_131(T, "6F6666736574")] = 8,
      [L1_131(P, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(K, "76616C7565")] = 14597,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 15920,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 0,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(J, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h15()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(D, "6E616D65")] = L1_131(F, "E6B0B4E699B6E98197E8BFB93135")
    },
    {
      [L1_131(J, "76616C7565")] = 1092616192,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 1061997773,
      [L1_131(T, "6F6666736574")] = 4,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 65540,
      [L1_131(E, "6F6666736574")] = 8,
      [L1_131(K, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(X, "76616C7565")] = 14889,
      [L1_131(T, "6F6666736574")] = -68,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 14026,
      [L1_131(C, "6F6666736574")] = -52,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 0,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(Z, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h16()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = 4
    },
    {
      [L1_131(H, "6E616D65")] = L1_131(H, "E6B0B4E699B6E98197E8BFB93136")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 65540,
      [L1_131(T, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 14766,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 14407,
      [L1_131(G, "6F6666736574")] = -52,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 0,
      [L1_131(F, "6F6666736574")] = -60,
      [L1_131(B, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h17()
  qmnb = {
    {
      [L1_131(Z, "6D656D6F7279")] = 4
    },
    {
      [L1_131(D, "6E616D65")] = L1_131(E, "E6B0B4E699B6E98197E8BFB93137")
    },
    {
      [L1_131(J, "76616C7565")] = 1092616192,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(S, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 65540,
      [L1_131(V, "6F6666736574")] = 8,
      [L1_131(A, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 14015,
      [L1_131(B, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 14242,
      [L1_131(R, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 0,
      [L1_131(P, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h18()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = 4
    },
    {
      [L1_131(P, "6E616D65")] = L1_131(Z, "E6B0B4E699B6E98197E8BFB93138")
    },
    {
      [L1_131(Z, "76616C7565")] = 1092616192,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 1061997773,
      [L1_131(X, "6F6666736574")] = 4,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(B, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 14156,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 14644,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 0,
      [L1_131(P, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h19()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(D, "E6B0B4E699B6E98197E8BFB93139")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 1061997773,
      [L1_131(W, "6F6666736574")] = 4,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(O, "6F6666736574")] = 8,
      [L1_131(E, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Z, "76616C7565")] = 15477,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 11381,
      [L1_131(V, "6F6666736574")] = -52,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 0,
      [L1_131(V, "6F6666736574")] = -60,
      [L1_131(E, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h20()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(C, "6E616D65")] = L1_131(A, "E6B0B4E699B6E98197E8BFB93230")
    },
    {
      [L1_131(A, "76616C7565")] = 1092616192,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(R, "6F6666736574")] = 4,
      [L1_131(U, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 65540,
      [L1_131(L, "6F6666736574")] = 8,
      [L1_131(F, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(X, "76616C7565")] = 13924,
      [L1_131(T, "6F6666736574")] = -68,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 11466,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 0,
      [L1_131(A, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h21()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(P, "E6B0B4E699B6E98197E8BFB93231")
    },
    {
      [L1_131(L, "76616C7565")] = 1092616192,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 1061997773,
      [L1_131(J, "6F6666736574")] = 4,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 65540,
      [L1_131(O, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(F, "76616C7565")] = 15859,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 9019,
      [L1_131(S, "6F6666736574")] = -52,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 0,
      [L1_131(D, "6F6666736574")] = -60,
      [L1_131(Z, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h22()
  qmnb = {
    {
      [L1_131(P, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(B, "E6B0B4E699B6E98197E8BFB93232")
    },
    {
      [L1_131(W, "76616C7565")] = 1092616192,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 1061997773,
      [L1_131(A, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 65540,
      [L1_131(U, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 15787,
      [L1_131(S, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 7479,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 0,
      [L1_131(V, "6F6666736574")] = -60,
      [L1_131(F, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h23()
  qmnb = {
    {
      [L1_131(E, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(O, "E6B0B4E699B6E98197E8BFB93233")
    },
    {
      [L1_131(J, "76616C7565")] = 1092616192,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(R, "6F6666736574")] = 4,
      [L1_131(U, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 65540,
      [L1_131(E, "6F6666736574")] = 8,
      [L1_131(G, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(G, "76616C7565")] = 13068,
      [L1_131(N, "6F6666736574")] = -68,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 6690,
      [L1_131(S, "6F6666736574")] = -52,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 0,
      [L1_131(Q, "6F6666736574")] = -60,
      [L1_131(V, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h24()
  qmnb = {
    {
      [L1_131(G, "6D656D6F7279")] = 4
    },
    {
      [L1_131(U, "6E616D65")] = L1_131(Y, "E6B0B4E699B6E98197E8BFB93234")
    },
    {
      [L1_131(T, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(W, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(U, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(J, "76616C7565")] = 10252,
      [L1_131(H, "6F6666736574")] = -68,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 8589,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 0,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h25()
  qmnb = {
    {
      [L1_131(W, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(K, "E6B0B4E699B6E98197E8BFB93235")
    },
    {
      [L1_131(T, "76616C7565")] = 1092616192,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 1061997773,
      [L1_131(O, "6F6666736574")] = 4,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 65540,
      [L1_131(R, "6F6666736574")] = 8,
      [L1_131(D, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(G, "76616C7565")] = 9040,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 8252,
      [L1_131(C, "6F6666736574")] = -52,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 0,
      [L1_131(Z, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h26()
  qmnb = {
    {
      [L1_131(G, "6D656D6F7279")] = 4
    },
    {
      [L1_131(L, "6E616D65")] = L1_131(W, "E6B0B4E699B6E98197E8BFB93236")
    },
    {
      [L1_131(P, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 1061997773,
      [L1_131(T, "6F6666736574")] = 4,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(Q, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(C, "76616C7565")] = 7942,
      [L1_131(P, "6F6666736574")] = -68,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 7733,
      [L1_131(X, "6F6666736574")] = -52,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 0,
      [L1_131(H, "6F6666736574")] = -60,
      [L1_131(E, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h27()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(O, "6E616D65")] = L1_131(C, "E6B0B4E699B6E98197E8BFB93237")
    },
    {
      [L1_131(K, "76616C7565")] = 1092616192,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 65540,
      [L1_131(K, "6F6666736574")] = 8,
      [L1_131(K, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(T, "76616C7565")] = 9330,
      [L1_131(U, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 10310,
      [L1_131(B, "6F6666736574")] = -52,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 0,
      [L1_131(K, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h28()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = 4
    },
    {
      [L1_131(U, "6E616D65")] = L1_131(J, "E6B0B4E699B6E98197E8BFB93238")
    },
    {
      [L1_131(Z, "76616C7565")] = 1092616192,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 1061997773,
      [L1_131(D, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 65540,
      [L1_131(J, "6F6666736574")] = 8,
      [L1_131(H, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(W, "76616C7565")] = 8021,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 11142,
      [L1_131(D, "6F6666736574")] = -52,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(V, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h29()
  qmnb = {
    {
      [L1_131(F, "6D656D6F7279")] = 4
    },
    {
      [L1_131(U, "6E616D65")] = L1_131(P, "E6B0B4E699B6E98197E8BFB93239")
    },
    {
      [L1_131(G, "76616C7565")] = 1092616192,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 65540,
      [L1_131(D, "6F6666736574")] = 8,
      [L1_131(V, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(O, "76616C7565")] = 10249,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 12277,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 0,
      [L1_131(K, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h30()
  qmnb = {
    {
      [L1_131(C, "6D656D6F7279")] = 4
    },
    {
      [L1_131(L, "6E616D65")] = L1_131(E, "E6B0B4E699B6E98197E8BFB93330")
    },
    {
      [L1_131(C, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 65540,
      [L1_131(N, "6F6666736574")] = 8,
      [L1_131(B, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(V, "76616C7565")] = 4831,
      [L1_131(N, "6F6666736574")] = -68,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 11465,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 0,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(B, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h31()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = 4
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(V, "E6B0B4E699B6E98197E8BFB93331")
    },
    {
      [L1_131(O, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 65540,
      [L1_131(Z, "6F6666736574")] = 8,
      [L1_131(T, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 11093,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 13936,
      [L1_131(K, "6F6666736574")] = -52,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 0,
      [L1_131(F, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h32()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = 4
    },
    {
      [L1_131(U, "6E616D65")] = L1_131(B, "E6B0B4E699B6E98197E8BFB93332")
    },
    {
      [L1_131(G, "76616C7565")] = 1092616192,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 1061997773,
      [L1_131(C, "6F6666736574")] = 4,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 65540,
      [L1_131(N, "6F6666736574")] = 8,
      [L1_131(X, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(J, "76616C7565")] = 9599,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 16376,
      [L1_131(C, "6F6666736574")] = -52,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 0,
      [L1_131(L, "6F6666736574")] = -60,
      [L1_131(K, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function h33()
  qmnb = {
    {
      [L1_131(F, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(N, "E6B0B4E699B6E98197E8BFB93333")
    },
    {
      [L1_131(W, "76616C7565")] = 1092616192,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 1061997773,
      [L1_131(U, "6F6666736574")] = 4,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(P, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(R, "76616C7565")] = 5132,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 14652,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 0,
      [L1_131(A, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function i1()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(G, "6E616D65")] = L1_131(O, "E8939DE88EB231")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(O, "6F6666736574")] = 4,
      [L1_131(C, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 65540,
      [L1_131(F, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(P, "76616C7565")] = 5061,
      [L1_131(Z, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 14323,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 0,
      [L1_131(V, "6F6666736574")] = -60,
      [L1_131(X, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function i2()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(O, "E8939DE88EB232")
    },
    {
      [L1_131(E, "76616C7565")] = 1092616192,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 1061997773,
      [L1_131(A, "6F6666736574")] = 4,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(N, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 5341,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 14098,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 0,
      [L1_131(G, "6F6666736574")] = -60,
      [L1_131(U, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function i3()
  qmnb = {
    {
      [L1_131(G, "6D656D6F7279")] = 4
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(P, "E8939DE88EB233")
    },
    {
      [L1_131(J, "76616C7565")] = 1092616192,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(S, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 65540,
      [L1_131(Z, "6F6666736574")] = 8,
      [L1_131(D, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(F, "76616C7565")] = 5716,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 14149,
      [L1_131(U, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(W, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function i4()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = 4
    },
    {
      [L1_131(N, "6E616D65")] = L1_131(N, "E8939DE88EB234")
    },
    {
      [L1_131(Y, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 1061997773,
      [L1_131(L, "6F6666736574")] = 4,
      [L1_131(U, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 65540,
      [L1_131(U, "6F6666736574")] = 8,
      [L1_131(K, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(K, "76616C7565")] = 13183,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 7575,
      [L1_131(O, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 0,
      [L1_131(V, "6F6666736574")] = -60,
      [L1_131(Y, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function i5()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = 4
    },
    {
      [L1_131(F, "6E616D65")] = L1_131(B, "E8939DE88EB235")
    },
    {
      [L1_131(Z, "76616C7565")] = 1092616192,
      [L1_131(U, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 65540,
      [L1_131(S, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 13757,
      [L1_131(R, "6F6666736574")] = -68,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 7000,
      [L1_131(R, "6F6666736574")] = -52,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 0,
      [L1_131(T, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function i6()
  qmnb = {
    {
      [L1_131(M, "6D656D6F7279")] = 4
    },
    {
      [L1_131(L, "6E616D65")] = L1_131(F, "E7BAA2E88EB231")
    },
    {
      [L1_131(P, "76616C7565")] = 1092616192,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 65540,
      [L1_131(V, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(G, "76616C7565")] = 15680,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 8168,
      [L1_131(O, "6F6666736574")] = -52,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 0,
      [L1_131(P, "6F6666736574")] = -60,
      [L1_131(Z, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function i7()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(V, "E7BAA2E88EB232")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 1061997773,
      [L1_131(X, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(Z, "6C76")] = 65540,
      [L1_131(Z, "6F6666736574")] = 8,
      [L1_131(P, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 15769,
      [L1_131(N, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 7900,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 0,
      [L1_131(E, "6F6666736574")] = -60,
      [L1_131(F, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j1()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(D, "E58D97E69E81E6989F")
    },
    {
      [L1_131(W, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(C, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 65540,
      [L1_131(P, "6F6666736574")] = 8,
      [L1_131(N, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(R, "76616C7565")] = 2248,
      [L1_131(J, "6F6666736574")] = -68,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 2220,
      [L1_131(A, "6F6666736574")] = -52,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 0,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(H, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j2()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = 4
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(Q, "E58C97E79EADE69C9B")
    },
    {
      [L1_131(C, "76616C7565")] = 1092616192,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(D, "6F6666736574")] = 4,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(J, "6F6666736574")] = 8,
      [L1_131(N, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(C, "76616C7565")] = 2248,
      [L1_131(Y, "6F6666736574")] = -68,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 18219,
      [L1_131(O, "6F6666736574")] = -52,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 0,
      [L1_131(N, "6F6666736574")] = -60,
      [L1_131(E, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j3()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = 4
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(C, "E58C97E69E81E6989F")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(N, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 65540,
      [L1_131(Z, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 16754,
      [L1_131(Y, "6F6666736574")] = -68,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 18219,
      [L1_131(L, "6F6666736574")] = -52,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 0,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(Z, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j4()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(U, "6E616D65")] = L1_131(J, "E58D97E79EADE69C9B")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(Z, "6C76")] = 65540,
      [L1_131(N, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 17255,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 2218,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 0,
      [L1_131(R, "6F6666736574")] = -60,
      [L1_131(Y, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j5()
  qmnb = {
    {
      [L1_131(C, "6D656D6F7279")] = 4
    },
    {
      [L1_131(G, "6E616D65")] = L1_131(T, "E4B990E4B990E6B2B3E8B0B7")
    },
    {
      [L1_131(O, "76616C7565")] = 1092616192,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(C, "6F6666736574")] = 4,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 65540,
      [L1_131(Z, "6F6666736574")] = 8,
      [L1_131(Q, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(L, "76616C7565")] = 5731,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 11265,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 0,
      [L1_131(V, "6F6666736574")] = -60,
      [L1_131(Y, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j6()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(L, "6E616D65")] = L1_131(N, "E7BAB3E59DA6E5B29B")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(N, "6F6666736574")] = 4,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(P, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(X, "76616C7565")] = 4074,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 9423,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 0,
      [L1_131(F, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j7()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(R, "E6B5B7E8A792E6A3AEE69E97")
    },
    {
      [L1_131(H, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 1061997773,
      [L1_131(N, "6F6666736574")] = 4,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(C, "6F6666736574")] = 8,
      [L1_131(G, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 7926,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 6310,
      [L1_131(S, "6F6666736574")] = -52,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 0,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(T, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j8()
  qmnb = {
    {
      [L1_131(M, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(J, "E993B6E69C88E4B898E999B5")
    },
    {
      [L1_131(P, "76616C7565")] = 1092616192,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(N, "6F6666736574")] = 4,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(O, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(B, "76616C7565")] = 15360,
      [L1_131(Q, "6F6666736574")] = -68,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 6686,
      [L1_131(G, "6F6666736574")] = -52,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 0,
      [L1_131(L, "6F6666736574")] = -60,
      [L1_131(J, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j9()
  qmnb = {
    {
      [L1_131(P, "6D656D6F7279")] = 4
    },
    {
      [L1_131(P, "6E616D65")] = L1_131(D, "E697A7E799BDE98791E6B5B7E6B9BE")
    },
    {
      [L1_131(L, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 1061997773,
      [L1_131(C, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(H, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(W, "76616C7565")] = 17307,
      [L1_131(Y, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 15366,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 0,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(R, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j10()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = 4
    },
    {
      [L1_131(A, "6E616D65")] = L1_131(K, "E697A7E98381E98791E9A699E5B9B3E58E9F")
    },
    {
      [L1_131(U, "76616C7565")] = 1092616192,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 1061997773,
      [L1_131(U, "6F6666736574")] = 4,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(A, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 16115,
      [L1_131(Z, "6F6666736574")] = -68,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 15636,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 0,
      [L1_131(G, "6F6666736574")] = -60,
      [L1_131(E, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j11()
  qmnb = {
    {
      [L1_131(K, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(Z, "E697A7E99DA2E58C85E5B29B")
    },
    {
      [L1_131(E, "76616C7565")] = 1092616192,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 1061997773,
      [L1_131(A, "6F6666736574")] = 4,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(Z, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(V, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(U, "76616C7565")] = 14956,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 14091,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 0,
      [L1_131(P, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j12()
  qmnb = {
    {
      [L1_131(S, "6D656D6F7279")] = 4
    },
    {
      [L1_131(F, "6E616D65")] = L1_131(O, "E697A7E69785E8A18CE88085E4B898E999B5")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(S, "6C76")] = 1061997773,
      [L1_131(A, "6F6666736574")] = 4,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 65540,
      [L1_131(E, "6F6666736574")] = 8,
      [L1_131(W, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(U, "76616C7565")] = 14240,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 15467,
      [L1_131(Z, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 0,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(Y, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j13()
  qmnb = {
    {
      [L1_131(W, "6D656D6F7279")] = 4
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(Z, "E68B89E9B281E781ABE5B1B1")
    },
    {
      [L1_131(O, "76616C7565")] = 1092616192,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 1061997773,
      [L1_131(E, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(R, "6F6666736574")] = 8,
      [L1_131(J, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(E, "76616C7565")] = 10171,
      [L1_131(T, "6F6666736574")] = -68,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 8170,
      [L1_131(L, "6F6666736574")] = -52,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 0,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(C, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j14()
  qmnb = {
    {
      [L1_131(Z, "6D656D6F7279")] = 4
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(G, "E69EAFE9AAA8E5B1B1E88489")
    },
    {
      [L1_131(X, "76616C7565")] = 1092616192,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 1061997773,
      [L1_131(T, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 65540,
      [L1_131(O, "6F6666736574")] = 8,
      [L1_131(H, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 12507,
      [L1_131(H, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 8931,
      [L1_131(V, "6F6666736574")] = -52,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 0,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(R, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j15()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(S, "E58C97E5A283")
    },
    {
      [L1_131(Y, "76616C7565")] = 1092616192,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 65540,
      [L1_131(V, "6F6666736574")] = 8,
      [L1_131(M, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 12043,
      [L1_131(N, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 18394,
      [L1_131(U, "6F6666736574")] = -52,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 0,
      [L1_131(F, "6F6666736574")] = -60,
      [L1_131(E, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j16()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = 4
    },
    {
      [L1_131(V, "6E616D65")] = L1_131(E, "E5ADA4E5BDB1E99BAAE5B1B1")
    },
    {
      [L1_131(A, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 1061997773,
      [L1_131(P, "6F6666736574")] = 4,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 65540,
      [L1_131(N, "6F6666736574")] = 8,
      [L1_131(K, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(V, "76616C7565")] = 9624,
      [L1_131(U, "6F6666736574")] = -68,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 15686,
      [L1_131(V, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 0,
      [L1_131(J, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j17()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = 4
    },
    {
      [L1_131(D, "6E616D65")] = L1_131(U, "E4B883E9878CE9A699E5B9B3E58E9F")
    },
    {
      [L1_131(A, "76616C7565")] = 1092616192,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 1061997773,
      [L1_131(E, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(W, "6F6666736574")] = 8,
      [L1_131(F, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(V, "76616C7565")] = 7450,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 8292,
      [L1_131(L, "6F6666736574")] = -52,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 0,
      [L1_131(H, "6F6666736574")] = -60,
      [L1_131(V, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j18()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(T, "E698A5E697A5E6B5B7E5B2B8")
    },
    {
      [L1_131(V, "76616C7565")] = 1092616192,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 1061997773,
      [L1_131(E, "6F6666736574")] = 4,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 65540,
      [L1_131(V, "6F6666736574")] = 8,
      [L1_131(M, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(U, "76616C7565")] = 6231,
      [L1_131(H, "6F6666736574")] = -68,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 14292,
      [L1_131(G, "6F6666736574")] = -52,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 0,
      [L1_131(T, "6F6666736574")] = -60,
      [L1_131(G, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j19()
  qmnb = {
    {
      [L1_131(Q, "6D656D6F7279")] = 4
    },
    {
      [L1_131(D, "6E616D65")] = L1_131(O, "E98791E8B0B7E88D89E58E9F")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 1061997773,
      [L1_131(Y, "6F6666736574")] = 4,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(H, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 12695,
      [L1_131(W, "6F6666736574")] = -68,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 12374,
      [L1_131(D, "6F6666736574")] = -52,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 0,
      [L1_131(U, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j20()
  qmnb = {
    {
      [L1_131(W, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(C, "E69AAEE58589E5B1B1E8A792")
    },
    {
      [L1_131(Y, "76616C7565")] = 1092616192,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 1061997773,
      [L1_131(H, "6F6666736574")] = 4,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(F, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 10661,
      [L1_131(V, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 13252,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 0,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(Z, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j21()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(D, "E4B990E59BADE5B29B")
    },
    {
      [L1_131(T, "76616C7565")] = 1092616192,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 65540,
      [L1_131(T, "6F6666736574")] = 8,
      [L1_131(F, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 12187,
      [L1_131(S, "6F6666736574")] = -68,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 14345,
      [L1_131(A, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 0,
      [L1_131(N, "6F6666736574")] = -60,
      [L1_131(G, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j22()
  qmnb = {
    {
      [L1_131(X, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(S, "E697A7E699A8E99BBEE6A3AEE69E97")
    },
    {
      [L1_131(Z, "76616C7565")] = 1092616192,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 1061997773,
      [L1_131(Y, "6F6666736574")] = 4,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 65540,
      [L1_131(N, "6F6666736574")] = 8,
      [L1_131(S, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 14250,
      [L1_131(E, "6F6666736574")] = -68,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 15998,
      [L1_131(N, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 0,
      [L1_131(N, "6F6666736574")] = -60,
      [L1_131(X, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j23()
  qmnb = {
    {
      [L1_131(C, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(J, "E789A7E9878EE5B9B3E58E9F")
    },
    {
      [L1_131(Q, "76616C7565")] = 1092616192,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 1061997773,
      [L1_131(F, "6F6666736574")] = 4,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 65540,
      [L1_131(F, "6F6666736574")] = 8,
      [L1_131(U, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(O, "76616C7565")] = 15334,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 10972,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 0,
      [L1_131(A, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j24()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(B, "E890BDE58FB6E5B1B1E88489")
    },
    {
      [L1_131(B, "76616C7565")] = 1092616192,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 1061997773,
      [L1_131(Y, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 65540,
      [L1_131(O, "6F6666736574")] = 8,
      [L1_131(O, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 14281,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 9416,
      [L1_131(L, "6F6666736574")] = -52,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 0,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(G, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j25()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(M, "6E616D65")] = L1_131(W, "E6B8A9E78E89E5B9B3E58E9F")
    },
    {
      [L1_131(Z, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(K, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(L, "76616C7565")] = 8706,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 11511,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 0,
      [L1_131(T, "6F6666736574")] = -60,
      [L1_131(O, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j26()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(F, "6E616D65")] = L1_131(S, "E4BC8AE5A78BE4B98BE59CB031")
    },
    {
      [L1_131(K, "76616C7565")] = 1092616192,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 1061997773,
      [L1_131(T, "6F6666736574")] = 4,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(E, "6F6666736574")] = 8,
      [L1_131(H, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 6746,
      [L1_131(E, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 9256,
      [L1_131(K, "6F6666736574")] = -52,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 0,
      [L1_131(J, "6F6666736574")] = -60,
      [L1_131(K, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j27()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(Q, "E4BC8AE5A78BE4B98BE59CB032")
    },
    {
      [L1_131(H, "76616C7565")] = 1092616192,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 65540,
      [L1_131(X, "6F6666736574")] = 8,
      [L1_131(T, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(F, "76616C7565")] = 5293,
      [L1_131(U, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 13256,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 0,
      [L1_131(Q, "6F6666736574")] = -60,
      [L1_131(C, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j28()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = 4
    },
    {
      [L1_131(N, "6E616D65")] = L1_131(E, "E4BC8AE5A78BE4B98BE59CB033")
    },
    {
      [L1_131(V, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(U, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(T, "6F6666736574")] = 8,
      [L1_131(U, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(L, "76616C7565")] = 8206,
      [L1_131(K, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 8243,
      [L1_131(J, "6F6666736574")] = -52,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 0,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(E, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function j29()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = 4
    },
    {
      [L1_131(K, "6E616D65")] = L1_131(M, "E4BC8AE5A78BE4B98BE59CB034")
    },
    {
      [L1_131(S, "76616C7565")] = 1092616192,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 65540,
      [L1_131(F, "6F6666736574")] = 8,
      [L1_131(S, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(O, "76616C7565")] = 13206,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 12743,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 0,
      [L1_131(E, "6F6666736574")] = -60,
      [L1_131(L, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k1()
  qmnb = {
    {
      [L1_131(W, "6D656D6F7279")] = 4
    },
    {
      [L1_131(V, "6E616D65")] = L1_131(K, "E6B0A4E6B0B2E4B98BE681AF31")
    },
    {
      [L1_131(A, "76616C7565")] = 1092616192,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 1061997773,
      [L1_131(L, "6F6666736574")] = 4,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 65540,
      [L1_131(V, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 2406,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 19005,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 0,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(K, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k2()
  qmnb = {
    {
      [L1_131(U, "6D656D6F7279")] = 4
    },
    {
      [L1_131(T, "6E616D65")] = L1_131(H, "E6B0A4E6B0B2E4B98BE681AF32")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(S, "6C76")] = 1061997773,
      [L1_131(O, "6F6666736574")] = 4,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(U, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 2859,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 18453,
      [L1_131(J, "6F6666736574")] = -52,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 21,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(B, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k3()
  qmnb = {
    {
      [L1_131(L, "6D656D6F7279")] = 4
    },
    {
      [L1_131(F, "6E616D65")] = L1_131(E, "E6B0A4E6B0B2E4B98BE681AF33")
    },
    {
      [L1_131(H, "76616C7565")] = 1092616192,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 1061997773,
      [L1_131(Y, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 65540,
      [L1_131(J, "6F6666736574")] = 8,
      [L1_131(J, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 1624,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 18539,
      [L1_131(R, "6F6666736574")] = -52,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 0,
      [L1_131(A, "6F6666736574")] = -60,
      [L1_131(S, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k4()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(C, "E6B0A4E6B0B2E4B98BE681AF34")
    },
    {
      [L1_131(B, "76616C7565")] = 1092616192,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(U, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(S, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 2936,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 17716,
      [L1_131(Q, "6F6666736574")] = -52,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 0,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(V, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k5()
  qmnb = {
    {
      [L1_131(C, "6D656D6F7279")] = 4
    },
    {
      [L1_131(M, "6E616D65")] = L1_131(Z, "E6B0A4E6B0B2E4B98BE681AF35")
    },
    {
      [L1_131(H, "76616C7565")] = 1092616192,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 65540,
      [L1_131(J, "6F6666736574")] = 8,
      [L1_131(D, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 1848,
      [L1_131(Q, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 17721,
      [L1_131(U, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 21,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(U, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k6()
  qmnb = {
    {
      [L1_131(K, "6D656D6F7279")] = 4
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(K, "E6B0A4E6B0B2E4B98BE681AF36")
    },
    {
      [L1_131(H, "76616C7565")] = 1092616192,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 65540,
      [L1_131(J, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(X, "76616C7565")] = 17535,
      [L1_131(Z, "6F6666736574")] = -68,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 18598,
      [L1_131(U, "6F6666736574")] = -52,
      [L1_131(P, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 21,
      [L1_131(K, "6F6666736574")] = -60,
      [L1_131(C, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k7()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = 4
    },
    {
      [L1_131(O, "6E616D65")] = L1_131(R, "E6B0A4E6B0B2E4B98BE681AF37")
    },
    {
      [L1_131(Q, "76616C7565")] = 1092616192,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(S, "6F6666736574")] = 4,
      [L1_131(C, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 65540,
      [L1_131(K, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(K, "76616C7565")] = 15751,
      [L1_131(H, "6F6666736574")] = -68,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 18211,
      [L1_131(B, "6F6666736574")] = -52,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 0,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(X, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k8()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(H, "6E616D65")] = L1_131(D, "E6B0A4E6B0B2E4B98BE681AF38")
    },
    {
      [L1_131(B, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 1061997773,
      [L1_131(A, "6F6666736574")] = 4,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(S, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(J, "76616C7565")] = 16261,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 17721,
      [L1_131(W, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 21,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(R, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k9()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(J, "E6B0A4E6B0B2E4B98BE681AF39")
    },
    {
      [L1_131(V, "76616C7565")] = 1092616192,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 1061997773,
      [L1_131(D, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(W, "76616C7565")] = 16795,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 17611,
      [L1_131(X, "6F6666736574")] = -52,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 21,
      [L1_131(N, "6F6666736574")] = -60,
      [L1_131(U, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k10()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(A, "E6B0A4E6B0B2E4B98BE681AF3130")
    },
    {
      [L1_131(Q, "76616C7565")] = 1092616192,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 1061997773,
      [L1_131(P, "6F6666736574")] = 4,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(Q, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 17906,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 2699,
      [L1_131(N, "6F6666736574")] = -52,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 21,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(U, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k11()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = 4
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(P, "E6B0A4E6B0B2E4B98BE681AF3131")
    },
    {
      [L1_131(S, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(H, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 16477,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 2376,
      [L1_131(J, "6F6666736574")] = -52,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 0,
      [L1_131(Z, "6F6666736574")] = -60,
      [L1_131(H, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k12()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = 4
    },
    {
      [L1_131(K, "6E616D65")] = L1_131(Q, "E6B0A4E6B0B2E4B98BE681AF3132")
    },
    {
      [L1_131(A, "76616C7565")] = 1092616192,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 65540,
      [L1_131(P, "6F6666736574")] = 8,
      [L1_131(F, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(X, "76616C7565")] = 16779,
      [L1_131(V, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 1376,
      [L1_131(B, "6F6666736574")] = -52,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 21,
      [L1_131(B, "6F6666736574")] = -60,
      [L1_131(G, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k13()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = 4
    },
    {
      [L1_131(C, "6E616D65")] = L1_131(B, "E6B0A4E6B0B2E4B98BE681AF3133")
    },
    {
      [L1_131(O, "76616C7565")] = 1092616192,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(A, "6F6666736574")] = 4,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 65540,
      [L1_131(G, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(C, "76616C7565")] = 2313,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 2866,
      [L1_131(A, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 0,
      [L1_131(N, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k14()
  qmnb = {
    {
      [L1_131(W, "6D656D6F7279")] = 4
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(Z, "E6B0A4E6B0B2E4B98BE681AF3134")
    },
    {
      [L1_131(R, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(O, "6F6666736574")] = 4,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(D, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 3012,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 2398,
      [L1_131(K, "6F6666736574")] = -52,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 21,
      [L1_131(F, "6F6666736574")] = -60,
      [L1_131(Z, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k15()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(L, "E6B0A4E6B0B2E4B98BE681AF3135")
    },
    {
      [L1_131(A, "76616C7565")] = 1092616192,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 1061997773,
      [L1_131(T, "6F6666736574")] = 4,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 65540,
      [L1_131(K, "6F6666736574")] = 8,
      [L1_131(U, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 3126,
      [L1_131(W, "6F6666736574")] = -68,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 1652,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 0,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k16()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(G, "6E616D65")] = L1_131(C, "E6B0A4E6B0B2E4B98BE681AF3136")
    },
    {
      [L1_131(H, "76616C7565")] = 1092616192,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(C, "6F6666736574")] = 8,
      [L1_131(E, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(E, "76616C7565")] = 1437,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 1607,
      [L1_131(A, "6F6666736574")] = -52,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 21,
      [L1_131(P, "6F6666736574")] = -60,
      [L1_131(W, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function k17()
  qmnb = {
    {
      [L1_131(C, "6D656D6F7279")] = 4
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(K, "E6B0A4E6B0B2E4B98BE681AF3137")
    },
    {
      [L1_131(C, "76616C7565")] = 1092616192,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 1061997773,
      [L1_131(A, "6F6666736574")] = 4,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(R, "76616C7565")] = 2289,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 1472,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 21,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function l1()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(H, "6E616D65")] = L1_131(Z, "E9BB91E88080E98197E8BFB931")
    },
    {
      [L1_131(W, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(T, "74797065")] = L31_161
    },
    {
      [L1_131(C, "6C76")] = 0.125,
      [L1_131(N, "6F6666736574")] = -16,
      [L1_131(S, "74797065")] = L31_161
    },
    {
      [L1_131(C, "6C76")] = 3.207297995686531E-4,
      [L1_131(K, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 9422,
      [L1_131(Y, "6F6666736574")] = 20,
      [L1_131(J, "74797065")] = L31_161
    },
    {
      [L1_131(N, "76616C7565")] = 14918,
      [L1_131(N, "6F6666736574")] = 36,
      [L1_131(K, "74797065")] = L31_161
    },
    {
      [L1_131(E, "76616C7565")] = 0,
      [L1_131(B, "6F6666736574")] = 28,
      [L1_131(T, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function l2()
  qmnb = {
    {
      [L1_131(K, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(S, "6E616D65")] = L1_131(E, "E9BB91E88080E98197E8BFB932")
    },
    {
      [L1_131(G, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(F, "74797065")] = L31_161
    },
    {
      [L1_131(M, "6C76")] = 0.125,
      [L1_131(N, "6F6666736574")] = -16,
      [L1_131(W, "74797065")] = L31_161
    },
    {
      [L1_131(V, "6C76")] = 3.207297995686531E-4,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(J, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(O, "76616C7565")] = 8431,
      [L1_131(S, "6F6666736574")] = 20,
      [L1_131(S, "74797065")] = L31_161
    },
    {
      [L1_131(S, "76616C7565")] = 14741,
      [L1_131(T, "6F6666736574")] = 36,
      [L1_131(C, "74797065")] = L31_161
    },
    {
      [L1_131(R, "76616C7565")] = 0,
      [L1_131(G, "6F6666736574")] = 28,
      [L1_131(V, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function l3()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(F, "E9BB91E88080E98197E8BFB933")
    },
    {
      [L1_131(N, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(B, "74797065")] = L31_161
    },
    {
      [L1_131(M, "6C76")] = 0.125,
      [L1_131(H, "6F6666736574")] = -16,
      [L1_131(F, "74797065")] = L31_161
    },
    {
      [L1_131(Q, "6C76")] = 3.207297995686531E-4,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 8359,
      [L1_131(R, "6F6666736574")] = 20,
      [L1_131(K, "74797065")] = L31_161
    },
    {
      [L1_131(W, "76616C7565")] = 10529,
      [L1_131(D, "6F6666736574")] = 36,
      [L1_131(T, "74797065")] = L31_161
    },
    {
      [L1_131(C, "76616C7565")] = 0,
      [L1_131(P, "6F6666736574")] = 28,
      [L1_131(F, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function l4()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(R, "E9BB91E88080E98197E8BFB934")
    },
    {
      [L1_131(A, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(Q, "74797065")] = L31_161
    },
    {
      [L1_131(O, "6C76")] = 0.125,
      [L1_131(N, "6F6666736574")] = -16,
      [L1_131(X, "74797065")] = L31_161
    },
    {
      [L1_131(S, "6C76")] = 3.207297995686531E-4,
      [L1_131(U, "6F6666736574")] = -68,
      [L1_131(B, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(B, "76616C7565")] = 11098,
      [L1_131(W, "6F6666736574")] = 20,
      [L1_131(E, "74797065")] = L31_161
    },
    {
      [L1_131(Z, "76616C7565")] = 10878,
      [L1_131(W, "6F6666736574")] = 36,
      [L1_131(B, "74797065")] = L31_161
    },
    {
      [L1_131(Z, "76616C7565")] = 0,
      [L1_131(K, "6F6666736574")] = 28,
      [L1_131(Y, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function l5()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(O, "6E616D65")] = L1_131(E, "E9BB91E88080E98197E8BFB935")
    },
    {
      [L1_131(Z, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(D, "74797065")] = L31_161
    },
    {
      [L1_131(Z, "6C76")] = 0.125,
      [L1_131(O, "6F6666736574")] = -16,
      [L1_131(O, "74797065")] = L31_161
    },
    {
      [L1_131(W, "6C76")] = 3.207297995686531E-4,
      [L1_131(Y, "6F6666736574")] = -68,
      [L1_131(C, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(F, "76616C7565")] = 9820,
      [L1_131(E, "6F6666736574")] = 20,
      [L1_131(A, "74797065")] = L31_161
    },
    {
      [L1_131(C, "76616C7565")] = 8077,
      [L1_131(J, "6F6666736574")] = 36,
      [L1_131(E, "74797065")] = L31_161
    },
    {
      [L1_131(R, "76616C7565")] = 0,
      [L1_131(D, "6F6666736574")] = 28,
      [L1_131(B, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function l6()
  qmnb = {
    {
      [L1_131(L, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(M, "6E616D65")] = L1_131(G, "E9BB91E88080E98197E8BFB936")
    },
    {
      [L1_131(E, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(S, "74797065")] = L31_161
    },
    {
      [L1_131(T, "6C76")] = 0.125,
      [L1_131(X, "6F6666736574")] = -16,
      [L1_131(Q, "74797065")] = L31_161
    },
    {
      [L1_131(O, "6C76")] = 3.207297995686531E-4,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(X, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(J, "76616C7565")] = 14800,
      [L1_131(O, "6F6666736574")] = 20,
      [L1_131(X, "74797065")] = L31_161
    },
    {
      [L1_131(Z, "76616C7565")] = 7753,
      [L1_131(K, "6F6666736574")] = 36,
      [L1_131(Z, "74797065")] = L31_161
    },
    {
      [L1_131(Z, "76616C7565")] = 0,
      [L1_131(Q, "6F6666736574")] = 28,
      [L1_131(N, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function l7()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(T, "6E616D65")] = L1_131(J, "E9BB91E88080E98197E8BFB937")
    },
    {
      [L1_131(M, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(T, "74797065")] = L31_161
    },
    {
      [L1_131(T, "6C76")] = 0.125,
      [L1_131(O, "6F6666736574")] = -16,
      [L1_131(B, "74797065")] = L31_161
    },
    {
      [L1_131(B, "6C76")] = 3.207297995686531E-4,
      [L1_131(Z, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(Z, "76616C7565")] = 15808,
      [L1_131(S, "6F6666736574")] = 20,
      [L1_131(G, "74797065")] = L31_161
    },
    {
      [L1_131(T, "76616C7565")] = 11271,
      [L1_131(L, "6F6666736574")] = 36,
      [L1_131(F, "74797065")] = L31_161
    },
    {
      [L1_131(K, "76616C7565")] = 0,
      [L1_131(H, "6F6666736574")] = 28,
      [L1_131(Q, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function m1()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(X, "E887AAE69D80")
    },
    {
      [L1_131(Y, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(F, "74797065")] = L31_161
    },
    {
      [L1_131(D, "6C76")] = 0.125,
      [L1_131(S, "6F6666736574")] = -16,
      [L1_131(O, "74797065")] = L31_161
    },
    {
      [L1_131(Q, "6C76")] = 3.207297995686531E-4,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 6752,
      [L1_131(B, "6F6666736574")] = 20,
      [L1_131(E, "74797065")] = L31_161
    },
    {
      [L1_131(A, "76616C7565")] = 9247,
      [L1_131(X, "6F6666736574")] = 36,
      [L1_131(M, "74797065")] = L31_161
    },
    {
      [L1_131(Q, "76616C7565")] = 170,
      [L1_131(M, "6F6666736574")] = 28,
      [L1_131(S, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function m2()
  qmnb = {
    {
      [L1_131(G, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(G, "E68DA1E58C85")
    },
    {
      [L1_131(O, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(U, "74797065")] = L31_161
    },
    {
      [L1_131(A, "6C76")] = 0.125,
      [L1_131(H, "6F6666736574")] = -16,
      [L1_131(A, "74797065")] = L31_161
    },
    {
      [L1_131(A, "6C76")] = 3.207297995686531E-4,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(J, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(B, "76616C7565")] = 6752,
      [L1_131(M, "6F6666736574")] = 20,
      [L1_131(X, "74797065")] = L31_161
    },
    {
      [L1_131(H, "76616C7565")] = 9247,
      [L1_131(A, "6F6666736574")] = 36,
      [L1_131(S, "74797065")] = L31_161
    },
    {
      [L1_131(P, "76616C7565")] = 94,
      [L1_131(Q, "6F6666736574")] = 28,
      [L1_131(E, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function m3()
  qmnb = {
    {
      [L1_131(M, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(A, "6E616D65")] = L1_131(O, "E79BAEE79A84E59CB0")
    },
    {
      [L1_131(G, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(B, "74797065")] = L31_161
    },
    {
      [L1_131(B, "6C76")] = 3.207297995686531E-4,
      [L1_131(B, "6F6666736574")] = -68,
      [L1_131(P, "74797065")] = L31_161
    },
    {
      [L1_131(W, "6C76")] = 0.125,
      [L1_131(S, "6F6666736574")] = -16,
      [L1_131(Z, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(B, "76616C7565")] = L27_157({
        L1_131(S, "58E59D90E6A087EFBC9A"),
        L1_131(N, "5AE59D90E6A087EFBC9A"),
        L1_131(T, "59E59D90E6A087EFBC9A")
      }, {
        [1] = 9933,
        [2] = 12396,
        [3] = 0
      }, {
        [1] = L1_131(U, "6E756D626572"),
        [2] = L1_131(T, "6E756D626572"),
        [3] = L1_131(R, "6E756D626572")
      })[1],
      [L1_131(W, "6F6666736574")] = 20,
      [L1_131(Y, "74797065")] = L31_161
    },
    {
      [L1_131(B, "76616C7565")] = L27_157({
        L1_131(S, "58E59D90E6A087EFBC9A"),
        L1_131(N, "5AE59D90E6A087EFBC9A"),
        L1_131(T, "59E59D90E6A087EFBC9A")
      }, {
        [1] = 9933,
        [2] = 12396,
        [3] = 0
      }, {
        [1] = L1_131(U, "6E756D626572"),
        [2] = L1_131(T, "6E756D626572"),
        [3] = L1_131(R, "6E756D626572")
      })[2],
      [L1_131(Q, "6F6666736574")] = 36,
      [L1_131(G, "74797065")] = L31_161
    },
    {
      [L1_131(T, "76616C7565")] = L27_157({
        L1_131(S, "58E59D90E6A087EFBC9A"),
        L1_131(N, "5AE59D90E6A087EFBC9A"),
        L1_131(T, "59E59D90E6A087EFBC9A")
      }, {
        [1] = 9933,
        [2] = 12396,
        [3] = 0
      }, {
        [1] = L1_131(U, "6E756D626572"),
        [2] = L1_131(T, "6E756D626572"),
        [3] = L1_131(R, "6E756D626572")
      })[3],
      [L1_131(Z, "6F6666736574")] = 28,
      [L1_131(S, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n1()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(H, "6E616D65")] = L1_131(U, "E4BA91E69691E9B9A6E9B89F31")
    },
    {
      [L1_131(B, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(B, "74797065")] = L31_161
    },
    {
      [L1_131(P, "6C76")] = 0.125,
      [L1_131(Y, "6F6666736574")] = -16,
      [L1_131(C, "74797065")] = L31_161
    },
    {
      [L1_131(E, "6C76")] = 3.207297995686531E-4,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(O, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(G, "76616C7565")] = 16709,
      [L1_131(G, "6F6666736574")] = 20,
      [L1_131(Z, "74797065")] = L31_161
    },
    {
      [L1_131(Q, "76616C7565")] = 18205,
      [L1_131(Y, "6F6666736574")] = 36,
      [L1_131(Z, "74797065")] = L31_161
    },
    {
      [L1_131(V, "76616C7565")] = 0,
      [L1_131(D, "6F6666736574")] = 28,
      [L1_131(T, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n2()
  qmnb = {
    {
      [L1_131(U, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(L, "6E616D65")] = L1_131(L, "E4BA91E69691E9B9A6E9B89F32")
    },
    {
      [L1_131(B, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(Q, "74797065")] = L31_161
    },
    {
      [L1_131(A, "6C76")] = 0.125,
      [L1_131(Z, "6F6666736574")] = -16,
      [L1_131(C, "74797065")] = L31_161
    },
    {
      [L1_131(Z, "6C76")] = 3.207297995686531E-4,
      [L1_131(Z, "6F6666736574")] = -68,
      [L1_131(W, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 16364,
      [L1_131(S, "6F6666736574")] = 20,
      [L1_131(Y, "74797065")] = L31_161
    },
    {
      [L1_131(E, "76616C7565")] = 16494,
      [L1_131(R, "6F6666736574")] = 36,
      [L1_131(V, "74797065")] = L31_161
    },
    {
      [L1_131(W, "76616C7565")] = 0,
      [L1_131(P, "6F6666736574")] = 28,
      [L1_131(C, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n3()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(O, "6E616D65")] = L1_131(L, "E4BA91E69691E9B9A6E9B89F33")
    },
    {
      [L1_131(B, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(Y, "74797065")] = L31_161
    },
    {
      [L1_131(K, "6C76")] = 0.125,
      [L1_131(W, "6F6666736574")] = -16,
      [L1_131(P, "74797065")] = L31_161
    },
    {
      [L1_131(H, "6C76")] = 3.207297995686531E-4,
      [L1_131(S, "6F6666736574")] = -68,
      [L1_131(J, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(U, "76616C7565")] = 14627,
      [L1_131(P, "6F6666736574")] = 20,
      [L1_131(D, "74797065")] = L31_161
    },
    {
      [L1_131(A, "76616C7565")] = 15686,
      [L1_131(E, "6F6666736574")] = 36,
      [L1_131(J, "74797065")] = L31_161
    },
    {
      [L1_131(Z, "76616C7565")] = 0,
      [L1_131(T, "6F6666736574")] = 28,
      [L1_131(Q, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n4()
  qmnb = {
    {
      [L1_131(F, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(Q, "6E616D65")] = L1_131(J, "E4BA91E69691E9B9A6E9B89F34")
    },
    {
      [L1_131(L, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(Y, "74797065")] = L31_161
    },
    {
      [L1_131(W, "6C76")] = 0.125,
      [L1_131(A, "6F6666736574")] = -16,
      [L1_131(F, "74797065")] = L31_161
    },
    {
      [L1_131(K, "6C76")] = 3.207297995686531E-4,
      [L1_131(B, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(L, "76616C7565")] = 9606,
      [L1_131(F, "6F6666736574")] = 20,
      [L1_131(B, "74797065")] = L31_161
    },
    {
      [L1_131(Q, "76616C7565")] = 16388,
      [L1_131(O, "6F6666736574")] = 36,
      [L1_131(W, "74797065")] = L31_161
    },
    {
      [L1_131(W, "76616C7565")] = 0,
      [L1_131(K, "6F6666736574")] = 28,
      [L1_131(D, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n5()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(K, "6E616D65")] = L1_131(Z, "E4BA91E69691E9B9A6E9B89F35")
    },
    {
      [L1_131(V, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(L, "74797065")] = L31_161
    },
    {
      [L1_131(B, "6C76")] = 0.125,
      [L1_131(A, "6F6666736574")] = -16,
      [L1_131(N, "74797065")] = L31_161
    },
    {
      [L1_131(N, "6C76")] = 3.207297995686531E-4,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 8076,
      [L1_131(A, "6F6666736574")] = 20,
      [L1_131(T, "74797065")] = L31_161
    },
    {
      [L1_131(J, "76616C7565")] = 15470,
      [L1_131(O, "6F6666736574")] = 36,
      [L1_131(E, "74797065")] = L31_161
    },
    {
      [L1_131(U, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = 28,
      [L1_131(J, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n6()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(Q, "6E616D65")] = L1_131(O, "E4BA91E69691E9B9A6E9B89F36")
    },
    {
      [L1_131(D, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(S, "74797065")] = L31_161
    },
    {
      [L1_131(T, "6C76")] = 0.125,
      [L1_131(L, "6F6666736574")] = -16,
      [L1_131(D, "74797065")] = L31_161
    },
    {
      [L1_131(E, "6C76")] = 3.207297995686531E-4,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(O, "76616C7565")] = 2235,
      [L1_131(Q, "6F6666736574")] = 20,
      [L1_131(G, "74797065")] = L31_161
    },
    {
      [L1_131(H, "76616C7565")] = 18184,
      [L1_131(Q, "6F6666736574")] = 36,
      [L1_131(D, "74797065")] = L31_161
    },
    {
      [L1_131(B, "76616C7565")] = 0,
      [L1_131(T, "6F6666736574")] = 28,
      [L1_131(P, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n7()
  qmnb = {
    {
      [L1_131(C, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(G, "E4BA91E69691E9B9A6E9B89F37")
    },
    {
      [L1_131(Z, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(A, "74797065")] = L31_161
    },
    {
      [L1_131(A, "6C76")] = 0.125,
      [L1_131(B, "6F6666736574")] = -16,
      [L1_131(S, "74797065")] = L31_161
    },
    {
      [L1_131(V, "6C76")] = 3.207297995686531E-4,
      [L1_131(R, "6F6666736574")] = -68,
      [L1_131(C, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 9358,
      [L1_131(T, "6F6666736574")] = 20,
      [L1_131(C, "74797065")] = L31_161
    },
    {
      [L1_131(X, "76616C7565")] = 12553,
      [L1_131(F, "6F6666736574")] = 36,
      [L1_131(O, "74797065")] = L31_161
    },
    {
      [L1_131(H, "76616C7565")] = 0,
      [L1_131(K, "6F6666736574")] = 28,
      [L1_131(P, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n8()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(Q, "6E616D65")] = L1_131(X, "E4BA91E69691E9B9A6E9B89F38")
    },
    {
      [L1_131(T, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(M, "74797065")] = L31_161
    },
    {
      [L1_131(P, "6C76")] = 0.125,
      [L1_131(Y, "6F6666736574")] = -16,
      [L1_131(X, "74797065")] = L31_161
    },
    {
      [L1_131(M, "6C76")] = 3.207297995686531E-4,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 10354,
      [L1_131(Q, "6F6666736574")] = 20,
      [L1_131(K, "74797065")] = L31_161
    },
    {
      [L1_131(Q, "76616C7565")] = 13159,
      [L1_131(B, "6F6666736574")] = 36,
      [L1_131(A, "74797065")] = L31_161
    },
    {
      [L1_131(K, "76616C7565")] = 0,
      [L1_131(B, "6F6666736574")] = 28,
      [L1_131(B, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n9()
  qmnb = {
    {
      [L1_131(L, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(C, "6E616D65")] = L1_131(N, "E4BA91E69691E9B9A6E9B89F39")
    },
    {
      [L1_131(D, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(U, "74797065")] = L31_161
    },
    {
      [L1_131(U, "6C76")] = 0.125,
      [L1_131(E, "6F6666736574")] = -16,
      [L1_131(B, "74797065")] = L31_161
    },
    {
      [L1_131(F, "6C76")] = 3.207297995686531E-4,
      [L1_131(H, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 14091,
      [L1_131(G, "6F6666736574")] = 20,
      [L1_131(D, "74797065")] = L31_161
    },
    {
      [L1_131(Q, "76616C7565")] = 13822,
      [L1_131(X, "6F6666736574")] = 36,
      [L1_131(W, "74797065")] = L31_161
    },
    {
      [L1_131(C, "76616C7565")] = 0,
      [L1_131(O, "6F6666736574")] = 28,
      [L1_131(J, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n10()
  qmnb = {
    {
      [L1_131(F, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(U, "6E616D65")] = L1_131(X, "E4BA91E69691E9B9A6E9B89F3130")
    },
    {
      [L1_131(Y, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(D, "74797065")] = L31_161
    },
    {
      [L1_131(W, "6C76")] = 0.125,
      [L1_131(G, "6F6666736574")] = -16,
      [L1_131(L, "74797065")] = L31_161
    },
    {
      [L1_131(H, "6C76")] = 3.207297995686531E-4,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(Z, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 14551,
      [L1_131(H, "6F6666736574")] = 20,
      [L1_131(C, "74797065")] = L31_161
    },
    {
      [L1_131(Q, "76616C7565")] = 14351,
      [L1_131(Z, "6F6666736574")] = 36,
      [L1_131(P, "74797065")] = L31_161
    },
    {
      [L1_131(K, "76616C7565")] = 0,
      [L1_131(F, "6F6666736574")] = 28,
      [L1_131(K, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n11()
  qmnb = {
    {
      [L1_131(X, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(K, "6E616D65")] = L1_131(Y, "E4BA91E69691E9B9A6E9B89F3131")
    },
    {
      [L1_131(M, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(D, "74797065")] = L31_161
    },
    {
      [L1_131(W, "6C76")] = 0.125,
      [L1_131(V, "6F6666736574")] = -16,
      [L1_131(F, "74797065")] = L31_161
    },
    {
      [L1_131(N, "6C76")] = 3.207297995686531E-4,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(Z, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(L, "76616C7565")] = 13917,
      [L1_131(G, "6F6666736574")] = 20,
      [L1_131(R, "74797065")] = L31_161
    },
    {
      [L1_131(S, "76616C7565")] = 11450,
      [L1_131(W, "6F6666736574")] = 36,
      [L1_131(G, "74797065")] = L31_161
    },
    {
      [L1_131(U, "76616C7565")] = 0,
      [L1_131(T, "6F6666736574")] = 28,
      [L1_131(C, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n12()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(R, "E4BA91E69691E9B9A6E9B89F3132")
    },
    {
      [L1_131(M, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(E, "74797065")] = L31_161
    },
    {
      [L1_131(B, "6C76")] = 0.125,
      [L1_131(A, "6F6666736574")] = -16,
      [L1_131(P, "74797065")] = L31_161
    },
    {
      [L1_131(E, "6C76")] = 3.207297995686531E-4,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(L, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(G, "76616C7565")] = 15059,
      [L1_131(L, "6F6666736574")] = 20,
      [L1_131(Z, "74797065")] = L31_161
    },
    {
      [L1_131(B, "76616C7565")] = 11294,
      [L1_131(J, "6F6666736574")] = 36,
      [L1_131(N, "74797065")] = L31_161
    },
    {
      [L1_131(E, "76616C7565")] = 0,
      [L1_131(A, "6F6666736574")] = 28,
      [L1_131(E, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n13()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(K, "6E616D65")] = L1_131(F, "E4BA91E69691E9B9A6E9B89F3133")
    },
    {
      [L1_131(L, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(R, "74797065")] = L31_161
    },
    {
      [L1_131(C, "6C76")] = 0.125,
      [L1_131(X, "6F6666736574")] = -16,
      [L1_131(X, "74797065")] = L31_161
    },
    {
      [L1_131(O, "6C76")] = 3.207297995686531E-4,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(B, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(U, "76616C7565")] = 15935,
      [L1_131(G, "6F6666736574")] = 20,
      [L1_131(R, "74797065")] = L31_161
    },
    {
      [L1_131(A, "76616C7565")] = 11253,
      [L1_131(R, "6F6666736574")] = 36,
      [L1_131(C, "74797065")] = L31_161
    },
    {
      [L1_131(V, "76616C7565")] = 0,
      [L1_131(M, "6F6666736574")] = 28,
      [L1_131(F, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n14()
  qmnb = {
    {
      [L1_131(P, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(P, "6E616D65")] = L1_131(G, "E4BA91E69691E9B9A6E9B89F3134")
    },
    {
      [L1_131(R, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(C, "74797065")] = L31_161
    },
    {
      [L1_131(L, "6C76")] = 0.125,
      [L1_131(M, "6F6666736574")] = -16,
      [L1_131(T, "74797065")] = L31_161
    },
    {
      [L1_131(S, "6C76")] = 3.207297995686531E-4,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(W, "76616C7565")] = 13119,
      [L1_131(J, "6F6666736574")] = 20,
      [L1_131(V, "74797065")] = L31_161
    },
    {
      [L1_131(H, "76616C7565")] = 10038,
      [L1_131(J, "6F6666736574")] = 36,
      [L1_131(J, "74797065")] = L31_161
    },
    {
      [L1_131(G, "76616C7565")] = 0,
      [L1_131(O, "6F6666736574")] = 28,
      [L1_131(Z, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n15()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(H, "6E616D65")] = L1_131(G, "E4BA91E69691E9B9A6E9B89F3135")
    },
    {
      [L1_131(F, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(E, "74797065")] = L31_161
    },
    {
      [L1_131(R, "6C76")] = 0.125,
      [L1_131(J, "6F6666736574")] = -16,
      [L1_131(K, "74797065")] = L31_161
    },
    {
      [L1_131(J, "6C76")] = 3.207297995686531E-4,
      [L1_131(Z, "6F6666736574")] = -68,
      [L1_131(T, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(W, "76616C7565")] = 9195,
      [L1_131(L, "6F6666736574")] = 20,
      [L1_131(K, "74797065")] = L31_161
    },
    {
      [L1_131(D, "76616C7565")] = 8831,
      [L1_131(D, "6F6666736574")] = 36,
      [L1_131(Q, "74797065")] = L31_161
    },
    {
      [L1_131(A, "76616C7565")] = 0,
      [L1_131(K, "6F6666736574")] = 28,
      [L1_131(M, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n16()
  qmnb = {
    {
      [L1_131(S, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(K, "6E616D65")] = L1_131(B, "E4BA91E69691E9B9A6E9B89F3136")
    },
    {
      [L1_131(K, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(G, "74797065")] = L31_161
    },
    {
      [L1_131(Z, "6C76")] = 0.125,
      [L1_131(U, "6F6666736574")] = -16,
      [L1_131(F, "74797065")] = L31_161
    },
    {
      [L1_131(B, "6C76")] = 3.207297995686531E-4,
      [L1_131(Q, "6F6666736574")] = -68,
      [L1_131(W, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 7639,
      [L1_131(L, "6F6666736574")] = 20,
      [L1_131(R, "74797065")] = L31_161
    },
    {
      [L1_131(K, "76616C7565")] = 7445,
      [L1_131(Q, "6F6666736574")] = 36,
      [L1_131(W, "74797065")] = L31_161
    },
    {
      [L1_131(G, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = 28,
      [L1_131(R, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n17()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(O, "6E616D65")] = L1_131(R, "E4BA91E69691E9B9A6E9B89F3137")
    },
    {
      [L1_131(A, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(U, "74797065")] = L31_161
    },
    {
      [L1_131(Z, "6C76")] = 0.125,
      [L1_131(Q, "6F6666736574")] = -16,
      [L1_131(E, "74797065")] = L31_161
    },
    {
      [L1_131(N, "6C76")] = 3.207297995686531E-4,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 8135,
      [L1_131(E, "6F6666736574")] = 20,
      [L1_131(D, "74797065")] = L31_161
    },
    {
      [L1_131(K, "76616C7565")] = 7115,
      [L1_131(E, "6F6666736574")] = 36,
      [L1_131(K, "74797065")] = L31_161
    },
    {
      [L1_131(G, "76616C7565")] = 0,
      [L1_131(K, "6F6666736574")] = 28,
      [L1_131(M, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n18()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(Q, "6E616D65")] = L1_131(Y, "E4BA91E69691E9B9A6E9B89F3138")
    },
    {
      [L1_131(F, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(J, "74797065")] = L31_161
    },
    {
      [L1_131(G, "6C76")] = 0.125,
      [L1_131(E, "6F6666736574")] = -16,
      [L1_131(Z, "74797065")] = L31_161
    },
    {
      [L1_131(D, "6C76")] = 3.207297995686531E-4,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(W, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(E, "76616C7565")] = 7806,
      [L1_131(K, "6F6666736574")] = 20,
      [L1_131(M, "74797065")] = L31_161
    },
    {
      [L1_131(B, "76616C7565")] = 6527,
      [L1_131(X, "6F6666736574")] = 36,
      [L1_131(A, "74797065")] = L31_161
    },
    {
      [L1_131(B, "76616C7565")] = 0,
      [L1_131(H, "6F6666736574")] = 28,
      [L1_131(A, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n19()
  qmnb = {
    {
      [L1_131(Q, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(M, "6E616D65")] = L1_131(V, "E4BA91E69691E9B9A6E9B89F3139")
    },
    {
      [L1_131(F, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(Z, "74797065")] = L31_161
    },
    {
      [L1_131(N, "6C76")] = 0.125,
      [L1_131(K, "6F6666736574")] = -16,
      [L1_131(P, "74797065")] = L31_161
    },
    {
      [L1_131(J, "6C76")] = 3.207297995686531E-4,
      [L1_131(B, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(C, "76616C7565")] = 2295,
      [L1_131(P, "6F6666736574")] = 20,
      [L1_131(J, "74797065")] = L31_161
    },
    {
      [L1_131(R, "76616C7565")] = 2173,
      [L1_131(C, "6F6666736574")] = 36,
      [L1_131(M, "74797065")] = L31_161
    },
    {
      [L1_131(L, "76616C7565")] = 0,
      [L1_131(E, "6F6666736574")] = 28,
      [L1_131(O, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function n20()
  qmnb = {
    {
      [L1_131(E, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(K, "E4BA91E69691E9B9A6E9B89F3230")
    },
    {
      [L1_131(G, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(Q, "74797065")] = L31_161
    },
    {
      [L1_131(W, "6C76")] = 0.125,
      [L1_131(T, "6F6666736574")] = -16,
      [L1_131(W, "74797065")] = L31_161
    },
    {
      [L1_131(F, "6C76")] = 3.207297995686531E-4,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(W, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(E, "76616C7565")] = 17300,
      [L1_131(U, "6F6666736574")] = 20,
      [L1_131(D, "74797065")] = L31_161
    },
    {
      [L1_131(Y, "76616C7565")] = 2204,
      [L1_131(O, "6F6666736574")] = 36,
      [L1_131(X, "74797065")] = L31_161
    },
    {
      [L1_131(Q, "76616C7565")] = 0,
      [L1_131(U, "6F6666736574")] = 28,
      [L1_131(L, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function o1()
  qmnb = {
    {
      [L1_131(P, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(Z, "E5B9BCE9B2ADE9B2A832")
    },
    {
      [L1_131(E, "76616C7565")] = 1092616192,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 1061997773,
      [L1_131(H, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(Z, "6C76")] = 65540,
      [L1_131(H, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 16424,
      [L1_131(J, "6F6666736574")] = -68,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 11951,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 21,
      [L1_131(A, "6F6666736574")] = -60,
      [L1_131(Q, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o2()
  qmnb = {
    {
      [L1_131(S, "6D656D6F7279")] = 4
    },
    {
      [L1_131(N, "6E616D65")] = L1_131(H, "E5B9BCE9B2ADE9B2A832")
    },
    {
      [L1_131(X, "76616C7565")] = 1092616192,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 1061997773,
      [L1_131(H, "6F6666736574")] = 4,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 65540,
      [L1_131(C, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 16937,
      [L1_131(J, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 9949,
      [L1_131(Q, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 21,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(O, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o3()
  qmnb = {
    {
      [L1_131(M, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Q, "6E616D65")] = L1_131(F, "E5B9BCE9B2ADE9B2A833")
    },
    {
      [L1_131(G, "76616C7565")] = 1092616192,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 1061997773,
      [L1_131(U, "6F6666736574")] = 4,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(M, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 11455,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 7618,
      [L1_131(P, "6F6666736574")] = -52,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 21,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(G, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o4()
  qmnb = {
    {
      [L1_131(P, "6D656D6F7279")] = 4
    },
    {
      [L1_131(V, "6E616D65")] = L1_131(S, "E5B9BCE9B2ADE9B2A834")
    },
    {
      [L1_131(X, "76616C7565")] = 1092616192,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(S, "6F6666736574")] = 4,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 65540,
      [L1_131(K, "6F6666736574")] = 8,
      [L1_131(B, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 16424,
      [L1_131(Q, "6F6666736574")] = -68,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 11951,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 21,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o5()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(S, "6E616D65")] = L1_131(X, "E5B9BCE9B2ADE9B2A835")
    },
    {
      [L1_131(P, "76616C7565")] = 1092616192,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 1061997773,
      [L1_131(F, "6F6666736574")] = 4,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(B, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 11346,
      [L1_131(U, "6F6666736574")] = -68,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 8499,
      [L1_131(Q, "6F6666736574")] = -52,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 21,
      [L1_131(T, "6F6666736574")] = -60,
      [L1_131(V, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o6()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Q, "6E616D65")] = L1_131(D, "E5B9BCE9B2ADE9B2A836")
    },
    {
      [L1_131(M, "76616C7565")] = 1092616192,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(Z, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(U, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(L, "76616C7565")] = 8739,
      [L1_131(W, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 8733,
      [L1_131(E, "6F6666736574")] = -52,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 21,
      [L1_131(K, "6F6666736574")] = -60,
      [L1_131(T, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o7()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(R, "E5B9BCE9B2ADE9B2A837")
    },
    {
      [L1_131(G, "76616C7565")] = 1092616192,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 1061997773,
      [L1_131(L, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(D, "6F6666736574")] = 8,
      [L1_131(G, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 8833,
      [L1_131(P, "6F6666736574")] = -68,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 9079,
      [L1_131(L, "6F6666736574")] = -52,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 21,
      [L1_131(U, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o8()
  qmnb = {
    {
      [L1_131(Q, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Q, "6E616D65")] = L1_131(Z, "E5B9BCE9B2ADE9B2A838")
    },
    {
      [L1_131(Q, "76616C7565")] = 1092616192,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 1061997773,
      [L1_131(F, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 65540,
      [L1_131(J, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(V, "76616C7565")] = 8980,
      [L1_131(N, "6F6666736574")] = -68,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 9435,
      [L1_131(S, "6F6666736574")] = -52,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 21,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o9()
  qmnb = {
    {
      [L1_131(V, "6D656D6F7279")] = 4
    },
    {
      [L1_131(T, "6E616D65")] = L1_131(Y, "E5B9BCE9B2ADE9B2A839")
    },
    {
      [L1_131(J, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(Z, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(T, "76616C7565")] = 9124,
      [L1_131(V, "6F6666736574")] = -68,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 9610,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 21,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(H, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o10()
  qmnb = {
    {
      [L1_131(V, "6D656D6F7279")] = 4
    },
    {
      [L1_131(N, "6E616D65")] = L1_131(E, "E5B9BCE9B2ADE9B2A83130")
    },
    {
      [L1_131(O, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 1061997773,
      [L1_131(G, "6F6666736574")] = 4,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(Z, "6F6666736574")] = 8,
      [L1_131(X, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(W, "76616C7565")] = 10692,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 10642,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 21,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(V, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o11()
  qmnb = {
    {
      [L1_131(E, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(K, "E5B9BCE9B2ADE9B2A83131")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 1061997773,
      [L1_131(A, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(X, "6F6666736574")] = 8,
      [L1_131(J, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(V, "76616C7565")] = 11245,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 11399,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 21,
      [L1_131(F, "6F6666736574")] = -60,
      [L1_131(Q, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o12()
  qmnb = {
    {
      [L1_131(V, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(A, "E5B9BCE9B2ADE9B2A83132")
    },
    {
      [L1_131(H, "76616C7565")] = 1092616192,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 1061997773,
      [L1_131(C, "6F6666736574")] = 4,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 12041,
      [L1_131(W, "6F6666736574")] = -68,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 11483,
      [L1_131(K, "6F6666736574")] = -52,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 21,
      [L1_131(D, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o13()
  qmnb = {
    {
      [L1_131(G, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(U, "E5B9BCE9B2ADE9B2A83133")
    },
    {
      [L1_131(W, "76616C7565")] = 1092616192,
      [L1_131(C, "74797065")] = 4
    },
    {
      [L1_131(S, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(Q, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 12153,
      [L1_131(R, "6F6666736574")] = -68,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 11951,
      [L1_131(K, "6F6666736574")] = -52,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 21,
      [L1_131(Q, "6F6666736574")] = -60,
      [L1_131(B, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o14()
  qmnb = {
    {
      [L1_131(K, "6D656D6F7279")] = 4
    },
    {
      [L1_131(V, "6E616D65")] = L1_131(Z, "E5B9BCE9B2ADE9B2A83134")
    },
    {
      [L1_131(Q, "76616C7565")] = 1092616192,
      [L1_131(C, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(Q, "6F6666736574")] = 4,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(Q, "6F6666736574")] = 8,
      [L1_131(T, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(O, "76616C7565")] = 12038,
      [L1_131(Y, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 12963,
      [L1_131(E, "6F6666736574")] = -52,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 21,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(W, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o15()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = 4
    },
    {
      [L1_131(F, "6E616D65")] = L1_131(T, "E5B9BCE9B2ADE9B2A83135")
    },
    {
      [L1_131(Y, "76616C7565")] = 1092616192,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 1061997773,
      [L1_131(P, "6F6666736574")] = 4,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 65540,
      [L1_131(Z, "6F6666736574")] = 8,
      [L1_131(Z, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 8567,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 12042,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 21,
      [L1_131(G, "6F6666736574")] = -60,
      [L1_131(U, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o16()
  qmnb = {
    {
      [L1_131(Q, "6D656D6F7279")] = 4
    },
    {
      [L1_131(A, "6E616D65")] = L1_131(N, "E5B9BCE9B2ADE9B2A83136")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(N, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(S, "6F6666736574")] = 8,
      [L1_131(S, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(E, "76616C7565")] = 8010,
      [L1_131(Q, "6F6666736574")] = -68,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 11916,
      [L1_131(J, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 21,
      [L1_131(E, "6F6666736574")] = -60,
      [L1_131(H, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o17()
  qmnb = {
    {
      [L1_131(E, "6D656D6F7279")] = 4
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(G, "E5B9BCE9B2ADE9B2A83137")
    },
    {
      [L1_131(C, "76616C7565")] = 1092616192,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(Q, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 7721,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 11855,
      [L1_131(W, "6F6666736574")] = -52,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 21,
      [L1_131(H, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o18()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = 4
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(H, "E5B9BCE9B2ADE9B2A83138")
    },
    {
      [L1_131(N, "76616C7565")] = 1092616192,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 1061997773,
      [L1_131(H, "6F6666736574")] = 4,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 65540,
      [L1_131(O, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 7588,
      [L1_131(L, "6F6666736574")] = -68,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 11571,
      [L1_131(D, "6F6666736574")] = -52,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 21,
      [L1_131(B, "6F6666736574")] = -60,
      [L1_131(F, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o19()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(U, "E5B9BCE9B2ADE9B2A83139")
    },
    {
      [L1_131(C, "76616C7565")] = 1092616192,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 1061997773,
      [L1_131(J, "6F6666736574")] = 4,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(G, "6F6666736574")] = 8,
      [L1_131(U, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(C, "76616C7565")] = 4632,
      [L1_131(L, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 12401,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 21,
      [L1_131(V, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o20()
  qmnb = {
    {
      [L1_131(W, "6D656D6F7279")] = 4
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(K, "E5B9BCE9B2ADE9B2A83230")
    },
    {
      [L1_131(A, "76616C7565")] = 1092616192,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(D, "6F6666736574")] = 8,
      [L1_131(W, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 4591,
      [L1_131(N, "6F6666736574")] = -68,
      [L1_131(P, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 14332,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 21,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o21()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(K, "6E616D65")] = L1_131(O, "E5B9BCE9B2ADE9B2A83231")
    },
    {
      [L1_131(P, "76616C7565")] = 1092616192,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 65540,
      [L1_131(J, "6F6666736574")] = 8,
      [L1_131(O, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(W, "76616C7565")] = 4648,
      [L1_131(T, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 14880,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 21,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(S, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o22()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Q, "6E616D65")] = L1_131(O, "E5B9BCE9B2ADE9B2A83232")
    },
    {
      [L1_131(B, "76616C7565")] = 1092616192,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(Q, "6F6666736574")] = 8,
      [L1_131(D, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 6069,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 15962,
      [L1_131(A, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 21,
      [L1_131(T, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o23()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = 4
    },
    {
      [L1_131(O, "6E616D65")] = L1_131(L, "E5B9BCE9B2ADE9B2A83233")
    },
    {
      [L1_131(H, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 1061997773,
      [L1_131(R, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 65540,
      [L1_131(P, "6F6666736574")] = 8,
      [L1_131(M, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(J, "76616C7565")] = 8054,
      [L1_131(S, "6F6666736574")] = -68,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 15933,
      [L1_131(C, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 21,
      [L1_131(B, "6F6666736574")] = -60,
      [L1_131(J, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function o24()
  qmnb = {
    {
      [L1_131(K, "6D656D6F7279")] = 4
    },
    {
      [L1_131(T, "6E616D65")] = L1_131(M, "E5B9BCE9B2ADE9B2A83234")
    },
    {
      [L1_131(V, "76616C7565")] = 1092616192,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 1061997773,
      [L1_131(N, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(O, "6F6666736574")] = 8,
      [L1_131(B, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 12656,
      [L1_131(H, "6F6666736574")] = -68,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 6572,
      [L1_131(J, "6F6666736574")] = -52,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 21,
      [L1_131(N, "6F6666736574")] = -60,
      [L1_131(G, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p1()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(K, "E781B0E9B2ADE9B2A831")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 65540,
      [L1_131(P, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(W, "76616C7565")] = 2226,
      [L1_131(B, "6F6666736574")] = -68,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 18472,
      [L1_131(G, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 21,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p2()
  qmnb = {
    {
      [L1_131(G, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(U, "E781B0E9B2ADE9B2A832")
    },
    {
      [L1_131(X, "76616C7565")] = 1092616192,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 1061997773,
      [L1_131(D, "6F6666736574")] = 4,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 65540,
      [L1_131(P, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(F, "76616C7565")] = 2610,
      [L1_131(V, "6F6666736574")] = -68,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 18180,
      [L1_131(S, "6F6666736574")] = -52,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 21,
      [L1_131(E, "6F6666736574")] = -60,
      [L1_131(W, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p3()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = 4
    },
    {
      [L1_131(P, "6E616D65")] = L1_131(P, "E781B0E9B2ADE9B2A833")
    },
    {
      [L1_131(P, "76616C7565")] = 1092616192,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(W, "6C76")] = 1061997773,
      [L1_131(J, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(X, "6F6666736574")] = 8,
      [L1_131(M, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(J, "76616C7565")] = 1935,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 18250,
      [L1_131(U, "6F6666736574")] = -52,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 21,
      [L1_131(U, "6F6666736574")] = -60,
      [L1_131(Z, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p4()
  qmnb = {
    {
      [L1_131(L, "6D656D6F7279")] = 4
    },
    {
      [L1_131(A, "6E616D65")] = L1_131(D, "E781B0E9B2ADE9B2A834")
    },
    {
      [L1_131(O, "76616C7565")] = 1092616192,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(O, "6F6666736574")] = 8,
      [L1_131(X, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 1925,
      [L1_131(K, "6F6666736574")] = -68,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 17940,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 21,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p5()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = 4
    },
    {
      [L1_131(T, "6E616D65")] = L1_131(M, "E781B0E9B2ADE9B2A835")
    },
    {
      [L1_131(S, "76616C7565")] = 1092616192,
      [L1_131(C, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(U, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(Q, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 2575,
      [L1_131(P, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 17840,
      [L1_131(N, "6F6666736574")] = -52,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 21,
      [L1_131(U, "6F6666736574")] = -60,
      [L1_131(Y, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p6()
  qmnb = {
    {
      [L1_131(L, "6D656D6F7279")] = 4
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(J, "E781B0E9B2ADE9B2A836")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 1061997773,
      [L1_131(A, "6F6666736574")] = 4,
      [L1_131(C, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(M, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(X, "76616C7565")] = 16489,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 18457,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 21,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(J, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p7()
  qmnb = {
    {
      [L1_131(F, "6D656D6F7279")] = 4
    },
    {
      [L1_131(W, "6E616D65")] = L1_131(D, "E781B0E9B2ADE9B2A837")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 65540,
      [L1_131(P, "6F6666736574")] = 8,
      [L1_131(S, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(J, "76616C7565")] = 16720,
      [L1_131(E, "6F6666736574")] = -68,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 18430,
      [L1_131(N, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 21,
      [L1_131(K, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p8()
  qmnb = {
    {
      [L1_131(X, "6D656D6F7279")] = 4
    },
    {
      [L1_131(G, "6E616D65")] = L1_131(F, "E781B0E9B2ADE9B2A838")
    },
    {
      [L1_131(X, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(O, "6F6666736574")] = 4,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 65540,
      [L1_131(G, "6F6666736574")] = 8,
      [L1_131(E, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(U, "76616C7565")] = 17061,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 18308,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 21,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(S, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p9()
  qmnb = {
    {
      [L1_131(S, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(G, "E781B0E9B2ADE9B2A839")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 1061997773,
      [L1_131(J, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(Z, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Z, "76616C7565")] = 16730,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 18018,
      [L1_131(J, "6F6666736574")] = -52,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 21,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(L, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p10()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = 4
    },
    {
      [L1_131(M, "6E616D65")] = L1_131(E, "E781B0E9B2ADE9B2A83130")
    },
    {
      [L1_131(C, "76616C7565")] = 1092616192,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 1061997773,
      [L1_131(E, "6F6666736574")] = 4,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 65540,
      [L1_131(J, "6F6666736574")] = 8,
      [L1_131(M, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Q, "76616C7565")] = 2025,
      [L1_131(S, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 2522,
      [L1_131(L, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 21,
      [L1_131(T, "6F6666736574")] = -60,
      [L1_131(C, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p11()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = 4
    },
    {
      [L1_131(P, "6E616D65")] = L1_131(V, "E781B0E9B2ADE9B2A83131")
    },
    {
      [L1_131(J, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(U, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 65540,
      [L1_131(G, "6F6666736574")] = 8,
      [L1_131(W, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 2060,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 2160,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 21,
      [L1_131(R, "6F6666736574")] = -60,
      [L1_131(X, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p12()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = 4
    },
    {
      [L1_131(V, "6E616D65")] = L1_131(C, "E781B0E9B2ADE9B2A83132")
    },
    {
      [L1_131(N, "76616C7565")] = 1092616192,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(U, "76616C7565")] = 2308,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 2013,
      [L1_131(R, "6F6666736574")] = -52,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 21,
      [L1_131(H, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p13()
  qmnb = {
    {
      [L1_131(F, "6D656D6F7279")] = 4
    },
    {
      [L1_131(H, "6E616D65")] = L1_131(A, "E781B0E9B2ADE9B2A83133")
    },
    {
      [L1_131(R, "76616C7565")] = 1092616192,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 1061997773,
      [L1_131(Q, "6F6666736574")] = 4,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(X, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(T, "76616C7565")] = 2700,
      [L1_131(R, "6F6666736574")] = -68,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 1923,
      [L1_131(K, "6F6666736574")] = -52,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 21,
      [L1_131(E, "6F6666736574")] = -60,
      [L1_131(X, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p14()
  qmnb = {
    {
      [L1_131(Q, "6D656D6F7279")] = 4
    },
    {
      [L1_131(G, "6E616D65")] = L1_131(F, "E781B0E9B2ADE9B2A83134")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(F, "6F6666736574")] = 8,
      [L1_131(A, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(W, "76616C7565")] = 2795,
      [L1_131(W, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 2251,
      [L1_131(O, "6F6666736574")] = -52,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 21,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p15()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(H, "E781B0E9B2ADE9B2A83135")
    },
    {
      [L1_131(P, "76616C7565")] = 1092616192,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 1061997773,
      [L1_131(Y, "6F6666736574")] = 4,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(W, "6C76")] = 65540,
      [L1_131(R, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(C, "76616C7565")] = 17199,
      [L1_131(W, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 2550,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 21,
      [L1_131(Q, "6F6666736574")] = -60,
      [L1_131(E, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p16()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = 4
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(H, "E781B0E9B2ADE9B2A83136")
    },
    {
      [L1_131(W, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 1061997773,
      [L1_131(H, "6F6666736574")] = 4,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(X, "6F6666736574")] = 8,
      [L1_131(K, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 17613,
      [L1_131(E, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 2475,
      [L1_131(S, "6F6666736574")] = -52,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 21,
      [L1_131(B, "6F6666736574")] = -60,
      [L1_131(L, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p17()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(M, "E781B0E9B2ADE9B2A83137")
    },
    {
      [L1_131(A, "76616C7565")] = 1092616192,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 1061997773,
      [L1_131(O, "6F6666736574")] = 4,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 65540,
      [L1_131(R, "6F6666736574")] = 8,
      [L1_131(G, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(U, "76616C7565")] = 17050,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 2261,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 21,
      [L1_131(F, "6F6666736574")] = -60,
      [L1_131(K, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p18()
  qmnb = {
    {
      [L1_131(X, "6D656D6F7279")] = 4
    },
    {
      [L1_131(H, "6E616D65")] = L1_131(C, "E781B0E9B2ADE9B2A83138")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 1061997773,
      [L1_131(U, "6F6666736574")] = 4,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 65540,
      [L1_131(V, "6F6666736574")] = 8,
      [L1_131(O, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 16957,
      [L1_131(S, "6F6666736574")] = -68,
      [L1_131(P, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 1932,
      [L1_131(Z, "6F6666736574")] = -52,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 21,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p19()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(H, "6E616D65")] = L1_131(W, "E781B0E9B2ADE9B2A83139")
    },
    {
      [L1_131(E, "76616C7565")] = 1092616192,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 1061997773,
      [L1_131(M, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 65540,
      [L1_131(G, "6F6666736574")] = 8,
      [L1_131(K, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(K, "76616C7565")] = 17578,
      [L1_131(J, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 1928,
      [L1_131(Z, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 21,
      [L1_131(P, "6F6666736574")] = -60,
      [L1_131(L, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p20()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(G, "E8998EE79AAEE9B2A831")
    },
    {
      [L1_131(Z, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 1061997773,
      [L1_131(O, "6F6666736574")] = 4,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 65540,
      [L1_131(O, "6F6666736574")] = 8,
      [L1_131(J, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 19200,
      [L1_131(R, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 14581,
      [L1_131(V, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 21,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(R, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function p21()
  qmnb = {
    {
      [L1_131(A, "6D656D6F7279")] = 4
    },
    {
      [L1_131(C, "6E616D65")] = L1_131(P, "E8998EE79AAEE9B2A832")
    },
    {
      [L1_131(Q, "76616C7565")] = 1092616192,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(C, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 65540,
      [L1_131(X, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 11952,
      [L1_131(E, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 1153,
      [L1_131(S, "6F6666736574")] = -52,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 21,
      [L1_131(L, "6F6666736574")] = -60,
      [L1_131(L, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function q1()
  qmnb = {
    {
      [L1_131(X, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(F, "E781ABE99984E9AD94E79FB331")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 1061997773,
      [L1_131(C, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(Q, "6F6666736574")] = 8,
      [L1_131(S, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 15699,
      [L1_131(R, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 7677,
      [L1_131(P, "6F6666736574")] = -52,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 0,
      [L1_131(E, "6F6666736574")] = -60,
      [L1_131(B, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function q2()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = 4
    },
    {
      [L1_131(D, "6E616D65")] = L1_131(A, "E781ABE99984E9AD94E79FB332")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(U, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(R, "6F6666736574")] = 4,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 65540,
      [L1_131(F, "6F6666736574")] = 8,
      [L1_131(P, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 15730,
      [L1_131(P, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 8503,
      [L1_131(Y, "6F6666736574")] = -52,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 0,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(X, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function q3()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = 4
    },
    {
      [L1_131(F, "6E616D65")] = L1_131(P, "E781ABE99984E9AD94E79FB333")
    },
    {
      [L1_131(L, "76616C7565")] = 1092616192,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 1061997773,
      [L1_131(E, "6F6666736574")] = 4,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(W, "6C76")] = 65540,
      [L1_131(S, "6F6666736574")] = 8,
      [L1_131(V, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 15888,
      [L1_131(S, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 11195,
      [L1_131(J, "6F6666736574")] = -52,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 0,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function q4()
  qmnb = {
    {
      [L1_131(G, "6D656D6F7279")] = 4
    },
    {
      [L1_131(A, "6E616D65")] = L1_131(Z, "E781ABE99984E9AD94E79FB334")
    },
    {
      [L1_131(W, "76616C7565")] = 1092616192,
      [L1_131(U, "74797065")] = 4
    },
    {
      [L1_131(S, "6C76")] = 1061997773,
      [L1_131(N, "6F6666736574")] = 4,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 65540,
      [L1_131(T, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 9300,
      [L1_131(S, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 8409,
      [L1_131(E, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 0,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function q5()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(N, "6E616D65")] = L1_131(M, "E781ABE99984E9AD94E79FB335")
    },
    {
      [L1_131(Y, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(Z, "6C76")] = 1061997773,
      [L1_131(C, "6F6666736574")] = 4,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 65540,
      [L1_131(P, "6F6666736574")] = 8,
      [L1_131(U, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(C, "76616C7565")] = 9595,
      [L1_131(W, "6F6666736574")] = -68,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 7636,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 0,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(J, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function q6()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Q, "6E616D65")] = L1_131(O, "E781ABE99984E9AD94E79FB336")
    },
    {
      [L1_131(R, "76616C7565")] = 1092616192,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 1061997773,
      [L1_131(R, "6F6666736574")] = 4,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(G, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(X, "76616C7565")] = 7378,
      [L1_131(B, "6F6666736574")] = -68,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 7347,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(N, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 0,
      [L1_131(J, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function q7()
  qmnb = {
    {
      [L1_131(J, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Q, "6E616D65")] = L1_131(P, "E781ABE99984E9AD94E79FB337")
    },
    {
      [L1_131(B, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 1061997773,
      [L1_131(D, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 65540,
      [L1_131(F, "6F6666736574")] = 8,
      [L1_131(Q, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 5003,
      [L1_131(V, "6F6666736574")] = -68,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 13936,
      [L1_131(B, "6F6666736574")] = -52,
      [L1_131(G, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 0,
      [L1_131(B, "6F6666736574")] = -60,
      [L1_131(X, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function q8()
  qmnb = {
    {
      [L1_131(M, "6D656D6F7279")] = 4
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(L, "E781ABE99984E9AD94E79FB338")
    },
    {
      [L1_131(M, "76616C7565")] = 1092616192,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(N, "6F6666736574")] = 4,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(E, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 7400,
      [L1_131(T, "6F6666736574")] = -68,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 13587,
      [L1_131(E, "6F6666736574")] = -52,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 0,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(Q, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function q9()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(X, "E781ABE99984E9AD94E79FB339")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 65540,
      [L1_131(L, "6F6666736574")] = 8,
      [L1_131(O, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 7645,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 12417,
      [L1_131(G, "6F6666736574")] = -52,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 0,
      [L1_131(J, "6F6666736574")] = -60,
      [L1_131(T, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function q10()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = 4
    },
    {
      [L1_131(F, "6E616D65")] = L1_131(N, "E781ABE99984E9AD94E79FB33130")
    },
    {
      [L1_131(W, "76616C7565")] = 1092616192,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 1061997773,
      [L1_131(S, "6F6666736574")] = 4,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 65540,
      [L1_131(C, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(G, "76616C7565")] = 14424,
      [L1_131(R, "6F6666736574")] = -68,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 14098,
      [L1_131(C, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 0,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(Z, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function q11()
  qmnb = {
    {
      [L1_131(X, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(Y, "E781ABE99984E9AD94E79FB33131")
    },
    {
      [L1_131(B, "76616C7565")] = 1092616192,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(D, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 65540,
      [L1_131(C, "6F6666736574")] = 8,
      [L1_131(B, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(G, "76616C7565")] = 14544,
      [L1_131(G, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 14378,
      [L1_131(V, "6F6666736574")] = -52,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 0,
      [L1_131(K, "6F6666736574")] = -60,
      [L1_131(Z, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function q12()
  qmnb = {
    {
      [L1_131(E, "6D656D6F7279")] = 4
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(U, "E781ABE99984E9AD94E79FB33132")
    },
    {
      [L1_131(R, "76616C7565")] = 1092616192,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(E, "6F6666736574")] = 4,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(S, "6C76")] = 65540,
      [L1_131(N, "6F6666736574")] = 8,
      [L1_131(P, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(R, "76616C7565")] = 13994,
      [L1_131(U, "6F6666736574")] = -68,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 7216,
      [L1_131(Y, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 0,
      [L1_131(J, "6F6666736574")] = -60,
      [L1_131(O, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function q13()
  qmnb = {
    {
      [L1_131(U, "6D656D6F7279")] = 4
    },
    {
      [L1_131(O, "6E616D65")] = L1_131(B, "E781ABE99984E9AD94E79FB33133")
    },
    {
      [L1_131(E, "76616C7565")] = 1092616192,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 1061997773,
      [L1_131(Q, "6F6666736574")] = 4,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 65540,
      [L1_131(T, "6F6666736574")] = 8,
      [L1_131(H, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 16055,
      [L1_131(L, "6F6666736574")] = -68,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 16371,
      [L1_131(B, "6F6666736574")] = -52,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(R, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r1()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = 4
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(O, "E586B0E99984E9AD94E79FB331")
    },
    {
      [L1_131(S, "76616C7565")] = 1092616192,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 1061997773,
      [L1_131(U, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(Z, "6C76")] = 65540,
      [L1_131(R, "6F6666736574")] = 8,
      [L1_131(X, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(K, "76616C7565")] = 15952,
      [L1_131(H, "6F6666736574")] = -68,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 7790,
      [L1_131(V, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 0,
      [L1_131(K, "6F6666736574")] = -60,
      [L1_131(E, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r2()
  qmnb = {
    {
      [L1_131(W, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(E, "E586B0E99984E9AD94E79FB332")
    },
    {
      [L1_131(A, "76616C7565")] = 1092616192,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 1061997773,
      [L1_131(T, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(L, "6F6666736574")] = 8,
      [L1_131(B, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(G, "76616C7565")] = 15697,
      [L1_131(Y, "6F6666736574")] = -68,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 7919,
      [L1_131(Y, "6F6666736574")] = -52,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 0,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(Z, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r3()
  qmnb = {
    {
      [L1_131(S, "6D656D6F7279")] = 4
    },
    {
      [L1_131(F, "6E616D65")] = L1_131(S, "E586B0E99984E9AD94E79FB333")
    },
    {
      [L1_131(S, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 1061997773,
      [L1_131(E, "6F6666736574")] = 4,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(A, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(P, "76616C7565")] = 12187,
      [L1_131(T, "6F6666736574")] = -68,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 7080,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 0,
      [L1_131(R, "6F6666736574")] = -60,
      [L1_131(Z, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r4()
  qmnb = {
    {
      [L1_131(G, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(W, "E586B0E99984E9AD94E79FB334")
    },
    {
      [L1_131(N, "76616C7565")] = 1092616192,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(D, "6F6666736574")] = 4,
      [L1_131(Y, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(N, "6F6666736574")] = 8,
      [L1_131(Z, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Z, "76616C7565")] = 11191,
      [L1_131(L, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 9737,
      [L1_131(W, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 0,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(Q, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r5()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = 4
    },
    {
      [L1_131(N, "6E616D65")] = L1_131(S, "E586B0E99984E9AD94E79FB335")
    },
    {
      [L1_131(O, "76616C7565")] = 1092616192,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 1061997773,
      [L1_131(Z, "6F6666736574")] = 4,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(U, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(V, "76616C7565")] = 11794,
      [L1_131(T, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 10655,
      [L1_131(O, "6F6666736574")] = -52,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 0,
      [L1_131(U, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r6()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = 4
    },
    {
      [L1_131(U, "6E616D65")] = L1_131(O, "E586B0E99984E9AD94E79FB336")
    },
    {
      [L1_131(B, "76616C7565")] = 1092616192,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 1061997773,
      [L1_131(D, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 65540,
      [L1_131(E, "6F6666736574")] = 8,
      [L1_131(P, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 12471,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 10631,
      [L1_131(C, "6F6666736574")] = -52,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 0,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r7()
  qmnb = {
    {
      [L1_131(X, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(F, "E586B0E99984E9AD94E79FB337")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 1061997773,
      [L1_131(P, "6F6666736574")] = 4,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 65540,
      [L1_131(D, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(E, "76616C7565")] = 14222,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 14916,
      [L1_131(A, "6F6666736574")] = -52,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 0,
      [L1_131(D, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r8()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = 4
    },
    {
      [L1_131(D, "6E616D65")] = L1_131(K, "E586B0E99984E9AD94E79FB338")
    },
    {
      [L1_131(E, "76616C7565")] = 1092616192,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 1061997773,
      [L1_131(Q, "6F6666736574")] = 4,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 65540,
      [L1_131(K, "6F6666736574")] = 8,
      [L1_131(S, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(B, "76616C7565")] = 15961,
      [L1_131(Q, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 16232,
      [L1_131(R, "6F6666736574")] = -52,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 0,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(H, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r9()
  qmnb = {
    {
      [L1_131(K, "6D656D6F7279")] = 4
    },
    {
      [L1_131(K, "6E616D65")] = L1_131(B, "E586B0E99984E9AD94E79FB339")
    },
    {
      [L1_131(L, "76616C7565")] = 1092616192,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 1061997773,
      [L1_131(F, "6F6666736574")] = 4,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 65540,
      [L1_131(N, "6F6666736574")] = 8,
      [L1_131(B, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(E, "76616C7565")] = 15874,
      [L1_131(R, "6F6666736574")] = -68,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 16209,
      [L1_131(S, "6F6666736574")] = -52,
      [L1_131(W, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 0,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(X, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r10()
  qmnb = {
    {
      [L1_131(P, "6D656D6F7279")] = 4
    },
    {
      [L1_131(G, "6E616D65")] = L1_131(J, "E586B0E99984E9AD94E79FB33130")
    },
    {
      [L1_131(Y, "76616C7565")] = 1092616192,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(X, "6F6666736574")] = 4,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(P, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(T, "76616C7565")] = 15341,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 16589,
      [L1_131(O, "6F6666736574")] = -52,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 0,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(X, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r11()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = 4
    },
    {
      [L1_131(C, "6E616D65")] = L1_131(U, "E586B0E99984E9AD94E79FB33131")
    },
    {
      [L1_131(N, "76616C7565")] = 1092616192,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 1061997773,
      [L1_131(T, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(L, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(V, "76616C7565")] = 15945,
      [L1_131(X, "6F6666736574")] = -68,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 16512,
      [L1_131(S, "6F6666736574")] = -52,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 0,
      [L1_131(A, "6F6666736574")] = -60,
      [L1_131(A, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r12()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = 4
    },
    {
      [L1_131(L, "6E616D65")] = L1_131(P, "E586B0E99984E9AD94E79FB33132")
    },
    {
      [L1_131(S, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(B, "6C76")] = 1061997773,
      [L1_131(Y, "6F6666736574")] = 4,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(C, "76616C7565")] = 9004,
      [L1_131(N, "6F6666736574")] = -68,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 13312,
      [L1_131(X, "6F6666736574")] = -52,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 0,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(O, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r13()
  qmnb = {
    {
      [L1_131(Q, "6D656D6F7279")] = 4
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(B, "E586B0E99984E9AD94E79FB33133")
    },
    {
      [L1_131(S, "76616C7565")] = 1092616192,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(P, "6F6666736574")] = 4,
      [L1_131(C, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(P, "6F6666736574")] = 8,
      [L1_131(C, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(R, "76616C7565")] = 9072,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 16032,
      [L1_131(V, "6F6666736574")] = -52,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(U, "76616C7565")] = 0,
      [L1_131(Z, "6F6666736574")] = -60,
      [L1_131(L, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r14()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = 4
    },
    {
      [L1_131(F, "6E616D65")] = L1_131(W, "E586B0E99984E9AD94E79FB33134")
    },
    {
      [L1_131(T, "76616C7565")] = 1092616192,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(N, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 4783,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 11303,
      [L1_131(G, "6F6666736574")] = -52,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 0,
      [L1_131(W, "6F6666736574")] = -60,
      [L1_131(C, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r15()
  qmnb = {
    {
      [L1_131(P, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(P, "E586B0E99984E9AD94E79FB33135")
    },
    {
      [L1_131(T, "76616C7565")] = 1092616192,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 65540,
      [L1_131(O, "6F6666736574")] = 8,
      [L1_131(S, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 5113,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 11516,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 0,
      [L1_131(N, "6F6666736574")] = -60,
      [L1_131(U, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r16()
  qmnb = {
    {
      [L1_131(G, "6D656D6F7279")] = 4
    },
    {
      [L1_131(M, "6E616D65")] = L1_131(B, "E586B0E99984E9AD94E79FB33136")
    },
    {
      [L1_131(R, "76616C7565")] = 1092616192,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(U, "6C76")] = 1061997773,
      [L1_131(D, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(U, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(F, "76616C7565")] = 5536,
      [L1_131(Q, "6F6666736574")] = -68,
      [L1_131(R, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 11766,
      [L1_131(Y, "6F6666736574")] = -52,
      [L1_131(C, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 0,
      [L1_131(G, "6F6666736574")] = -60,
      [L1_131(C, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function r17()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = 4
    },
    {
      [L1_131(X, "6E616D65")] = L1_131(Y, "E586B0E99984E9AD94E79FB33137")
    },
    {
      [L1_131(T, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 1061997773,
      [L1_131(C, "6F6666736574")] = 4,
      [L1_131(O, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(F, "6F6666736574")] = 8,
      [L1_131(K, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(P, "76616C7565")] = 5380,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 12177,
      [L1_131(O, "6F6666736574")] = -52,
      [L1_131(J, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 0,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(S, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function s1()
  qmnb = {
    {
      [L1_131(L, "6D656D6F7279")] = 4
    },
    {
      [L1_131(S, "6E616D65")] = L1_131(M, "E794B5E99984E9AD94E79FB331")
    },
    {
      [L1_131(A, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 65540,
      [L1_131(P, "6F6666736574")] = 8,
      [L1_131(N, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 16365,
      [L1_131(T, "6F6666736574")] = -68,
      [L1_131(P, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 16482,
      [L1_131(S, "6F6666736574")] = -52,
      [L1_131(P, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 0,
      [L1_131(R, "6F6666736574")] = -60,
      [L1_131(F, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function s2()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(A, "E794B5E99984E9AD94E79FB332")
    },
    {
      [L1_131(C, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(V, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(P, "76616C7565")] = 14308,
      [L1_131(W, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 7846,
      [L1_131(U, "6F6666736574")] = -52,
      [L1_131(K, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 0,
      [L1_131(U, "6F6666736574")] = -60,
      [L1_131(O, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function s3()
  qmnb = {
    {
      [L1_131(W, "6D656D6F7279")] = 4
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(Q, "E794B5E99984E9AD94E79FB333")
    },
    {
      [L1_131(Y, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(A, "6F6666736574")] = 4,
      [L1_131(K, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 65540,
      [L1_131(R, "6F6666736574")] = 8,
      [L1_131(B, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(S, "76616C7565")] = 13593,
      [L1_131(Y, "6F6666736574")] = -68,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 6835,
      [L1_131(D, "6F6666736574")] = -52,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 0,
      [L1_131(F, "6F6666736574")] = -60,
      [L1_131(Z, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function s4()
  qmnb = {
    {
      [L1_131(Q, "6D656D6F7279")] = 4
    },
    {
      [L1_131(N, "6E616D65")] = L1_131(W, "E794B5E99984E9AD94E79FB334")
    },
    {
      [L1_131(Q, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 1061997773,
      [L1_131(R, "6F6666736574")] = 4,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 65540,
      [L1_131(L, "6F6666736574")] = 8,
      [L1_131(M, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(X, "76616C7565")] = 13273,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 6732,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 0,
      [L1_131(H, "6F6666736574")] = -60,
      [L1_131(X, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function s5()
  qmnb = {
    {
      [L1_131(T, "6D656D6F7279")] = 4
    },
    {
      [L1_131(T, "6E616D65")] = L1_131(X, "E794B5E99984E9AD94E79FB335")
    },
    {
      [L1_131(U, "76616C7565")] = 1092616192,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(E, "6C76")] = 65540,
      [L1_131(R, "6F6666736574")] = 8,
      [L1_131(O, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 13194,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(H, "76616C7565")] = 7449,
      [L1_131(G, "6F6666736574")] = -52,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 0,
      [L1_131(B, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function s6()
  qmnb = {
    {
      [L1_131(X, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(Z, "E794B5E99984E9AD94E79FB336")
    },
    {
      [L1_131(H, "76616C7565")] = 1092616192,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 1061997773,
      [L1_131(X, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(Z, "6F6666736574")] = 8,
      [L1_131(D, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 5568,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 13807,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(X, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 0,
      [L1_131(F, "6F6666736574")] = -60,
      [L1_131(W, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function s7()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(L, "6E616D65")] = L1_131(B, "E794B5E99984E9AD94E79FB337")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(U, "74797065")] = 4
    },
    {
      [L1_131(L, "6C76")] = 1061997773,
      [L1_131(P, "6F6666736574")] = 4,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(F, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(A, "76616C7565")] = 5364,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 14798,
      [L1_131(B, "6F6666736574")] = -52,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 0,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(L, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function s8()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = 4
    },
    {
      [L1_131(V, "6E616D65")] = L1_131(V, "E794B5E99984E9AD94E79FB338")
    },
    {
      [L1_131(J, "76616C7565")] = 1092616192,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 1061997773,
      [L1_131(L, "6F6666736574")] = 4,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 65540,
      [L1_131(Z, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 15562,
      [L1_131(B, "6F6666736574")] = -68,
      [L1_131(L, "74797065")] = 64
    },
    {
      [L1_131(A, "76616C7565")] = 11433,
      [L1_131(S, "6F6666736574")] = -52,
      [L1_131(P, "74797065")] = 64
    },
    {
      [L1_131(D, "76616C7565")] = 0,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(R, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function s9()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = 4
    },
    {
      [L1_131(O, "6E616D65")] = L1_131(B, "E794B5E99984E9AD94E79FB339")
    },
    {
      [L1_131(T, "76616C7565")] = 1092616192,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(J, "74797065")] = 4
    },
    {
      [L1_131(W, "6C76")] = 65540,
      [L1_131(T, "6F6666736574")] = 8,
      [L1_131(F, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(G, "76616C7565")] = 16137,
      [L1_131(V, "6F6666736574")] = -68,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 11321,
      [L1_131(K, "6F6666736574")] = -52,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 0,
      [L1_131(K, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function s10()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(Y, "6E616D65")] = L1_131(H, "E794B5E99984E9AD94E79FB33130")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(T, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 1061997773,
      [L1_131(N, "6F6666736574")] = 4,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(P, "6F6666736574")] = 8,
      [L1_131(B, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 14643,
      [L1_131(J, "6F6666736574")] = -68,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(K, "76616C7565")] = 15681,
      [L1_131(Y, "6F6666736574")] = -52,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(L, "76616C7565")] = 0,
      [L1_131(Z, "6F6666736574")] = -60,
      [L1_131(G, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function t1()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(J, "6E616D65")] = L1_131(O, "E69A97E9BB91E99CB8E78E8BE9BE9931")
    },
    {
      [L1_131(E, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(G, "74797065")] = L31_161
    },
    {
      [L1_131(H, "6C76")] = 0.125,
      [L1_131(G, "6F6666736574")] = -16,
      [L1_131(R, "74797065")] = L31_161
    },
    {
      [L1_131(Z, "6C76")] = 3.207297995686531E-4,
      [L1_131(P, "6F6666736574")] = -68,
      [L1_131(O, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(E, "76616C7565")] = 9568,
      [L1_131(B, "6F6666736574")] = 20,
      [L1_131(K, "74797065")] = L31_161
    },
    {
      [L1_131(X, "76616C7565")] = 8864,
      [L1_131(A, "6F6666736574")] = 36,
      [L1_131(G, "74797065")] = L31_161
    },
    {
      [L1_131(M, "76616C7565")] = 0,
      [L1_131(F, "6F6666736574")] = 28,
      [L1_131(X, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function t2()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(V, "6E616D65")] = L1_131(O, "E69A97E9BB91E99CB8E78E8B32")
    },
    {
      [L1_131(A, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(C, "74797065")] = L31_161
    },
    {
      [L1_131(Q, "6C76")] = 0.125,
      [L1_131(U, "6F6666736574")] = -16,
      [L1_131(D, "74797065")] = L31_161
    },
    {
      [L1_131(U, "6C76")] = 3.207297995686531E-4,
      [L1_131(U, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 9162,
      [L1_131(K, "6F6666736574")] = 20,
      [L1_131(Z, "74797065")] = L31_161
    },
    {
      [L1_131(Q, "76616C7565")] = 8825,
      [L1_131(H, "6F6666736574")] = 36,
      [L1_131(Z, "74797065")] = L31_161
    },
    {
      [L1_131(W, "76616C7565")] = 0,
      [L1_131(F, "6F6666736574")] = 28,
      [L1_131(S, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function t3()
  qmnb = {
    {
      [L1_131(Q, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(Y, "E69A97E9BB91E99CB8E78E8BE9BE9933")
    },
    {
      [L1_131(J, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(L, "74797065")] = L31_161
    },
    {
      [L1_131(Z, "6C76")] = 0.125,
      [L1_131(M, "6F6666736574")] = -16,
      [L1_131(A, "74797065")] = L31_161
    },
    {
      [L1_131(E, "6C76")] = 3.207297995686531E-4,
      [L1_131(T, "6F6666736574")] = -68,
      [L1_131(S, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(J, "76616C7565")] = 9114,
      [L1_131(A, "6F6666736574")] = 20,
      [L1_131(Q, "74797065")] = L31_161
    },
    {
      [L1_131(H, "76616C7565")] = 7891,
      [L1_131(Q, "6F6666736574")] = 36,
      [L1_131(K, "74797065")] = L31_161
    },
    {
      [L1_131(L, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = 28,
      [L1_131(U, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function t4()
  qmnb = {
    {
      [L1_131(L, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(F, "E69A97E9BB91E99CB8E78E8BE9BE9934")
    },
    {
      [L1_131(R, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(K, "74797065")] = L31_161
    },
    {
      [L1_131(W, "6C76")] = 0.125,
      [L1_131(T, "6F6666736574")] = -16,
      [L1_131(Y, "74797065")] = L31_161
    },
    {
      [L1_131(N, "6C76")] = 3.207297995686531E-4,
      [L1_131(P, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(G, "76616C7565")] = 9324,
      [L1_131(A, "6F6666736574")] = 20,
      [L1_131(V, "74797065")] = L31_161
    },
    {
      [L1_131(O, "76616C7565")] = 7691,
      [L1_131(E, "6F6666736574")] = 36,
      [L1_131(A, "74797065")] = L31_161
    },
    {
      [L1_131(J, "76616C7565")] = 0,
      [L1_131(Y, "6F6666736574")] = 28,
      [L1_131(Z, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function t5()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(G, "6E616D65")] = L1_131(U, "E69A97E9BB91E99CB8E78E8BE9BE9935")
    },
    {
      [L1_131(Y, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(G, "74797065")] = L31_161
    },
    {
      [L1_131(R, "6C76")] = 0.125,
      [L1_131(J, "6F6666736574")] = -16,
      [L1_131(J, "74797065")] = L31_161
    },
    {
      [L1_131(D, "6C76")] = 3.207297995686531E-4,
      [L1_131(M, "6F6666736574")] = -68,
      [L1_131(P, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(P, "76616C7565")] = 9835,
      [L1_131(D, "6F6666736574")] = 20,
      [L1_131(Y, "74797065")] = L31_161
    },
    {
      [L1_131(U, "76616C7565")] = 7338,
      [L1_131(K, "6F6666736574")] = 36,
      [L1_131(Y, "74797065")] = L31_161
    },
    {
      [L1_131(D, "76616C7565")] = 0,
      [L1_131(M, "6F6666736574")] = 28,
      [L1_131(U, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function t6()
  qmnb = {
    {
      [L1_131(O, "6D656D6F7279")] = L35_165
    },
    {
      [L1_131(Z, "6E616D65")] = L1_131(C, "E69A97E9BB91E99CB8E78E8BE9BE9936")
    },
    {
      [L1_131(K, "76616C7565")] = 1.390671161567006E-309,
      [L1_131(U, "74797065")] = L31_161
    },
    {
      [L1_131(O, "6C76")] = 0.125,
      [L1_131(E, "6F6666736574")] = -16,
      [L1_131(O, "74797065")] = L31_161
    },
    {
      [L1_131(M, "6C76")] = 3.207297995686531E-4,
      [L1_131(C, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = L31_161
    }
  }
  qmxg = {
    {
      [L1_131(D, "76616C7565")] = 9914,
      [L1_131(F, "6F6666736574")] = 20,
      [L1_131(A, "74797065")] = L31_161
    },
    {
      [L1_131(L, "76616C7565")] = 7497,
      [L1_131(P, "6F6666736574")] = 36,
      [L1_131(H, "74797065")] = L31_161
    },
    {
      [L1_131(K, "76616C7565")] = 0,
      [L1_131(Y, "6F6666736574")] = 28,
      [L1_131(S, "74797065")] = L31_161
    }
  }
  xqmnb(qmnb)
end

function u1()
  qmnb = {
    {
      [L1_131(M, "6D656D6F7279")] = 4
    },
    {
      [L1_131(U, "6E616D65")] = L1_131(T, "E98791E79FBF31")
    },
    {
      [L1_131(W, "76616C7565")] = 1092616192,
      [L1_131(V, "74797065")] = 4
    },
    {
      [L1_131(Z, "6C76")] = 1061997773,
      [L1_131(F, "6F6666736574")] = 4,
      [L1_131(H, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(F, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(K, "76616C7565")] = 7840,
      [L1_131(W, "6F6666736574")] = -68,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 15674,
      [L1_131(H, "6F6666736574")] = -52,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(B, "76616C7565")] = 0,
      [L1_131(Y, "6F6666736574")] = -60,
      [L1_131(R, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function u2()
  qmnb = {
    {
      [L1_131(H, "6D656D6F7279")] = 4
    },
    {
      [L1_131(O, "6E616D65")] = L1_131(A, "E98791E79FBF32")
    },
    {
      [L1_131(G, "76616C7565")] = 1092616192,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(R, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(B, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 65540,
      [L1_131(C, "6F6666736574")] = 8,
      [L1_131(M, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(H, "76616C7565")] = 7071,
      [L1_131(P, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 15319,
      [L1_131(C, "6F6666736574")] = -52,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(N, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(K, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function u3()
  qmnb = {
    {
      [L1_131(C, "6D656D6F7279")] = 4
    },
    {
      [L1_131(E, "6E616D65")] = L1_131(D, "E98791E79FBF33")
    },
    {
      [L1_131(M, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 1061997773,
      [L1_131(D, "6F6666736574")] = 4,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(N, "6F6666736574")] = 8,
      [L1_131(G, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(V, "76616C7565")] = 7232,
      [L1_131(H, "6F6666736574")] = -68,
      [L1_131(S, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 12741,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 0,
      [L1_131(O, "6F6666736574")] = -60,
      [L1_131(U, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function u4()
  qmnb = {
    {
      [L1_131(B, "6D656D6F7279")] = 4
    },
    {
      [L1_131(B, "6E616D65")] = L1_131(G, "E98791E79FBF34")
    },
    {
      [L1_131(Z, "76616C7565")] = 1092616192,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 1061997773,
      [L1_131(K, "6F6666736574")] = 4,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(O, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Z, "76616C7565")] = 8171,
      [L1_131(O, "6F6666736574")] = -68,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(X, "76616C7565")] = 11032,
      [L1_131(E, "6F6666736574")] = -52,
      [L1_131(T, "74797065")] = 64
    },
    {
      [L1_131(M, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function u5()
  qmnb = {
    {
      [L1_131(S, "6D656D6F7279")] = 4
    },
    {
      [L1_131(N, "6E616D65")] = L1_131(Z, "E98791E79FBF35")
    },
    {
      [L1_131(U, "76616C7565")] = 1092616192,
      [L1_131(M, "74797065")] = 4
    },
    {
      [L1_131(A, "6C76")] = 1061997773,
      [L1_131(A, "6F6666736574")] = 4,
      [L1_131(W, "74797065")] = 4
    },
    {
      [L1_131(C, "6C76")] = 65540,
      [L1_131(L, "6F6666736574")] = 8,
      [L1_131(Y, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Z, "76616C7565")] = 16607,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(Y, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 9131,
      [L1_131(S, "6F6666736574")] = -52,
      [L1_131(V, "74797065")] = 64
    },
    {
      [L1_131(R, "76616C7565")] = 0,
      [L1_131(K, "6F6666736574")] = -60,
      [L1_131(M, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function u6()
  qmnb = {
    {
      [L1_131(E, "6D656D6F7279")] = 4
    },
    {
      [L1_131(D, "6E616D65")] = L1_131(X, "E6B0B4E699B6E79FBF31")
    },
    {
      [L1_131(D, "76616C7565")] = 1092616192,
      [L1_131(R, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 1061997773,
      [L1_131(H, "6F6666736574")] = 4,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(O, "6C76")] = 65540,
      [L1_131(W, "6F6666736574")] = 8,
      [L1_131(R, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(J, "76616C7565")] = 9905,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 7682,
      [L1_131(B, "6F6666736574")] = -52,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 0,
      [L1_131(D, "6F6666736574")] = -60,
      [L1_131(N, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function u7()
  qmnb = {
    {
      [L1_131(Q, "6D656D6F7279")] = 4
    },
    {
      [L1_131(K, "6E616D65")] = L1_131(G, "E6B0B4E699B6E79FBF32")
    },
    {
      [L1_131(E, "76616C7565")] = 1092616192,
      [L1_131(D, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(V, "6C76")] = 65540,
      [L1_131(M, "6F6666736574")] = 8,
      [L1_131(T, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(E, "76616C7565")] = 11417,
      [L1_131(L, "6F6666736574")] = -68,
      [L1_131(F, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 9292,
      [L1_131(Z, "6F6666736574")] = -52,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(Y, "76616C7565")] = 0,
      [L1_131(J, "6F6666736574")] = -60,
      [L1_131(U, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function u8()
  qmnb = {
    {
      [L1_131(V, "6D656D6F7279")] = 4
    },
    {
      [L1_131(D, "6E616D65")] = L1_131(Q, "E6B0B4E699B6E79FBF33")
    },
    {
      [L1_131(Q, "76616C7565")] = 1092616192,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 1061997773,
      [L1_131(Q, "6F6666736574")] = 4,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 65540,
      [L1_131(Q, "6F6666736574")] = 8,
      [L1_131(J, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(B, "76616C7565")] = 11585,
      [L1_131(F, "6F6666736574")] = -68,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 10149,
      [L1_131(Z, "6F6666736574")] = -52,
      [L1_131(A, "74797065")] = 64
    },
    {
      [L1_131(Q, "76616C7565")] = 0,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(O, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function u9()
  qmnb = {
    {
      [L1_131(D, "6D656D6F7279")] = 4
    },
    {
      [L1_131(C, "6E616D65")] = L1_131(N, "E6B0B4E699B6E79FBF34")
    },
    {
      [L1_131(G, "76616C7565")] = 1092616192,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 1061997773,
      [L1_131(W, "6F6666736574")] = 4,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(N, "6C76")] = 65540,
      [L1_131(B, "6F6666736574")] = 8,
      [L1_131(U, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(Y, "76616C7565")] = 11846,
      [L1_131(B, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(S, "76616C7565")] = 10562,
      [L1_131(M, "6F6666736574")] = -52,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(P, "76616C7565")] = 0,
      [L1_131(B, "6F6666736574")] = -60,
      [L1_131(P, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function u10()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = 4
    },
    {
      [L1_131(G, "6E616D65")] = L1_131(C, "E6B0B4E699B6E79FBF35")
    },
    {
      [L1_131(L, "76616C7565")] = 1092616192,
      [L1_131(G, "74797065")] = 4
    },
    {
      [L1_131(M, "6C76")] = 1061997773,
      [L1_131(V, "6F6666736574")] = 4,
      [L1_131(S, "74797065")] = 4
    },
    {
      [L1_131(G, "6C76")] = 65540,
      [L1_131(V, "6F6666736574")] = 8,
      [L1_131(O, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(G, "76616C7565")] = 8850,
      [L1_131(D, "6F6666736574")] = -68,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(G, "76616C7565")] = 13788,
      [L1_131(T, "6F6666736574")] = -52,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 0,
      [L1_131(Q, "6F6666736574")] = -60,
      [L1_131(D, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function u11()
  qmnb = {
    {
      [L1_131(U, "6D656D6F7279")] = 4
    },
    {
      [L1_131(A, "6E616D65")] = L1_131(C, "E9BB91E88080E79FB3E79FBF31")
    },
    {
      [L1_131(C, "76616C7565")] = 1092616192,
      [L1_131(P, "74797065")] = 4
    },
    {
      [L1_131(P, "6C76")] = 1061997773,
      [L1_131(P, "6F6666736574")] = 4,
      [L1_131(Q, "74797065")] = 4
    },
    {
      [L1_131(J, "6C76")] = 65540,
      [L1_131(H, "6F6666736574")] = 8,
      [L1_131(A, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(M, "76616C7565")] = 8255,
      [L1_131(B, "6F6666736574")] = -68,
      [L1_131(D, "74797065")] = 64
    },
    {
      [L1_131(C, "76616C7565")] = 15071,
      [L1_131(V, "6F6666736574")] = -52,
      [L1_131(H, "74797065")] = 64
    },
    {
      [L1_131(F, "76616C7565")] = 0,
      [L1_131(M, "6F6666736574")] = -60,
      [L1_131(Q, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function u12()
  qmnb = {
    {
      [L1_131(F, "6D656D6F7279")] = 4
    },
    {
      [L1_131(T, "6E616D65")] = L1_131(P, "E9BB91E88080E79FB3E79FBF32")
    },
    {
      [L1_131(W, "76616C7565")] = 1092616192,
      [L1_131(X, "74797065")] = 4
    },
    {
      [L1_131(H, "6C76")] = 1061997773,
      [L1_131(W, "6F6666736574")] = 4,
      [L1_131(N, "74797065")] = 4
    },
    {
      [L1_131(X, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(U, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(T, "76616C7565")] = 9697,
      [L1_131(P, "6F6666736574")] = -68,
      [L1_131(U, "74797065")] = 64
    },
    {
      [L1_131(E, "76616C7565")] = 14415,
      [L1_131(Z, "6F6666736574")] = -52,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(V, "76616C7565")] = 0,
      [L1_131(U, "6F6666736574")] = -60,
      [L1_131(X, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function u13()
  qmnb = {
    {
      [L1_131(Y, "6D656D6F7279")] = 4
    },
    {
      [L1_131(R, "6E616D65")] = L1_131(A, "E9BB91E88080E79FB3E79FBF33")
    },
    {
      [L1_131(Q, "76616C7565")] = 1092616192,
      [L1_131(F, "74797065")] = 4
    },
    {
      [L1_131(F, "6C76")] = 1061997773,
      [L1_131(B, "6F6666736574")] = 4,
      [L1_131(A, "74797065")] = 4
    },
    {
      [L1_131(K, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(W, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(L, "76616C7565")] = 11059,
      [L1_131(K, "6F6666736574")] = -68,
      [L1_131(Q, "74797065")] = 64
    },
    {
      [L1_131(W, "76616C7565")] = 10269,
      [L1_131(L, "6F6666736574")] = -52,
      [L1_131(B, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 0,
      [L1_131(G, "6F6666736574")] = -60,
      [L1_131(Q, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function u14()
  qmnb = {
    {
      [L1_131(N, "6D656D6F7279")] = 4
    },
    {
      [L1_131(M, "6E616D65")] = L1_131(W, "E9BB91E88080E79FB3E79FBF34")
    },
    {
      [L1_131(F, "76616C7565")] = 1092616192,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(Y, "6C76")] = 1061997773,
      [L1_131(T, "6F6666736574")] = 4,
      [L1_131(Z, "74797065")] = 4
    },
    {
      [L1_131(D, "6C76")] = 65540,
      [L1_131(Y, "6F6666736574")] = 8,
      [L1_131(O, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(X, "76616C7565")] = 10702,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(E, "74797065")] = 64
    },
    {
      [L1_131(T, "76616C7565")] = 9550,
      [L1_131(N, "6F6666736574")] = -52,
      [L1_131(M, "74797065")] = 64
    },
    {
      [L1_131(O, "76616C7565")] = 0,
      [L1_131(S, "6F6666736574")] = -60,
      [L1_131(H, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function u15()
  qmnb = {
    {
      [L1_131(R, "6D656D6F7279")] = 4
    },
    {
      [L1_131(H, "6E616D65")] = L1_131(E, "E9BB91E88080E79FB3E79FBF35")
    },
    {
      [L1_131(S, "76616C7565")] = 1092616192,
      [L1_131(L, "74797065")] = 4
    },
    {
      [L1_131(Q, "6C76")] = 1061997773,
      [L1_131(X, "6F6666736574")] = 4,
      [L1_131(E, "74797065")] = 4
    },
    {
      [L1_131(T, "6C76")] = 65540,
      [L1_131(A, "6F6666736574")] = 8,
      [L1_131(L, "74797065")] = 4
    }
  }
  qmxg = {
    {
      [L1_131(N, "76616C7565")] = 9574,
      [L1_131(A, "6F6666736574")] = -68,
      [L1_131(O, "74797065")] = 64
    },
    {
      [L1_131(J, "76616C7565")] = 8132,
      [L1_131(F, "6F6666736574")] = -52,
      [L1_131(Z, "74797065")] = 64
    },
    {
      [L1_131(Z, "76616C7565")] = 0,
      [L1_131(C, "6F6666736574")] = -60,
      [L1_131(J, "74797065")] = 64
    }
  }
  xqmnb(qmnb)
end

function v1()
  L20_150(L35_165)
  L5_135()
  L30_160(L1_131(D, "313B31362E353A3A"), L15_145, false, L22_152, 0, -1)
  L30_160(L1_131(V, "31"), L15_145, false, L22_152, 0, -1)
  L34_164(400)
  L8_138(L1_131(B, "38"), L15_145)
  L28_158(L1_131(R, "E588A0E999A4E5BBBAE7AD91E5BC80E590AFE68890E58A9F"))
end

function v2()
  L20_150(L35_165)
  L5_135()
  L30_160(L1_131(D, "383B31362E353A3A"), L15_145, false, L22_152, 0, -1)
  L30_160(L1_131(B, "38"), L15_145, false, L22_152, 0, -1)
  L34_164(400)
  L8_138(L1_131(C, "31"), L15_145)
  L28_158(L1_131(H, "E681A2E5A48DE5BBBAE7AD91E5BC80E590AFE68890E58A9F"))
end

function v3()
  L5_135()
  L20_150(262207)
  L30_160(L1_131(V, "383B2D31343B2D353B2D313B32303B2D31343B2D353B2D393B2D353A3A"), L39_169, false, L22_152, 0, -1)
  L30_160(L1_131(W, "3230"), L39_169, false, L22_152, 0, -1)
  jg = L34_164(100)
  sl = gg.getResultCount()
  for _FORV_3_ = 1, sl do
    dzy = jg[_FORV_3_].address
    gg.addListItems({
      [1] = {
        address = dzy,
        flags = L39_169,
        freeze = true,
        value = 30
      }
    })
  end
  L28_158(L1_131(R, "E4BABAE789A9E9AB98E8B7B3E5BC80E590AFE68890E58A9F"))
end

function v4()
  L20_150(L3_133)
  L30_160(L1_131(A, "363030443B2D3134443B312E3434393939393932383437463B302E32453A3137"), L31_161, false, L22_152, 0, -1)
  L30_160(L1_131(K, "363030"), L39_169, false, L22_152, 0, -1)
  L34_164(1000)
  L8_138(L1_131(N, "31303030"), L39_169)
  L28_158(L1_131(_UPVALUE11_, "E8BDBBE58A9FE6B0B4E4B88AE6BC82E5BC80E590AFE68890E58A9F"))
end

function v5()
  _G[L1_131(Y, "6767")][L1_131(L, "73657452616E676573")](_G[L1_131(E, "6767")][L1_131(D, "524547494F4E5F414E4F4E594D4F5553")])
  _G[L1_131(A, "6767")][L1_131(E, "7365617263684E756D626572")](L1_131(N, "3138337E313834"), _G[L1_131(M, "6767")][L1_131(G, "545950455F444F55424C45")], false, _G[L1_131(B, "6767")][L1_131(A, "5349474E5F455155414C")], 0, -1)
  a1 = _G[L1_131(A, "6767")][L1_131(P, "676574526573756C7473436F756E74")]()
  if a1 == 0 then
    _G[L1_131(Y, "6767")][L1_131(K, "746F617374")](L1_131(L, "E5BC80E590AFE5A4B1E8B4A5"))
    FKCJIAOBEN()
  end
  _G[L1_131(O, "6767")][L1_131(O, "676574526573756C7473")](a1)
  _G[L1_131(G, "6767")][L1_131(R, "65646974416C6C")](L1_131(A, "393939"), _G[L1_131(V, "6767")][L1_131(D, "545950455F444F55424C45")])
  _G[L1_131(S, "6767")][L1_131(E, "746F617374")](L1_131(Z, "E5AE9AE4BD8FE680AAE789A9"))
end

function v6()
  _G[L1_131(E, "6767")][L1_131(O, "73657452616E676573")](_G[L1_131(Q, "6767")][L1_131(X, "524547494F4E5F435F414C4C4F43")])
  _G[L1_131(V, "6767")][L1_131(C, "7365617263684E756D626572")](L1_131(L, "313332443B31463B3338443B313936443B3245"), _G[L1_131(V, "6767")][L1_131(W, "545950455F464C4F4154")], false, _G[L1_131(O, "6767")][L1_131(Z, "5349474E5F455155414C")], 0, -1)
  if _G[L1_131(Q, "6767")][L1_131(P, "697356697369626C65")](true) then
    _G[L1_131(B, "6767")][L1_131(C, "616C657274")](L1_131(J, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(Y, "E698AFE79A84"))
    L59_189()
  end
  _G[L1_131(P, "6767")][L1_131(M, "7365617263684E756D626572")](L1_131(D, "31"), _G[L1_131(M, "6767")][L1_131(P, "545950455F464C4F4154")], false, _G[L1_131(W, "6767")][L1_131(M, "5349474E5F455155414C")], 0, -1)
  if _G[L1_131(R, "6767")][L1_131(U, "697356697369626C65")](true) then
    _G[L1_131(A, "6767")][L1_131(Z, "616C657274")](L1_131(V, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(C, "E698AFE79A84"))
    L59_189()
  end
  a1 = _G[L1_131(N, "6767")][L1_131(E, "676574526573756C7473436F756E74")]()
  if a1 == 0 then
    _G[L1_131(K, "6767")][L1_131(T, "746F617374")](L1_131(N, "E5BC80E590AFE5A4B1E8B4A5"))
    FKCJIAOBEN()
  end
  _G[L1_131(B, "6767")][L1_131(Q, "676574526573756C7473")](1)
  _G[L1_131(U, "6767")][L1_131(S, "65646974416C6C")](L1_131(A, "2D31"), _G[L1_131(H, "6767")][L1_131(M, "545950455F464C4F4154")])
  if _G[L1_131(M, "6767")][L1_131(D, "697356697369626C65")](true) then
    _G[L1_131(R, "6767")][L1_131(B, "616C657274")](L1_131(H, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(R, "E698AFE79A84"))
    L59_189()
  end
  _G[L1_131(D, "6767")][L1_131(G, "746F617374")](L1_131(O, "E58AA0E9809FE7ACACE4B880E6ADA5E5BC80E590AFE68890E58A9F"))
end

function v7()
  _G[L1_131(Q, "6767")][L1_131(T, "73657452616E676573")](_G[L1_131(A, "6767")][L1_131(P, "524547494F4E5F414E4F4E594D4F5553")])
  _G[L1_131(M, "6767")][L1_131(P, "7365617263684E756D626572")](L1_131(X, "2D35443B2D3132443B2D35443B2D39443B2D35443B302E3831327E302E383136463B2D35443B2D35443B2D31443B2D313444"), _G[L1_131(R, "6767")][L1_131(U, "545950455F464C4F4154")], false, _G[L1_131(L, "6767")][L1_131(S, "5349474E5F455155414C")], 0, -1)
  if _G[L1_131(J, "6767")][L1_131(G, "697356697369626C65")](true) then
    _G[L1_131(Y, "6767")][L1_131(D, "616C657274")](L1_131(X, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(T, "E698AFE79A84"))
    L59_189()
  end
  _G[L1_131(H, "6767")][L1_131(H, "7365617263684E756D626572")](L1_131(A, "302E3831327E302E383136"), _G[L1_131(E, "6767")][L1_131(F, "545950455F464C4F4154")], false, _G[L1_131(R, "6767")][L1_131(Z, "5349474E5F455155414C")], 0, -1)
  if _G[L1_131(K, "6767")][L1_131(N, "697356697369626C65")](true) then
    _G[L1_131(L, "6767")][L1_131(C, "616C657274")](L1_131(V, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(E, "E698AFE79A84"))
    L59_189()
  end
  a1 = _G[L1_131(N, "6767")][L1_131(K, "676574526573756C7473436F756E74")]()
  if a1 == 0 then
    _G[L1_131(W, "6767")][L1_131(P, "746F617374")](L1_131(A, "E5BC80E590AFE5A4B1E8B4A5"))
    FKCJIAOBEN()
  end
  _G[L1_131(W, "6767")][L1_131(J, "676574526573756C7473")](a1)
  _G[L1_131(O, "6767")][L1_131(W, "65646974416C6C")](L1_131(M, "2D31"), _G[L1_131(F, "6767")][L1_131(E, "545950455F464C4F4154")])
  if _G[L1_131(T, "6767")][L1_131(M, "697356697369626C65")](true) then
    _G[L1_131(A, "6767")][L1_131(Y, "616C657274")](L1_131(N, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(K, "E698AFE79A84"))
    L59_189()
  end
  _G[L1_131(G, "6767")][L1_131(Y, "746F617374")](L1_131(Z, "E58AA0E9809FE7ACACE4BA8CE983A8E5BC80E590AFE68890E58A9F"))
end

function v8()
  _G[L1_131(V, "6767")][L1_131(J, "73657452616E676573")](_G[L1_131(A, "6767")][L1_131(F, "524547494F4E5F435F44415441")])
  _G[L1_131(U, "6767")][L1_131(R, "73656172636841646472657373")](L1_131(U, "383334"), 4294967295, _G[L1_131(E, "6767")][L1_131(C, "545950455F464C4F4154")])
  _G[L1_131(M, "6767")][L1_131(G, "7365617263684E756D626572")](L1_131(L, "30"), _G[L1_131(J, "6767")][L1_131(N, "545950455F464C4F4154")], false, _G[L1_131(N, "6767")][L1_131(U, "5349474E5F455155414C")], 0, -1)
  if _G[L1_131(W, "6767")][L1_131(Y, "697356697369626C65")](true) then
    _G[L1_131(C, "6767")][L1_131(B, "616C657274")](L1_131(R, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(K, "E698AFE79A84"))
    L59_189()
  end
  a1 = _G[L1_131(M, "6767")][L1_131(G, "676574526573756C7473436F756E74")]()
  if a1 == 0 then
    _G[L1_131(N, "6767")][L1_131(B, "746F617374")](L1_131(G, "E5BC80E590AFE5A4B1E8B4A5"))
    FKCJIAOBEN()
  end
  _G[L1_131(L, "6767")][L1_131(G, "676574526573756C7473")](a1)
  _G[L1_131(U, "6767")][L1_131(S, "65646974416C6C")](L1_131(K, "2D31"), _G[L1_131(K, "6767")][L1_131(Q, "545950455F464C4F4154")])
  _G[L1_131(Z, "6767")][L1_131(S, "746F617374")](L1_131(L, "E4BABAE789A9E98181E59CB0"))
end

function v9()
  L20_150(L3_133)
  L30_160(L1_131(B, "2D35443B31303030443B2D3134443B2D35443B3530443B2D3134443B3136303136453B3331303230453B3336"), L39_169, false, L22_152, 0, -1)
  if L25_155(true) then
    L16_146(L1_131(F, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(S, "E698AFE79A84"))
    L59_189()
  end
  L30_160(L1_131(W, "31303030"), L39_169, false, L22_152, 0, -1)
  if L25_155(true) then
    L16_146(L1_131(P, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(U, "E698AFE79A84"))
    L59_189()
  end
  a1 = _DTSDK___Count()
  if a1 == 0 then
    L28_158(L1_131(F, "E5BC80E590AFE5A4B1E8B4A5"))
    FKCJIAOBEN()
  end
  L34_164(a1)
  L8_138(L1_131(P, "31303031"), L39_169)
  if L25_155(true) then
    L16_146(L1_131(G, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(G, "E698AFE79A84"))
    L59_189()
  end
  L28_158(L1_131(H, "49443AE59CB0E5BDA2E4B88AE58D875C6E") .. L52_182(L1_131(D, "E88097E697B63A20252E3266"), L57_187() - L57_187()))
end

function v10()
  L5_135()
  L20_150(L35_165)
  L5_135()
  L30_160(L1_131(G, "302E30303738313235453B313B302E33333333333333343B302E30353A3A3330"), L15_145, false, L22_152, 0, -1)
  L30_160(L1_131(F, "31"), L15_145, false, L22_152, 0, -1)
  L34_164(10)
  L8_138(L1_131(H, "36"), L15_145)
  L28_158(L1_131(L, "E58AA8E4BD9CE58AA0E9809FE5BC80E590AFE68890E58A9F"))
end

function v11()
  _G[L1_131(M, "6767")][L1_131(O, "73657452616E676573")](_G[L1_131(W, "6767")][L1_131(Z, "524547494F4E5F414E4F4E594D4F5553")])
  _G[L1_131(Z, "6767")][L1_131(G, "7365617263684E756D626572")](L1_131(U, "2D35443B2D3132443B2D35443B2D39443B2D35443B2D31463B2D35443B2D35443B2D31443B2D313444"), _G[L1_131(M, "6767")][L1_131(Y, "545950455F464C4F4154")], false, _G[L1_131(J, "6767")][L1_131(U, "5349474E5F455155414C")], 0, -1)
  if _G[L1_131(D, "6767")][L1_131(H, "697356697369626C65")](true) then
    _G[L1_131(Q, "6767")][L1_131(Q, "616C657274")](L1_131(V, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(R, "E698AFE79A84"))
    L59_189()
  end
  _G[L1_131(R, "6767")][L1_131(G, "7365617263684E756D626572")](L1_131(U, "2D31"), _G[L1_131(N, "6767")][L1_131(S, "545950455F464C4F4154")], false, _G[L1_131(R, "6767")][L1_131(E, "5349474E5F455155414C")], 0, -1)
  if _G[L1_131(P, "6767")][L1_131(H, "697356697369626C65")](true) then
    _G[L1_131(N, "6767")][L1_131(H, "616C657274")](L1_131(G, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(M, "E698AFE79A84"))
    L59_189()
  end
  a1 = _G[L1_131(P, "6767")][L1_131(Q, "676574526573756C7473436F756E74")]()
  if a1 == 0 then
    _G[L1_131(R, "6767")][L1_131(L, "746F617374")](L1_131(G, "E5BC80E590AFE5A4B1E8B4A5"))
    FKCJIAOBEN()
  end
  _G[L1_131(V, "6767")][L1_131(N, "676574526573756C7473")](a1)
  _G[L1_131(N, "6767")][L1_131(Y, "65646974416C6C")](L1_131(P, "2D312E32"), _G[L1_131(R, "6767")][L1_131(R, "545950455F464C4F4154")])
  if _G[L1_131(V, "6767")][L1_131(D, "697356697369626C65")](true) then
    _G[L1_131(X, "6767")][L1_131(Y, "616C657274")](L1_131(M, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(L, "E698AFE79A84"))
    L59_189()
  end
  _G[L1_131(F, "6767")][L1_131(W, "746F617374")](L1_131(B, "E5A29EE9809FE5BC80E590AFE68890E58A9F"))
end

function v12()
  _G[L1_131(D, "6767")][L1_131(U, "73657452616E676573")](_G[L1_131(A, "6767")][L1_131(R, "524547494F4E5F435F414C4C4F43")])
  _G[L1_131(K, "6767")][L1_131(A, "7365617263684E756D626572")](L1_131(D, "313332443B2D31463B3338443B313936443B3245"), _G[L1_131(U, "6767")][L1_131(T, "545950455F464C4F4154")], false, _G[L1_131(H, "6767")][L1_131(T, "5349474E5F455155414C")], 0, -1)
  if _G[L1_131(J, "6767")][L1_131(L, "697356697369626C65")](true) then
    _G[L1_131(O, "6767")][L1_131(Z, "616C657274")](L1_131(A, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(M, "E698AFE79A84"))
    L59_189()
  end
  _G[L1_131(H, "6767")][L1_131(R, "7365617263684E756D626572")](L1_131(T, "2D31"), _G[L1_131(V, "6767")][L1_131(H, "545950455F464C4F4154")], false, _G[L1_131(Z, "6767")][L1_131(G, "5349474E5F455155414C")], 0, -1)
  if _G[L1_131(M, "6767")][L1_131(P, "697356697369626C65")](true) then
    _G[L1_131(B, "6767")][L1_131(P, "616C657274")](L1_131(O, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(E, "E698AFE79A84"))
    L59_189()
  end
  a1 = _G[L1_131(P, "6767")][L1_131(W, "676574526573756C7473436F756E74")]()
  if a1 == 0 then
    _G[L1_131(F, "6767")][L1_131(P, "746F617374")](L1_131(W, "E5BC80E590AFE5A4B1E8B4A5"))
    FKCJIAOBEN()
  end
  _G[L1_131(S, "6767")][L1_131(E, "676574526573756C7473")](a1)
  _G[L1_131(X, "6767")][L1_131(J, "65646974416C6C")](L1_131(N, "31"), _G[L1_131(P, "6767")][L1_131(Q, "545950455F464C4F4154")])
  if _G[L1_131(O, "6767")][L1_131(G, "697356697369626C65")](true) then
    _G[L1_131(S, "6767")][L1_131(W, "616C657274")](L1_131(H, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(N, "E698AFE79A84"))
    L59_189()
  end
  _G[L1_131(E, "6767")][L1_131(K, "746F617374")](L1_131(N, "E8BF98E698AFE69C89425547EFBC8CE69C89E7A9BAE5868DE4BFAEE5A48DE590A7F09F9884"))
end

function v13()
  _G[L1_131(N, "6767")][L1_131(P, "73657452616E676573")](_G[L1_131(Y, "6767")][L1_131(W, "524547494F4E5F414E4F4E594D4F5553")])
  _G[L1_131(D, "6767")][L1_131(J, "7365617263684E756D626572")](L1_131(C, "2D35443B2D3132443B2D35443B2D39443B2D35443B2D31463B2D35443B2D35443B2D31443B2D313444"), _G[L1_131(C, "6767")][L1_131(Y, "545950455F464C4F4154")], false, _G[L1_131(Y, "6767")][L1_131(E, "5349474E5F455155414C")], 0, -1)
  if _G[L1_131(W, "6767")][L1_131(D, "697356697369626C65")](true) then
    _G[L1_131(D, "6767")][L1_131(C, "616C657274")](L1_131(Z, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(V, "E698AFE79A84"))
    L59_189()
  end
  _G[L1_131(Y, "6767")][L1_131(M, "7365617263684E756D626572")](L1_131(A, "2D31"), _G[L1_131(H, "6767")][L1_131(P, "545950455F464C4F4154")], false, _G[L1_131(C, "6767")][L1_131(S, "5349474E5F455155414C")], 0, -1)
  if _G[L1_131(E, "6767")][L1_131(Y, "697356697369626C65")](true) then
    _G[L1_131(V, "6767")][L1_131(B, "616C657274")](L1_131(T, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(T, "E698AFE79A84"))
    L59_189()
  end
  a1 = _G[L1_131(C, "6767")][L1_131(B, "676574526573756C7473436F756E74")]()
  if a1 == 0 then
    _G[L1_131(Y, "6767")][L1_131(G, "746F617374")](L1_131(D, "E5BC80E590AFE5A4B1E8B4A5"))
    FKCJIAOBEN()
  end
  _G[L1_131(W, "6767")][L1_131(C, "676574526573756C7473")](a1)
  _G[L1_131(Z, "6767")][L1_131(U, "65646974416C6C")](L1_131(A, "302E3831"), _G[L1_131(W, "6767")][L1_131(D, "545950455F464C4F4154")])
  if _G[L1_131(L, "6767")][L1_131(D, "697356697369626C65")](true) then
    _G[L1_131(H, "6767")][L1_131(B, "616C657274")](L1_131(H, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(J, "E698AFE79A84"))
    L59_189()
  end
  _G[L1_131(T, "6767")][L1_131(M, "746F617374")](L1_131(B, "E58AA0E9809FE681A2E5A48DE68890E58A9F"))
end

function v14()
  L20_150(L3_133)
  L5_135()
  L30_160(L1_131(W, "32443B2D3134443B2D35443B31453B2D35443B2D33443B2D313444"), L31_161, false, L22_152, 0, -1)
  L30_160(L1_131(X, "31"), L31_161, false, L22_152, 0, -1)
  L34_164(100)
  L8_138(L1_131(W, "3335"), L31_161)
  L28_158(L1_131(T, "E88C83E59BB4E5BC80E590AFE68890E58A9F"))
end

function v15()
  L30_160(L1_131(X, "2D3134443B2D35443B2D33443B2D35443B312E353B2D35443B2D3133443A3A"), L31_161, false, L22_152, 0, -1)
  L30_160(L1_131(X, "312E35"), L31_161, false, L22_152, 0, -1)
  L34_164(100)
  L8_138(L1_131(P, "3135"), L31_161)
  L28_158(L1_131(W, "E68BBEE58F96E88C83E59BB4E5BC80E590AFE68890E58A9F"))
end

function v16()
  L20_150(L3_133)
  L30_160(L1_131(D, "2D35443B342E32303338393534652D3435463B2D3134443B2D35443B2D39443A3431"), L15_145, false, L22_152, 0, -1)
  if L25_155(true) then
    L16_146(L1_131(B, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(O, "E698AFE79A84"))
    L59_189()
  end
  L30_160(L1_131(A, "342E32303338393534652D343546"), L15_145, false, L22_152, 0, -1)
  if L25_155(true) then
    L16_146(L1_131(M, "E8AFB7E58BBFE59CA8E689A7E8A18CE8BF87E7A88BE4B8ADE68993E5BC80"), L1_131(R, "E698AFE79A84"))
    L59_189()
  end
  a1 = _DTSDK___Count()
  if a1 == 0 then
    L28_158(L1_131(Z, "E5BC80E590AFE5A4B1E8B4A5"))
    FKCJIAOBEN()
  end
  L34_164(a1)
  L8_138(L1_131(M, "393939393939"), L15_145)
  L28_158(L1_131(C, "49443AE697A0E99990E99481E5AE9A5C6E") .. L52_182(L1_131(F, "E88097E697B63A20252E3266"), L57_187() - L57_187()))
end

function v17()
  L5_135()
  L20_150(L26_156)
  L30_160(L1_131(X, "43453132464431443544453136324435"), L31_161, false, L22_152, 0, -1)
  L30_160(L1_131(B, "38374639383943303439444644414335"), L31_161, false, L22_152, 0, -1)
  L34_164(10)
  L8_138(L1_131(V, "34464334433330363442423838373430"), L31_161)
  L16_146(L1_131(S, "E6A380E6B58BE588B0E682A8E5B9B6E99D9EE5BC80E58F91E880854950E68980E4BBA5E682A8E697A0E69D83E4BDBFE794A8E8AFA5E58A9FE883BD"))
end

function v18()
  L5_135()
  L20_150(L26_156)
  L30_160(L1_131(C, "32444634343039333146413336413234"), L15_145, false, L22_152, 0, -1)
  L30_160(L1_131(Z, "37303937393537463445313533354439"), L15_145, false, L22_152, 0, -1)
  L34_164(10)
  L8_138(L1_131(A, "31453744333339304230343938344634"), L15_145)
  L16_146(L1_131(G, "E6A380E6B58BE588B0E682A8E5B9B6E99D9EE5BC80E58F91E880854950E68980E4BBA5E682A8E697A0E69D83E4BDBFE794A8E8AFA5E58A9FE883BD"))
end

function v19()
  L5_135()
  L20_150(L26_156)
  L30_160(L1_131(E, "42423843384138364335353935454535"), L15_145, false, L22_152, 0, -1)
  L30_160(L1_131(D, "32333732333044304345443739343337"), L15_145, false, L22_152, 0, -1)
  L34_164(10)
  L8_138(L1_131(K, "43393038383038334137423539333533"), L15_145)
  L16_146(L1_131(S, "E6A380E6B58BE588B0E682A8E5B9B6E99D9EE5BC80E58F91E880854950E68980E4BBA5E682A8E697A0E69D83E4BDBFE794A8E8AFA5E58A9FE883BD"))
end

function v20()
  L5_135()
  L20_150(L26_156)
  L30_160(L1_131(V, "37443231444241443031314636464532"), L15_145, false, L22_152, 0, -1)
  L30_160(L1_131(A, "38444237393842394341413046453035"), L15_145, false, L22_152, 0, -1)
  L34_164(10)
  L8_138(L1_131(S, "44383037343739333846354344414433"), L15_145)
  L16_146(L1_131(J, "E6A380E6B58BE588B0E682A8E5B9B6E99D9EE5BC80E58F91E880854950E68980E4BBA5E682A8E697A0E69D83E4BDBFE794A8E8AFA5E58A9FE883BD"))
end

function v21()
  L5_135()
  L20_150(L26_156)
  L30_160(L1_131(Z, "38394534454346413037433545394544"), L15_145, false, L22_152, 0, -1)
  L30_160(L1_131(U, "43394646393542304132394634334233"), L15_145, false, L22_152, 0, -1)
  L34_164(10)
  L8_138(L1_131(G, "45394332303337373738434343423730"), L15_145)
  L16_146(L1_131(U, "E6A380E6B58BE588B0E682A8E5B9B6E99D9EE5BC80E58F91E880854950E68980E4BBA5E682A8E697A0E69D83E4BDBFE794A8E8AFA5E58A9FE883BD"))
end

function Exit()
  Voice(L1_131(H, "E6ACA2E8BF8EE4B88BE6ACA1E4BDBFE794A8"))
  print(L1_131(D, "E6A2A6E9AD87E69C80E5B885"))
  L59_189()
end

function HOME()
  lw = 1
  Main()
end

cs = L1_131(S, "E6A2A6E9AD87E69C80E5B885")
while true do
  if L25_155(true) then
    XGCK = 1
    gg.setVisible(false)
  end
  L5_135()
  if XGCK == 1 then
    Main()
  end
end
]=]
a=a:gsub('L1_131%(%a, "(.-)"%)',function(x) return'"'..jie(x)..'"'end)
print(a)