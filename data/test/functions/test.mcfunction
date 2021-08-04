execute at @p if entity @p[y_rotation=-45..45] run data modify entity @e[type=item_frame,distance=..1,limit=1] Facing set value 2
execute at @p if entity @p[y_rotation=45..135] run data modify entity @e[type=item_frame,distance=..1,limit=1] Facing set value 5
execute at @p if entity @p[y_rotation=135..180] run data modify entity @e[type=item_frame,distance=..1,limit=1] Facing set value 3
execute at @p if entity @p[y_rotation=-135..-45] run data modify entity @e[type=item_frame,distance=..1,limit=1] Facing set value 4