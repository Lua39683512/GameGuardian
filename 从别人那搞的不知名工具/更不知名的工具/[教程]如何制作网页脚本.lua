我们先用文件管理器找到我们的脚本,然后把后缀改成.jpg
然后打开下面这个网站http://baidu.xtrds.cn/,这是个上传图片制作链接的网站,我们把我们的脚本后缀改成图片的后缀就可以上传了.
上传完后会生成一个链接 
我们复制下来
然后新建一个脚本

插入下面的代码
pcall(load(gg.makeRequest("这里是你刚刚复制的网址").content))

例子
pcall(load(gg.makeRequest("http://baidu.xtrds.cn/t6/347/xxxxxxxx.jpg").content))

保存后打开脚本即可使用


切记上传云端的脚本千万不要加密！！！
切记上传云端的脚本千万不要加密！！！
切记上传云端的脚本千万不要加密！！！

--By 北玄--