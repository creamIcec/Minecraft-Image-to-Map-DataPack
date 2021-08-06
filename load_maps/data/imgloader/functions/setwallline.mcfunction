execute at @e[tag=creator,limit=1] run clone ^ ^ ^1 ^ ^ ^1 ^ ^-1 ^1 replace
execute at @e[tag=creator,limit=1] as @e[tag=creator,limit=1] run tp @s ^ ^-1 ^
scoreboard players remove @e[tag=creator,limit=1] prerow 1
#tellraw @p {"translate": "当前prerow的值%s","with":[{"score":{"name": "@e[tag=creator,limit=1]","objective": "prerow"}}]}
execute if score @e[tag=creator,limit=1] prerow matches 2..100 run function imgloader:setwallline
execute if score @e[tag=creator,limit=1] prerow matches 1..1 run execute at @e[tag=creator,limit=1] run tp @e[tag=creator,limit=1] @e[tag=helper,limit=1]
execute if score @e[tag=creator,limit=1] prerow matches 1..1 run execute at @e[tag=creator,limit=1] run setblock ^ ^ ^ air
execute if score @e[tag=creator,limit=1] prerow matches 1..1 run scoreboard players remove @e[tag=creator,limit=1] prerow 1
execute if score @e[tag=creator,limit=1] prerow matches 0..0 run function imgloader:setandsummon
execute if score @e[tag=creator,limit=1] prerow matches 0..0 run scoreboard objectives remove prerow
#function imgloader:setwallcondition tellraw @p "§3现在请输入/function gen默认以地图编号为0开始渲染，或输入/function gennotwith0自定义一个地图开始编号。"