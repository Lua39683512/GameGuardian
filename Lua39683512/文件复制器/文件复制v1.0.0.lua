local ROOT="/data/user/0/com.excean.dualaid/gameplugins/Free.Mods/shared_prefs/Free.Mods_preferences.xml"

local lastInput=ROOT
local lastFolder="/sdcard/GG.lua/超自然行动组.lua/脚本备份.lua"

function CopyFile()

    local t=gg.prompt({
        "要复制的文件路径",
        "目标文件夹"
    },{
        lastInput,
        lastFolder
    },{
        "file",
        "path"
    })

    if not t then
        return
    end

    -- 保存本次选择
    lastInput=t[1]
    lastFolder=t[2]

    local input=lastInput
    local folder=lastFolder

    local name=input:match("([^/]+)$")
    if not name then return end

    local output=folder.."/"..name

    local inputFile=io.open(input,"rb")
    if not inputFile then
        gg.alert("无法读取源文件")
        return
    end

    local content=inputFile:read("*a")
    inputFile:close()

    local outputFile=io.open(output,"wb")
    if not outputFile then
        gg.alert("无法创建目标文件")
        return
    end

    outputFile:write(content)
    outputFile:close()

    gg.toast("复制成功:\n"..name)
end


while true do

    if gg.isVisible(true) then
        gg.setVisible(false)
        gg.sleep(300)

        CopyFile()
    end

    gg.sleep(300)
end