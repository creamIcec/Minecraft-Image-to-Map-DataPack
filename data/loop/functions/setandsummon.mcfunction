#execute at @e[tag=creator] if entity @e[tag=creator][y_rotation=0] run data modify entity @e[type=item_frame,distance=..1,limit=1] Facing set value 2
#execute at @e[tag=creator] if entity @e[tag=creator][y_rotation=90] run data modify entity @e[type=item_frame,distance=..1,limit=1] Facing set value 5
#execute at @e[tag=creator] if entity @e[tag=creator][y_rotation=180] run data modify entity @e[type=item_frame,distance=..1,limit=1] Facing set value 3
#execute at @e[tag=creator] if entity @e[tag=creator][y_rotation=-90] run data modify entity @e[type=item_frame,distance=..1,limit=1] Facing set value 4
execute at @e[tag=creator] run setblock ^ ^ ^1 stone keep
execute at @e[tag=creator,limit=1] run summon item_frame ~ ~ ~ {Facing:3}
execute at @e[tag=creator,limit=1] run tp @e[tag=creator] ^ ^1 ^
execute if score @e[tag=creator,limit=1] row matches 2..100 run function loop:rowremove
#while(row>=1){
#   tp...
#   setblock...
#   setblock...
#   scoreboard remove...
#}
execute if score @e[tag=creator,limit=1] row matches 1..1 run function loop:lineremove