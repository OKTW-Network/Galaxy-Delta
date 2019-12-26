execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:coal"}]} run scoreboard players set @s workStatus 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} run scoreboard players set @s workStatus 0
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{coke:1},Count:64b}]} run scoreboard players set @s workStatus 0
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:11b,id:"minecraft:coal"}]} run scoreboard players set @s workStatus -1
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{coke:1}}]} run scoreboard players set @s workStatus -1
