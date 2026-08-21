vpn=gg.makeRequest("https://weather.mp.qq.com/?_nav_alpha=0&_nav_txtclr=ffffff&_nav_titleclr=ffffff&_nav_anim=true&asyncMode=1&adtag=h5page.ark_expose&city=%E4%B8%AD%E5%B1%B1-%E4%B8%AD%E5%B1%B1&adcode=101281701").content
bb,xh=vpn:match("%(Linux; U; (.-); (.-)%)")
print("您当前安卓版本为："..bb.."\n手机型号为："..xh)