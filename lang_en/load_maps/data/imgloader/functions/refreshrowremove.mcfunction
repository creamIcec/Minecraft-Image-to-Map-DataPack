scoreboard players remove @e[tag=creator,limit=1] row 1
scoreboard players operation @e[tag=creator,limit=1] line = @e[tag=creator,limit=1] fixed_line
execute at @e[tag=helper2] run tp @e[tag=helper2] ^ ^-1 ^
execute at @e[tag=helper2] run tp @e[tag=creator] @e[tag=helper2,limit=1]
execute if score @e[tag=creator,limit=1] row matches 1..100 run function imgloader:refreshing
execute if score @e[tag=creator,limit=1] row matches 0..0 run tellraw @p {"text":"succeed! Enjoy your work!","color":"#5FFF98"}
execute if score @e[tag=creator,limit=1] row matches 0..0 run tellraw @p {"text":"Note: you don't have to kill the armor_stand by yourself. As you are ready to generate another iamge, the armor_stand will be killed automatically.","color":"#5FFF98"}
scoreboard players set @e[tag=creator,limit=1,sort=nearest] initial 0
execute if score @e[tag=creator,limit=1] row matches 0..0 run scoreboard objectives remove row