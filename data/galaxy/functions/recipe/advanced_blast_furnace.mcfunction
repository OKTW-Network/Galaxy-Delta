execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,id:"minecraft:iron_ingot"},{Slot:20b,tag:{coke:1}}]} run scoreboard players set @s workStatus 1
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} run scoreboard players set @s workStatus 0
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} run scoreboard players set @s workStatus 0
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{ingotSteel:1},Count:64b}]} run scoreboard players set @s workStatus 0
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:2b,id:"minecraft:iron_ingot"}]} run scoreboard players set @s workStatus -1
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:20b,tag:{coke:1}}]} run scoreboard players set @s workStatus -1
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b}]} unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:15b,tag:{ingotSteel:1}}]} run scoreboard players set @s workStatus -1
