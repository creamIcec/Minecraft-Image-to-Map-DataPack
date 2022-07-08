#execute at @e[tag=creator] if entity @e[tag=creator][y_rotation=-45..45] run data modify entity @e[type=item_frame,distance=..3,limit=1] Facing set value 2
#execute at @e[tag=creator] if entity @e[tag=creator][y_rotation=45..135] run data modify entity @e[type=item_frame,distance=..3,limit=1] Facing set value 5
#execute at @e[tag=creator] if entity @e[tag=creator][y_rotation=135..180] run data modify entity @e[type=item_frame,distance=..3,limit=1] Facing set value 3
#execute at @e[tag=creator] if entity @e[tag=creator][y_rotation=-135..-45] run data modify entity @e[type=item_frame,distance=..3,limit=1] Facing set value 4
tellraw @p {"translate": "已运行test函数%s次","with":[{"score":{"name": "creamIce","objective": "test"}}]}
function test:condition