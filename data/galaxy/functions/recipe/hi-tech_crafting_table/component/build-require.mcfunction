# Gun casing
execute if score @s reqRcpHTct matches 1 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 1
execute if score @s reqRcpHTct matches 1 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:gold_ingot{guiItem:1} 6

execute if score @s reqRcpHTct matches 2 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 1
execute if score @s reqRcpHTct matches 2 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:iron_ingot{guiItem:1} 6

execute if score @s reqRcpHTct matches 3 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 3 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 1
execute if score @s reqRcpHTct matches 3 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:command_block{display:{Name:'{"translate":"item.galaxy.steel_ingot","italic":false,"color":"white"}'},HideFlags:63,CustomModelData:1010,ingotSteel:1,guiItem:1} 6

execute if score @s reqRcpHTct matches 4 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 4 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 1
execute if score @s reqRcpHTct matches 4 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:netherite_ingot{guiItem:1} 6

# Laser core
execute if score @s reqRcpHTct matches 5 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 5
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:iron_ingot{guiItem:1} 4
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:glass_pane{guiItem:1} 2
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:diamond{guiItem:1} 1
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:redstone_lamp{guiItem:1} 1
execute if score @s reqRcpHTct matches 5 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.10 minecraft:terracotta{guiItem:1} 2

execute if score @s reqRcpHTct matches 6 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 6 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 5
execute if score @s reqRcpHTct matches 6 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:gold_ingot{guiItem:1} 4
execute if score @s reqRcpHTct matches 6 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:glass_pane{guiItem:1} 2
execute if score @s reqRcpHTct matches 6 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:emerald{guiItem:1} 1
execute if score @s reqRcpHTct matches 6 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:sea_lantern{guiItem:1} 1
execute if score @s reqRcpHTct matches 6 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.10 minecraft:terracotta{guiItem:1} 2

execute if score @s reqRcpHTct matches 7 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 7 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 5
execute if score @s reqRcpHTct matches 7 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:enchanted_golden_apple{guiItem:1} 2
execute if score @s reqRcpHTct matches 7 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:glass_pane{guiItem:1} 2
execute if score @s reqRcpHTct matches 7 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:ender_eye{guiItem:1} 1
execute if score @s reqRcpHTct matches 7 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:beacon{guiItem:1} 1
execute if score @s reqRcpHTct matches 7 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.10 minecraft:terracotta{guiItem:1} 2

# Cooling system
execute if score @s reqRcpHTct matches 8 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 8 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 5
execute if score @s reqRcpHTct matches 8 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:heavy_weighted_pressure_plate{guiItem:1} 4
execute if score @s reqRcpHTct matches 8 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:iron_nugget{guiItem:1} 10
execute if score @s reqRcpHTct matches 8 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:potion{Potion:"minecraft:water",guiItem:1} 1
execute if score @s reqRcpHTct matches 8 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:potion{Potion:"minecraft:water",guiItem:1} 1
execute if score @s reqRcpHTct matches 8 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.10 minecraft:oak_leaves{display:{Lore:['{"translate":"tooltip.any_type","color":"dark_gray","italic":false}']},guiItem:1} 1

execute if score @s reqRcpHTct matches 9 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 9 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 5
execute if score @s reqRcpHTct matches 9 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:heavy_weighted_pressure_plate{guiItem:1} 4
execute if score @s reqRcpHTct matches 9 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:iron_nugget{guiItem:1} 10
execute if score @s reqRcpHTct matches 9 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:water_bucket{guiItem:1} 1
execute if score @s reqRcpHTct matches 9 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:water_bucket{guiItem:1} 1
execute if score @s reqRcpHTct matches 9 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.10 minecraft:white_wool{display:{Lore:['{"translate":"tooltip.any_type","color":"dark_gray","italic":false}']},guiItem:1} 1

execute if score @s reqRcpHTct matches 10 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 10 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 5
execute if score @s reqRcpHTct matches 10 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:heavy_weighted_pressure_plate{guiItem:1} 4
execute if score @s reqRcpHTct matches 10 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:iron_nugget{guiItem:1} 10
execute if score @s reqRcpHTct matches 10 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:packed_ice{guiItem:1} 4
execute if score @s reqRcpHTct matches 10 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:sponge{guiItem:1} 1

# Handle
execute if score @s reqRcpHTct matches 11 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 11 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 11 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:iron_ingot{guiItem:1} 2
execute if score @s reqRcpHTct matches 11 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:stick{guiItem:1} 1
execute if score @s reqRcpHTct matches 11 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:slime_block{guiItem:1} 1

