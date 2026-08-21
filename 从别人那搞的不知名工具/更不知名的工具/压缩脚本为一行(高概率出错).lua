Path = gg.prompt({
      [1] = "小鳄鱼:选择要压缩的脚本"
    }, {
      [1] = "/storage/emulated/0/tencent/QQfile_recv/小鳄鱼"
    }, {
      [1] = "file"
    })
    if Path == nil then
    end
    A = io.open(Path[1], "r"):read("*a")
    io.open(Path[1] .. "压缩", "w"):write((string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(string.gsub(A, "\n", " "), "          ", " "), "         ", " "), "        ", " "), "       ", " "), "      ", " "), "     ", " "), "    ", " "), "   ", " "), "  ", " "))):close()
    print("小鳄鱼:脚本压缩成功")
    os.exit()