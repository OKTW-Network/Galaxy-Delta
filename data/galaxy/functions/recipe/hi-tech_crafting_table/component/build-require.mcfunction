# Gun casing
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 1
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:gold_ingot{guiItem:1} 6

execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 1
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:iron_ingot{guiItem:1} 6

execute if score @s reqRcpHTct matches 3 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 3 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 1
execute if score @s reqRcpHTct matches 3 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:command_block{display:{Name:'{"translate":"item.galaxy.steel_ingot","italic":false,"color":"white"}'},HideFlags:63,CustomModelData:1010,ingotSteel:1,guiItem:1} 6

execute if score @s reqRcpHTct matches 4 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 4 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 1
execute if score @s reqRcpHTct matches 4 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:netherite_ingot{guiItem:1} 6

# Laser core
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 5
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:iron_ingot{guiItem:1} 4
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:glass_pane{guiItem:1} 2
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:diamond{guiItem:1} 1
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:redstone_lamp{guiItem:1} 1
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.10 minecraft:terracotta{guiItem:1} 2

execute if score @s reqRcpHTct matches 6 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 6 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 5
execute if score @s reqRcpHTct matches 6 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:gold_ingot{guiItem:1} 4
execute if score @s reqRcpHTct matches 6 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:glass_pane{guiItem:1} 2
execute if score @s reqRcpHTct matches 6 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:emerald{guiItem:1} 1
execute if score @s reqRcpHTct matches 6 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:sea_lantern{guiItem:1} 1
execute if score @s reqRcpHTct matches 6 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.10 minecraft:terracotta{guiItem:1} 2

execute if score @s reqRcpHTct matches 7 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 7 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 5
execute if score @s reqRcpHTct matches 7 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:enchanted_golden_apple{guiItem:1} 2
execute if score @s reqRcpHTct matches 7 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:glass_pane{guiItem:1} 2
execute if score @s reqRcpHTct matches 7 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:ender_eye{guiItem:1} 1
execute if score @s reqRcpHTct matches 7 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:beacon{guiItem:1} 1
execute if score @s reqRcpHTct matches 7 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.10 minecraft:terracotta{guiItem:1} 2

# Cooling system
execute if score @s reqRcpHTct matches 8 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 8 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 5
execute if score @s reqRcpHTct matches 8 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:heavy_weighted_pressure_plate{guiItem:1} 4
execute if score @s reqRcpHTct matches 8 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:iron_nugget{guiItem:1} 10
execute if score @s reqRcpHTct matches 8 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:potion{Potion:"minecraft:water",guiItem:1} 1
execute if score @s reqRcpHTct matches 8 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:potion{Potion:"minecraft:water",guiItem:1} 1
execute if score @s reqRcpHTct matches 8 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.10 minecraft:oak_leaves{display:{Lore:['{"translate":"tooltip.any_type","color":"dark_gray","italic":false}']},guiItem:1} 1

execute if score @s reqRcpHTct matches 9 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 9 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 5
execute if score @s reqRcpHTct matches 9 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:heavy_weighted_pressure_plate{guiItem:1} 4
execute if score @s reqRcpHTct matches 9 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:iron_nugget{guiItem:1} 10
execute if score @s reqRcpHTct matches 9 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:water_bucket{guiItem:1} 1
execute if score @s reqRcpHTct matches 9 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:water_bucket{guiItem:1} 1
execute if score @s reqRcpHTct matches 9 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.10 minecraft:white_wool{display:{Lore:['{"translate":"tooltip.any_type","color":"dark_gray","italic":false}']},guiItem:1} 1

execute if score @s reqRcpHTct matches 10 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 10 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 5
execute if score @s reqRcpHTct matches 10 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:heavy_weighted_pressure_plate{guiItem:1} 4
execute if score @s reqRcpHTct matches 10 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:iron_nugget{guiItem:1} 10
execute if score @s reqRcpHTct matches 10 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:packed_ice{guiItem:1} 4
execute if score @s reqRcpHTct matches 10 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:sponge{guiItem:1} 1

# Handle
execute if score @s reqRcpHTct matches 11 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 11 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 11 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:iron_ingot{guiItem:1} 2
execute if score @s reqRcpHTct matches 11 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:stick{guiItem:1} 1
execute if score @s reqRcpHTct matches 11 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:slime_block{guiItem:1} 1

execute if score @s reqRcpHTct matches 12 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 12 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 12 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:iron_ingot{guiItem:1} 2
execute if score @s reqRcpHTct matches 12 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:stick{guiItem:1} 1
execute if score @s reqRcpHTct matches 12 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:oak_log{display:{Lore:['{"translate":"tooltip.any_type","color":"dark_gray","italic":false}']},guiItem:1} 1

execute if score @s reqRcpHTct matches 13 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 13 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 13 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:iron_ingot{guiItem:1} 2
execute if score @s reqRcpHTct matches 13 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:stick{guiItem:1} 1
execute if score @s reqRcpHTct matches 13 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:obsidian{guiItem:1} 1

# Barrel
execute if score @s reqRcpHTct matches 14 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 14 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 14 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 14 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:smooth_quartz{guiItem:1} 2

execute if score @s reqRcpHTct matches 15 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 15 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 15 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 15 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:quartz_pillar{guiItem:1} 2
execute if score @s reqRcpHTct matches 15 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:flint{guiItem:1} 4

execute if score @s reqRcpHTct matches 16 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 16 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 16 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 16 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:chiseled_quartz_block{guiItem:1} 2
execute if score @s reqRcpHTct matches 16 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:ender_eye{guiItem:1} 4

execute if score @s reqRcpHTct matches 17 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 17 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 17 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:crying_obsidian{guiItem:1} 2
execute if score @s reqRcpHTct matches 17 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:purpur_pillar{guiItem:1} 4
execute if score @s reqRcpHTct matches 17 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:prismarine_shard{guiItem:1} 8

execute if score @s reqRcpHTct matches 18 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 18 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 18 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:crying_obsidian{guiItem:1} 2
execute if score @s reqRcpHTct matches 18 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:purpur_block{guiItem:1} 4
execute if score @s reqRcpHTct matches 18 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:prismarine_crystals{guiItem:1} 8