execute if score @s reqRcpHTct matches 12 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 12 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 12 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:iron_ingot{guiItem:1} 2
execute if score @s reqRcpHTct matches 12 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:stick{guiItem:1} 1
execute if score @s reqRcpHTct matches 12 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:oak_log{display:{Lore:['{"translate":"tooltip.any_type","color":"dark_gray","italic":false}']},guiItem:1} 1

execute if score @s reqRcpHTct matches 13 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 13 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 13 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:iron_ingot{guiItem:1} 2
execute if score @s reqRcpHTct matches 13 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:stick{guiItem:1} 1
execute if score @s reqRcpHTct matches 13 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:obsidian{guiItem:1} 1

# Barrel
execute if score @s reqRcpHTct matches 14 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 14 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 14 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 14 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:smooth_quartz{guiItem:1} 2

execute if score @s reqRcpHTct matches 15 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 15 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 15 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 15 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:quartz_pillar{guiItem:1} 2
execute if score @s reqRcpHTct matches 15 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:flint{guiItem:1} 4

execute if score @s reqRcpHTct matches 16 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 16 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 16 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 16 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:chiseled_quartz_block{guiItem:1} 2
execute if score @s reqRcpHTct matches 16 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:ender_eye{guiItem:1} 4

execute if score @s reqRcpHTct matches 17 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 17 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 17 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:crying_obsidian{guiItem:1} 2
execute if score @s reqRcpHTct matches 17 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:purpur_pillar{guiItem:1} 4
execute if score @s reqRcpHTct matches 17 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:prismarine_shard{guiItem:1} 8

execute if score @s reqRcpHTct matches 18 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 18 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 18 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:crying_obsidian{guiItem:1} 2
execute if score @s reqRcpHTct matches 18 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:purpur_block{guiItem:1} 4
execute if score @s reqRcpHTct matches 18 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:prismarine_crystals{guiItem:1} 8

# Sight
execute if score @s reqRcpHTct matches 19 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 19 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 19 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:heavy_weighted_pressure_plate{guiItem:1} 2
execute if score @s reqRcpHTct matches 19 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:glass{guiItem:1} 2

execute if score @s reqRcpHTct matches 20 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 20 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 4
execute if score @s reqRcpHTct matches 20 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:heavy_weighted_pressure_plate{guiItem:1} 4
execute if score @s reqRcpHTct matches 20 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:glass{guiItem:1} 2
execute if score @s reqRcpHTct matches 20 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:hopper{guiItem:1} 1
execute if score @s reqRcpHTct matches 20 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.4 minecraft:heart_of_the_sea{guiItem:1} 1

# Sight
execute if score @s reqRcpHTct matches 21 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 21 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 21 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 21 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:red_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 22 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 22 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 22 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 22 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:orange_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 23 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 23 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 23 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 23 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:yellow_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 24 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 24 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 24 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 24 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:lime_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 25 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 25 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 25 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 25 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:light_blue_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 26 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 26 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 26 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 26 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:blue_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 27 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 27 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 27 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 27 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:purple_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 28 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 28 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 28 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 28 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:black_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 29 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 29 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 29 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 29 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:brown_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 30 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 30 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 30 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 30 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:cyan_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 31 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 31 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 31 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 31 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:gray_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 32 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 32 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 32 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 32 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:green_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 33 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 33 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 33 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 33 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:light_gray_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 34 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 34 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 34 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 34 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:magenta_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 35 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 35 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 35 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 35 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:pink_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 36 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 36 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 36 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 36 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:white_stained_glass{guiItem:1} 1

execute if score @s reqRcpHTct matches 37 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 37 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 2
execute if score @s reqRcpHTct matches 37 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:terracotta{guiItem:1} 2
execute if score @s reqRcpHTct matches 37 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:experience_bottle{guiItem:1} 1

# Trigger
execute if score @s reqRcpHTct matches 38 run scoreboard players set @s htctRequPageMax 1
execute if score @s reqRcpHTct matches 38 if score @s htctRequPage matches 1 run scoreboard players set @s htctRequSlotMax 3
execute if score @s reqRcpHTct matches 38 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.1 minecraft:ender_eye{guiItem:1} 1
execute if score @s reqRcpHTct matches 38 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.2 minecraft:comparator{guiItem:1} 1
execute if score @s reqRcpHTct matches 38 if score @s htctRequPage matches 1 run replaceitem block ~ ~ ~ container.3 minecraft:tripwire_hook{guiItem:1} 1
