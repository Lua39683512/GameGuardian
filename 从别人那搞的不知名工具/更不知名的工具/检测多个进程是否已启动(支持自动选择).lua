-- 需要选择的进程集合
local pkgs = {'com.tencent.mobileqq', '包名','...'}
local pkgs2 = table.value_to_key(pkgs)

repeat
    local selPkg = gg.getTargetPackage() -- 当前选择的进程包名
    local success = pkgs2[selPkg]

    if not success then
        -- 表示当前选择的进程并不是想要指定的进程

        success = (function()
            local runPaks = app.runList() -- 获取当前运行的所有进程包名
            local runPaks2 = table.value_to_key(runPaks)

            -- 遍历需要选择的进程集合,看看其中的进程有没有在运行
            for i, pkg in pairs(pkgs) do
                if runPaks2[pkg] then -- 如果判断成立则说明在运行
                    gg.setProcess(pkg) -- 设置当前选择的进程
                    return true
                end
            end
            -- 如果执行到遍历完成,则说明没有运行

            local apps = app.getInstalledPackages(0) -- 获取已安装的所有普通app
            local apps2 = table.value_to_key(apps)

            -- 遍历需要选择的进程集合,看看其中的进程有没有安装
            for i, pkg in pairs(pkgs) do
                if apps2[pkg] then -- 如果判断成立则说明该进程安装了
                    local appName = app.getName(pkg)
                    if appName and gg.alert('请先运行>> ' .. appName .. ' <<', '启动', '取消') == 1 then
                        app.start(pkg) -- 启动该进程
                        gg.sleep(1000)
                        gg.alert('请在选择"' .. appName .. '"进程后重新"开启辅助"')
                        gg.setProcessX() -- 弹出选择进程窗口,会重新收集正在运行的进程
                    end
                    return os.exit() -- 退出脚本,让用户重新开启辅助,不然没办法自动选择,因为此时修改器还没有收集新的运行的进程
                end
            end
            -- 如果执行到遍历完成,则说明没有运行

            gg.alert('请先安装并且运行游戏再执行脚本!')
            return os.exit()
        end)()
    end
until success

-- 以下的脚本代码
