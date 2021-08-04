scoreboard objectives add tptimes dummy "tptimes"
scoreboard players add @p tptimes 20
scoreboard objectives setdisplay sidebar tptimes
execute if entity @p[y_rotation=-45..45] align xz run tp @p ~0.5 ~ ~0.5 0 0
execute if entity @p[y_rotation=45..135] align xz run tp @p ~0.5 ~ ~0.5 90 0
execute if entity @p[y_rotation=135..180] align xz run tp @p ~0.5 ~ ~0.5 180 0
execute if entity @p[y_rotation=-179.9..-135] align xz run tp @p ~0.5 ~ ~0.5 180 0
execute if entity @p[y_rotation=-135..-45] align xz run tp @p ~0.5 ~ ~0.5 -90 0
execute at @p run summon minecraft:armor_stand ^ ^ ^2 {Tags:[poser]}
execute at @p align xz run tp @p ~0.5 ~ ~0.5 facing entity @e[type=armor_stand,tag=poser,limit=1]
kill @e[tag=poser]
function loop:setandsummon