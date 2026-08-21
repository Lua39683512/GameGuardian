andr=[[GreenTea ScriptInterception Tool
Original author: Enyby
GG; Android; (su)]]
gg.alert(andr,"OK")
local sourceFile = gg.getFile()
local LC = {sourceFile}
sourceFile = gg.getFile()
flag = true
lcy=sourceFile:match("^(.*/)([^/]*)$")
print("绿茶拦截器v1.2.1".."\n初次测试")
	aa=math.random(100,1343454346)
while true do
	LC = gg.prompt({
     '选择运行脚本(Please choose to run the script)','选择输出路径(Please select the output path)','load大小',"跳过os.exit() [skip os.exit()]","检测弹窗 [Detection of pop-up windows]","检测io.open [detection io.open]","阻止assert检测 [prevent,assert detection]","防止删除文件 [Prevent deletion of files]","无视反拦截"
   }, {
   [1]=sourceFile,
   [2]=lcy,
   [3]=400
       }, {"file","path","text","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
   
	if LC == nil then
	print("-------------gg函数------------------")
	print(gg)
	print("--------------------------------------")
	print("-------------debug函数------------------")
print(debug)
print("--------------------------------------")
print("-------------string函数------------------")
print(string)
print("--------------------------------------")
print("-------------table函数------------------")
print(table)
print("--------------------------------------")
print("-------------os函数------------------")
print(os)
print("--------------------------------------")
print("-------------math函数------------------")
print(math)
print("--------------------------------------")
	 break end
	local Doload = loadfile(LC[1])
	if Doload == nil then
		gg.alert('脚本加载错误: '..LC[1])
		flag = false
		break
	end
			    
	if(flag) then
	local sel = select
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}
					local slen = string.len
					
					local msg = ''
					local rnd = sourceFile..'_'..os.time()..'_'..math.random()

					local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
					
					local sel = select
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}
					local slen = string.len
					
					local msg = ''
					local rnd = rnd
					
		
						local load_cnt = 0
						local fname = lcy..aa..'.load.lua'
						
						local min_size = tonumber(LC[3])
						
						local sfmt = string.format
						local sbyte = string.byte
						local ssub = string.sub
						
						local tar_end = "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x004\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"
											
						local f = nil
						local tar_put = function (content)
							if f == nil then
								f = io_open(fname, 'wb')
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

							f:write("load_")
								:write(ch(sfmt('%07d', load_cnt)))
								:write(".lua\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x000000666\x000000000\x000002004\x00")
								:write(ch(sfmt('%011o', size)))
								:write("\x0000000000000\x00")
								:write(sfmt('%06o', checksum))
								:write("\x00 0\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00ustar00\x00root\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00sdcard_r\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00")
								:write(content)
							
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
						
						
					
					
	
						local file = rnd..'.log'
						local f = io_open(file, 'wb')
						f:write("")
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
							saveList = {nil, '^SAVE_'},
						}
						names.refineAddress = names.searchAddress
						names.refineNumber = names.searchNumber
						local rets = {
							alert = 1,
							prompt = 1,
							choice = 1,
							multiChoice = 1,
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
							if typ(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then
								local orig = v
								local name = i
								local hook = 1
								hook = function (...)
									local arg = {...}
									local f = io_open(file, 'ab')
									f:write('gg.'..name..'(')
									for j, a in ipairs(arg) do
										if j ~= 1 then f:write(', ') end
										if typ(a) == 'string' then f:write('"') end
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
										if typ(a) == 'string' then f:write('"') end
									end
									f:write(")")
									if rets[name] ~= nil then
										local ret = orig(...)
										f:write(" --[[ ")
										f:write(str(ret))
										f:write(" ]]\n")
										f:close()
										return ret
									end
									f:write("\n")
									f:close()
									return orig(...)
								end
								tr[hook] = orig
								gg[i] = hook
							end
						end
						
	

					be=ggg.prompt({'过滤检测:'}, {LC[1]}, {'file'})
					if be==nil then
					gg.alert("过滤失败")
					end
	local ggg = {}
					for k, v in pairs(gg) do
						ggg[k] = v
					end
					lcx=LC[1]:match("[^/]*$")
					aa=math.random(100,1343454346)
					local typ = type
					local str = tostring
					local echo = print
					local io_open = io.open
					local tr = {}					
					local file = LC[2]..'/'..lcx..'.log'..aa..'.lua'
					local f = io_open(file, 'w')
					print(f)
			f:write("--绿茶拦截器1.2.1\n--qq2194629181\n--qq群:973995826\n--由绿茶提供技术支持\n")
					f:close()
					local names = {
						setRanges = {'^REGION_'},
						startFuzzy = {'^TYPE_', '0x%X', '0x%X'},
						searchAddress = {nil, '0x%X', '^TYPE_', '^SIGN_[^F]', '0x%X', '0x%X'},
						searchFuzzy = {nil, '^SIGN_FUZZY_', '^TYPE_', '0x%X', '0x%X'},
						searchNumber = {nil, '^TYPE_', nil, '^SIGN_[^F]', '0x%X', '0x%X'},
						loadList = {nil, '^LOAD_'},
						saveList = {nil, '^SAVE_'},
						editAll = {nil, '^TYPE_'},
						copyMemory = {'0x%X', '0x%X'},
						dumpMemory = {'0x%X', '0x%X'},
					}
					local rets = {
						alert = 1,
						prompt = 1,
						choice = 1,
						multiChoice = 1,
					}
					local toFlags = function (check, value) 
						local ret = ''
						for k, v in pairs(ggg) do
							if k:match(check) ~= nil and (value & v) == v then 
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
						if typ(v) == 'function' and i ~= 'getFile' and i ~= 'getLine' and i ~= 'isVisible' then												

							local orig = v
							local name = i
							local hook = 1
							hook = function (...)
								local arg = {...}
								local f = io_open(file, 'a')
								f:write('gg.'..name..'(')
								for j, a in ipairs(arg) do
									if j ~= 1 then f:write(', ') end
									if typ(a) == 'string' then f:write('"') end
									local b = a
									if typ(a) == 'number' and names[name] ~= nil and names[name][j] ~= nil then
										local check = names[name][j]
										if check:sub(1, 1) ~= '^' then
											if a == 0 or a == -1 then
												b = a
											else
												b = check:format(a)
											end
										else
											b = toFlags(check, a)
										end
									end
									b = str(b)
									if typ(a) == 'table' then
										b = b
											:gsub('table%([0-9a-f]+%): ', '')
											:gsub('(%[address%] = )(%d+)', function (b, c) 
												return ('%s0x%X'):format(b, c)
											end)
											:gsub('(%[flags%] = )(%d+)', function (b, c)
												return b..toFlags('^TYPE_', c)
											end)
											:gsub('(%[freezeType%] = )(%d+)', function (b, c)
												for k, v in pairs(gg) do
													if k:match('^FREEZE_') ~= nil and c == v then
														return b..'gg.'..k														
													end
												end
												return b..c
											end)
											:gsub('(\t%[)([^%]]+)(%] = [^\n{]+)\n', "%1'%2'%3,\n")
											:gsub('\n}\n', '\n},\n')
									end
									f:write(b)
									if typ(a) == 'string' then f:write('"') end
								end
								f:write(")")
								if rets[name] ~= nil then
									local ret = orig(...)
									f:write(" --[[ ")
									f:write(str(ret))
									f:write(" ]]\n")
									f:close()
									return ret
								end
     		local orig = v
							local name = i
							local hook = 1
					if names=='alert' or names=='getResults' or names=='setRanges' or names=='editAll' then
	  				 return nil
					  elseif name=='searchNumber' then 
	  				  f:write("\n")
          f:close()		
					  return true 
					  end
     tr[hook] = orig
     os.exit = hook
								f:write("\n")
								f:close()
								return orig(...)
							end
							tr[hook] = orig
							gg[i] = hook
						end
					end		
					
					local orig = string.dump
					local hook = 1
					hook = function (...)
						local arg = {...}
						if tr[arg[1]] ~= nil then
							arg[1] = tr[arg[1]]
						end
						return orig(arg[1])
					end
					tr[hook] = orig
					string.dump = hook
					
					local orig = v
							local name = i
							local hook = 1
					if names=='alert' or name=='getResults' or name=='setRanges' or name=='editAll' then
					 return nil
					  elseif names=='searchNumber' then 
					  gg.toast('已自动跳过搜索过程') 
					  return true 
					  end
  tr[hook] = orig
  os.exit = hook
					  
				
					
					if LC[4] ==true then
				local orig = os.exit
  local hook = 1
  hook = function (...)
    local arg = {...}
    gg.toast("已跳过os.exit")
    return true
  end
  tr[hook] = orig
  os.exit = hook
  end


					if LC[5] ==true then
local orig = gg.alert
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('gg.alert:', arg)
							return orig(...)
						end
						tr[hook] = orig
						gg.alert = hook
						end

			
if LC[6] ==true then
				local orig = io.open
						local hook = 1
						hook = function (...)
							local arg = {...}
							echo('io.open:', arg)
								LCB=gg.alert("脚本正在检测文件","退出脚本","忽略")
								if LCB==1 then
								os.exit()
								end
									if LCB==2 then
								end
							return orig(...)
						end
						tr[hook] = orig
						io.open = hook
					end

					


if LC[8] ==true then
				local orig = os.remove
				local hook = 1 
				hook = function (...) 
					local arg = {...}
					gg.alert("已阻止文件:"..arg[1].."的删除")
					return true
				end 
				tr[hook] = orig 
				os.remove = hook
				end
			



					if LC[7] ==true then
				local orig = assert
				local hook = 1 
				hook = function (...) 
					local arg = {...}
					gg.alert("已阻止一个文件的存在检测")
					return true
				end 
				tr[hook] = orig 
				os.remove = hook
			
end
					
						

				local orig = string.dump 
				local hook = 1 
				hook = function (...) local arg = {...}
					if tr[arg[1]] ~= nil then
						arg[1] = tr[arg[1]]
					end 
					return orig(arg[1], select(2, ...))
				end  
				tr[hook] = orig 
				string.dump = hook
		
			
				local orig = tostring 
				local hook = 1 
				hook = function (...) 
					local old = tostring 
					local arg = {...}
					if tr[arg[1]] ~= nil then
						arg[1] = tr[arg[1]]
					end 
					local ret = orig(arg[1], select(2, ...)) 
					tostring = old 
					return ret
				end 
				tr[hook] = orig 
				tostring = hook
		
			
				local orig = debug.getupvalue 
				local hook = 1 
				hook = function (...) 
					local arg = {...}
					if tr[arg[1]] ~= nil then
						arg[1] = tostring[arg[1]]
					end 
					return orig(arg[1], select(2, ...))
				end 
				tr[hook] = orig 
				debug.getupvalue = hook
			
			
				local orig = debug.getinfo 
				local hook = 1 
				hook = function (...) 
					local arg = {...}
			
				local sum=1
				local a=orig(sum)
					while a do
					sum=sum+1
					a=orig(sum)
					
					
					if arg[1] ~= nil and arg[1] > 0  then
						arg[1] = arg[1] + 1
					end 
					
						local ret=1
					if arg[1]<=sum-4 then
					ret=orig(arg[1], select(2, ...))
					else
			  ret=nil
			  end
			  
					return ret
				end 
				tr[hook] = orig 
				debug.getinfo = hook
			end					
					
    if LC[9] ==true then
    
					end
				if LC[9] ==true then
						local orig = gg.bytes
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return nil
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.bytes = hook
					end
			if LC[9] ==true then
						local orig = gg.searchNumber
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return true
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.searchNumber = hook
					end
			if LC[9] ==true then
						local orig = gg.searchAddress
						local hook = 1
						hook = function (...)
							local arg = {...}
							if #str(arg[1])>1000 then
							return true
							end
						return orig(...)
						end
						tr[hook] = orig
						gg.searchAddress = hook
					end

				if LC[9] ==true then
 						local orig = gg.addListItems
						local hook = 1
						hook = function (...)
							local arg = {...}
							return true
--						return orig(...)
						end
						tr[hook] = orig
						gg.addListItems = hook
					end
			
			
				

		gg.alert('绿茶提示:拦截已开始','朕知道了')
		flag = false
		Doload()
			
		break
	end
end
