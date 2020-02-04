execute store result score @s workProc1O1Count run data get block ~ ~ ~ Items[{Slot:15b}].Count
scoreboard players add @s workProc1O1Count 1
replaceitem block ~ ~ ~ container.15 minecraft:command_block{display:{Name:"{\"translate\":\"item.galaxy.steel_ingot\",\"italic\":false,\"color\":\"white\"}"},CustomModelData:1010,ingotSteel:1}
execute store result block ~ ~ ~ Items[{Slot:15b}].Count byte 1 run scoreboard players get @s workProc1O1Count

# execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{ingotSteel:1}}]} store result score @s workProc1O1Count run data get block ~ ~ ~ Items[{Slot:15b}].Count
# execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{ingotSteel:1}}]} run scoreboard players add @s workProc1O1Count 1
# execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{ingotSteel:1}}]} store result block ~ ~ ~ Items[{Slot:15b}].Count byte 1 run scoreboard players get @s workProc1O1Count
# execute unless predicate galaxy:gui/check_slot-15 run replaceitem block ~ ~ ~ container.15 minecraft:command_block{display:{Name:"{\"translate\":\"item.galaxy.steel_ingot\",\"italic\":false,\"color\":\"white\"}"},CustomModelData:1010,ingotSteel:1}

execute store result score @s workProc1I1Count run data get block ~ ~ ~ Items[{Slot:2b}].Count
scoreboard players remove @s workProc1I1Count 1
execute store result block ~ ~ ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get @s workProc1I1Count

execute store result score @s workProc1I2Count run data get block ~ ~ ~ Items[{Slot:20b}].Count
scoreboard players remove @s workProc1I2Count 1
execute store result block ~ ~ ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get @s workProc1I2Count

scoreboard players set @s workProc1 0
