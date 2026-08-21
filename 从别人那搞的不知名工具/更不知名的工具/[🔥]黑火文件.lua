gg.alert("🔥三把🔥阎王🔥","🔥入")
environment=nil
local path="/data/user/0/"..gg.EXT_FILES_DIR:match("data/(.-)/").."/shared_prefs/"..gg.EXT_FILES_DIR:match("data/(.-)/").."_preferences.xml"
local ppath=gg.FILES_DIR:gsub("files","shared_prefs/"..gg.PACKAGE.."_preferences.xml")
local wz=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name="history-2">log地址   </string>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="862" />
    <string name="history-1">log地址</string>
    <string name="com.ludashi.superboost-script">运行文件</string>
    <string name="hidden-dir">zIcC</string>
    <string name="script-debug">log地址</string>
    <int name="h-0" value="4" />
    <int name="h-2" value="4" />
    <int name="h-1" value="4" />
    <string name="history-0">运行文件</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="3" />
    <string name="script-path">文件夹</string>
    <int name="pos-y" value="1024" />
</map>]]
local wzw=[[<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <boolean name="installed" value="true" />
    <int name="pos-x" value="727" />
    <string name="history-1">运行文件</string>
    <string name="hidden-dir">Diz9</string>
    <string name="script-debug">log地址</string>
    <int name="root-ok" value="13913" />
    <int name="h-0" value="4" />
    <int name="h-1" value="4" />
    <string name="com.xiaomi.smarthome-script">运行文件</string>
    <string name="history-0">123</string>
    <long name="m-0" value="1" />
    <int name="history-size" value="2" />
    <string name="script-path">log地址</string>
    <int name="pos-y" value="380" />
</map>]]
--print((tostring(_ENV)))

local wzdata="/storage/emulated/0/tencent/MobileQQ/diskcache/Cache_-53a566bd5f9fpb999_hd"



local g = {}
g.last = gg.getFile()
local wdata=gg.getFile()
g.info = nil
g.config = gg.getFile():gsub('%lua$', '')..'🔥'
g.data = loadfile(g.config)
if g.data ~= nil then
	g.info = g.data()
	g.data = nil
end

local		config = {} 
	
if g.info == nil then
	g.info = {g.last, 
	g.last:gsub('/[^/]+$', ''),
	gg.VERSION,
	gg.BUILD,
	"/storage/emulated/0/tencent/QQfile_recv",
	
	true,false,
	"123456",
	"415249342",
	"无","sstool.only.com.sstool;",
	
	"400",true,true,true,true,true,true,false}
end

while true do
	g.info = gg.prompt({
	'🔥选择文件:', 
	'🔥输出的文件夹:',
		'使用VERSION版本:'..gg.VERSION, 
		'使用BUILD版本:'..gg.BUILD,
		'伪装GGlog储存路径',
		
		'使用默认GGlog储存路径:\n/storage/emulated/0/Notes',
		'伪装GG存储所有代码加载',
		'伪装QQ存在可添加多个[;] 分隔 以下都可',
		'移除QQ存在',
		'伪装App包名存在',
		'移除App包名存在',
		
		'📋最小的输出环境 "load"',
		'Load(自带loadfile)',
		'Log(自带生成模式)',
		'黑火函数拦截',
		'[Log]多选匹配',
		'(调用)bug.sethook',
		'{优化}切换核心',
		'prompt优化',
		'{Bug}调试模式',
		'(调用)黑🔥核心'}, g.info, {
		'file', 'path', 'text','text','path',
		'checkbox','checkbox','text','text','text','text',
		'number','checkbox','checkbox','checkbox','checkbox',
		'checkbox','checkbox','checkbox','checkbox','checkbox','checkbox','checkbox'})
	if g.info == nil then break end
	gg.saveVariable(g.info, g.config)
local	Name={
"fullName",
"Outputpath",
"VERSION",
"BUILD",
"Gglogstoragepath",

"GglogSwitch",
"StoragecodeLoad",
"Camouflageqqexist",
"CamouflageqqNonexistence",
"Camouflageappexist",
"CamouflageappNonexistence",

"Minimumoutput",
"load",
"LogHook",
"Hookchar",
"Multiselectionoptimization",
"Bugsethook",
"core",
"Prompt",
"BugDebugging",
"HX",
"Debug"
}

local CXGG={}
for i, v in ipairs(g.info) do
CXGG[Name[i]]=v
end
if CXGG.QXLD then
local g={}
g.ssj=gg.prompt({"请输入最小Load输出环境，可过滤部分刷文件和垃圾内容"},{"1000"},{"number"})
if g.ssj==nil then g.ssj[1]=1000 end
fw=tonumber(g.ssj[1])
end
	gg.VERSION = CXGG.VERSION
	gg.BUILD=CXGG.BUILD

if  	CXGG.GglogSwitch then
 CXGG.Gglogstoragepath="/storage/emulated/0/Notes"
end
if  	CXGG.StoragecodeLoad then
local  p=gg.alert("黑火🔥\n  您开启了[伪装GG存储所有代码加载]\n 确认一下您是否误开启\n 应对一些某些验证\n 误开启 将会生成过多文件 导致崩溃和卡顿\n 正常情况下不建议开启","继续开启功能","","关闭功能并继续")
 if p==3 then
 CXGG.StoragecodeLoad=false
 g.info[7]=false
	gg.saveVariable(g.info, g.config)
 end
end
if  	CXGG.core then
 wz=wzw
