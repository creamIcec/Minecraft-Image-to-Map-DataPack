scoreboard players remove @e[tag=creator,limit=1] row 1
scoreboard players operation @e[tag=creator,limit=1] line = @e[tag=creator,limit=1] fixed_line
execute at @e[tag=helper] run tp @e[tag=helper] ^ ^-1 ^
execute at @e[tag=helper] run tp @e[tag=creator] @e[tag=helper,limit=1]
execute if score @e[tag=creator,limit=1] row matches 1..100 run function imgloader:setandsummon
execute if score @e[tag=creator,limit=1] row matches 0..0 run scoreboard players set @e[tag=creator,limit=1] line 0
execute if score @e[tag=creator,limit=1] row matches 0..0 run function imgloader:refreshmaps
execute if score @e[tag=creator,limit=1] row matches 0..0 run scoreboard objectives remove row
#execute if score @e[tag=creator,limit=1] line matches 0..0 run kill @e[tag=creator,tag=helper]
#while(row>=1){
#   tp...
#   setblock...
#   setblock...
#   scoreboard remove...
#}