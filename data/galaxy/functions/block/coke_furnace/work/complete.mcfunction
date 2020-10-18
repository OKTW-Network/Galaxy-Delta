execute store result score @s workProc1O1Count run data get block ~ ~ ~ Items[{Slot:15b}].Count
scoreboard players add @s workProc1O1Count 1
replaceitem block ~ ~ ~ container.15 minecraft:command_block{display:{Name:'{"translate":"item.galaxy.coke","italic":false,"color":"white"}'},CustomModelData:1020,coke:1}
execute store result block ~ ~ ~ Items[{Slot:15b}].Count byte 1 run scoreboard players get @s workProc1O1Count

execute store result score @s workProc1I1Count run data get block ~ ~ ~ Items[{Slot:11b}].Count
scoreboard players remove @s workProc1I1Count 1
execute store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get @s workProc1I1Count

scoreboard players set @s workProc1 0
