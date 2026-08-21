Q=gg.makeRequest("https://weather.mp.qq.com/?_nav_alpha=0&_nav_txtclr=ffffff&_nav_titleclr=ffffff&_nav_anim=true&asyncMode=1&adtag=h5page.ark_expose&city=%E4%B8%AD%E5%B1%B1-%E4%B8%AD%E5%B1%B1&adcode=101281701").content


A=string.find(Q,"Linux;")


B=string.find(Q,"Build")


C=Q:sub(A,B)


Linux=C:sub(10,-2)


D=string.find(Linux,";")


E=Linux:sub(2,D-1)


F=Linux:sub(D+1,#Linux)


gg.alert("❤网络状态❤: WiFi ᯤ ☑\n\n\n❤手机系统❤: " ..E.."\n\n\n❤手机型号❤: "..F,"")  

