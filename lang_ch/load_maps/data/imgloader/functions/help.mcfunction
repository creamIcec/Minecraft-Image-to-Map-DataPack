tellraw @p {"translate": "要开始加载地图画，请先将地图文件置于%s文件夹中","with":[{"text":".minecraft/saves/<你的存档名>/data","color": "#FF5C38"}]}
tellraw @p {"translate":"然后运行函数%s在你所在位置生成一个地图创建者","with":[{"text": "/function imgloader:gencreator","color": "#FF5C38","underlined": true}],"insertion":"/function imgloader:gencreator"}
#tellraw @p "输入/trigger ifshowhelp set 0以不再自动显示教程,/trigger ifshowhelp set 1重新激活教程。" 