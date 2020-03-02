# elevator
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.6 minecraft:iron_ingot{guiItem:1} 8
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.7 minecraft:ender_pearl{guiItem:1} 1

# katana display stand type 1
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 1
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.6 minecraft:dark_oak_slab{guiItem:1} 3

# katana display stand type 2
execute if score @s reqRcpHTct matches 3 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 3 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 1
execute if score @s reqRcpHTct matches 3 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.6 minecraft:dark_oak_slab{guiItem:1} 3

# katana display stand type 3
execute if score @s reqRcpHTct matches 4 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 4 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 1
execute if score @s reqRcpHTct matches 4 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.6 minecraft:dark_oak_slab{guiItem:1} 3

# katana display stand type 4
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 1
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.6 minecraft:dark_oak_slab{guiItem:1} 3
