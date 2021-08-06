tellraw @p "欢迎使用地图画自动加载器数据包!"
tellraw @p {"translate": "要开始加载地图画，请先将地图文件置于%s文件夹中","with":[{"text":".minecraft/saves/<你的存档名>/data","color": "#FF5C38"}]}
tellraw @p {"translate":"然后运行函数%s在你所在位置生成一个地图创建者(按住shift+点击此消息可自动填充指令)","with":[{"text": "/function imgloader:gencreator","color": "#FF5C38","underlined": true}],"insertion":"/function imgloader:gencreator"}