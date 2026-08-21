data = [[
123
456
789
]]

-- -- 初级玩法
-- data = data:gsub(".", function(text)
--     return string.byte(text)
-- end)

-- print(data)
-- -- 初级玩法

-- -- 进阶玩法

-- --加密
-- function jia(text)
--     text = string.byte(text)
--     text = tostring(text)
--     len = string.len(text)
--     if len == 1 then
--         text = "00" .. text
--     elseif len == 2 then
--         text = "0" .. text
--     end
--     return text
-- end

-- data = data:gsub(".", jia)

-- print(data)

-- --解密
-- function jie(text)
--     return string.char(text)
-- end

-- data = data:gsub("...", jie)

-- print(data)
-- -- 进阶玩法

-- -- 16进制
-- -- 加密
-- function jia(text)
--     text = string.format("%02X", string.byte(text))
--     return text
-- end

-- data = data:gsub(".", jia)

-- print(data)

-- -- 解密
-- function jie(text)
--     return string.char(tonumber(text,16))
-- end

-- data = data:gsub("..", jie)

-- print(data)
-- -- 16进制

-- 凯撒

-- 加密
function jia(text)
    text = string.byte(text)
    if text % 2 == 0 then
        text = text + 1
    else
        text = text - 1
    end
    return string.char(text)
end

data = data:gsub(".", jia)

print(data)

-- 解密
data = data:gsub(".", jia)

print(data)

-- 凯撒
