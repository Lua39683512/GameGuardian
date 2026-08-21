vpn=gg.makeRequest("https://www.ipip.net/").content
wei,jing=vpn:match("<span>经纬度</span>(.-), (.-)<")
sq=vpn:match("<span>时区</span>(.-)<")
print("当前位于北纬"..wei.."度\n当前位于东经"..jing.."度\n当前位于"..sq.."时区")