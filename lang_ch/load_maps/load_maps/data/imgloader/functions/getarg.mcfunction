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
#scoreboard objectives setdisplay sidebar line
tellraw @p {"translate":"§3现在请输入%s默认以地图编号为0开始渲染。","with":[{"text":"/function imgloader:gen","color":"#FF5C38"}],"insertion":"/function imgloader:gen"}
tellraw @p {"translate":"或输入%s自定义一个地图开始编号。","with":[{"text": "/function imgloader:gennotwith0","color":"#FF5C38"}],"insertion":"/function imgloader:gennotwith0"}
tellraw @p {"translate":"注意：在生成创建者之后，可随时运行%s,只要站在箱子上即可。","with":[{"text":"/function imgloader:getarg","color":"#FF5C38"}],"insertion":"/function imgloader:getarg"}