end
	gg.VERSION_INT = tonumber((gg.VERSION:gsub('%.[0-9]+', function (m)
	
	-----
		m = m:sub(2)
		if #m == 1 then m = '0'..m end
		return m
	end)))

	g.test = loadfile(CXGG.fullName)

	g.loaded = CXGG.fullName
	if g.test == nil then
		gg.alert('Failed load script: '..CXGG.fullName)
	else
g.name = CXGG.fullName:match('[^/]+$')
local data=wz:gsub("运行文件",CXGG.fullName)
local wc=CXGG.fullName:gsub("/"..g.name," ")
local data=data:gsub("文件夹",wc)
local data=data:gsub("log地址",CXGG.Gglogstoragepath)
local	file = io.open(wzdata, "w")
file:write(data)
file:close()
		g.pathes = {CXGG.Outputpath:gsub('/?$', '')..'/'..g.name, CXGG.fullName, '/sdcard/'..g.name, gg.getFile():gsub('[^/]+$', '')..g.name, gg.EXT_FILES_DIR..'/'..g.name}
		g.file = nil
		g.out = ''
		local io_open = io.open		
				if true then
					local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
local CXio = {}
local CXstring = {}
local CXgg = {}
for i, v in pairs(io) do CXio[i] = v end
for i, v in pairs(string) do CXstring[i] = v end
for i, v in pairs(gg) do CXgg[i] = v end

local get_file=gg.getFile()
local  save_filename = get_file..'.cfg'
	local chunk = loadfile(save_filename)
	if chunk == nil then 
local		config = {} 
	else
local		config = chunk()
	end


					local sel = select
					local Runningfunction=""
					local FunctionnameWarehouse={}
					local debugsethook=debug.sethook

					local	remove={{nil,nil}}
					local Functionnumber={{nil,nil}}
					local Erasable={}
					local ioopen={}
					local ioopen1={}
					local ioinput1={}
					local ioinput={}
					local	Funccount=0
					local Functionlibrary={}
			 local b64chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
    local temp={}
    local Namerepetition=0
					local os_exit=os.exit
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}
					local slen = string.len
					local msg = ''
					local rnd = CXGG.fullName..'_'..os.time()..'_'..math.random()
					local load_cnt = 0
       local Removalofpolypus=g.name:gsub('.[^.]+$', '')..".lua"
       local Ggname=g.name
						local fname = CXGG.Outputpath..'/'..'Heyuan.'..Removalofpolypus
						local fnamee = CXGG.Outputpath..'/'..'[虚假] .'..Removalofpolypus
						local fnameeee = CXGG.Outputpath..'/'..'[Lua] 黑火.'..Removalofpolypus						
						local fnchar = CXGG.Outputpath..'/'..'[黑火🔥] 函数.'..Removalofpolypus
						local wFilename=Removalofpolypus
						local fnameee = CXGG.Outputpath..'/'..'[Load] 黑火.'
						local min_size = tonumber(CXGG.Minimumoutput)
						local sfmt = string.format
						local sbyte = string.byte
						local ssub = string.sub
						local os_remove = os.remove						
						local Camouflagelog=CXGG.Gglogstoragepath.."/"..CXGG.fullName:match('[^/]+$')..".log.txt"
						local Camouflageload=CXGG.Gglogstoragepath.."/"..CXGG.fullName:match('[^/]+$')..".load_"							
				local							filpe = io.open(Camouflagelog, "w+")			
				
						ggg.setVisible(false)
						
						
					
					if CXGG.load then
					local cs1=0
					local load_cnt1=0
					local tx=true
					local contentcs=0
						local tar_end = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"											
						local f = nil
						local tar_put = function (content)						
							if f == nil then
								f = io_open(fnamee, 'w')
								f:setvbuf('full', 8192)
							end
							if load_cnt ~= 0 then
								f:seek('end', -1024)
							end
							local size = slen(content)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end
													
						if content~=contentt then
						if content:match("#%d%d%d") or content:find("qword, q")~=nil  then											
						local							contentcs=contentcs+1
						else
							cs1=cs1+1					
							if tx then
local				ggaiert=	ggg.alert("成功获取"..cs1.."次函数文件.\n过滤"..contentcs.."次loadfile\n将保存为 :\n[黑火] 🔥源文件.("..cs1..")."..wFilename.."\n\n〖"..content:sub(1,10000).."\n〗","确定","","不再提示")				
				if ggaiert==3 then tx=false end
				else
				ggg.toast("成功获取"..cs1.."次函数文件.\n将保存为[函数源文件] .("..cs1..")]"..wFilename.."")
				end
					contentt=content					
					f = io_open(fnameee.."("..cs1.."):"..wFilename, 'w')					
					
					end
								f:write(content)								
							end
							
										local pad = size % 512
							if pad > 0 then
								f:write(ssub(tar_end, 1, 512 - pad))
							end

							f:write(tar_end)
							f:flush()
							
							--echo('Hooked load '..load_cnt..' with size of '..size..' bytes')
							load_cnt = load_cnt + 1
						end
							
						for i, v in pairs({load=1, loadfile=0, dofile=0}) do
							local orig = _G[i]
							local hook = 1
							local type = v
							hook = function (...)							
								local arg = {...}
								if CXGG.StoragecodeLoad then
				--[[				local size = slen(...)
							local checksum = 4684
							local ch = function (str)
								for i = 1, slen(str) do
									checksum = checksum + sbyte(str, i)
								end
								return str
							end							]]
							if load_cnt1>500  then
							ggg.alert(" 黑火.恶魔\n目标刷取"..load_cnt1.."次Load\n 为恶意刷取\n非正常脚本\n正在关闭")
								os_exit()
								end
