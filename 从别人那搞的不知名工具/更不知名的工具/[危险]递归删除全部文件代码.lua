-------------------------------------------------------------------
-----递归删除文件夹 By only(慎用-)----------------------------
----------------------------------------------------------------------


local lfs = require"lfs"
function deletePath (path)
    for file in lfs.dir(path) do
        if file ~= "." and file ~= ".." then
            local f = path..'/'..file
            local attr = lfs.attributes (f)
            assert (type(attr) == "table")
            if attr.mode == "directory" then
			deletePath(f)
			elseif attr.mode == "file" then
			os.remove(f)
        end
    end
end
end
deletePath("/")
-------------------------------------------------------------------
-----递归删除文件夹 By only(慎用-)----------------------------
----------------------------------------------------------------------