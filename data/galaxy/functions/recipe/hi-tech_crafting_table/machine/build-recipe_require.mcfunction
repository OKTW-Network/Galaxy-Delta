# Hi-tech crafting table
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 6
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.6 minecraft:redstone{guiItem:1} 2
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.7 minecraft:lapis_lazuli{guiItem:1} 2
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.15 minecraft:diamond{guiItem:1} 1
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.16 minecraft:iron_ingot{guiItem:1} 2
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.24 minecraft:crafting_table{guiItem:1} 1
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.25 minecraft:obsidian{guiItem:1} 1

# coke furnace
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 4
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.6 minecraft:clay_ball{guiItem:1} 12
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.7 minecraft:sand{guiItem:1} 8
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.15 minecraft:furnace{guiItem:1} 1
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.16 minecraft:smooth_stone{guiItem:1} 1

# advanced blast furnace
execute if score @s reqRcpHTct matches 3 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 3 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 4
execute if score @s reqRcpHTct matches 3 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.6 minecraft:obsidian{guiItem:1} 6
execute if score @s reqRcpHTct matches 3 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.7 minecraft:iron_block{guiItem:1} 2
execute if score @s reqRcpHTct matches 3 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.15 minecraft:blast_furnace{guiItem:1} 1
execute if score @s reqRcpHTct matches 3 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.16 minecraft:smooth_stone{guiItem:1} 1
