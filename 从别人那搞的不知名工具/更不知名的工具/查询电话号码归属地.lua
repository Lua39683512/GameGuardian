
    A = gg.prompt({"输入您要查询的电话号码"}, {""}, {"number"})
    C = A[1]
    B = gg.makeRequest("https://m.ip138.com/sj.asp?mobile=" .. C .. '&action=2').content
    if B then
  Q=string.match(B,"</td><td><span>(.+)</span></td></tr>")
  L=string.gsub(Q,'</span></td></tr>',"")
  V=string.gsub(L,'<tr><td class="th">','')
  W=string.gsub(V,"</td><td><span>","")
print("当前查询的电话号码为:"..W)
end