local							f = io_open(Camouflageload..load_cnt1..".lua", 'w')							
load_cnt1 = load_cnt1 + 1
--[[															f:write("load_")
								:write(ch(sfmt('%07d', load_cnt1)))								
								:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
								:write(ch(sfmt('%011o', size)))
								:write("\x0000000000000\x00")
								:write(sfmt('%06o', checksum))
								:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")]]
								f:write(str(...))
end
								local content = arg[1]
								if content ~= nil and type == 0 then
									content = nil
									local f = io_open(arg[1], "rb")
									if f ~= nil then
										content = f:read("*a")
										f:close()
									end
								end
								if content ~= nil then
									local ret = nil
									local total = 0
									local file = fname..load_cnt..'.lua'
									if type == 1 and typ(content) == 'function' then
										local cache = ''
										local func = function (...)
											local ret = content(...)
											if ret ~= nil then
												if ret ~= '' then
													cache = cache + ret
													total = total + slen(ret)
												end
											else
												if total ~= 0 and slen(content) >= min_size then
													tar_put(cache)
												end
											end
											return ret
										end
										ret = orig(func, sel(2, ...))
									else
										if content ~= '' and slen(content) >= min_size then
											tar_put(content)
										end
										ret = orig(...)
									end
									return ret
								end
								return orig(...)
							end
							tr[hook] = orig
							_G[i] = hook
						end
						
						msg = msg..'\n\nAll data from calls "load" will be dumped into tar archive: \n'..fnamee
						end
					if CXGG.LogHook then		
					local scripts = {}
					local options = {}
					local config = {}
					local multiChoicecx=1
      local stackcs=0
					local toastt=false					
					local cs4=1
					local menui=1
					local searchNumber=""
						local file = CXGG.Outputpath..'/'..'[🔥截] 黑火🔥..'..Removalofpolypus
						local f = io_open(file, 'wb')
						f:write("-- Hook 黑火🔥拦截\n")
						f:close()
						gg.prompt({'黑火🔥:Just press ok:'}, {g.info[1]}, {'file'})
						gg.prompt({'黑火🔥:Just press ok:'}, {g.info[5]}, {'file'})
						

						
						
						
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
							saveList = {nil, '^SAVE_'},
						}
						names.refineAddress = names.searchAddress
						names.refineNumber = names.searchNumber
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
							print = 1,
						}
						local smatch = string.match
						local ssub = string.sub
						local sformat = string.format
						local toFlags = function (check, value)
							local ret = ''
							for k, v in pairs(ggg) do
								if smatch(k, check) ~= nil and (value & v) == v then
									if ret ~= '' then ret = ret..' | ' end
									ret = ret..'gg.'..k
									value = value & ~v
								end
							end
							if ret == '' or value ~= 0 then
								if ret ~= '' then ret = ret..' | ' end
								ret = ret..value
							end
							return ret
						end
												for i, v in pairs(ggg) do
							if typ(v) == 'function'  and i ~= 'getLine' and i ~= 'isVisible' and i ~= 'clearResults' and i ~= 'addListItems' and i ~= 'getResultsCount' and i ~= "removeListItems" --and i ~= 'getFile' 
							then
								local orig = v
								local name = i
								local hook = 1
								hook = function (...)
									local arg = {...}
									local f = io_open(file, 'a')									
									-----
									if	 i == 'getFile' then
									local ret=orig(...)
								if filpe~=nil then				filpe:write('gg.getFile()\n')				
			--						filpe:write('getFile()\n')				
								end
									return CXGG.fullName
									end
		if	 i == 'processKill' then
									return true
									end
												 ------


												if name=='searchNumber' then 
									local arg = {...}
										if arg[1] ~= searchNumber  then
					searchNumber=arg[1] 					
					else
							return true
						end
						end
						
						if name=="getResultCount" then
						return 2
									end
