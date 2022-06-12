scoreboard objectives add ifshowhelp trigger
scoreboard objectives add ifshowhelper dummy
scoreboard objectives add initial trigger "initial"
scoreboard objectives add ifargctrgen dummy
scoreboard players set @e[tag=creator] initial 0
scoreboard players enable @p initial
tellraw @p {"text": "Welcome to the Image to Map Loader datapack!"}
tellraw @p {"translate":"Now enter %s to display the tutorial (tip: all commands can be filled to chat bar automatically by shift + left click)","with":[{"text":"/function imgloader:help","color":"#FF5C38"}],"insertion": "/function imgloader:help"} 
tellraw @p {"translate":"Or enter %s to display the commands reference manual","with":[{"text":"/function imgloader:reference","color":"#FF5C38"}],"insertion": "/function imgloader:reference"} 
#tellraw @p {"translate":"%s以重新激活教程。","with":[{"text":"/trigger ifshowhelp set 0","color":"#FF5C38"}]}
#execute store success score @e[tag=creator,limit=1] ifshowhelp run scoreboard players get @e[tag=creator,limit=1] ifshowhelper
#scoreboard players enable @p ifshowhelp
execute if score @p ifshowhelper matches 0..0 run function imgloader:help