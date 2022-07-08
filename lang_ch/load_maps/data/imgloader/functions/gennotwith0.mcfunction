tellraw @p "§3当前运行:手动设置地图起始编号模式"
#tellraw @p {"translate":"§2请输入%s再运行此函数。","with":[{"text":"/trigger initial set <要放置的地图起始编号>","color":"#FF5C38"}],"insertion": "/trigger initial set <要放置的地图起始编号>"}
# tellraw @p "§3如已执行前述命令,可忽略上述信息。"
scoreboard players add @e[tag=creator] line 0
scoreboard players add @e[tag=creator] row 0
scoreboard objectives add checkif0 dummy "checkif0"
scoreboard players set @e[tag=creator] checkif0 0
execute unless score @e[tag=creator,limit=1] row matches 0..100 run tellraw @p {"translate":"§4当前要创建的行数不是正数，请重新放入一定数量的物品或执行%s","with":[{"text":"/function imgloader:getarg"}],"insertion": "/function imgloader:getarg"}
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
execute if score @e[tag=creator,limit=1] initial matches 1..10000 run function imgloader:setwallline
execute if score @e[tag=creator,limit=1] initial matches 0..0 run tellraw @p "§4请将initial赋非0值后再运行。"