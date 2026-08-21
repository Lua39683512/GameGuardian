Y=[[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u0 "" ; u4
.upval v0 "" ; u5
.upval u11 "" ; u6
.upval u12 "" ; u7
.upval u13 "" ; u8
.upval u14 "" ; u9
.upval u15 "" ; u10
.upval u16 "" ; u11
]]

Q=[[
.upval u1 "" ; u1
.upval u9 "" ; u2
.upval u10 "" ; u3
.upval u7 "" ; u4
.upval u6 "" ; u5
.upval u11 "" ; u6
]]
lsq=io.open(".lua.lasm","r"):read("*a")
T=lsq:gsub("upval%s*v0*%s*nil%s*;%s*%w*","upval v0 nil ; u0\n"..Y,1)
T=T:gsub("upval%s*u0*%s*nil%s*;%s*%w*","upval u0 nil ; u0\n"..Q,1)
io.open("666.lua","w"):write(T)