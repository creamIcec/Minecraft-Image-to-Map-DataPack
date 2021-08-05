execute at @e[tag=creator,limit=1] run clone ^ ^ ^1 ^ ^ ^1 ^ ^-1 ^1 replace
execute at @e[tag=creator,limit=1] as @e[tag=creator,limit=1] run tp @s ^ ^-1 ^
execute if score @e[tag=creator,limit=1] prerow matches 3..100 run function imgloader:prerowremove
execute if score @e[tag=creator,limit=1] prerow matches 2..2 run execute at @e[tag=creator,limit=1] run tp @e[tag=creator,limit=1] @e[tag=helper,limit=1]
execute if score @e[tag=creator,limit=1] prerow matches 2..2 run execute at @e[tag=creator,limit=1] run setblock ^ ^ ^ air
execute if score @e[tag=creator,limit=1] prerow matches 1..1 run tellraw @p "§3现在请输入/function gen默认以地图编号为0开始渲染，或输入/function gennotwith0自定义一个地图开始编号。"