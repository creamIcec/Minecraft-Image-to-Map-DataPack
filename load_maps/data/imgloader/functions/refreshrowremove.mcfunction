scoreboard players remove @e[tag=creator,limit=1] row 1
scoreboard players operation @e[tag=creator,limit=1] line = @e[tag=creator,limit=1] fixed_line
execute at @e[tag=helper2] run tp @e[tag=helper2] ^ ^-1 ^
execute at @e[tag=helper2] run tp @e[tag=creator] @e[tag=helper2,limit=1]
execute if score @e[tag=creator,limit=1] row matches 1..100 run function imgloader:refreshing