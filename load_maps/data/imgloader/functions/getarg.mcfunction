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
scoreboard objectives add tptimes trigger "tptimes"
scoreboard players set @e[tag=creator,limit=1] tptimes 0
execute store result score @e[tag=creator] line run data get block ~ ~ ~ Items[0].Count
execute store result score @e[tag=creator] fixed_line run scoreboard players get @e[tag=creator,limit=1] line
execute store result score @e[tag=creator] prerow run data get block ~ ~ ~ Items[1].Count
execute store result score @e[tag=creator] row run data get block ~ ~ ~ Items[1].Count
execute store result score @e[tag=creator] fixed_row run data get block ~ ~ ~ Items[1].Count
scoreboard objectives setdisplay sidebar line