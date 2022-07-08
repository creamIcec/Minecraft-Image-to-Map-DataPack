summon armor_stand ~ ~3 ~ {NoGravity:true,Invisible:true,Tags:["resulter"]}
execute store success score @e[tag=resulter,limit=1] ifargctrgen run setblock ~ ~ ~ minecraft:chest{CustomName:'{"text":"argCtr"}'} keep
execute if score @e[tag=resulter,limit=1] ifargctrgen matches 0..0 run tellraw @p {"translate":"错误:箱子无法正常放置。请检查脚下是否已有方块，然后再运行一次%s","with": [{"text": "/function imgloader:genargctr","color":"#D91C1C"}],"insertion":"/function imgloader:genargctr"}
execute if score @e[tag=resulter,limit=1] ifargctrgen matches 1..1 run tellraw @p {"translate":"请在箱子第一格放入任意物品，数量将作为地图的长度，第二格放入物品，数量将作为地图高度; 之后的其他格子放入物品，总数将作为地图起始编号(不放入则为零)。然后站在箱子上运行%s","with": [{"text": "/function imgloader:getarg","color":"#FF5C38"}],"insertion":"/function imgloader:getarg"}
kill @e[tag=resulter]