scoreboard objectives add line dummy "line"
scoreboard objectives add row dummy "row"
scoreboard objectives add fixed_row dummy
scoreboard objectives add fixed_line dummy
execute store result score @e[tag=creator] line run data get block ~ ~ ~ Items[0].Count
execute store result score @e[tag=creator] fixed_line run data get block ~ ~ ~ Items[0].Count
execute store result score @e[tag=creator] row run data get block ~ ~ ~ Items[1].Count
execute store result score @e[tag=creator] fixed_row run data get block ~ ~ ~ Items[1].Count
scoreboard objectives setdisplay sidebar line