execute at @p run setblock ^ ^ ^1 stone
execute at @p run setblock ^ ^1 ^1 stone
summon item_frame ~ ~ ~ {Facing:3}
execute at @p if entity @p[y_rotation=0] run data modify entity @e[type=item_frame,distance=..1,limit=1] Facing set value 2
execute at @p if entity @p[y_rotation=90] run data modify entity @e[type=item_frame,distance=..1,limit=1] Facing set value 5
execute at @p if entity @p[y_rotation=180] run data modify entity @e[type=item_frame,distance=..1,limit=1] Facing set value 3
execute at @p if entity @p[y_rotation=-90] run data modify entity @e[type=item_frame,distance=..1,limit=1] Facing set value 4
execute at @p run function loop:tp