tellraw @p "§3Current mode: initial number #0 of map (default)"
scoreboard players add @e[tag=creator] line 0
scoreboard players add @e[tag=creator] row 0
execute unless score @e[tag=creator,limit=1] row matches 0..100 run tellraw @p {"translate":"§4The current number of lines to be created is not a positive number. Please put a certain number of items into chest or execute %s.","with":[{"text": "/function imgloader:getarg","color":"#FF5C38"}],"insertion":"/function imgloader:getarg"}
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=-45..45] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 0 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=45..135] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 90 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=135..180] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 180 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=-179.9..-135] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 180 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=-135..-45] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 -90 0
execute at @e[tag=creator,limit=1] run summon minecraft:armor_stand ^ ^ ^2 {Tags:[poser]}
execute at @e[tag=creator,limit=1] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 facing entity @e[type=armor_stand,tag=poser,limit=1]
kill @e[tag=poser]
function imgloader:setwallline