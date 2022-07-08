scoreboard objectives remove line
scoreboard objectives remove row
scoreboard objectives remove fixed_row
scoreboard objectives remove fixed_line
scoreboard objectives remove prerow
scoreboard objectives add line dummy "line"
scoreboard objectives add row dummy "row"
scoreboard objectives add fixed_row dummy
scoreboard objectives add fixed_line dummy
scoreboard objectives add prerow dummy "prerow"
scoreboard objectives add initial trigger "initial"
scoreboard objectives add counter dummy "counter"
scoreboard players set @e[tag=creator,limit=1] initial 0
scoreboard players enable @p initial
scoreboard players set @e[tag=creator,limit=1] counter 3
execute store result score @e[tag=creator] line run data get block ~ ~ ~ Items[0].Count
execute store result score @e[tag=creator] fixed_line run scoreboard players get @e[tag=creator,limit=1] line
execute store result score @e[tag=creator] prerow run data get block ~ ~ ~ Items[1].Count
execute store result score @e[tag=creator] row run data get block ~ ~ ~ Items[1].Count
execute store result score @e[tag=creator] fixed_row run data get block ~ ~ ~ Items[1].Count
function imgloader:addcount

#tellraw @p {"translate":"§3 Now enter %s to start rendering with a default map number of 0.","with":[{"text":"/function imgloader:gen","color":"#FF5C38"}],"insertion":"/function imgloader:gen"}
#tellraw @p {"translate":"Or enter %s to customize a map start number.","with":[{"text": "/function imgloader:gennotwith0","color":"#FF5C38"}],"insertion":"/function imgloader:gennotwith0"}
#tellraw @p {"translate":"Note: after generating the 'Map Creator', you can run %s at any time by standing on the chest.","with":[{"text":"/function imgloader:getarg","color":"#FF5C38"}],"insertion":"/function imgloader:getarg"}
