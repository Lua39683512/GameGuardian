if pluginManager and pluginManager.installingPlugin == true then
    pluginManager.installingPluginName = "String Grabber"
    pluginManager.installingPluginTable = "stringGrab"
else
    stringGrab = {
		arch = gg.getTargetInfo(),
		settings = {utf16 = false, currentRange = 0, headerOffset = 0, lastEmoji = 9720},
		grabbedStrings = {},
		getEmoji = function()
            if stringGrab.settings.lastEmoji == 11000 then
                stringGrab.settings.lastEmoji = 9720
            else 
                stringGrab.settings.lastEmoji = stringGrab.settings.lastEmoji +1
            end
            return utf8.char(stringGrab.settings.lastEmoji)
        end,
		ggHex = function(n)
			if type(n) ~= "table" then
				if stringGrab.arch.x64 then
					if n == 0 or n == nil then
						return nil
					else
						return "0x" .. string.format('%10x', n):sub(-10):gsub(" ", "")
					end
				else
					return "0x" .. string.format('%08x', n):sub(-8)
				end
			else
				return nil
			end
		end,
		ggTableToString = function(ggTable)
			local tempString = ""
			for i, v in pairs(ggTable) do
				local addChar = false
				if stringGrab.settings.dashes == true and (v.value == 45 or v.value == 95) then
					addChar = true
				end
				if stringGrab.settings.symbols == true and v.value >= 33 and v.value <= 96 then
					addChar = true
				end
				if stringGrab.settings.numbers == true and v.value >= 48 and v.value <= 57 then
					addChar = true
				end
				if stringGrab.settings.uppercase == true and v.value >= 65 and v.value <= 90 then
					addChar = true
				end
				if stringGrab.settings.lowercase == true and v.value >= 97 and v.value <= 122 then
					addChar = true
				end
				if addChar == true then
					tempString = tempString .. string.char(v.value)
				else
					return nil
				end
			end
			if #tempString == #ggTable then
				return tempString
			end
		end,
		getStringsBelowCount = function(pauseToCopy, pauseEvery)
			local file = io.open("/sdcard/Download/BCD_" .. gg.getTargetPackage() .. "_stringsCountAbove" .. ".txt", "w+")
			file:write("")
			file:close()
			local file = io.open("/sdcard/Download/BCD_" .. gg.getTargetPackage() .. "_stringsCountAbove" .. ".txt", "a")
			gg.clearResults()
			local searchStart = stringGrab.settings.searchStart
			if stringGrab.settings.startsWithSymbols == true then
				searchStart = 33
			end
			if stringGrab.settings.startsWithNumbers == true then
				searchStart = 48
			end
			if stringGrab.settings.startsWithUppercase == true then
				searchStart = 65
			end
			if stringGrab.settings.startsWithLowercase == true then
				searchStart = 97
			end
			local nextLetter
			local afterCount = ""
			if stringGrab.settings.charOffset == 8 then
			     afterCount = "0D;"
			end
			if stringGrab.settings.utf16 == true then
			    local range = 9
			    if stringGrab.settings.charOffset == 8  then
			         range = 13
			    end
				nextLetter = 2
				gg.searchNumber(stringGrab.settings.minLength .. "D~" .. stringGrab.settings.maxLength .. "D;" .. afterCount ..
									searchStart .. "~" .. stringGrab.settings.searchEnd .. ";0;" .. 
									stringGrab.settings.searchStart .. "~" .. stringGrab.settings.searchEnd .. ";0;" .. 
									stringGrab.settings.searchStart .. "~" .. stringGrab.settings.searchEnd .. "::" .. range, 
									gg.TYPE_BYTE
								)
			else
			    local range = 7
			    if stringGrab.settings.charOffset == 8  then
			         range = 11
			    end
				nextLetter = 1
				gg.searchNumber(stringGrab.settings.minLength .. "D~" .. stringGrab.settings.maxLength .. "D;" .. afterCount ..
									searchStart .. "~" .. stringGrab.settings.searchEnd .. ";" .. 
									stringGrab.settings.searchStart .. "~" .. stringGrab.settings.searchEnd .. ";" .. 
									stringGrab.settings.searchStart .. "~" .. stringGrab.settings.searchEnd .. "::7", 
									gg.TYPE_BYTE
								)
			end
			gg.refineNumber(stringGrab.settings.minLength .. "D~" .. stringGrab.settings.maxLength .. "D", gg.TYPE_DWORD)
			local results = gg.getResults(gg.getResultsCount())
			for i, v in pairs(results) do
			    if pauseToCopy == true and i % pauseEvery == 0 then
			        local pauseMenu = gg.choice ({
                        "⏯️ Copy Values And Continue",
                        "▶️ Stop Pausing And Continue",
                        "⏹️ Stop Processing Strings"},
                        nil,
                        bc.Choice("Pause Menu", "Copy values, stop pausing, or stop getting strings?", "ℹ️")
                    )
			        if pauseMenu ~= nil then
			            if pauseMenu == 1 then
			                stringGrab.copyData()
			            end
			            if pauseMenu == 2 then
			                pauseToCopy = false
			            end
			            if pauseMenu == 3 then
			                return nil
			            end
			        end
			    end
				if v.value <= stringGrab.settings.maxLength then
					local stringTable = {}
					local start_address = v.address + stringGrab.settings.charOffset
					for index = 1, v.value do
						stringTable[index] = {
							address = start_address,
							flags = gg.TYPE_BYTE
						}
						start_address = start_address + nextLetter
					end
					stringTable = gg.getValues(stringTable)
					local tempString = stringGrab.ggTableToString(stringTable)
					if tempString ~= nil then
					    if stringGrab.settings.save == true then
							
								gg.addListItems({{
										address = v.address - stringGrab.settings.headerOffset,
										flags = gg.TYPE_DWORD,
										name = tempString
									}})
							
						end
						bc.Toast("Result "..i .. " of " .. #results .. "\n" .. tempString,"ℹ️") 
						file:write(tempString .. "\n")
					end
				end
			end
			file:close()
			bc.Alert("Finished", "String search is complete, results have been saved to your /sdcard/Downloads folder.", "ℹ️")
		end,
		belowCountMenu = function()
		    if stringGrab.settings.currentRange == 0 then
				stringGrab.selectRange()
			end 
			local hOffset = 8
			if stringGrab.arch.x64 then
			    hOffset = 16
			end
			::cfgmenu::
			local configMenu = gg.prompt({
				bc.Prompt("Configure Search","ℹ️") ..
				"Minimum String Length [1; 30]", 
				"Maximum String Length [2; 300]", 
				"UTF16", 
				"Include Dash And Underscore (-_)",
				"🔣 Include All Symbols", 
				"🔢 Include Numbers", 
				"🔠 Include Uppercase", 
				"🔡 Include Lowercase",
				"🔣 Starts With Symbols (Only Select One)", 
				"🔢 Starts With Numbers (Only Select One)",
				"🔠 Starts With Uppercase (Only Select One)", 
				"🔡 Starts With Lowercase (Only Select One)",
				"Save Pointed To Strings To List", 
				"Offset (FROM pointed to value TO character count) [0; 20]",
				"Offset (FROM character count TO first character) [4; 8]",
				"Pause To Copy",
				"Pause Every (X) Strings [100; 10000]",
			}, {
				3, 
				100, 
				false, 
				false, 
				false, 
				true, 
				true, 
				true, 
				false, 
				false, 
				false, 
				false,
				false,
				hOffset,
				4,
				false,
				1000
			}, {
				"number", 
				"number", 
				"checkbox", 
				"checkbox", 
				"checkbox", 
				"checkbox", 
				"checkbox", 
				"checkbox",
				"checkbox", 
				"checkbox", 
				"checkbox", 
				"checkbox",
				"checkbox",
				"number", 
				"number", 
				"checkbox",
				"number", 
			})
			if configMenu ~= nil then
				stringGrab.settings.minLength = tonumber(configMenu[1])
				stringGrab.settings.maxLength = tonumber(configMenu[2])
				stringGrab.settings.utf16 = configMenu[3]
				stringGrab.settings.dashes = configMenu[4]
				stringGrab.settings.symbols = configMenu[5]
				stringGrab.settings.numbers = configMenu[6]
				stringGrab.settings.uppercase = configMenu[7]
				stringGrab.settings.lowercase = configMenu[8]
				stringGrab.settings.startsWithSymbols = configMenu[9]
				stringGrab.settings.startsWithNumbers = configMenu[10]
				stringGrab.settings.startsWithUppercase = configMenu[11]
				stringGrab.settings.startsWithLowercase = configMenu[12]
				stringGrab.settings.save = configMenu[13]
				stringGrab.settings.headerOffset = tonumber(configMenu[14])
				stringGrab.settings.charOffset = tonumber(configMenu[15])
				local pauseToCopy = configMenu[16]
				local pauseEvery = configMenu[17]
				local trueCount = 0
				if stringGrab.settings.startsWithSymbols == true then
					trueCount = trueCount + 1
				end
				if stringGrab.settings.startsWithNumbers == true then
					trueCount = trueCount + 1
				end
				if stringGrab.settings.startsWithUppercase == true then
					trueCount = trueCount + 1
				end
				if stringGrab.settings.startsWithLowercase == true then
					trueCount = trueCount + 1
				end
				if trueCount > 1 then
				    bc.Alert("Only Select one", "Only select one of the options labeled (Only Select One)", "⚠️")
					goto cfgmenu
				end
				if stringGrab.settings.dashes == true then
					stringGrab.settings.searchStart = 45
					stringGrab.settings.searchEnd = 95
				end
				if stringGrab.settings.symbols == true then
					if (stringGrab.settings.searchStart and stringGrab.settings.searchStart > 48) or not stringGrab.settings.searchStart then
						stringGrab.settings.searchStart = 33
					end
					if (stringGrab.settings.searchEnd and stringGrab.settings.searchEnd < 57) or not stringGrab.settings.searchEnd then
						stringGrab.settings.searchEnd = 96
					end
				end
				if stringGrab.settings.numbers == true then
					if (stringGrab.settings.searchStart and stringGrab.settings.searchStart > 48) or not stringGrab.settings.searchStart then
						stringGrab.settings.searchStart = 48
					end
					if (stringGrab.settings.searchEnd and stringGrab.settings.searchEnd < 57) or not stringGrab.settings.searchEnd then
						stringGrab.settings.searchEnd = 57
					end
				end
				if stringGrab.settings.uppercase == true then
					if (stringGrab.settings.searchStart and stringGrab.settings.searchStart > 65) or not stringGrab.settings.searchStart then
						stringGrab.settings.searchStart = 65
					end
					if (stringGrab.settings.searchEnd and stringGrab.settings.searchEnd < 90) or not stringGrab.settings.searchEnd then
						stringGrab.settings.searchEnd = 90
					end
				end
				if stringGrab.settings.lowercase == true then
					if (stringGrab.settings.searchStart and stringGrab.settings.searchStart > 97) or not stringGrab.settings.searchStart then
						stringGrab.settings.searchStart = 97
					end
					if (stringGrab.settings.searchEnd and stringGrab.settings.searchEnd < 122) or not stringGrab.settings.searchEnd then
						stringGrab.settings.searchEnd = 122
					end
				end
				stringGrab.getStringsBelowCount(pauseToCopy, pauseEvery)
			end
		end,
		selectRange = function()
			local rangeListMenuItems = {
				"Jh: Java heap", 
				"Ch: C++ heap", 
				"Ca: C++ alloc", 
				"Cd: C++ .data", 
				"Cb: C++ .bss",
				"PS: PPSSPP", 
				"A: Anonymous", 
				"J: Java", 
				"S: Stack", 
				"As: Ashmem", 
				"V: Video",
				"O: Other (slow)", 
				"B: Bad (dangerous)", 
				"Xa: Code app (dangerous)",
				"Xs: Code system (dangerous)"
			}
			local rangeList = {
				gg.REGION_JAVA_HEAP, 
				gg.REGION_C_HEAP, 
				gg.REGION_C_ALLOC, 
				gg.REGION_C_DATA, 
				gg.REGION_C_BSS,
				gg.REGION_PPSSPP, 
				gg.REGION_ANONYMOUS, 
				gg.REGION_JAVA, 
				gg.REGION_STACK, 
				gg.REGION_ASHMEM,
				gg.REGION_VIDEO, 
				gg.REGION_OTHER, 
				gg.REGION_BAD, 
				gg.REGION_CODE_APP, 
				gg.REGION_CODE_SYS
			}
			::select_range::
			local menu = gg.choice(rangeListMenuItems, nil, bc.Choice("Select Range To Search", "", "ℹ️"))
			if menu == nil then
				goto select_range
			else
				stringGrab.settings.currentRange = rangeList[menu]
				gg.setRanges(stringGrab.settings.currentRange) 
			end
		end,
		subStringSearch = function()
			if stringGrab.settings.currentRange == 0 then
				stringGrab.selectRange()
			end
			local file = io.open("/sdcard/Download/BCD_" .. gg.getTargetPackage() .. "_subStringSearch" .. ".txt", "w+")
			file:write("")
			file:close()
			local file = io.open("/sdcard/Download/BCD_" .. gg.getTargetPackage() .. "_subStringSearch" .. ".txt", "a")
			gg.clearResults()
			local hOffset = 8
			if stringGrab.arch.x64 then
			    hOffset = 16
			end
			local configMenu = gg.prompt({
				bc.Prompt("Configure Search","ℹ️") ..
				"Search String", 
				"Character Break (Not Required)", 
				"UTF16", 
				"Save Pointed To Strings To List", 
				"Offset (FROM pointed to value TO character count) [0; 20]",
				"Offset (FROM character count TO first character) [4; 8]",
			}, {
				"", 
				"", 
				false, 
				false, 
				hOffset,
				4
			}, {
				"text", 
				"text", 
				"checkbox", 
				"checkbox", 
				"number",
				"number"
			})
			if configMenu ~= nil then
				local charBreak = configMenu[2]
				stringGrab.settings.string = configMenu[1]
				stringGrab.settings.utf16 = configMenu[3]
				stringGrab.settings.save = configMenu[4]
				stringGrab.settings.headerOffset = tonumber(configMenu[5])
				stringGrab.settings.charOffset = tonumber(configMenu[6])
				local search_string = stringGrab.settings.string
				local encType
				local charStep
				
				if stringGrab.settings.utf16 == true then
					encType = ";"
					charStep = 2
				else
					encType = ":"
					charStep = 1
				end
				gg.searchNumber(encType .. search_string)
				local results = gg.getResults(gg.getResultsCount())
				::refine::
				if refining == true then
					gg.refineNumber(encType .. search_string)
					results = gg.getResults(gg.getResultsCount())
				end
				if #search_string > 1 then
					refining = true
					search_string = search_string:sub(1, -2)
					goto refine
				else
					refining = false
				end
				for index, value in pairs(results) do
					local unsorted_above = {}
					local sorted_above = {}
					local startAddress = value.address
					for i = 1, 100 do
						startAddress = startAddress - charStep
						local check_above = {{
								address = startAddress,
								flags = gg.TYPE_BYTE
							}}
						check_above = gg.getValues(check_above)
						local checkValue = check_above[1].value
						if checkValue >= 0 and checkValue <= 255 and charBreak == string.char(checkValue) then
							break
						end
						local addChar = false
						if (checkValue >= 97 and checkValue <= 122)
							or (checkValue >= 48 and checkValue <= 57)
							or (checkValue >= 65 and checkValue <= 90) 
							or checkValue == 46 
							or checkValue == 95 
							or checkValue == 45 then
							addChar = true
						end
						if addChar == true then
							unsorted_above[#unsorted_above + 1] = check_above[1]
						else
							break
						end
					end
					unsorted_above = gg.getValues(unsorted_above)
					local currentIndex = #unsorted_above
					for i, v in pairs(unsorted_above) do
						sorted_above[currentIndex] = v
						currentIndex = currentIndex - 1
					end
					sorted_above = gg.getValues(sorted_above)
					local unsorted_below = {}
					local startAddress = value.address
					for i = 1, 100 do
						startAddress = startAddress + charStep
						table.insert(unsorted_below, {
							address = startAddress,
							flags = gg.TYPE_BYTE
						})
					end
					unsorted_below = gg.getValues(unsorted_below)
					local sorted_below = {}
					for i = 1, 100 do
						local checkValue = unsorted_below[i].value
						if checkValue >= 0 and checkValue <= 255 and charBreak == string.char(checkValue) then
							break
						end
						local addChar = false
						if (checkValue >= 97 and checkValue <= 122)
							or (checkValue >= 48 and checkValue <= 57)
							or (checkValue >= 65 and checkValue <= 90) 
							or checkValue == 46 
							or checkValue == 95 
							or checkValue == 45 then
							addChar = true
						end
						if addChar == true then
							table.insert(sorted_below, unsorted_below[i])
						else
							break
						end
					end
					sorted_below = gg.getValues(sorted_below)
					local all_characters = {}
					for i, v in pairs(sorted_above) do
						all_characters[#all_characters + 1] = v
					end
					all_characters[#all_characters + 1] = value
					for i, v in pairs(sorted_below) do
						all_characters[#all_characters + 1] = v
					end
					all_characters = gg.getValues(all_characters)
					if #all_characters >= 2 then
						local tempString = ""
						for i, v in pairs(all_characters) do
							if v.value >= 1 and v.value <= 255 then
								tempString = tempString .. string.char(v.value)
							else
								break
							end
						end
						if stringGrab.settings.save == true then
							local checkCount = {{
									address = all_characters[1].address - stringGrab.settings.charOffset,
									flags = gg.TYPE_DWORD
								}}
							checkCount = gg.getValues(checkCount)
							checkCount = checkCount[1].value
							if checkCount == #tempString then
								gg.addListItems({{
										address = all_characters[1].address - stringGrab.settings.charOffset - stringGrab.settings.headerOffset,
										flags = gg.TYPE_DWORD,
										name = tempString
									}})
							end
						end
						if tempString ~= nil then
							file:write(tempString .. "\n")
							bc.Toast("Result "..index .. " of " .. #results .. "\n" .. tempString,"ℹ️") 
						end
					end
				end
			end
			if stringGrab.settings.save == true then
				gg.clearResults()
				gg.setRanges(stringGrab.settings.currentRange)
				gg.loadResults(gg.getListItems())
				gg.searchPointer(0)
				local results = gg.getResults(gg.getResultsCount())
				local cleanedResults = {}
				local checked = {}
				for i, v in pairs(results) do
				    if not checked[stringGrab.ggHex(v.value)] then
					for index, value in pairs(gg.getListItems()) do
						if tonumber(stringGrab.ggHex(v.value)) == tonumber(stringGrab.ggHex(value.address)) then
							table.insert(cleanedResults, value)
							checked[stringGrab.ggHex(v.value)] = true
							break
						end
					end
					end
				end
				gg.clearList()
				gg.addListItems(cleanedResults)
			end
			file:close()
			if configMenu ~= nil then
			    bc.Alert("Finished", "String search is complete, results have been saved to your /sdcard/Downloads folder.", "ℹ️")
			end
		end,
		findNearby = function()
		    if #gg.getSelectedListItems() == 0 then
		        bc.Alert("Nothing Selected","No strings are selected in save list.", "⚠️")
		        return nil
		    end
			if stringGrab.settings.currentRange == 0 then
				stringGrab.selectRange()
			end
			local pointerType
			if stringGrab.arch.x64 then
				pointerType = gg.TYPE_QWORD
			else
				pointerType = gg.TYPE_DWORD
			end
			local stringsHeaders = gg.getSelectedListItems()
			local range = 10
			local depth = 0
			local depthOffset = 0
			local pauseToCopy = false
			local pauseEvery = 0
			local rangePrompt = gg.prompt({
				bc.Prompt("Configure Search","ℹ️") ..
				"Range from original text string to search (1= 4 Bytes) [1;100]", 
				"Depth [0;5]",
				"Depth Offset [0;64]",
				"Pause To Copy",
				"Pause Every (X) Pointers [10; 1000]",
			}, {
				10, 
				0, 
				stringGrab.settings.headerOffset,
				false,
				100
			}, {
				"number", 
				"number", 
				"number",
				"checkbox",
				"number",
			})
			if rangePrompt ~= nil then
				range = tonumber(rangePrompt[1])
				depth = tonumber(rangePrompt[2])
				depthOffset = tonumber(rangePrompt[3])
				pauseToCopy = rangePrompt[4]
				pauseEvery = tonumber(rangePrompt[5])
			end
			local preRange = range * 4
			local addedToSave = {}
			gg.clearResults()
			gg.setRanges(stringGrab.settings.currentRange)
			gg.loadResults(stringsHeaders)
			gg.searchPointer(0)
			local results = gg.getResults(gg.getResultsCount())
			for index, value in pairs(results) do
			    if pauseToCopy == true and index % pauseEvery == 0 then
			        local pauseMenu = gg.choice ({
                        "⏯️ Copy Values And Continue",
                        "▶️ Stop Pausing And Continue",
                        "⏹️ Stop Processing Strings"},
                        nil,
                        bc.Choice("Pause Menu", "Copy values, stop pausing, or stop getting strings?", "ℹ️")
                    )
			        if pauseMenu ~= nil then
			            if pauseMenu == 1 then
			                stringGrab.copyData()
			            end
			            if pauseMenu == 2 then
			                pauseToCopy = false
			            end
			            if pauseMenu == 3 then
			                return nil
			            end
			        end
			    end
				local checkTable = {}
				local startAddress = value.address - preRange
				for ind = 1, range do
					checkTable[ind] = {
						address = startAddress,
						flags = pointerType
					}
					startAddress = startAddress + 4
				end
				checkTable[#checkTable + 1] = {
					address = value.address,
					flags = pointerType
				}
				local startAddress = value.address + 4
				for ind = 1, range do
					checkTable[#checkTable + 1] = {
						address = startAddress,
						flags = pointerType
					}
					startAddress = startAddress + 4
				end
				local nearbyString = stringGrab.getPointedToString(value.value, depth, depthOffset)
				local checkForPointers = gg.getValues(checkTable)
				local emoji = stringGrab.getEmoji()
				for ind, val in pairs(checkForPointers) do
					local checkForString = stringGrab.getPointedToString(val.value, depth, depthOffset)
					if not addedToSave[stringGrab.ggHex(val.address)] and checkForString ~= nil and checkForString[1] ~= nil then
						gg.addListItems({{
								address = val.address,
								flags = pointerType,
								name = emoji .. "\nPointing To: " .. checkForString[1] .. "\n" ..
								"At: " .. string.format('0x%08x', val.value):gsub("ffff", "") .. "\n" .. 
								"Depth: " .. checkForString[2] .. "\n" .. 
								"Nearby Pointer To String: " .. nearbyString[1] .. "\n" ..
								"At: " .. string.format('0x%08x', value.address):gsub("ffff", "")
							}})
							addedToSave[stringGrab.ggHex(val.address)] = true
					end
				end
			end
			bc.Alert("Finished", "Done finding nearby pointers to strings, results are in the Save List.", "ℹ️")
		end,
		getPointedToString = function(pointerValue, depth, depthOffset)
			local pointerType
			if stringGrab.arch.x64 then
				pointerType = gg.TYPE_QWORD
			else
				pointerType = gg.TYPE_DWORD
			end
			if stringGrab.settings.utf16 == true then
				charStep = 2
			else
				charStep = 1
			end
			local depthCount = 0
			::next_pointer::
			local checkCount = {{
					address = pointerValue + stringGrab.settings.headerOffset,
					flags = gg.TYPE_DWORD
				}}
			checkCount = gg.getValues(checkCount)
			if checkCount[1].value > 2 and checkCount[1].value < 100 then
			    if stringGrab.grabbedStrings[stringGrab.ggHex(pointerValue)] then
			        stringGrab.grabbedStrings[stringGrab.ggHex(pointerValue)][2] = depthCount
		            return stringGrab.grabbedStrings[stringGrab.ggHex(pointerValue)]
		        end 
				local startAddress = checkCount[1].address + stringGrab.settings.charOffset
				local checkingPointer = {}
				for i = 1, checkCount[1].value do
					checkingPointer[i] = {
						address = startAddress,
						flags = gg.TYPE_BYTE
					}
					startAddress = startAddress + charStep
				end
				checkingPointer = gg.getValues(checkingPointer)
				local tempString = ""
				for i, v in pairs(checkingPointer) do
					if v.value >= 0 and v.value <= 255 then
						tempString = tempString .. string.char(v.value)
					else
						break
					end
				end
				if tempString ~= "" then
				    stringGrab.grabbedStrings[stringGrab.ggHex(pointerValue)] = {tempString, depthCount}
					return {tempString, depthCount}
				end
			elseif depth > 0 and depthCount < depth and checkCount[1].value ~= 0 and checkCount[1].value % 4 == 0 then
				checkCount[1].flags = pointerType
				checkCount = gg.getValues(checkCount)
				pointerValue = checkCount[1].value
				depthCount = depthCount + 1
				goto next_pointer
			end
		end,
		stringSearch = function()
			if stringGrab.settings.currentRange == 0 then
				stringGrab.selectRange()
			end
			local hOffset = 8
			if stringGrab.arch.x64 then
			    hOffset = 16
			end
			local configMenu = gg.prompt({
				bc.Prompt("Configure Search","ℹ️") ..
				"Search String", 
				"UTF16", 
				"Save Pointed To Strings To List", 
				"Offset (FROM pointed to value TO character count) [0; 20]",
				"Offset (FROM character count TO first character) [4; 8]",
			}, {
				"", 
				false, 
				false, 
				hOffset,
				4
			}, {
				"text", 
				"checkbox", 
				"checkbox", 
				"number",
				"number"
			})
			if configMenu ~= nil then
				stringGrab.settings.string = configMenu[1]
				stringGrab.settings.utf16 = configMenu[2]
				stringGrab.settings.save = configMenu[3]
				stringGrab.settings.headerOffset = tonumber(configMenu[4])
				stringGrab.settings.charOffset = tonumber(configMenu[5])
				local hex = string.format("%02X", #stringGrab.settings.string)
				local createdSearch = "Q " .. hex .. " 00 00 00 "
				if stringGrab.settings.charOffset == 8 then
				    createdSearch = createdSearch .. "00 00 00 00 "
				end
				if stringGrab.settings.utf16 == true then
					createdSearch = createdSearch .. '"' .. stringGrab.settings.string .. '"'
				else
					createdSearch = createdSearch .. "'" .. stringGrab.settings.string .. "'"
				end
				gg.clearResults()
				gg.searchNumber(createdSearch)
				gg.refineNumber("Q " .. hex .. " 00 00 00")
				gg.refineNumber("Q " .. hex)
				local results = gg.getResults(gg.getResultsCount())
				for i, v in pairs(results) do
					results[i].address = results[i].address - stringGrab.settings.headerOffset
					results[i].name = stringGrab.settings.string
				end
				gg.addListItems(results)
				if stringGrab.settings.save == true then
					gg.clearResults()
					gg.setRanges(stringGrab.settings.currentRange)
					gg.loadResults(gg.getListItems())
					gg.searchPointer(0)
					local results = gg.getResults(gg.getResultsCount())
					local cleanedResults = {}
					for i, v in pairs(results) do
						for index, value in pairs(gg.getListItems()) do
							if tonumber(stringGrab.ggHex(v.value)) == tonumber(stringGrab.ggHex(value.address)) then
								table.insert(cleanedResults, value)
								break
							end
						end
					end
					gg.clearList()
					gg.addListItems(cleanedResults)
				end
				bc.Alert("Finished", "Done finding exact strings, results are in the Save List.", "ℹ️")
			end
		end,
		copyData = function()
		    local dataToCopy = gg.getSelectedListItems()
		    local dataString = ""
		    for i,v in pairs (dataToCopy) do
		        dataString = dataString .. v.name .. "\n\n"
		    end
		    if dataString ~= "" then
		        local file = io.open("/sdcard/Download/BCD_" .. gg.getTargetPackage() .. "_StringsClipboard" .. ".txt", "a")
		        file:write("\n")
		        file:write(os.date(_,os.time()) .. "\n")
		        file:write("\n")
		        file:write(dataString .. "\n")
		        file:close()
		        gg.copyText(dataString,false)
		        bc.Alert("Data Copied",dataString, "ℹ️")
		    else
		        bc.Alert("Nothing Selected","No strings are selected in save list.", "⚠️")
		    end
		end,
		home = function()
			local menuItems = {
				"🔽 Get Strings Below Character Count", 
				"↔ ️Get Strings With Sub-String", 
				"🔤 Get Exact String"
			}
			if stringGrab.settings.headerOffset ~= 0 then
				menuItems[4] = "↕️ Find Nearby Pointed To Strings"
				menuItems[5] = "📋 Copy String Data"
			end
			menuItems[#menuItems + 1] = "❌ Exit"
			local menu = gg.choice(menuItems, nil, bc.Choice("Main Menu", "", "ℹ️"))
			if menu ~= nil then
				if menu == #menuItems then
					if pluginManager then
						pluginManager.returnHome = false
					end
					os.exit()
				end
				if menu == 1 then
					stringGrab.belowCountMenu()
				end
				if menu == 2 then
					stringGrab.subStringSearch()
				end
				if menu == 3 then
					stringGrab.stringSearch()
				end
				if menu == 4 then
					stringGrab.findNearby()
				end
				if menu == 5 then
					stringGrab.copyData()
				end
			end
		end
	}
	script_title = "🔤 String Grabber by BadCase 🔤"
	bc = {
	Toast = function(toast_string,emoji)
	local _ = utf8.char(9552)
	gg.toast("\n" .. script_title .. "\n\n"..emoji.._.._.._.._.._.._.._.._.._.._.._.._.._..emoji.."\n\n" .. toast_string .. "\n\n"..emoji.._.._.._.._.._.._.._.._.._.._.._.._.._..emoji)
    end,
    Alert = function(headerString, bodyString, emoji)
        if #bodyString > 0 then
            gg.alert(script_title .. "\n\n" .. emoji .. " " .. headerString .. " " .. emoji .. "\n\n" .. bodyString)
        else
            gg.alert(script_title .. "\n\n" .. emoji .. " " .. headerString .. " " .. emoji)
        end
    end,
    Choice = function(headerString, bodyString, emoji)
        if #bodyString > 0 then
            return script_title .. "\n\n" .. emoji .. " " .. headerString .. " " .. emoji .. "\n\n" .. bodyString
        else
            return script_title .. "\n\n" .. emoji .. " " .. headerString .. " " .. emoji
        end
    end,
    Prompt = function(headerString, emoji)
        return script_title .. "\n\n" .. emoji .. " " .. headerString .. " " .. emoji .. "\n\n" 
    end,
    }
	if pluginManager then
		pluginManager.returnHome = true
		pluginManager.returnPluginTable = "stringGrab"
	end
    stringGrab.home()
end

if not pluginManager then 
	gg.showUiButton()
	while true do
		if gg.isClickedUiButton() then
			stringGrab.home()
		end
		gg.sleep(100)
	end
end