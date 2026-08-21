local g = {}
g.last = gg.getFile()
g.info = nil

g.config = gg.getFile():gsub('%lua$', '') .. 'cfg'
g.data = loadfile(g.config)
if g.data ~= nil then
    g.info = g.data()
    g.data = nil
end

if g.info == nil then
    g.info = {g.last, g.last:gsub('/[^/]+$', ''), nil}
end
if g.info[3] == nil then
    g.info[3] = gg.VERSION
end
if g.info[4] == nil then
    g.info[4] = 400
end
local whiteList = {
    ["getResultsCount"] = 'number',
    ["multiChoice"] = 'table',
    ["setSpeed"] = 'boolean',
    ["getSpeed"] = 'number',
    ["bytes"] = 'table',
    ["getFile"] = 'string',
    ["require"] = 'nil',
    ["getValues"] = 'table',
    ["setValues"] = 'boolean',
    ["editAll"] = 'number',
    ["getListItems"] = 'table',
    ["loadResults"] = 'boolean',
    ["getSelectedResults"] = 'table',
    ["getTargetPackage"] = 'string',
    ["internal3"] = 1,
    ["startFuzzy"] = 'boolean',
    ["processKill"] = 'boolean',
    ["alert"] = 'number',
    ["setRanges"] = 'nil',
    ["getRanges"] = 'number',
    ["getLine"] = 'number',
    ["unrandomizer"] = 'boolean',
    ["getActiveTab"] = 'number',
    ["searchPointer"] = 'boolean',
    ["skipRestoreState"] = 'nil',
    ["allocatePage"] = 'number',
    ["getValuesRange"] = 'table',
    ["internal1"] = 1,
    ["removeListItems"] = 'boolean',
    ["getTargetInfo"] = 'table',
    ["toast"] = 'nil',
    ["processResume"] = 'boolean',
    ["makeRequest"] = 'table',
    ["getLocale"] = 1,
    ["getSelectedListItems"] = 'table',
    ["timeJump"] = 'boolean',
    ["processToggle"] = 'boolean',
    ["disasm"] = 1,
    ["getResultCount"] = 1,
    ["processPause"] = 'boolean',
    ["isProcessPaused"] = 'boolean',
    ["getRangesList"] = 'table',
    ["getResults"] = 'table',
    ["copyText"] = 'nil',
    ["searchFuzzy"] = 'boolean',
    ["internal2"] = 1,
    ["clearResults"] = 'nil',
    ["removeResults"] = 'boolean',
    ["refineAddress"] = 'boolean',
    ["refineNumber"] = 'boolean',
    ["choice"] = 'number',
    ["numberFromLocale"] = 1,
    ["getSelectedElements"] = 'table',
    ["showUiButton"] = 'nil',
    ["isVisible"] = 'boolean',
    ["gotoAddress"] = 'nil',
    ["getSelectedPackage"] = 1,
    ["saveList"] = 'boolean',
    ["addListItems"] = 'boolean',
    ["prompt"] = 'table',
    ["setVisible"] = 'nil',
    ["searchNumber"] = 'boolean',
    ["saveVariable"] = 'boolean',
    ["isPackageInstalled"] = 'boolean',
    ["numberToLocale"] = 1,
    ["clearList"] = 'boolean',
    ["copyMemory"] = 'boolean',
    ["hideUiButton"] = 'nil',
    ["sleep"] = 'nil',
    ["loadList"] = 'boolean',
    ["isClickedUiButton"] = 'boolean',
    ["dumpMemory"] = 'boolean',
    ["searchAddress"] = 'boolean'
}
local HOOK
while true do
    g.info = gg.prompt({'选择脚本/组装文件：', '选择输出的可写路径：'}, g.info, {'file', 'path'})
    if g.info == nil then
        break
    end
    gg.saveVariable(g.info, g.config)
    g.last = g.info[1]
    g.test, g.err = loadfile(g.last)
    g.loaded = g.last
    if g.test == nil then
        if g.err == nill then
            g.err = 'Unknown error'
        end
        print(g.err)
        gg.alert('Failed load/assemble script: ' .. g.last .. '\n\n' .. g.err)
    else
        g.name = g.last:match('[^/]+$')
        g.pathes = {g.info[2]:gsub('/?$', '') .. '/' .. g.name, g.last, '/sdcard/' .. g.name,gg.getFile():gsub('[^/]+$', '') .. g.name, gg.EXT_FILES_DIR .. '/' .. g.name}
        g.file = nil
        g.out = ''
        g.try = ''
        for i, v in ipairs(g.pathes) do
            g.out = v .. ".tmp.lua"
            g.file = io.open(g.out, "w")
            if g.file ~= nil then
                g.last = v:gsub('%.lua$', '')
                break
            end
            g.try = g.try .. ' ' .. v
        end
        if g.file == nil then
            gg.alert('写入文件失败。检查：' .. g.try)
        else
            g.file:close()
            os.remove(g.out)

            local ggg = {}
            for k, v in pairs(gg) do
                ggg[k] = v
            end

            local typ = type
            local str = tostring
            local echo = print
            local io_open = io.open
            local tr = {}
            local slen = string.len

            local msg = ''
            local rnd = g.last .. '_' .. os.time() .. '_'

            local file = rnd .. 'log.lua'
            local f = io_open(file, 'wb')
            f:write("-- Hook started\n")
            f:close()
            local names = {
                allocatePage = {'^PROT_', '0x%X'},
                copyMemory = {'0x%X', '0x%X'},
                dumpMemory = {'0x%X', '0x%X'},
                gotoAddress = {'0x%X'},
                setRanges = {'^REGION_'},
                searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
                refineNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
                startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
                searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
                searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
                refineAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
                getResults = {nil, nil, '0x%X', '0x%X', nil, nil, '^TYPE_', nil, '^POINTER_'},
                editAll = {nil, '^TYPE_'},
                loadList = {nil, '^LOAD_'},
                saveList = {nil, '^SAVE_'}
            }
            local rets = {
                alert = 1,
                prompt = 1,
                choice = 1,
                multiChoice = 1
            }
            local smatch = string.match
            local ssub = string.sub
            local sformat = string.format
            local flagsTable = {}
            local toFlags = function(check, value)
                local ret = ''
                for k, v in pairs(flagsTable) do
                    if (value & v) == v and smatch(k, check) ~= nil then
                        if ret ~= '' then
                            ret = ret .. ' | '
                        end
                        ret = ret .. 'gg.' .. k
                        value = value & ~v
                    end
                end
                return ret
            end
            local f = nil
            for i, v in pairs(ggg) do
                local types = typ(v)
                if types == 'function' and i ~= 'getLine' and i ~= 'isVisible'and i ~= 'sleep' then
                    local orig = v
                    local name = i
                    local hook = 1
                    hook = function(...)
                        local arg = {...}
                        local ret2
                        if f == nil then
                            f = io_open(file, 'ab')
                            f:setvbuf('no')
                        end
                        local pre = 'gg.' .. name .. '('
                        local res, err = pcall(function(...)
                            ret2 = orig(...)
                            for j, a in ipairs(arg) do
                                if j ~= 1 then
                                    pre = pre .. ', '
                                end
                                if typ(a) == 'string' then
                                    pre = pre .. '"'
                                end
                                local b = a
                                if (typ(a) == 'number') and names[name] ~= nil and names[name][j] ~= nil then
                                    local check = names[name][j]
                                    if ssub(check, 1, 1) ~= '^' then
                                        if a == 0 or a == -1 then
                                            b = a
                                        else
                                            b = sformat(check, a)
                                        end
                                    else
                                        b = toFlags(check, a)
                                    end
                                end
                                b = str(b)
                                if slen(b) >= 8192 then
                                    f:write(pre)
                                    f:write(b)
                                    pre = ''
                                else
                                    pre = pre .. b
                                    if slen(pre) >= 8192 then
                                        f:write(pre)
                                        pre = ''
                                    end
                                end
                                if typ(a) == 'string' then
                                    pre = pre .. '"'
                                end
                            end
                        end,...)
                        pre = pre .. ')'
                        if not res then
                            pre = pre .. ' --失败,已过滤参数\n\n'
                        end
                        if rets[name] ~= nil then
                            local b = str(ret2)
                            if slen(b) >= 8192 then
                                f:write(pre .. " --[[ ")
                                f:write(b)
                                f:write(" ]]\n")
                            else
                                f:write(pre .. " --[[ " .. b .. " ]]\n")
                            end
                            return ret2
                        end
                        f:write(pre .. "\n")
                        return ret2
                    end
                    tr[hook] = orig
                    gg[i] = hook
                elseif types == 'number' then
                    flagsTable[i] = v
                end
            end
            ggg.alert('所有 GG 调用都将记录到文件：\n\n' .. file)
            msg = nil
        end
        local test = g.test
        g = nil
        return test()
    end
end
