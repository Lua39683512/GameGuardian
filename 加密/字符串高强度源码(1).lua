-- ============================================
-- 梦恋RLGG高强度加密器 v3.2 (极简稳定版)
-- GG修改器 LuaJ 兼容
-- ============================================

local _ENV = (_G or getfenv())

-- 简单 XOR 加密
local _E = function(data, key)
    local out = {}
    for i = 1, #data do
        out[i] = string.char(string.byte(data, i) ~ key)
    end
    return table.concat(out)
end

local _D = function(data, key)
    local out = {}
    for i = 1, #data do
        out[i] = string.char(string.byte(data, i) ~ key)
    end
    return table.concat(out)
end

-- 十六进制转义
local _H = function(s)
    local t = {}
    for i = 1, #s do
        t[i] = string.format("\\x%02x", string.byte(s, i))
    end
    return '"' .. table.concat(t) .. '"'
end

-- 主加密函数
local Enc_File = function(filePath)
    local f, err = io.open(filePath, "r")
    if not f then
        return nil, "无法打开文件: " .. tostring(err)
    end
    local src = f:read("*a")
    f:close()
    if not src or #src == 0 then
        return nil, "文件为空"
    end

    -- 检查源码是否能编译
    local fn, err = load(src, "=src")
    if not fn then
        return nil, "编译错误: " .. tostring(err)
    end

    -- 生成随机密钥 (1-255)
    local key = math.random(1, 255)

    -- 加密源码
    local encrypted = _E(src, key)

    -- 构建 loader
    local loader = {}
    local n = 1

    loader[n] = "local _k=" .. key; n = n + 1
    loader[n] = "local _d=function(d,k)"; n = n + 1
    loader[n] = "  local o={}"; n = n + 1
    loader[n] = "  for i=1,#d do o[i]=string.char(string.byte(d,i)~k) end"; n = n + 1
    loader[n] = "  return table.concat(o)"; n = n + 1
    loader[n] = "end"; n = n + 1

    -- 加密数据分段
    loader[n] = "local _p={"; n = n + 1
    local chunkSize = 80
    local encLen = #encrypted
    local chunks = {}
    local cn = 1
    for i = 1, encLen, chunkSize do
        local chunk = string.sub(encrypted, i, math.min(i + chunkSize - 1, encLen))
        chunks[cn] = _H(chunk)
        cn = cn + 1
    end
    loader[n] = table.concat(chunks, ",") .. ",}"; n = n + 1
    loader[n] = "local _e=table.concat(_p)"; n = n + 1
    loader[n] = "local _r=_d(_e,_k)"; n = n + 1
    loader[n] = "local _f,err=(load or loadstring)(_r)"; n = n + 1
    loader[n] = "if not _f then error(\"load error:\"..tostring(err)) end"; n = n + 1
    loader[n] = "_f()"; n = n + 1

    return table.concat(loader, "\n"), key
end

-- 主程序
math.randomseed(os.time())

local YH = gg.prompt({"选择要加密的脚本文件"}, {"/sdcard/"}, {"file"})
if not YH or not YH[1] or YH[1] == "" then
    gg.alert("未选择文件")
    os.exit()
end

local fileSize = 0
local f = io.open(YH[1], "r")
if f then
    local d = f:read("*a")
    fileSize = #d
    f:close()
end

if fileSize > 50000 then
    gg.toast("正在加密 " .. string.format("%.0f", fileSize / 1024) .. "KB 的文件...")
end

local result, key = Enc_File(YH[1])
if not result then
    gg.alert("加密失败: " .. tostring(key))
    os.exit()
end

local outPath = YH[1]:gsub("%.lua$", "") .. "-[终极加密].lua"
local outf, err = io.open(outPath, "w")
if not outf then
    gg.alert("无法创建输出文件: " .. tostring(err))
    os.exit()
end

outf:write(result)
outf:close()

gg.alert("加密完成!\n输出路径: " .. outPath .. "\n文件大小: " .. string.format("%.1f", #result / 1024) .. "KB\n密钥: " .. key)
