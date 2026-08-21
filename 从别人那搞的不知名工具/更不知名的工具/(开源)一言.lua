--原创TC，开源是为了学习交流，转载使用请留名
yiyan=gg.makeRequest("https://v1.hitokoto.cn/").content
--print(yiyan)
content=yiyan:match("hitokoto\": \"(.-)\"")
from=yiyan:match("from\": \"(.-)\"")
print(content)
print("                                    ----"..from)

