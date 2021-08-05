execute at @e[tag=creator,limit=1] store result entity @e[type=item_frame,limit=1,sort=nearest] Item.tag.map int 1 run scoreboard players get @e[tag=creator,limit=1] tptimes
execute at @e[tag=creator,limit=1] run tp @e[tag=creator] ^-1 ^ ^
execute as @e[tag=creator,limit=1] at @e[tag=creator,limit=1] run scoreboard players add @e[tag=creator,limit=1] tptimes 1
execute if score @e[tag=creator,limit=1] line matches 2..100 run function imgloader:refreshlineremove
execute if score @e[tag=creator,limit=1] line matches 1..1 run function imgloader:refreshrowremove