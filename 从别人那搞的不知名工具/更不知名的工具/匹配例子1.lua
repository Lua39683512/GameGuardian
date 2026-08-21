
data=[[
JMP :goto_220  ; +2 ↓

:goto_218
GETTABLE v8 v8 "searchNumber"

JMP :goto_221  ; +1 ↓

:goto_220
JMP :goto_218  ; -3 ↑

:goto_221
JMP :goto_224  ; +2 ↓

:goto_222
GETTABUP v9 u0 "gg"

JMP :goto_225  ; +1 ↓

:goto_224
JMP :goto_222  ; -3 ↑

:goto_225
JMP :goto_228  ; +2 ↓

:goto_226
GETTABLE v9 v9 "toast"

JMP :goto_229  ; +1 ↓

:goto_228
JMP :goto_226  ; -3 ↑
    
]]
Q=string.gsub(data,'[^\n]*JMP[^\n]+%s+:goto_%d+%s+([^\n]+)\n%s*JMP[^\n]+%s+:goto_%d+%s+JMP[^\n]+','%1')
Y=string.gsub(Q,':goto%p+%d+%d+%d+','')
print(Y)