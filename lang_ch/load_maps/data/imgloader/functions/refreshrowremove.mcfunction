scoreboard players remove @e[tag=creator,limit=1] row 1
scoreboard players operation @e[tag=creator,limit=1] line = @e[tag=creator,limit=1] fixed_line
execute at @e[tag=helper2] run tp @e[tag=helper2] ^ ^-1 ^
execute at @e[tag=helper2] run tp @e[tag=creator] @e[tag=helper2,limit=1]
execute if score @e[tag=creator,limit=1] row matches 1..100 run function imgloader:refreshing
execute if score @e[tag=creator,limit=1] row matches 0..0 run tellraw @p {"text":"成功了!欣赏一下你的作品吧!","color":"#5FFF98"}
execute if score @e[tag=creator,limit=1] row matches 0..0 run tellraw @p {"text":"注：若你需要生成更多地图，无需手动清除盔甲架，当你准备生成下一张地图时，它们会被自动清除掉。","color":"#5FFF98"}
scoreboard players set @e[tag=creator,limit=1,sort=nearest] initial 0
execute if score @e[tag=creator,limit=1] row matches 0..0 run scoreboard objectives remove row
