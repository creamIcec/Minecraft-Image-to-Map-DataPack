tellraw @p "§3当前运行:默认地图起始编号为零模式"
scoreboard players add @e[tag=creator] line 0
scoreboard players add @e[tag=creator] row 0
execute unless score @e[tag=creator,limit=1] row matches 0..100 run tellraw @p "§4当前要创建的行数不是正数，请重新放入一定数量的物品或执行/function imgloader:getarg。"
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=-45..45] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 0 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=45..135] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 90 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator, y_rotation=135..180] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 180 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator, y_rotation=-179.9..-135] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 180 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator, y_rotation=-135..-45] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 -90 0
execute at @e[tag=creator,limit=1] run summon minecraft:armor_stand ^ ^ ^2 {Tags:[poser]}
execute at @e[tag=creator,limit=1] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 facing entity @e[type=armor_stand,tag=poser,limit=1]
kill @e[tag=poser]
function imgloader:setwallline