--初始化
function KSA(key)
    local key_len = string.len(key)
    local S = {}
    local key_byte = {}
    for i = 0, 255 do
        S[i] = i
    end
    for i = 1, key_len do
        key_byte[i-1] = string.byte(key, i, i)
    end
    local j = 0
    for i = 0, 255 do
        j = (j + S[i] + key_byte[i % key_len]) % 256
        S[i], S[j] = S[j], S[i]
    end
    return S
end
function PRGA(S, text_len)
    local i = 0
    local j = 0
    local K = {}
    for n = 1, text_len do
        i = (i + 1) % 256
        j = (j + S[i]) % 256
        S[i], S[j] = S[j], S[i]
        K[n] = S[(S[i] + S[j]) % 256]
    end
    return K
end
function RC4(key, text)
    local text_len = string.len(text)
    local S = KSA(key)        
    local K = PRGA(S, text_len) 
    return output(K, text)
end
function output(S, text)
    local len = string.len(text)
    local c = nil
    local res = {}
    for i = 1, len do
        c = string.byte(text, i, i)
        res[i] = string.char(bxor(S[i], c))
    end
    return table.concat(res)
end
local bit_op = {}
function bit_op.cond_and(r_a, r_b)
    return (r_a + r_b == 2) and 1 or 0
end

function bit_op.cond_xor(r_a, r_b)
    return (r_a + r_b == 1) and 1 or 0
end

function bit_op.cond_or(r_a, r_b)
    return (r_a + r_b > 0) and 1 or 0
end
function bit_op.base(op_cond, a, b)
    if a < b then
        a, b = b, a
    end
    local res = 0
    local shift = 1
    while a ~= 0 do
        r_a = a % 2
        r_b = b % 2 
        res = shift * bit_op[op_cond](r_a, r_b) + res 
        shift = shift * 2
        a = math.modf(a / 2)
        b = math.modf(b / 2)
    end
    return res
end
function bxor(a, b)
    return bit_op.base('cond_xor', a, b)
end
function band(a, b)
    return bit_op.base('cond_and', a, b)
end
function bor(a, b)
    return bit_op.base('cond_or', a, b)
end
---
--安装插件
function install()

end
--
--运行普通脚本
function runpt(con)
gg.toast("程序加载中...")
_runp=pcall(load(con))
if _runp==false then
print("脚本结束")
os.exit()
end
end

--运行GR4脚本
function rungr4(key,ct)
gg.toast("程序加载中...")
_cta=string.gsub(ct,"ζa^/","a")
_cta=string.gsub(_cta,"Þξøb","b")
_rung=io.open(_f[1].."秋雪解密模块.lua","w+"):write(RC4(key,_cta))
if _rung~="解密" then
print("脚本结束")
os.exit()
end
end
---
--运行加密
function R4JM(con)
gg.alert("欢迎使用GR4加密\n\n技术团队：GXL\n\n作者：小五\n\n协作成员：子叶，琅琊\n\nGXL团队技术支持")
gg.toast("程序加载中...")
rungr4("gxl",con)
end
-----
--输入GR4脚本密码
function GRK()
_k=gg.prompt({"GR4：请输入密码",},{"",},{"text",})
if _k==nil or _k[1]=="" then print("未输入密码")os.exit()end
key=_k[1]
return key
end

function start()
local g={}
g.data = loadfile("/storage/emulated/0/GR4.cfg")
if g.data ~= nil then
g.sel = g.data()
g.data = nil
end
if g.sel == nil then
g.sel = {"/storage/emulated/0/",}
end
_f=gg.prompt({"GR4：执行脚本",},g.sel,{"file"})
if _f==nil then os.exit() end
function jcwj()
_GRC=io.open(_f[1],"r")
CON=_GRC:read("*a")
_GRC:close()
_cx=string.find(CON,"yunGXL")
_cx1=string.find(CON,"gg.decrypt")
_cx2=string.find(CON,"G")
_cx3=string.find(CON,"X")
_cx4=string.find(CON,"L")
_cx5=string.find(CON,"y")
if _cx~=nil then print("脚本异常：: \nfunction (GXL) gg.decrypt(String int) -> nil end -- nil\n:：0-0")os.exit()end
if _cx1 and _cx2 and _cx3 and _cx4 and _cx5 ~= nil then print("脚本异常：:检测到违规操作")os.exit() end
end
if not pcall(jcwj) then os.exit() end
Testing=string.find(CON,"G".."R".."4".."_GXL")
_T=string.find(CON,"G".."R".."4".."_GXLj")
_W=string.find(CON,"G".."R".."4".."_GXLw")
gg.saveVariable(_f,"/storage/emulated/0/GR4.cfg")
if Testing == nil then
runpt(CON)
elseif _W~=nil then
if _W ~= "1" then print("脚本异常")os.exit() end
key="gxl"
_CO=CON:match("G".."R".."4".."_GXLw (.+)")
rungr4(key,_CO)
elseif _T==nil then
if Testing ~= "1" then print("脚本异常")os.exit() end
key=GRK()
_CO=CON:match("G".."R".."4_GXL (.+)")
rungr4(key,_CO)
elseif _T~=nil then
if _T~="1" then print("脚本异常")os.exit() end
_CO=CON:match("G".."R".."4_GXLj (.+)")
R4JM(_CO)
end
end
start()
