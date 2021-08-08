execute unless score @e[tag=creator,limit=1] line matches 1..1 at @e[tag=creator] run clone ^ ^ ^1 ^ ^ ^1 ^-1 ^ ^1 replace
execute if score @e[tag=creator,limit=1,sort=nearest] facing matches 2..2 at @e[tag=creator,limit=1] run summon item_frame ~ ~ ~ {Facing:2,Item:{id:"minecraft:filled_map",Count:1,tag:{"map":1}}}
execute if score @e[tag=creator,limit=1,sort=nearest] facing matches 3..3 at @e[tag=creator,limit=1] run summon item_frame ~ ~ ~ {Facing:3,Item:{id:"minecraft:filled_map",Count:1,tag:{"map":1}}}
execute if score @e[tag=creator,limit=1,sort=nearest] facing matches 4..4 at @e[tag=creator,limit=1] run summon item_frame ~ ~ ~ {Facing:4,Item:{id:"minecraft:filled_map",Count:1,tag:{"map":1}}}
execute if score @e[tag=creator,limit=1,sort=nearest] facing matches 5..5 at @e[tag=creator,limit=1] run summon item_frame ~ ~ ~ {Facing:5,Item:{id:"minecraft:filled_map",Count:1,tag:{"map":1}}}
execute at @e[tag=creator,limit=1] run tp @e[tag=creator] ^-1 ^ ^
execute if score @e[tag=creator,limit=1] line matches 2..100 run function imgloader:lineremove
#while(row>=1){
#   tp...
#   setblock...
#   setblock...
#   scoreboard remove...
#}
execute if score @e[tag=creator,limit=1] line matches 1..1 run function imgloader:rowremove