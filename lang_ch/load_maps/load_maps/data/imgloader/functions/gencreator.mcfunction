scoreboard objectives remove facing
scoreboard objectives add facing dummy
scoreboard players set @e[tag=creator,limit=1,sort=nearest] facing 0
kill @e[tag=creator,limit=1,sort=nearest]
kill @e[tag=helper,limit=1,sort=nearest]
kill @e[tag=helper2,limit=1,sort=nearest]
summon armor_stand ~ ~ ~ {Tags:["creator"],NoGravity:true,CustomName:'{"text":"地图创建者"}',CustomNameVisible:true}
summon armor_stand ~ ~ ~ {Tags:["helper"],NoGravity:true}
summon armor_stand ~ ~ ~ {Tags:["helper2"],NoGravity:true}
tp @e[tag=creator] ~ ~ ~ ~ ~
tp @e[tag=helper] ~ ~ ~ ~ ~
tp @e[tag=helper2] ~ ~ ~ ~ ~
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=-45..45] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 0 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=45..135] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 90 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=135..180] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 180 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=-179.9..-135] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 180 0
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=-135..-45] align xz run tp @e[tag=creator] ~0.5 ~ ~0.5 -90 0

execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=0] run scoreboard players set @e[tag=creator] facing 2
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=90] run scoreboard players set @e[tag=creator] facing 5
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=180] run scoreboard players set @e[tag=creator] facing 3
execute at @e[tag=creator,limit=1] if entity @e[tag=creator,y_rotation=270] run scoreboard players set @e[tag=creator] facing 4

execute at @e[tag=helper,limit=1] if entity @e[tag=helper,y_rotation=-45..45] align xz run tp @e[tag=helper] ~0.5 ~ ~0.5 0 0
execute at @e[tag=helper,limit=1] if entity @e[tag=helper,y_rotation=45..135] align xz run tp @e[tag=helper] ~0.5 ~ ~0.5 90 0
execute at @e[tag=helper,limit=1] if entity @e[tag=helper,y_rotation=135..180] align xz run tp @e[tag=helper] ~0.5 ~ ~0.5 180 0
execute at @e[tag=helper,limit=1] if entity @e[tag=helper,y_rotation=-179.9..-135] align xz run tp @e[tag=helper] ~0.5 ~ ~0.5 180 0
execute at @e[tag=helper,limit=1] if entity @e[tag=helper,y_rotation=-135..-45] align xz run tp @e[tag=helper] ~0.5 ~ ~0.5 -90 0
execute at @e[tag=helper2,limit=1] if entity @e[tag=helper2,y_rotation=-45..45] align xz run tp @e[tag=helper2] ~0.5 ~ ~0.5 0 0
execute at @e[tag=helper2,limit=1] if entity @e[tag=helper2,y_rotation=45..135] align xz run tp @e[tag=helper2] ~0.5 ~ ~0.5 90 0
execute at @e[tag=helper2,limit=1] if entity @e[tag=helper2,y_rotation=135..180] align xz run tp @e[tag=helper2] ~0.5 ~ ~0.5 180 0
execute at @e[tag=helper2,limit=1] if entity @e[tag=helper2,y_rotation=-179.9..-135] align xz run tp @e[tag=helper2] ~0.5 ~ ~0.5 180 0
execute at @e[tag=helper2,limit=1] if entity @e[tag=helper2,y_rotation=-135..-45] align xz run tp @e[tag=helper2] ~0.5 ~ ~0.5 -90 0
execute at @e[tag=creator] run setblock ^ ^ ^ stone keep
execute at @e[tag=creator] run setblock ^ ^ ^1 grass_block keep
tellraw @p {"translate":"现在,在另一个位置运行函数%s在那里生成一个用于设置地图长宽的箱子","with":[{"text": "/function imgloader:genargctr","color": "#FF5C38"},{"text":"/function imgloader:getarg","color": "#FF5C38"}],"insertion":"/function imgloader:genargctr"}
tellraw @p {"translate": "(已运行过并成功放置则可直接站在箱子上运行%s)","with":[{"text":"/function imgloader:getarg","color":"#FF5C38"}],"insertion":"/function imgloader:getarg"}
tellraw @p "§2同时请将盔甲架脚部面朝方向前那一个草方块替换为作为背景墙的方块。"