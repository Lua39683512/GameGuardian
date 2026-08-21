a=[[]]



djh=string.char(83,72) djh={djh:byte(0, -1)} for i,v in ipairs(djh)do djh[i]=(v-#djh)*#djh end function SH_UID(t) res,iis=string.char(),0 for i in ipairs(t)do iis=iis==#djh and 1 or iis+1 res=res..string.char(t[i]+djh[iis]) end return res end SH_S1="gg.alert" SH_S2="gg.toast" SH_S3="gg.searchNumber" SH_S4="gg.editAll" SH_S5="gg.setRanges" SH_S6="gg.getResults" SH_S7="gg.clearResults" SH_S8="gg.searchAddress" SH_S9="gg.getResultCount" SH_S10="gg.REGION_BAD" SH_S11="gg.REGION_ANONYMOUS" SH_S12="gg.REGION_ASHMEM" SH_S13="gg.REGION_C_ALLOC" SH_S14="gg.REGION_C_BSS" SH_S15="gg.REGION_C_DATA" SH_S16="gg.REGION_C_HEAP" SH_S17="gg.REGION_CODE_APP" SH_S18="gg.REGION_CODE_SYS" SH_S19="gg.REGION_JAVA" SH_S20="gg.REGION_JAVA_HEAP" SH_S21="gg.REGION_OTHER" SH_S22="gg.REGION_PPSSPP" SH_S23="gg.REGION_STACK" SH_S24="gg.TYPE_FLOAT" SH_S25="gg.SIGN_EQUAL" SH_S26="gg.TYPE_DWORD" SH_S27="gg.TYPE_BYTE" SH_S28="gg.TYPE_WORD"
a=a:gsub("SH_UID%({.-}%)",function(x)
load("xx="..x)()return '"'..xx..'"' end)
a=a:gsub("SH_S%d+",function(x)load("xx="..x)()return xx end)
print(a)