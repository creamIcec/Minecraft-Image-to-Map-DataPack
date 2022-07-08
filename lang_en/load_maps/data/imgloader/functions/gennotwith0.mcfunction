tellraw @p "§3Current operation: manually set map starting number mode"
#tellraw @p {"translate":"§2Please enter %s before running this function。","with":[{"text":"/trigger initial set <initial number>","color":"#FF5C38"}],"insertion": "/trigger initial set <initial number>"}
#tellraw @p "§3If the command has been executed, the information above can be ignored."
scoreboard players add @e[tag=creator] line 0
scoreboard players add @e[tag=creator] row 0
scoreboard objectives add checkif0 dummy "checkif0"
scoreboard players set @e[tag=creator] checkif0 0
scoreboard objectives add runsuccess dummy
execute unless score @e[tag=creator,limit=1] row matches 0..100 run tellraw @p {"translate":"§4The current number of lines to be created is not a positive number. Please put a certain number of items or execute %s again.","with":[{"text":"/function imgloader:getarg"}],"insertion": "/function imgloader:getarg"}
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=-45..45] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 0 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=45..135] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 90 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator, y_rotation=135..180] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 180 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator, y_rotation=-179.9..-135] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 180 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator, y_rotation=-135..-45] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 -90 0
execute at @e[tag=creator,limit=1] run summon minecraft:armor_stand ^ ^ ^2 {Tags:[poser]}
execute at @e[tag=creator,limit=1] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 facing entity @e[type=armor_stand,tag=poser,limit=1]
kill @e[tag=poser]
execute store result score @e[tag=creator,limit=1] initial run scoreboard players get @p initial
scoreboard players set @p initial 0
scoreboard players set @e[tag=creator,limit=1] runsuccess 0
scoreboard players operation @e[tag=creator,limit=1,sort=nearest] runsuccess = @e[tag=creator,limit=1,sort=nearest] initial
execute if score @e[tag=creator,limit=1,sort=nearest] initial matches 1..10000 run function imgloader:setwallline
execute if score @e[tag=creator,limit=1,sort=nearest] runsuccess matches 0..0 run tellraw @p "§4Please put items into the 3~27 slot of the chest to determine the initial number before running."