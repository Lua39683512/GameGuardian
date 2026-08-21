--要不要菠萝

--这里可以放特征码

function Main()
menu = gg.choice({
"功能1",
"功能2",
}, 2022, "公告")
if menu == 1 then ID1() end
if menu == 2 then ID2() end
--添加第三个功能if menu == 3 [第几个功能]  then ID3 [执行这个叫"ID3"的功能，也可以改成其他的] () end
XGCK=-1
end

function ID1()
end
  
function ID2()
end

--如果要添加第三个就写
--function ID3() [上面写的执行什么功能名称就写什么]（例 if menu == 3 then GN() end  那么这里应该是 function GN() ）
--end

--两个减号就是灰色的字，执行脚本时可略过  \n是换行，写公告可用
--menu1 = gg.multiChoice({
--"功能",
--}, nil, os.date("功能"))
--上面这个是多选的脚本模板，如果想多选功能可以改成这个
--但是选成多选后下面的执行功能就要变
--if menu1[1] == true then A() end
--XGCK=-1
--end 
-- [↑这个XGCK别忘了]

--然后来教os.exit和HOME
--os.exit是退出脚本
--HOME是返回脚本主页，怎么使用这两个呢？
--if menu1[1] == true then () end
--if menu == 1 then () end
--这两个就需要了   ↑这里输入os.exit是执行退出，输入HOME是返回脚本主页[上面那个一样]

--习惯了你就会了，功能可以自己抓

cs = ''
while(true)do
if gg.isVisible(true) then
XGCK=1
gg.setVisible(false)
end
gg.clearResults()
if XGCK==1 then
Main()

end
end