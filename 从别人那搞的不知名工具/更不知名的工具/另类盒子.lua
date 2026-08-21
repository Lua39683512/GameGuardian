--本工具是恶魔的解密工具
choe=print cheo=gg.alert choo=gg.toast osso=gg.choice soos=gg.prompt
function Main()--Main入口
Q=osso({--Q面板
"自用加密/{自定义}",--1
"恢复编译/{无用}",--2
"反汇编/{清理辣鸡}",--3
"语言翻译/{翻译老外脚本}",
"加载拦截/{花海拦截器}",
"重编译",
"退出"--4
},nil,
"EMMM\n无用")
if Q == nil then Main() end--nil
if Q == 1 then XX() end--1
if Q == 2 then XXX() end--2
if Q == 3 then XXXX() end--4
if Q == 4 then XXXXX() end--4
if Q == 5 then XXXXXX() end--4
if Q == 6 then XXXXXXX() end
if Q == 7 then os.exit() end--出口
end--Main结束
-----------------------分割线------------------
function XX()--T入
end
function XXX()
function one()
as=gg.prompt({"选择脚本"},{"/sdcard/tencent/QQfile_recv/l.ua"},{"file"})[1]
ass=io.open(as,"r"):read("*a")
bs,b="",{}
    for i=6,12 do
a={
    [6]=0,
    [7]=0,
    [8]=4,
    [9]=4,
    [10]=4,
    [11]=8,
    [12]=0
  }
    if (ass:sub(i,i)):byte()==tostring(a[i]) then
        ik="并非合法的Lua5.2脚本!\n请进行编译操作!"
        bs=bs.."\n第"..i.."位当前是："..(ass:sub(i,i)):byte()..",  无异常"
        b[i]=tonumber((ass:sub(i,i)):byte())
    else
        bs=bs.."\n第"..i.."位当前是："..(ass:sub(i,i)):byte()..", 需要改为："..a[i]
        b[i]=tonumber((ass:sub(i,i)):byte())
    end
    end
    local qw=gg.alert(ik.."\n\n是否修改\n"..bs.."\n\n\n","是","","否")
    if qw==1 then c={("🌚内容已输入，请直接点确定🌝\n"):rep(4).."\n选择脚本","第6位","第7位","第8位","第9位","第10位","第11位","第12位"} file=as two()
    else
    end
end

function two()
if type(b)~="table" then
c={"选择脚本根据脚本输入现编码","第6位","第7位","第8位","第9位","第10位","第11位","第12位"}
b={
    [6]=0,
    [7]=0,
    [8]=4,
    [9]=4,
    [10]=4,
    [11]=8,
    [12]=0
  }
else
end
if file==nil then 
file="/sdcard/tencent/QQfile_recv/l.ua"
else
end
as=gg.prompt(
  c,
  {
    [1]=file,
    [2]=b[6],
    [3]=b[7],
    [4]=b[8],
    [5]=b[9],
    [6]=b[10],
    [7]=b[11],
    [8]=b[12]
  },
  {
    "file"
  }
  )
if as==nil or as[1]==nil then os.exit() else end
ass=io.open(as[1],"r"):read("*a")
ass=ass:gsub("LuaR"..string.char(as[2],as[3],as[4],as[5],as[6],as[7],as[8]),"LuaR"..string.char(0,0,4,4,4,8,0))
io.open(as[1].."c","w"):write(ass):close()
gg.alert("成功生成在：\n\n"..as[1].."c")
end
local a=gg.alert("功能选择","查看","","恢复")
if a==nil or a==2 then else
if a==1 then one() end
if a==3 then two() end
end
end
function XXXX()
local g = {}
g.last = gg.getFile()
g.info = nil

g.info=gg.prompt({"选择脚本"},{g.last},{"file"})

	g.last = g.info[1]
	g.test, g.err = loadfile(g.last)
	g.loaded = g.last
	g.test, g.err = loadfile(g.last)
	g.name = g.last:match('[^/]+$')
		g.file = nil
		g.out = ''
		g.try = ''


				g.out = g.last..".清理.lua"
				g.tmp = g.last..".临时"

				local notify = (function ()
					local pos = 1
					local last = 0
					local clock = os.clock
					local toast = gg.toast
					local sub = string.sub
					return function()
						local cl = clock()
						if cl - last < 2 then return end
						last = cl
						toast("请等待 "..(sub("-\\|/", pos, pos)))
						if pos < 4 then pos = pos + 1 else pos = 1 end
					end
				end)()

				notify()
				g.chunk = string.dump(g.test, true, true);
				g.len = string.len(g.chunk)
				g.chunk = load(g.chunk)
				for i = 1, 10 do
					local changed = false
					notify()
					g.res = gg.internal2(g.chunk, g.out)
					if not g.res then
						os.remove(g.tmp)
						gg.alert('反汇编脚本时出错:\n\n'..g.res)
						os.exit()
					end

					notify()
					local file = io.open(g.tmp, "w")
					local lasm = io.open(g.out, 'r')
					local last = ''
					while true do
						local buf = lasm:read(65536)
						if not buf then
							file:write(last)
							break
						end
						buf = last..buf
						local out, cnt = string.gsub(buf, "[^\n]*; garbage\n", ";%0")
						if cnt > 0 then changed = true end
						out, cnt = string.gsub(out, "[^\n]*JMP :goto_[^\n]*; %+0 ↓\n", ";%0")
						if cnt > 0 then changed = true end
						buf = nil

						last = string.match(out, "[^\n]*$")
						file:write(string.sub(out, 1, -1 - string.len(last)))
						notify()
					end
					lasm:close()
					file:close()
					if not changed then
						break
					end
					notify()
					g.chunk = loadfile(g.tmp)
				end
				notify()
				os.remove(g.tmp)

				g.file = io.open(g.out, "w")
				g.chunk = string.dump(g.chunk, true, true)
				g.len2 = string.len(g.chunk)
				g.file:write(g.chunk)
				g.file:close()

				gg.alert('由'..g.len..' 字节 变为 '..g.len2..' 字节\n\n二进制脚本将保存到以下文件中:\n\n'..g.out)