--[[						  if				i == 'getFile'  then
						  if filpe~=nil then
				filpe:write('gg.getFile()\n')
				end
				return CXGG.fullName
				end]]
					  		
									  if name=='isPackageInstalled' then 									
									  local arg = {...}
							echo('包名:', arg[1])
							local leve=orig(...)
							if CXGG.CamouflageappNonexistence:match(arg[1])		then							
							return  false 
							else	if CXGG.Camouflageappexist:match(arg[1])		then							
							return  true
	       end
	       end
							end							
	
	if name=='prompt' and CXGG.Prompt then 	
	local arg = {...}
							if rets[name] ~= nil then
							local f = io_open(file, 'a')
										local ret = orig(...)
										if ret~=nil then
										for i=1,#ret do
		--								gg.alert(i)
									if ret[i] then
									f:write("\n-----------------------------LOG PromptData [",i.."]"..arg[1][i].."-----------------------------\n")
												Functionname=arg[1][i]
										Runningfunction=""
									end
									end
									return ret
									end
										end
										end
			  if name=='prompt' then 	
					local pa = math.random(10, 99)
					local ss = math.random(10,99)
			local	leoe=ggg.alert('破解prompt密码\n 在密码处输入['..pa..ss..']激活密码解析\n 对于嵌入代码解密段则无效\n 点击Yes将会复制:['..pa..ss..']并启动密码拦截\n粘贴即可',"Yes","","No")
			
			if leoe==1 then
			ggg.copyText(pa..ss)
					local cache = {}
					cache[pa..ss] = 1
					cache["text"]=1
					cache["table"]=1
					local debug_getlocal = debug.getlocal
					local type_ = type
					local print_ = print
					local pairs_ = pairs
					local hook = function (...)											
						local stack = {}
						for j = 1, 900 do
							local _, val = debug_getlocal(1, j)
							if val ~= nil then
								local t = type_(val)
								if t == 'string' then
									stack[val] = 1
								else
									if t == 'table' then	
										for i, v in pairs_(val) do
									stack[v] = 1			
										end
									end
								end
							end
						end				
						
						if stack[pa..ss] ~= nil then	
							for v, _ in pairs_(stack) do							
								if cache[v] == nil then	
								local v=tostring(v)
								if not (v:match("{") or v:match("function")   or v:match("]") or v:match("-") or v==")"
								or v=="")
								then
								 stackcsno=true
								 scripts[#scripts + 1]=v
ggg.toast("CXGG:\n成功激活密码破解\n解析共:"..#scripts.."条数据")
								print_(v)			
						cache[v] = 1						 
								end
								end
							end
						end
					end						
debugsethook(hook, '', 1)													
				echo("下列为解析的可疑密码\nResolution:\n-----------------------------") 
									  end								  
									  end
			if stackcsno then
			echo("-----------------------------\nResolution[",#scripts,"]")
			while true do
			local options={}
			for i, v in ipairs(scripts) do
		options[i] ="📌".. str(v):sub(1,50)
	end
	
			local cxggos_exit = #options + 1
	options[cxggos_exit] = config['cxgg_os_exit'] == nil and '复制后结束 [继续]' or '复制后继续  [结束]' 
	
	selected = ggg.choice(options, #options, "黑火 拦截密码解析\n 选择复制可疑密码\n Resolution["..#scripts.."]")
	
	if scripts[selected] ~= nil then
	ggg.copyText(scripts[selected])
		echo("复制:",scripts[selected])
		pw=scripts[selected]
		if config['cxgg_os_exit'] then
		os_exit()
		else
		stackcsno=false
		stackcsn=true
		ggg.tmp= {scripts[selected]}
		break
		end
		end
		
		
	if selected == cxggos_exit then
		config['cxgg_os_exit'] = config['cxgg_os_exit'] == nil and 1 or nil
		ggg.saveVariable(config, save_filename)
	end
--
	end
--	return {scripts[selected]}
--	if true then
--							return ggg.prompt(...)
--					end -- true then
--	return 9420
echo("#####")
	end

									  -----------
														    if i == "multiChoice" or i== "choice" then
									local arg = {...}
									local gss = {}						
					if			 menui==1 then
					f:write("-----------------------------LOG GameGuardian LOG-----------------------------\n\n")
								for c=1,#arg[1] do 							
										f:write("-----------------------------LOG Menu[",c.."]"..arg[1][c].."-----------------------------\n")
										end										
										menui=2
										end
end

									if i == 'choice'  then
									if rets[name] ~= nil then
									local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
									if ret ~=nil then
										f:write("\n\n-----------------------------LOG Single [",ret.."]"..arg[1][ret].."-----------------------------\n")								
				--						f:close()
			 Functionname=arg[1][ret]
			 Runningfunction=""
										return ret
									end
									end
									end
						
			if i == 'multiChoice'  then
			if multiChoicecx==1 then 
			ggg.alert("黑火.恶魔\n 由于函数的特性请勿一次性选择多个开启\n 选择过多将会压缩在一起\n if如果你并不想用Log脚本则无视")
			multiChoicecx=2
			end
									if rets[name] ~= nil then
									local f = io_open(file, 'a')
										local ret = orig(...)
									local arg = {...}
									local gs = {}								
									for w in string.gmatch(str(ret), "%[") do
									gs[#gs + 1] = w
									end
--									echo("一共选中" .. #gs .. "个选项") 
									local date = str(ret)
									local sz = {}
									for i=1 ,#gs do
									--查询字符位置
									kaishi = string.find(date, "%[")+1
									jiewei = string.find(date, "%]")-1
									--字节截取
									nameshu=string.sub(date , kaishi , jiewei)
									--	echo(str(arg[1][tonumber(nameshu)]))
									--替换一次字符串
									 date= string.gsub(date, "%[+", "", 1)
									 date= string.gsub(date, "%]+", "", 1)
									sz[i]=tonumber(nameshu)
									end
									table.sort(sz)           --默认从小到大排序
									opo=sz
									pop=arg[1]
									csp=#gs									
										f:write("\n\n-----------------------------LOG Multiple menu LOG-----------------------------\n")
										Functionname=""
									for j, a in ipairs(sz) do				
										f:write("\n-----------------------------LOG A lot of [",a.."]"..arg[1][a].."-----------------------------\n")
										Functionname=arg[1][a]										
										Runningfunction=""
												fe=true
					--					f:close()
									end
										return ret
									end
									end									
									f:write('gg.'..name..'(')
									Runningfunction=Runningfunction..'\ngg.'..name..'('
									if filpe~=nil then
					--				filpe:write(name..'(')								
									filpe:write('gg.'..name..'(')								
									end
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ')
										Runningfunction=Runningfunction..', '
										 if filpe~=nil then		filpe:write(', ')		end		end
										if typ(a) == 'string' then f:write('"')
										Runningfunction=Runningfunction..'"'
										if filpe~=nil then		filpe:write('"')		end end
										local b = a
										if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
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
										f:write(b)										
										Runningfunction=Runningfunction..b:gsub("\n",[[\n]])
										if filpe~=nil then		filpe:write(b)		end
										if typ(a) == 'string' then f:write('"')
										Runningfunction=Runningfunction..'"'
										if filpe~=nil then		filpe:write('"')		end end
									end
									f:write(")")
									Runningfunction=Runningfunction..")"
									if filpe~=nil then		filpe:write(")")		end
									if fe then
									if CXGG.Multiselectionoptimization then
										if name=="toast"  then	
										if cs4+1 > csp then cs4=csp end
										local ret = orig(...)
									local arg = {...}        --默认从小到大排序																															
												a=opo[cs4]
												cs4=cs4+1
												if a ~= nil then
										f:write("\n-----------------------------LOG Transport :[",a.."]"..pop[a].." Error in forced matching-----------------------------\n\n")					
										end
									end
									end
									end
									if rets[name] ~= nil then
										local ret = orig(...)
										f:write(" --[[ ")
										f:write(str(ret))
										f:write(" ]]\n")
										f:close()
										if filpe~=nil then			
										filpe:write("\n--[[ return: "..str(ret).." ]]\n")
					--					filpe:write("\n-- return:"..str(ret).."\n")	
						end
										return ret										
									end
									
									------------------------------------------------------------								
									
							
if Functionname~=nil and Runningfunction:match("searchNumber") then
--f Functionlibrary["Black"..Functionname]~= nil then
Functionlibrary["Hook"..Functionname]=Runningfunction

--else
--Functionlibrary["Black"..Namerepetition..Functionname]=Runningfunction
--end
end

				local  Menuname=""
   local  Hookitem=""
   local HookSelectandkeep=""
   local  i=0
   for i=1,52 do
        temp[i] = string.sub(b64chars,i,i)
    end
    p=1
    for k,v in pairs(Functionlibrary) do
    i=i+1
    p=i+1    
Menuname=Menuname..'\n"'..str(k)..'",'

HookSelectandkeep=HookSelectandkeep.."\nif menu=="..i.." then CX"..str(temp[i])..i.."() end"

Hookitem=Hookitem.."\n---[["..k.."]]\nfunction CX"..str(temp[i])..i.."()"..str(v).."\nend"
end
Hookscript="gg.alert('黑火: 🔥')\n\nfunction Main()\n"
-----启动脚本
Hookscript=Hookscript..'menu = gg.choice({'..Menuname..'"结束脚本 Exit"},nil,"选择开启功能[黑火🔥生成]")'
-----功能名称
Hookscript=Hookscript..HookSelectandkeep.."\nif menu=="..p.." then Exit() end\nvis=false\nend"
-----调用功能
Hookscript=Hookscript..Hookitem
-----功能实体
Hookscript=Hookscript.."\nfunction Exit()\nprint('🔥gg By EMMM')\nos.exit()\nend\n\nMain() \nwhile(true)do\n if gg.isVisible(true) then\n vis=true \n gg.setVisible(false) \n end \n gg.clearResults()\n if vis then\n Main() \n end \nend"
-----结束项目
if #Hookscript >376 then
local fi = io_open(fnameeee, 'w')					
							fi:write(Hookscript)
							fi:close()
							end
------------------------------------------------------------------------------------
									f:write("\n")
									if filpe~=nil then		filpe:write("\n")		end
									f:close()
					if name=='searchNumber' then 
					function xqmnb(a)
aaaa=aaaa+1
print(aaaa.."！！！"..tostring(a))
print("\n")
print(aaaa.."！！！"..tostring(qmxg))
end
									ggg.toast('已自动跳过搜索过程')
									 return true
									  end
									return orig(...)									
								end
								tr[hook] = orig
								gg[i] = hook
							end
						end			
			msg = msg..'\n\nAll GG calls will be logged into file:\n '..file.."\n\nCreate and generate scripts to the:\n"..fnameeee.."\n\nSkip : clearResults 移除无用Lo \n已开启☑\nSkip : searchNumber 移除搜索过程 \n已开启☑"
					end

					
					
							if true then
						msg=msg.."\nSkip : os.exit 退出弹窗 \n已开启☑"		
						local orig = os.exit
						local hook = 1
						hook = function (...)
		--echogg.alert(Function..Functionname1..Function1..Function2..Function3..Function4..Function5)
		
		if str(Functionlibrary):match("searchNumber") then
local		Menuname=""
local i=0
		for k,v in pairs(Functionlibrary) do
		i=i+1
Menuname=Menuname.."["..str(k).."]\n"
end
							ggfh=ggg.alert('准备结束Hook\n\n拦截并生成项目.'..i..'条Data\n\n'..Menuname..'\n\n保存为.:\n[Lua] 辛心.'..wFilename..'\n\n™项目简短\n'..Hookscript:sub(1,9000)..'',"No.继续拦截","","Yes.确认退出")							
							else
							ggfh=ggg.alert('结束函数拦截',"No.继续拦截","","Yes.确认退出")
							end
							local arg = {...}					
						if ggfh==3 then
						 if CXGG.BugDebugging==false then
							echo('io.open:', ioopen)
							echo('io.input:', ioinput)
							echo('os.remove:', remove)
	
							end
local 							sel= orig(...)
							else
local						sel=true
								end
								return sel
						end
						tr[hook] = orig
					os.exit	 = hook
					end

					
      
     
if true then
local ioopencs=0
						local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}											
												if arg[2]=="w" or arg[2]=="w+" then
												Erasable[#Erasable+1]=arg[1]
							end		
							if ioopencs>15 then
						local ioopenalert=	ggg.alert("短时间写出多个文件\n疑似拦截被检测\n谨慎考虑是否继续？\n截取最近的写出文件:\n"..arg[1],"继续","","结束拦截")
						if ioopenalert==1 then local ioopencs=0 else os_exit() end
						else
							if arg[2]=="w" or arg[2]=="w+" then
							local ioopencs=ioopencs+1
							end
							end
			if filpe~=nil then
			if arg[2] ==nil then
filpe:write('io.open("'..arg[1]..'")\n')
else
filpe:write('io.open("'..arg[1],'", '..'"',arg[2]..'")\n')
end
end
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
							ioopen[#ioopen+1]=str(arg[1]).."\nrun["..str(arg[2]).."]"
							ioopen1[#ioopen1+1]=str(arg[1])
							if CXGG.BugDebugging then
							echo('io.open:', arg)
							end
	--echo('io.open:', ioopen)
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if CXGG.CamouflageqqNonexistence:match(ddd) or arg[1]==wzdata then
							leve=nil
							else		if CXGG.Camouflageqqexist:match(ddd)then
						leve=orig(ggg.getFile():gsub('%lua$', '')..'Skr',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.open = hook
					end
					
					
					if true then
						local orig = io.input
						local ioinputcs=0
						local hook = 1
						hook = function (...)
							local arg = {...}
							if ioinputcs>15 then
						local ioinputalert=	ggg.alert("短时间写出多个文件\n疑似拦截被检测\n谨慎考虑是否继续？\n截取最近的写出文件:\n"..arg[1],"继续","","结束拦截")
						if ioinputalert==1 then local ioinputcs=0 else os_exit() end
						else
							if arg[2]=="w" or arg[2]=="w+" then
							local ioinputcs=ioinputcs+1
							end
							end
local leve=orig(...)
local ddd=arg[1]:match('[^/]+$'):gsub('artfilter.config',"")
if  arg[1]:match("%dartfilter.config") then
echo('检测QQ:[',ddd, ']注意也可能是拉黑')
else
				ioinput[#ioinput+1]=str(arg[1]).."\nrun["..str(arg[2]).."]"
							ioinput1[#ioinput1+1]=str(arg[1])
							if CXGG.BugDebugging then
							echo('io.input:', arg)
							end
end
							if arg[1]==path or arg[1] == ppath
							then							
							leve=orig(wzdata,arg[2])							
							else				if CXGG.CamouflageqqNonexistence:match(ddd)or arg[1]==wzdata then
							leve=nil
							else		if CXGG.Camouflageqqexist:match(ddd)then
						leve=orig(ggg.getFile():gsub('%lua$', '')..'Skr',arg[2])							
							end
							end
							end
							return leve
							end
						tr[hook] = orig
						io.input = hook
					end
									
										---------------------------------------------------------------------------------------------------------------------------------------
														if true then ----------------------删除
												local		removecs=0
							msg=msg.."\nSkip : os.remove 跳过删除文件 \n已开启☑"
						local orig = os.remove
						local hook = 1
						hook = function (...)
							local arg = {...}		
							remove[#remove+1]=arg[1]
			if filpe~=nil then
filpe:write('os.remove("'..arg[1]..'")\n')
end
							local leve=true
							if arg[1]==Camouflagelog or arg[1]:match("log") then
							leve=orig(...)
							end
										for i=1,#ioopen1 do
				if arg[1]==str(ioopen1[i]) or arg[1]:match(Ggname)then			
								remove[#remove]=arg[1].."\n已允许[⭕删除]"
								ioopen[i]=arg[1].."\n已[⭕删除]"
							leve=orig(...)
							else
							remove[#remove]=arg[1].."\n已拒绝[✅删除]"
							end
							end											
							if CXGG.BugDebugging then
							echo('os.remove:', arg)
							end
--							echo('os.remove:', remove)
							return leve
						end
						tr[hook] = orig
						os.remove = hook
					end

							
					
					if CXGG.Bugsethook then ----------------------gg.getFile
	local				roelsethook={}
	local ovei={}
						local orig = debug.sethook
						local hook = 1
						hook = function (...)												
						local arg = {...}	
				local		roel=str(arg[1])
				ovei[1]=roel:gsub("@", "")
				ovei[2]=arg[2]
			--	gg.alert(tostring((...)))
			if CXGG.BugDebugging then
			echo("debug.sethook:",ovei)
			end
							return ovei
						end
						tr[hook] = orig
					debug.sethook  = hook
					end
										
								if true  then						
					local orig = debug.getinfo 
				local hook = 1 
				local ggWarehouse={
'getFile','prompt','choice','toast','alert','getResultsCount','multiChoice','setSpeed','getSpeed','REGION_C_HEAP','clearResults','bytes','SAVE_AS_TEXT','require','removeResults','editAll','setValues','getValues','refineAddress','refineNumber','loadResults','getListItems','getTargetPackage','processKill','startFuzzy','getRanges','setRanges','getLine','unrandomizer','numberFromLocale','PROT_WRITE','skipRestoreState','allocatePage','getValuesRange','isVisible','gotoAddress','getSelectedPackage','saveList','addListItems','removeListItems','getTargetInfo','processResume','setVisible','searchNumber','getLocale','saveVariable','isPackageInstalled','timeJump','processToggle','numberToLocale','clearList','copyMemory','getResultCount','processPause','isProcessPaused','getRangesList','getResults','copyText','sleep','loadList','dumpMemory','searchFuzzy','searchAddress','load','pcall','xpcall'}
				hook = function (...) 
					local arg = {...}
				local 	roel=orig(...)
				local item=(orig(gg.getFile,"S"))
				local ppetinfo={}
			--		print("getinfo:"..OG.tostring(arg))
				--	echo('debug.getinfo:', orig(...))
		if tostring(arg[1]):sub(1,1):match("%d")  then			
		for k,v in pairs(roel) do
		 ppetinfo[k]=str(v):gsub(ggg.getFile(),CXGG.fullName)
		 end
		else		
		for k,v in pairs(ggWarehouse) do		
if tostring(arg[1]):match(str(v)) then
for i,o in pairs(roel) do
if i=="short_src" then
 ppetinfo[i]=v
 else if i=="source" then
 ppetinfo[i]="=[Java]"
 else
 ppetinfo[i]=o
 end
 end 
 	ppetinfo['lastlinedefined'] = item.lastlinedefined
	ppetinfo['linedefined'] = item.linedefined 
		 end		 
break
 end
end
end

--	roel=roel:gsub("['source'] = '","['source'] = '@")
--echo('debug.getinfo :',arg)
if CXGG.BugDebugging then
			echo("debug.getinfo:",ppetinfo)
			end
--			gg.alert(tostring(bugget))

				 return  ppetinfo
				end 
				tr[hook] = orig 
				debug.getinfo = hook
			end

				
				
							if true then---------外国加密
						local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}
local			roel=orig(...)
if filpe~=nil then
filpe:write('debug.traceback\n')
end
			if  roel:match("in function 'load'") then
 roel=roel:gsub(wdata..":(%d-) in function 'load'", "")
end
if roel:match("in function 'open'")then
 roel=roel:gsub(wdata..":(%d-) in function 'open'", "")
end
--echo('debug.traceback:', roel:gsub(":(.-)"..wdata..":(%d-) in function 'traceback'", ":"):gsub("+",""))
if roel:match(":(%d-) in function 'traceback'")then
 roel=roel:gsub(wdata..":(%d-) in function 'traceback'", "")
end
if roel:match(":(%d-) in function '?'")then
 roel=roel:gsub(wdata..":(%d-) in function '?'", "")
end
roel=roel:gsub([[stack traceback:
	]], "stack traceback:")
	roel=roel:gsub([[stack traceback:echo'
	]], "stack traceback:echo'")
	if CXGG.BugDebugging then
echo('traceback:\n', roel)
							end
							return roel
						end
						tr[hook] = orig
						debug.traceback = hook
					end
					
					


					
					if false then
			msg=msg.."\nOptimization : print 打印结束消息优化 \n已开启☑"
			local printt=""
						local orig = print
						local hook = 1
						hook = function (...)
							local arg = {...}							
				if arg[1] == printt or #arg[1]>1000 then						
							return true
							else
							printt=arg[1] 
							return orig(...)
						end
						end
						tr[hook] = orig
					print	 = hook
					end
					
	
					
					if CXGG.Hookchar then ----------------------gg.getFile
							local fof = io_open(fnchar, 'w')									
								fof:write("-- 黑火🔥\n")
						fof:close()
						local orig = string.char
						local hook = 1
						hook = function (...)
							local arg = {...}
							local fof = io_open(fnchar, 'a')														
							if arg[1] ~= nil then
						fof:write((CXstring.char(arg[1])))															
						end
							return orig(...)
						end
						tr[hook] = orig
					string.char  = hook
					end
					
					
					-----------------------------------------------------------------------------------------拦截区---------------------------------------------------------
			
					
			
							if true then
						local orig = string.format
						local hook = 1
						hook = function (...)
							local arg = {...}
		local					leve=orig(...)
--					echo('string.format:', arg)
							if arg[2]==ggg.getFile() then
						leve=orig(arg[1],"prompt",arg[3])
							end
							return leve
						end
						tr[hook] = orig
					string.format	 = hook
					end
					
			
					
			
			



----------------------------------------------------------------------------------------------------------------------------------------------------------
	if true then
						local orig = string.dump
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('string.dump:', tr[arg[1]], arg[1])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						string.dump = hook
					end
					if true then
						local orig = tostring
						
						local rm = table.remove
						local store = {}
						local build_table = 1
						build_table = function (src, dst)
							local cnt = #store
							store[src] = dst
							for k, v in pairs(src) do
								if tr[v] ~= nil then
									dst[k] = tr[v]
								else
									if typ(v) == 'table' then
										if store[v] ~= nil then
											dst[k] = store[v]
										else
											local bt = {}
											store[v] = bt
											dst[k] = bt
											build_table(v, bt)
										end
									else
										dst[k] = v
									end
								end
							end
							if cnt == 0 then
								while #store > 0 do
									rm(store)
								end
							end
							return dst
						end
						
						local hook = 1
						hook = function (...)
							local old = tostring
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
								arg[1] = tr[arg[1]]
							else
								if typ(arg[1]) == 'table' then
									arg[1] = build_table(arg[1], {})
								end
							end
							local ret = orig(arg[1], sel(2, ...))
							--tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
							tostring = old
							return ret
						end
						tr[hook] = orig
						tostring = hook
					end
					if false then
						local orig = debug.getupvalue
						local hook = 1
						hook = function (...)
							local arg = {...}
							if tr[arg[1]] ~= nil then
								--echo('debug.getupvalue:', tr[arg[1]], arg[1], arg[2])
								arg[1] = tr[arg[1]]
							end
							return orig(arg[1], sel(2, ...))
						end
						tr[hook] = orig
						debug.getupvalue = hook
					end

if CXGG.HX then
	local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}										
							return 		p.."[[:"..math.random(20,150).." in main chunk[Java]: in ?]]"..p.."[[:"..math.random(20,150).." in main chunk[Java]: in ?]]"..p.."[[:"..math.random(20,150).." in main chunk[Java]: in ?]]"
						end
							tr[hook] = orig
						debug.traceback = hook
					end
						if CXGG.HX then
						local orig = debug.traceback
						local hook = 1
						hook = function (...)
							local arg = {...}
local			roel=orig(...)
if filpe~=nil then
filpe:write('debug.traceback\n')
end
			if  roel:match("in function 'load'") then
 roel=roel:gsub(wdata..":(%d-) in function 'load'", "")
end
if roel:match("in function 'open'")then
 roel=roel:gsub(wdata..":(%d-) in function 'open'", "")
end
--echo('debug.traceback:', roel:gsub(":(.-)"..wdata..":(%d-) in function 'traceback'", ":"):gsub("+",""))
if roel:match(":(%d-) in function 'traceback'")then
 roel=roel:gsub(wdata..":(%d-) in function 'traceback'", "")
end
if roel:match(":(%d-) in function '?'")then
 roel=roel:gsub(wdata..":(%d-) in function '?'", "")
end
roel=roel:gsub([[stack traceback:
	]], "stack traceback:")
	roel=roel:gsub([[stack traceback:echo'
	]], "stack traceback:echo'")
	if true then
echo('traceback:\n', roel)
							end
							return roel
						end
						tr[hook] = orig
						debug.traceback = hook
					end
----------------------

if CXGG.HX then
  local cg={
    [1]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = CXGG.fullName,
      ['source'] = '@'..CXGG.fullName,
      ['what'] = 'Lua',
    },
    [2]={
      ['currentline'] = 237,
      ['lastlinedefined'] = 242,
      ['linedefined'] = 235,
      ['short_src'] = "wrap",
      ['source'] = '@'..CXGG.fullName,
      ['what'] = 'Lua',
    }
  }
  local orig = debug.getinfo
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    if str(arg[1])=="1"then return cg[1]
     elseif str(arg[1])=="3" then return nil
     elseif str(arg[1]):find("storage") then return cg[2]
     elseif str(arg[1])=="2" then x=ggg.alert("选择","第二次","第一次")
      if x==2 then result=nil end
     else
      return result
    end
  end
  tr[hook] = orig
  debug.getinfo = hook
end
if CXGG.HX then
local orig = debug.getregistry
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return {}
  end
  tr[hook] = orig
  debug.getregistry = hook
end
    ------------------
-------------
if false then
  local orig = os.clock
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
    return "0"
  end
  tr[hook] = orig
  os.clock = hook
end

----------
ttt=0
if false then
  local orig = string.gmatch
  local hook = 1
  hook = function (...)
    local arg = {...}
    local result= orig(...)
c=gg.alert("选择","第一次","第二次")
if c==1 then return orig(string.rep("=",347),"=")
else return orig("==","=") end
--[[
    if ttt==0 then
      ttt=1
      return orig(string.rep("=",347),"=")
     else
      ttt=0
      return orig("==","=")
    end--]]
  end
  tr[hook] = orig
  string.gmatch = hook
end
-------------

if false then
  local orig = gg.setVisible
  local hook = 1
  hook = function (...)
    return gg.isVisible(true)
  end
  tr[hook] = orig
  gg.setVisible = hook
end
-----------

---------------
-------------
if true then
  local orig = tostring
  local rm = table.remove
  local store = {}
  local build_table = 1
  build_table = function (src, dst)
    local cnt = #store
    for k, v in pairs(src) do
      if tr[v] ~= nil then
        dst[k] = tr[v]
       else
        if typ(v) == 'table' then
          if store[v] ~= nil then
            dst[k] = store[v]
           else
            local bt = {}
            store[v] = bt
            dst[k] = bt
            build_table(v, bt)
          end
         else
          dst[k] = v
        end
      end
    end
    if cnt == 0 then
      while #store > 0 do
        rm(store)
      end
    end
    return dst
  end
  local hook = 1
  hook = function (...)
    local old = tostring
    local arg = {...}
    if tr[arg[1]] ~= nil then
      --					tostring = orig; echo('tostring 1:', tr[arg[1]], arg[1]) tostring = old
      arg[1] = tr[arg[1]]
     else
      if typ(arg[1]) == 'table' then
        arg[1] = build_table(arg[1], {})
      end
    end
    local ret = orig(arg[1], sel(2, ...))
    --				tostring = orig; echo('tostring 2:', arg[1], ret) tostring = old
    tostring = old
    return ret
  end
  tr[hook] = orig
  tostring = hook
end
----------------------
echo('Hook GameGuardian 🔥黑火拦截.'..msg..'\n--------------------------------\n')
					msg=nil				
					end
				local test = g.test 				
				g = nil
				aaaa=0
			return test()			
			end
		end
print("黑火🔥截取结束")

		
		


