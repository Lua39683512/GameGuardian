-- 我除了改二改荒图的，其他的我都是原来的
local function XEC_MS(str, key)
    local result = ""
    for i = 1, #str do
        local char_MS = string.byte(str, i)
        local key_char = string.byte(key, (i - 1) % #key + 1)
        local bxor = bit32 and bit32.bxor or (bit and bit.bxor or function(a,b) return a ~ b end)
        result = result .. string.char(bxor(char_MS, key_char))
    end
    return result
end

local function bymYY(length)
    math.randomseed(os.time() * 1000)
    local key = ""
    for i = 1, length do
        key = key .. string.char(math.random(1, 255))
    end
    return key
end

local xec_BYM = bymYY(16)

local function BYM_DeC(str, key)
    key = key or xec_BYM
    local encrypted = XEC_MS(str, key)
    local hex_parts = {}
    for i = 1, #encrypted do
        local byte = string.byte(encrypted, i)
        hex_parts[#hex_parts + 1] = string.format("\\x%02x", byte)
    end
    return table.concat(hex_parts)
end

local function enc_string(str)
    local BYM_yyds = BYM_DeC(str, xec_BYM)
    return 'xec_vvv("' .. BYM_yyds .. '", xec_BYM)'
end

local function enc_bool(bool_val)
    local bool_str = tostring(bool_val)
    local encrypted = BYM_DeC(bool_str, xec_BYM)
    return string.format('(xec_vvv("%s", xec_BYM) == "true" and true or false)', encrypted)
end

local function xec_vvv(BYM_yyds, key)
    return XEC_MS(BYM_yyds, key)
end

local function Dec_bym(BYM_yyds, key)
    local MS_xxx = XEC_MS(BYM_yyds, key)
    local num = tonumber(MS_xxx)
    if num then return num end
    return MS_xxx
end

local function ER_TF(code, pos)
    local in_string = false
    local string_char = nil
    local in_comment = false
    local in_escape = false
    local in_long_string = false
    local long_string_level = 0
    
    for i = 1, pos do
        local char = code:sub(i, i)
        local next_char = i < #code and code:sub(i+1, i+1) or ""
        
        if not in_comment and not in_string and not in_long_string then
            if char == "-" and next_char == "-" then
                local j = i + 2
                while j <= #code and code:sub(j, j) == "=" do
                    j = j + 1
                end
                if j <= #code and code:sub(j, j) == "[" then
                    in_long_string = true
                    long_string_level = j - i - 2
                else
                    in_comment = true
                end
            elseif char == "'" or char == '"' then
                in_string = true
                string_char = char
            elseif char == "[" then
                local j = i + 1
                while j <= #code and code:sub(j, j) == "=" do
                    j = j + 1
                end
                if j <= #code and code:sub(j, j) == "[" then
                    in_long_string = true
                    long_string_level = j - i - 1
                end
            end
        elseif in_comment then
            if char:match("[\r\n]") then
                in_comment = false
            end
        elseif in_string then
            if char == "\\" and not in_escape then
                in_escape = true
            elseif char == string_char and not in_escape then
                in_string = false
                string_char = nil
            elseif in_escape then
                in_escape = false
            end
        elseif in_long_string then
            if char == "]" then
                local j = i
                local level = 0
                while j > 1 and code:sub(j, j) == "=" do
                    level = level + 1
                    j = j - 1
                end
                if code:sub(j, j) == "]" and level == long_string_level then
                    in_long_string = false
                    long_string_level = 0
                end
            end
        end
    end
    
    return {
        in_string = in_string or in_long_string,
        in_comment = in_comment,
        string_char = string_char
    }
end

local function escape_lua_string(str)
    local escapes = {
        ["\\"] = "\\\\",
        ["\""] = "\\\"",
        ["'"] = "\\'",
        ["\n"] = "\\n",
        ["\r"] = "\\r",
        ["\t"] = "\\t",
        ["\b"] = "\\b",
        ["\f"] = "\\f",
        ["\a"] = "\\a",
        ["\v"] = "\\v",
    }
    
    local result = ""
    local i = 1
    while i <= #str do
        local char = str:sub(i, i)
        local next_char = str:sub(i+1, i+1)
        
        if char == "\\" and next_char then
            if next_char == "x" and str:sub(i+2, i+3):match("%x%x") then
                result = result .. char .. next_char .. str:sub(i+2, i+3)
                i = i + 4
            elseif next_char == "u" and str:sub(i+2, i+2) == "{" then
                local j = i + 3
                while j <= #str and str:sub(j, j):match("%x") do
                    j = j + 1
                end
                if str:sub(j, j) == "}" then
                    result = result .. str:sub(i, j)
                    i = j + 1
                else
                    result = result .. char
                    i = i + 1
                end
            elseif tonumber(next_char) then
                local j = i + 1
                while j <= #str and tonumber(str:sub(j, j)) do
                    j = j + 1
                end
                result = result .. str:sub(i, j-1)
                i = j
            elseif escapes["\\" .. next_char] then
                result = result .. "\\" .. next_char
                i = i + 2
            else
                result = result .. char
                i = i + 1
            end
        elseif escapes[char] then
            result = result .. escapes[char]
            i = i + 1
        elseif string.byte(char) < 32 then
            result = result .. string.format("\\%03d", string.byte(char))
            i = i + 1
        else
            result = result .. char
            i = i + 1
        end
    end
    
    return result
end

local function calls_TFY(code)
    local result = ""
    local pos = 1
    
    while pos <= #code do
        local colon_pos = code:find(":", pos)
        
        if not colon_pos then
            result = result .. code:sub(pos)
            break
        end
        
        result = result .. code:sub(pos, colon_pos - 1)
        pos = colon_pos + 1
        
        local before_colon = code:sub(colon_pos - 1, colon_pos - 1)
        
        local is_method_call = true
        
        local in_string = false
        local string_char = nil
        local in_comment = false
        local in_escape = false
        
        for i = 1, colon_pos - 1 do
            local char = code:sub(i, i)
            
            if not in_comment and not in_string then
                if char == "-" and code:sub(i+1, i+1) == "-" then
                    in_comment = true
                    i = i + 1
                elseif char == "'" or char == '"' then
                    in_string = true
                    string_char = char
                elseif char == "[" then
                    local j = i + 1
                    while j <= #code and code:sub(j, j) == "=" do
                        j = j + 1
                    end
                    if j <= #code and code:sub(j, j) == "[" then
                        in_string = true
                        string_char = "["
                    end
                end
            else
                if in_comment and char:match("[\r\n]") then
                    in_comment = false
                elseif in_string then
                    if string_char == "'" or string_char == '"' then
                        if char == "\\" and not in_escape then
                            in_escape = true
                        elseif char == string_char and not in_escape then
                            in_string = false
                            string_char = nil
                        elseif in_escape then
                            in_escape = false
                        end
                    elseif string_char == "[" then
                        if char == "]" then
                            local j = i - 1
                            local level = 0
                            while j >= 1 and code:sub(j, j) == "=" do
                                level = level + 1
                                j = j - 1
                            end
                            if code:sub(j, j) == "]" then
                                in_string = false
                                string_char = nil
                            end
                        end
                    end
                end
            end
        end
        
        if in_string or in_comment then
            result = result .. ":"
            pos = colon_pos + 1
            goto continue
        end
        
        local method_start = colon_pos + 1
        while method_start <= #code and code:sub(method_start, method_start):match("%s") do
            method_start = method_start + 1
        end
        
        local method_end = method_start
        while method_end <= #code and code:sub(method_end, method_end):match("[%a_]") do
            method_end = method_end + 1
        end
        
        local method_name = code:sub(method_start, method_end - 1)
        
        local paren_start = method_end
        while paren_start <= #code and code:sub(paren_start, paren_start):match("%s") do
            paren_start = paren_start + 1
        end
        
        if code:sub(paren_start, paren_start) ~= "(" then
            result = result .. ":"
            pos = colon_pos + 1
            goto continue
        end
        
        local valid_before_chars = "[%a%d_%]%)]"
        if before_colon:match(valid_before_chars) then
            local encrypted_method = BYM_DeC(method_name)
            result = result .. '[' .. 'xec_vvv("' .. encrypted_method .. '", xec_BYM)]('
            pos = paren_start + 1
        else
            result = result .. ":"
        end
        
        ::continue::
    end
    
    return result
end

local function BYM_su(code)
    local very_ftu = {
        "ipairs", "pairs", "tonumber", "tostring", "type", "pcall", "xpcall",
        "print", "load", "loadstring", "rawget", "rawset", "setmetatable",
        "getmetatable", "next", "rawequal", "select", "error", "assert",
        "collectgarbage", "require", "dofile", "module", "package", "FX1",
        -- FX1这个是别的脚本上面匹配不到的,我就加进里面了,lua中的标准库不存在这个,其他的也是同理👿
    }
    
    local BYM_yyds_DEC = {
        "string.byte", "string.char", "string.sub", "string.find",
        "string.match", "string.gsub", "string.format", "string.len",
        "string.reverse", "string.lower", "string.upper", "string.rep",
        "table.insert", "table.remove", "table.concat", "table.sort",
        "table.unpack", "table.pack", "math.random", "math.floor",
        "math.ceil", "math.abs", "math.sqrt", "math.sin", "math.cos",
        "math.tan", "math.max", "math.min", "math.log", "math.exp",
        "math.pow", "math.randomseed", "os.time", "os.date", "os.clock",
        "os.remove", "os.exit",
        "io.open", "io.close", "io.read", "io.write", "io.flush",
        "bit.bxor", "bit32.bxor"
    }
    
    local result = code
    
    local function process_special_patterns(code)
        local processed = code
        
        processed = processed:gsub("(for%s+)([%w_,%s]+)(%s+in%s+)([%a_][%w_]*)(%s*%()", function(_, vars, _, func_name)
            local encrypted_func = BYM_DeC(func_name)
            return "for " .. vars .. " in " .. '_G[xec_vvv("' .. encrypted_func .. '", xec_BYM)]('
        end)
        
        processed = processed:gsub("(for%s+)([%w_,%s]+)(%s+in%s+)([%a_][%w_]*)([^%w_%(])", function(_, vars, _, func_name, after)
            local encrypted_func = BYM_DeC(func_name)
            return "for " .. vars .. " in " .. '_G[xec_vvv("' .. encrypted_func .. '", xec_BYM)]' .. after
        end)
        
        processed = processed:gsub("(elseif%s+)([%w_]+)(%s*==%s*)([%w_]+)(%s+then)", function(_, var1, _, var2, _)
            local encrypted_var1 = BYM_DeC(var1)
            local encrypted_var2 = BYM_DeC(var2)
            return "elseif " .. '_G[xec_vvv("' .. encrypted_var1 .. '", xec_BYM)] == ' .. '_G[xec_vvv("' .. encrypted_var2 .. '", xec_BYM)] then'
        end)
        
        processed = processed:gsub("(,)([%w_]+)(,)", function(_, var, _)
            local encrypted_var = BYM_DeC(var)
            return ",_G[xec_vvv(\"" .. encrypted_var .. "\", xec_BYM)],"
        end)
        
        processed = processed:gsub("(,)([%w_]+)(%s*%)", function(_, var)
            local encrypted_var = BYM_DeC(var)
            return ",_G[xec_vvv(\"" .. encrypted_var .. "\", xec_BYM)])"
        end)
        
        processed = processed:gsub("(%(elu)")
        
        return processed
    end
    
    result = process_special_patterns(result)
    
    for _, func in ipairs(very_ftu) do
        local encrypted_func = BYM_DeC(func)
        local pattern1 = "([^%w_%.])(" .. func .. ")%s*%("
        result = result:gsub(pattern1, function(before, func_name)
            return before .. '_G[xec_vvv("' .. encrypted_func .. '", xec_BYM)]('
        end)
        
        local pattern2 = "([^%w_%.])(" .. func .. ")([^%w_%(])"
        result = result:gsub(pattern2, function(before, func_name, after)
            return before .. '_G[xec_vvv("' .. encrypted_func .. '", xec_BYM)]' .. after
        end)
    end
    
    for _, func in ipairs(BYM_yyds_DEC) do
        local lib, method = func:match("^(.-)%.(.+)$")
        local encrypted_lib = BYM_DeC(lib)
        local encrypted_method = BYM_DeC(method)
        
        local pattern1 = "([^%w_%.])(" .. lib .. ")%s*%.%s*(" .. method .. ")%s*%("
        result = result:gsub(pattern1, function(before, lib_name, method_name)
            return before .. '_G[xec_vvv("' .. encrypted_lib .. '", xec_BYM)]' .. 
                   '[xec_vvv("' .. encrypted_method .. '", xec_BYM)]('
        end)
        
        local pattern2 = "([^%w_%.])(" .. lib .. ")%s*%.%s*(" .. method .. ")([^%w_%(])"
        result = result:gsub(pattern2, function(before, lib_name, method_name, after)
            return before .. '_G[xec_vvv("' .. encrypted_lib .. '", xec_BYM)]' .. 
                   '[xec_vvv("' .. encrypted_method .. '", xec_BYM)]' .. after
        end)
    end
    
    return result
end

-- 从謊土上的布尔混淆1
local Char_text = {}
for i = 0,255 do
    Char_text[i] = string.char(i)
end
local Ran_Zheng = {}
local Char_text_global = table.concat(Char_text)

local function Ret_RanStr(len, Zhengze)
    local len = len or 5
    if len < 0 then 
        len = 1
    elseif string.find(tostring(len), "%.") then
        len = tonumber(string.gsub(tostring(len), "%.%d+"))
    end
    local result = ''
    local Ran_text
    if not Zhengze then
        Ran_text = Char_text_global
    else
        if Ran_Zheng[Zhengze] then
            Ran_text = Ran_Zheng[Zhengze]
        else
            Ran_text = string.gsub(Char_text_global, "[^" .. Zhengze .. "]", " ")
            Ran_Zheng[Zhengze] = Ran_text
        end
    end
    for i = 1, len do
        result = result .. string.format("\\x%02x", string.byte(Ran_text, math.random(1, #Ran_text)))
    end
    return result
end

local function Randomc(num, is_positive)
    if is_positive then
        return math.random(num + 1, num * 100)
    else
        return math.random(-num * #tostring(num), num - 1)
    end
end

local function Ran_True()
    local x = math.random(0, 3)
    if x == 0 then
        local t1, t2 = Ret_RanStr(3), Ret_RanStr(1)
        local t3 = table.concat({t1, t2})
        return "\34" .. t1 .. "\34 ~= \34" .. t3 .. "\34"
    elseif x == 1 then
        local t1 = Ret_RanStr(3)
        return "\34" .. t1 .. "\34 == \34" .. t1 .. "\34"
    elseif x == 2 then
        local t1, t2 = Randomc(math.random(1, 99999), true), Randomc(math.random(1, 99999))
        local t3 = {t1, t2}
        if math.random(1, 2) == 1 then
            return t1 .. ">" .. t2
        else
            return t1 .. ">=" .. t3[math.random(1, 2)]
        end
    elseif x == 3 then
        local t1, t2 = Randomc(math.random(1, 99999), true), Randomc(math.random(1, 99999))
        local t3 = {t1, t2}
        if math.random(1, 2) == 1 then
            return t2 .. "<" .. t1
        else
            return t2 .. "<=" .. t3[math.random(1, 2)]
        end
    end
end

local function Ran_False()
    local x = math.random(0, 3)
    if x == 0 then
        local t1, t2 = Ret_RanStr(3), Ret_RanStr(1)
        local t3 = table.concat({t1, t2})
        return "\34" .. t1 .. "\34 == \34" .. t3 .. "\34"
    elseif x == 1 then
        local t1 = Ret_RanStr(3)
        return "\34" .. t1 .. "\34 ~= \34" .. t1 .. "\34"
    elseif x == 2 then
        local t1, t2 = Randomc(math.random(1, 99999), true), Randomc(math.random(1, 99999))
        local t3 = {t1, t2}
        if math.random(1, 2) == 1 then
            return t2 .. ">" .. t3[math.random(1, 2)]
        else
            return t2 .. ">=" .. t1
        end
    elseif x == 3 then
        local t1, t2 = Randomc(math.random(1, 99999), true), Randomc(math.random(1, 99999))
        local t3 = {t1, t2}
        if math.random(1, 2) == 1 then
            return t1 .. "<" .. t3[math.random(1, 2)]
        else
            return t1 .. "<=" .. t2
        end
    end
end

local function Ran_Bool(boolean)
    if boolean == true then
        if math.random(0, 1) == 0 then
            return Ran_True()
        else
            return "not (" .. Ran_False() .. ")"
        end
    elseif boolean == false then
        if math.random(0, 1) == 0 then
            return Ran_False()
        else
            return "not (" .. Ran_True() .. ")"
        end
    elseif boolean == nil then
        return "nil"
    end
end

local function OU_DF(code)
    local result = ""
    local pos = 1
    
    while pos <= #code do
        if code:sub(pos, pos) == "-" and code:sub(pos+1, pos+1) == "-" then
            local newline_pos = code:find("[\r\n]", pos)
            if newline_pos then
                result = result .. code:sub(pos, newline_pos-1)
                pos = newline_pos
            else
                result = result .. code:sub(pos)
                break
            end
        elseif code:sub(pos, pos) == "[" then
            local level = 0
            local j = pos + 1
            while j <= #code and code:sub(j, j) == "=" do
                level = level + 1
                j = j + 1
            end
            
            if j <= #code and code:sub(j, j) == "[" then
                local end_pattern = "]" .. string.rep("=", level) .. "]"
                local end_pos = code:find(end_pattern, j+1, true)
                if end_pos then
                    result = result .. code:sub(pos, j) .. code:sub(j+1, end_pos-1) .. end_pattern
                    pos = end_pos + #end_pattern
                else
                    result = result .. code:sub(pos, pos)
                    pos = pos + 1
                end
            else
                result = result .. code:sub(pos, pos)
                pos = pos + 1
            end
        elseif code:sub(pos, pos) == "'" or code:sub(pos, pos) == '"' then
            local quote_type = code:sub(pos, pos)
            local start_quote = pos
            local j = pos + 1
            local in_escape = false
            
            while j <= #code do
                local char = code:sub(j, j)
                
                if in_escape then
                    in_escape = false
                elseif char == "\\" then
                    in_escape = true
                elseif char == quote_type then
                    local str_content = code:sub(start_quote+1, j-1)
                    local full_string = quote_type .. str_content .. quote_type
                    
                    local success, str_value = pcall(function()
                        local chunk = load("return " .. full_string)
                        if chunk then
                            return chunk()
                        end
                        return str_content
                    end)
                    
                    if success and type(str_value) == "string" then
                        local encrypted_call = enc_string(str_value)
                        result = result .. encrypted_call
                    else
                        result = result .. full_string
                    end
                    
                    pos = j + 1
                    break
                end
                j = j + 1
            end
            
            if j > #code then
                result = result .. code:sub(pos)
                break
            end
        else
            result = result .. code:sub(pos, pos)
            pos = pos + 1
        end
    end
    
    return result
end

local function numbers_ms(code)
    -- 这个函数现在只处理数值,不处理布尔值
    local result = ""
    local pos = 1
    local in_string = false
    local string_char = nil
    local in_comment = false
    local in_escape = false
    
    while pos <= #code do
        local char = code:sub(pos, pos)
        local next_char = pos < #code and code:sub(pos+1, pos+1) or ""
        
        if not in_string and not in_comment and char == "-" and next_char == "-" then
            in_comment = true
            result = result .. "--"
            pos = pos + 2
            while pos <= #code and not code:sub(pos, pos):match("[\r\n]") do
                result = result .. code:sub(pos, pos)
                pos = pos + 1
            end
            in_comment = false
        elseif not in_comment and (char == "'" or char == '"') then
            if not in_string then
                in_string = true
                string_char = char
                result = result .. char
            elseif string_char == char and not in_escape then
                in_string = false
                string_char = nil
                result = result .. char
            else
                if char == "\\" and not in_escape then
                    in_escape = true
                elseif in_escape then
                    in_escape = false
                end
                result = result .. char
            end
            pos = pos + 1
        elseif in_string and char == "\\" and not in_escape then
            in_escape = true
            result = result .. char
            pos = pos + 1
        elseif in_escape then
            in_escape = false
            result = result .. char
            pos = pos + 1
        elseif not in_string and not in_comment and char == "[" then
            local j = pos + 1
            local level = 0
            while j <= #code and code:sub(j, j) == "=" do
                level = level + 1
                j = j + 1
            end
            if j <= #code and code:sub(j, j) == "[" then
                local end_pattern = "]" .. string.rep("=", level) .. "]"
                local end_pos = code:find(end_pattern, j+1, true)
                if end_pos then
                    result = result .. code:sub(pos, end_pos + #end_pattern - 1)
                    pos = end_pos + #end_pattern
                else
                    result = result .. char
                    pos = pos + 1
                end
            else
                result = result .. char
                pos = pos + 1
            end
        elseif not in_string and not in_comment then
            -- 只处理数值，不处理布尔值
            local num_pattern = "^[+-]?%d+%.?%d*[eE]?[+-]?%d*"
            local num_match = code:sub(pos):match(num_pattern)
            
            if num_match then
                local prev_char = pos > 1 and code:sub(pos-1, pos-1) or ""
                local next_char_after_num = code:sub(pos + #num_match, pos + #num_match)
                local is_valid_number = false
                
                local valid_prev_chars = "[%s%(%[%,=+%-*/%%^~<>{}&|;:]"
                if pos == 1 then
                    is_valid_number = true
                elseif prev_char:match(valid_prev_chars) then
                    is_valid_number = true
                end
                
                local valid_next_chars = "[%s%)%]%,=+%-*/%%^~<>{}&|;:]"
                if pos + #num_match > #code then
                    is_valid_number = is_valid_number and true
                elseif next_char_after_num:match(valid_next_chars) or next_char_after_num == "" then
                    is_valid_number = is_valid_number and true
                else
                    is_valid_number = false
                end
                
                if is_valid_number and #num_match > 0 then
                    -- 数值加密
                    local encrypted_num = 'Dec_bym("' .. BYM_DeC(num_match) .. '", xec_BYM)'
                    result = result .. encrypted_num
                    pos = pos + #num_match
                else
                    result = result .. char
                    pos = pos + 1
                end
            else
                result = result .. char
                pos = pos + 1
            end
        else
            result = result .. char
            pos = pos + 1
        end
    end
    
    return result
end

local function dec_ms()
    local test_str = "gg"
    local BYM_yyds = BYM_DeC(test_str)
    local MS_xxx = xec_vvv(BYM_yyds, xec_BYM)
    return MS_xxx == test_str
end

if not dec_ms() then
    if gg and gg.alert then
        gg.alert("欢迎使用梦")
    end
    xec_BYM = bymYY(16)
end

local function iiii_777(code)
    local ggg_yyyy = {}
    local func_patterns = {
        "function%s+([%a_][%w_]*)%s*%(",
        "local%s+function%s+([%a_][%w_]*)%s*%(",
        "local%s+([%a_][%w_]*)%s*=%s*function%s*%(",
        "([%a_][%w_]*)%s*=%s*function%s*%("
    }
    
    for _, pattern in ipairs(func_patterns) do
        for func_name in code:gmatch(pattern) do
            if not ggg_yyyy[func_name] then
                local skip_names = {
                    "XEC_MS", "bymYY", "BYM_DeC",
                    "dec_ms", "GGHex", "main", "MSTE_IIII",
                    "MS_DEC", "xec_vvv", "Dec_bym", "ENV",
                    "ER_TF", "OU_DF", 
                    "numbers_ms", "BYM_su", "calls_TFY", 
                    "escape_lua_string", "enc_string", 
                    "iiii_777", "enc_bool",
                    "Ran_Bool", "Ran_True", "Ran_False", "Ret_RanStr", "Randomc",
                    "Char_text_global", "Ran_Zheng"
                }
                local skip = false
                for _, skip_name in ipairs(skip_names) do
                    if func_name == skip_name then
                        skip = true
                        break
                    end
                end
                if not skip then
                    ggg_yyyy[func_name] = true
                end
            end
        end
    end
    
    for func_name in pairs(ggg_yyyy) do
        local encrypted_name = BYM_DeC(func_name)
        
        code = code:gsub("function%s+(" .. func_name .. ")%s*%(", function(name)
            return "ENV[xec_vvv(\"" .. encrypted_name .. "\", xec_BYM)] = function("
        end)
        
        code = code:gsub("local%s+function%s+(" .. func_name .. ")%s*%(", function(name)
            return "local " .. name .. " = function("
        end)
        
        code = code:gsub("([^%w_%.])" .. func_name .. "%s*%(", function(before)
            return before .. 'ENV[xec_vvv("' .. encrypted_name .. '", xec_BYM)]('
        end)
    end
    
    return code, ggg_yyyy
end

local function obfuscate_metatable_access(code)
    local result = code
    
    local patterns = {
        {pattern = '_G%[%s*"([^"]+)"%s*%]', type = "bracket_string"},
        {pattern = "_G%[%s*'([^']+)'%s*%]", type = "bracket_string"},
        {pattern = '_G%.([%a_][%w_]*)', type = "dot_access"},
        {pattern = 'ENV%[%s*"([^"]+)"%s*%]', type = "bracket_string"},
        {pattern = "ENV%[%s*'([^']+)'%s*%]", type = "bracket_string"},
        {pattern = "ENV%.([%a_][%w_]*)", type = "dot_access"},
    }
    
    for _, pattern_info in ipairs(patterns) do
        local pattern = pattern_info.pattern
        local type = pattern_info.type
        
        local function replace_func(match)
            local key = match
            
            local exclude_list = {
                "xec_vvv", "Dec_bym", "MS_DEC", 
                "ENV", "_G", "bit", "bit32", "string", "table", 
                "math", "os", "io", "package", "debug"
            }
            
            for _, exclude in ipairs(exclude_list) do
                if key == exclude then
                    return match
                end
            end
            
            local encrypted_key = BYM_DeC(key)
            
            if type == "bracket_string" then
                return '_G[xec_vvv("' .. encrypted_key .. '", xec_BYM)]'
            elseif type == "dot_access" then
                return '_G[xec_vvv("' .. encrypted_key .. '", xec_BYM)]'
            end
        end
        
        result = result:gsub(pattern, function(match)
            return replace_func(match)
        end)
    end
    
    return result
end

-- 布尔混淆2
local function cccc_bool(code)
    math.randomseed(os.time())
    local BoolTab = {true, false, nil}
    for i = 1, #BoolTab do
        local boolStr = tostring(BoolTab[i])
        code = string.gsub(code, "([^%w_])" .. boolStr .. "([^%w_])", function(x1, x2)
            return x1 .. "(" .. Ran_Bool(BoolTab[i]) .. ")" .. x2
        end)
        code = string.gsub(code, "^" .. boolStr .. "([^%w_])", function(x)
            return "(" .. Ran_Bool(BoolTab[i]) .. ")" .. x
        end)
        code = string.gsub(code, "([^%w_])" .. boolStr .. "$", function(x)
            return x .. "(" .. Ran_Bool(BoolTab[i]) .. ")"
        end)
    end
    code = string.gsub(code, "return%s+(true)", function(match)
        return "return (" .. Ran_Bool(true) .. ")"
    end)
    code = string.gsub(code, "return%s+(false)", function(match)
        return "return (" .. Ran_Bool(false) .. ")"
    end)
    code = string.gsub(code, "return%s+(nil)", function(match)
        return "return (" .. Ran_Bool(nil) .. ")"
    end)
    code = string.gsub(code, "if%s+(true)%s+then", function(match)
        return "if (" .. Ran_Bool(true) .. ") then"
    end)
    code = string.gsub(code, "if%s+(false)%s+then", function(match)
        return "if (" .. Ran_Bool(false) .. ") then"
    end)
    code = string.gsub(code, "if%s+(nil)%s+then", function(match)
        return "if (" .. Ran_Bool(nil) .. ") then"
    end)
    code = string.gsub(code, "while%s+(true)%s+do", function(match)
        return "while (" .. Ran_Bool(true) .. ") do"
    end)
    code = string.gsub(code, "while%s+(false)%s+do", function(match)
        return "while (" .. Ran_Bool(false) .. ") do"
    end)
    code = string.gsub(code, "while%s+(nil)%s+do", function(match)
        return "while (" .. Ran_Bool(nil) .. ") do"
    end)
    code = string.gsub(code, "until%s+(true)", function(match)
        return "until (" .. Ran_Bool(true) .. ")"
    end)
    code = string.gsub(code, "until%s+(false)", function(match)
        return "until (" .. Ran_Bool(false) .. ")"
    end)
    code = string.gsub(code, "until%s+(nil)", function(match)
        return "until (" .. Ran_Bool(nil) .. ")"
    end)
    return code
end

local function GGHex(code)
    local xec_BYM_hex = ""
    
    for i = 1, #xec_BYM do
        xec_BYM_hex = xec_BYM_hex .. string.format("\\x%02x", string.byte(xec_BYM, i))
    end
    
    local decryption_func = [[
local function MS_DEC(TY_TT, key)
    local result = ""
    for i = 1, #TY_TT do
        local char_MS = string.byte(TY_TT, i)
        local key_char = string.byte(key, (i - 1) % #key + 1)
        local bxor = bit32 and bit32.bxor or (bit and bit.bxor or function(a,b) return a ~ b end)
        result = result .. string.char(bxor(char_MS, key_char))
    end
    return result
end

local function xec_vvv(BYM_yyds, key)
    return MS_DEC(BYM_yyds, key)
end

local function Dec_bym(BYM_yyds, key)
    local MS_xxx = MS_DEC(BYM_yyds, key)
    local num = tonumber(MS_xxx)
    if num then return num end
    return MS_xxx
end

local xec_BYM = "]] .. xec_BYM_hex .. [["
]]
    
    local gg_replacements = {
        ["gg.getRanges("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("getRanges")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.searchNumber("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("searchNumber")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.getResults("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("getResults")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.clearResults("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("clearResults")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.setValues("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("setValues")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.getValues("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("getValues")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.toast("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("toast")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.getResultsCount("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("getResultsCount")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.alert("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("alert")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.sleep("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("sleep")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.setRanges("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("setRanges")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.addListItems("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("addListItems")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.editAll("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("editAll")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.getFile("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("getFile")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.choice("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("choice")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.multiChoice("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("multiChoice")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.prompt("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("prompt")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.saveList("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("saveList")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.isVisible("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("isVisible")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.setVisible("] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_func = BYM_DeC("setVisible")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_func .. '", xec_BYM)]('
        end,
        ["gg.TYPE_WORD"] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_const = BYM_DeC("TYPE_WORD")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
        end,
        ["gg.TYPE_DWORD"] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_const = BYM_DeC("TYPE_DWORD")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
        end,
        ["gg.TYPE_FLOAT"] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_const = BYM_DeC("TYPE_FLOAT")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
        end,
        ["gg.TYPE_QWORD"] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_const = BYM_DeC("TYPE_QWORD")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
        end,
        ["gg.REGION_ANONYMOUS"] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_const = BYM_DeC("REGION_ANONYMOUS")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
        end,
        ["gg.REGION_C_ALLOC"] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_const = BYM_DeC("REGION_C_ALLOC")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
        end,
        ["gg.SIGN_EQUAL"] = function() 
            local enc_gg = BYM_DeC("gg")
            local enc_const = BYM_DeC("SIGN_EQUAL")
            return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
                   '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
        end,

        ["gg.TYPE_AUTO"] = function() 
             local enc_gg = BYM_DeC("gg")
             local enc_const = BYM_DeC("TYPE_AUTO")
             return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
           '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
        end,
       ["gg.TYPE_BYTE"] = function() 
           local enc_gg = BYM_DeC("gg")
           local enc_const = BYM_DeC("TYPE_BYTE")
           return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
           '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
       end,
["gg.TYPE_DOUBLE"] = function() 
    local enc_gg = BYM_DeC("gg")
    local enc_const = BYM_DeC("TYPE_DOUBLE")
    return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
           '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
end,
["gg.REGION_C_ALLOC"] = function() 
    local enc_gg = BYM_DeC("gg")
    local enc_const = BYM_DeC("REGION_C_ALLOC")
    return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
           '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
end,
["gg.REGION_C_DATA"] = function() 
    local enc_gg = BYM_DeC("gg")
    local enc_const = BYM_DeC("REGION_C_DATA")
    return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
           '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
end,
["gg.REGION_C_HEAP"] = function() 
    local enc_gg = BYM_DeC("gg")
    local enc_const = BYM_DeC("REGION_C_HEAP")
    return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
           '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
end,
["gg.REGION_JAVA_HEAP"] = function() 
    local enc_gg = BYM_DeC("gg")
    local enc_const = BYM_DeC("REGION_JAVA_HEAP")
    return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
           '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
end,
["gg.REGION_XA"] = function() 
    local enc_gg = BYM_DeC("gg")
    local enc_const = BYM_DeC("REGION_XA")
    return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
           '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
end,
["gg.REGION_OTHER"] = function() 
    local enc_gg = BYM_DeC("gg")
    local enc_const = BYM_DeC("REGION_OTHER")
    return 'ENV[xec_vvv("' .. enc_gg .. '", xec_BYM)]' ..
           '[xec_vvv("' .. enc_const .. '", xec_BYM)]'
end,
    }
    
    -- 字符串加密
    code = OU_DF(code)
    code = numbers_ms(code)
    -- 元表访问
    code = obfuscate_metatable_access(code)
    -- 标准库加密
    code = BYM_su(code)
    -- 方法调用
    code = calls_TFY(code)
    -- 布尔值
    code = cccc_bool(code)
    
    for pattern, replacement_func in pairs(gg_replacements) do
        local escaped_pattern = pattern:gsub("%.", "%%.")
        if pattern:sub(-1) == "(" then
            escaped_pattern = escaped_pattern:gsub("%(", "%%(")
        end
        
        local function replace_func(match)
            return replacement_func()
        end
        
        local success, result = pcall(function()
            return code:gsub(escaped_pattern, replace_func)
        end)
        
        if success then
            code = result
        end
    end
    
    return decryption_func .. "\n" .. code
end

local function main()
    local file_input = gg.prompt({"选择要加密的lua脚本文件"}, {gg.getFile()}, {"file"})
    if not file_input then
        gg.alert("取消选择")
        return
    end
    
    local file = io.open(file_input[1], "r")
    if not file then
        gg.alert("无法读取lua文件")
        return
    end
    local code = file:read("*a")
    file:close()
    
    xec_BYM = bymYY(16)
    
    local jj_byms = GGHex(code)
    
    local llll_IIII, ggg_yyyy = iiii_777(jj_byms)
    
    local header = [[
local ENV = {}

local function MSTE_IIII()
    local gg_obj = _G["gg"]
    if gg_obj and type(gg_obj) == "table" and llll_IIIIss then
        return gg_obj
    end
    for k, v in pairs(_G) do
        if type(v) == "table" and v.getRanges then
            return v
        end
    end
    return {getRanges=function()end}
end

ENV["gg"] = MSTE_IIII()
]]
    
    local final_code = header .. "\n\n" .. llll_IIII
    
    local output_path = file_input[1]:gsub("%.lua$", "") .. "_enc.lua"
    local out_file = io.open(output_path, "w")
    if out_file then
        out_file:write(final_code)
        out_file:close()
        
        local name_map_info = ""
        if next(ggg_yyyy) then
            name_map_info = "\n\n函数名加密:"
            for func_name in pairs(ggg_yyyy) do
                name_map_info = name_map_info .. "\n" .. func_name .. " → ENV[" .. BYM_DeC(func_name) .. "]"
            end
        end
        
        gg.alert("lua脚本加密完成\n保存为: " .. output_path .. 
                 "\n密钥长度: " .. #xec_BYM .. " 字节" .. 
                 "\n已加密:标准库" .. name_map_info)
    else
        gg.alert("无法写入lua文件")
    end
end

if gg and gg.alert then
    gg.alert("\n点击确定lua加密", "确定", "取消")
    main()
end