scoreboard objectives add ifshowhelp trigger
scoreboard objectives add ifshowhelper dummy
scoreboard objectives add initial trigger "initial"
scoreboard objectives add ifargctrgen dummy
scoreboard players set @e[tag=creator] initial 0
scoreboard players enable @p initial
tellraw @p {"text": "欢迎使用自动地图画加载器数据包!"}
tellraw @p {"translate":"现在输入%s以显示教程(提示:所有指令可通过shift+左键点击以自动填充)","with":[{"text":"/function imgloader:help","color":"#FF5C38"}],"insertion": "/function imgloader:help"} 
tellraw @p {"translate":"或输入%s以显示指令参考手册","with":[{"text":"/function imgloader:reference","color":"#FF5C38"}],"insertion": "/function imgloader:reference"} 
#tellraw @p {"translate":"%s以重新激活教程。","with":[{"text":"/trigger ifshowhelp set 0","color":"#FF5C38"}]}
#execute store success score @e[tag=creator,limit=1] ifshowhelp run scoreboard players get @e[tag=creator,limit=1] ifshowhelper
#scoreboard players enable @p ifshowhelp
execute if score @p ifshowhelper matches 0..0 run function imgloader:help