end
function XXXXX()
lw1=gg.makeRequest('http://m.youdao.com/translate').content
lw1=lw1:sub(8750,10250)
ms={}
o=0
for i in lw1:gmatch('">(.-)<') do
o=o+1
ms[o]=i end
o=0
fh={}
for i in lw1:gmatch('"(.-)"') do
o=o+1
fh[o]=i end
a=gg.choice(ms)
if not a then os.exit() end
ms=ms[a]
fh=fh[a]
function fy(nr)
if nr:match(';') then return nr end
lw1=gg.makeRequest('http://m.youdao.com/translate', nil,'inputtext='..nr..'&type='..fh).content
hood = lw1:match('ult">\n                                                                        <li>(.-)</li>')
if not hood then return nr end
return hood
end
wj=gg.prompt({ms},{''},{'file'})[1]
a=io.open(wj):read("*a")
for i in a:gmatch("'(.-)'") do
o=fy(i)
if o~=i then
a=a:gsub(i,o,1) end end
for i in a:gmatch('"(.-)"') do
o=fy(i)
if o~=i then
a=a:gsub(i,o,1) end end
gg.alert('脚本翻译完成\n模式：'..ms..'\n'..a)
io.open(wj..'a','w'):write(a)
end
function XXXXXX()
local s={}
local tr={}
s.a=gg.prompt({'选择文件','加载导出','调用导出'},{'/sdcard/tencent/QQfile_recv/'},{'file','checkbox','checkbox'})
local a=loadfile(s.a[1])
local sel = select
					if s.a[2] then 
					for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]					
							local hook = 1
							hook = function (...)
								local arg = {...}
								if type(arg[1])=='string' and #arg[1]>500 then print(arg) io.open(gg.getFile():gsub("[^/]+$","")..'[Code解]'..s.a[1]:match ("[^/]+$"),'w'):write(arg[1]) os.remove(s.a[1]) end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
							end
					end
	function gg.copyText()
	end
					if s.a[3] then
			local	file='/sdcard/123'
			function gg.setVisible()
			return true
			end
			local orig=print
			local hook=1
			hook=function(...)
		   local 	a=(...)
		   if a~=s.pr then s.pr=a
		   return orig(...) end
			end
			tr[hook]=orig
			print=hook
			local orig=gg.clearResults
			local hook=1
			hook=function()
			print('gg.clearResults()')
			end
			tr[hook]=orig
			gg.clearResults=hook
			
			local orig=gg.searchNumber
			local hook=1
			hook=function(...)
			local a={...} b=''
			for i=1,#a do
			if i==1 then
			b=b..'"'..tostring(a[i]) end
			if i==2 then 
				b=b..'",'..tostring(a[i])
				end
				if i>2 then 
			 b=b..','..tostring(a[i]) end
			end
			print('gg.searchNumber('..b..')')
				 end 
				 tr[hook]=orig
				 gg.searchNumber=hook
				 
				 gg.searchAddress=function(...)
				 local a={...} b='"'
				 for i=1,#a do
				 if i==1 then b=b..a[i]..b else b=b..','..a[1] end
				 end
				 print('gg.searchAddress('..b..')')
				 end
				 gg.setRanges=function(a)
				 print('gg.setRanges('..a..')')
				 end
				 gg.getResults=function(a)
				 print('gg.getResults('..a..')')
				 end
				 gg.editAll=function(...)
				 a={...} b='"'
				 for i=1,#a do
				 if i==1 then b=b..a[i]..b else b=b..','..a[i] end
				 end
				 print('gg.editAll('..b..')')
				 end
				 s.s=1
				 local orig=gg.toast
				 gg.toast=function(a)
				 print('gg.toast("'..a..'")')
				 orig('捕获'..s.s..'次搜索')
				 s.s=s.s+1
				 end
				 end
return a()
end
function XXXXXXX()
io.open(gg.getFile().."a","w"):write(string.dump(load(io.open(gg.prompt({"选择脚本"},{gg.getFile()},{"file"})[1],"r"):read("*a")),true,true))
end
Main()