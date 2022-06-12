setblock ~ ~ ~ minecraft:chest{CustomName:'{"text":"argCtr"}'} keep
summon armor_stand ~ ~3 ~ {NoGravity:true,Invisible:true,Tags:["resulter"]}
execute store success score @e[tag=resulter,limit=1] ifargctrgen run setblock ~ ~ ~ minecraft:chest{CustomName:'{"text":"argCtr"}'} keep
execute if score @e[tag=resulter,limit=1] ifargctrgen matches 0..0 run tellraw @p {"translate":"Error:The chest can't be placed. Please check whether there is a block(e.g. a slab) under your feet, and then break it and try to run %s again.","with": [{"text": "/function imgloader:genargctr","color":"#D91C1C"}],"insertion":"/function imgloader:genargctr"}
execute if score @e[tag=resulter,limit=1] ifargctrgen matches 1..1 run tellraw @p {"translate":"Please put any items in the first slot of the chest, the quantity will be the length of the map, and the quantity in the second slot will be the height of the map. Then stand on the chest and run%s","with":[{"text":"/function imgloader:getarg","color":"#FF5C38"}],"insertion":"/function imgloader:getarg"}
kill @e[tag=resulter]
