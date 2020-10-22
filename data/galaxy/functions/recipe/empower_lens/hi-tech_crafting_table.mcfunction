execute store success score @s sucRTcRcp1 run execute if block ~ ~-1 ~-1 minecraft:obsidian if block ~ ~-1 ~1 minecraft:diamond_block if block ~-1 ~-1 ~ minecraft:iron_block if block ~1 ~-1 ~ minecraft:iron_block
execute if score @s sucRTcRcp1 matches 0 store success score @s sucRTcRcp1 run execute if block ~ ~-1 ~-1 minecraft:diamond_block if block ~ ~-1 ~1 minecraft:obsidian if block ~-1 ~-1 ~ minecraft:iron_block if block ~1 ~-1 ~ minecraft:iron_block
execute if score @s sucRTcRcp1 matches 0 store success score @s sucRTcRcp1 run execute if block ~ ~-1 ~-1 minecraft:iron_block if block ~ ~-1 ~1 minecraft:iron_block if block ~-1 ~-1 ~ minecraft:obsidian if block ~1 ~-1 ~ minecraft:diamond_block
execute if score @s sucRTcRcp1 matches 0 store success score @s sucRTcRcp1 run execute if block ~ ~-1 ~-1 minecraft:iron_block if block ~ ~-1 ~1 minecraft:iron_block if block ~-1 ~-1 ~ minecraft:diamond_block if block ~1 ~-1 ~ minecraft:obsidian
execute store success score @s sucRTcRcp2 run execute if block ~-1 ~-1 ~-1 minecraft:redstone_block if block ~1 ~-1 ~1 minecraft:redstone_block if block ~1 ~-1 ~-1 minecraft:lapis_block if block ~-1 ~-1 ~1 minecraft:lapis_block
execute if score @s sucRTcRcp2 matches 0 store success score @s sucRTcRcp2 run execute if block ~-1 ~-1 ~-1 minecraft:lapis_block if block ~1 ~-1 ~1 minecraft:lapis_block if block ~1 ~-1 ~-1 minecraft:redstone_block if block ~-1 ~-1 ~1 minecraft:redstone_block
execute if score @s sucRTcRcp1 matches 1 if score @s sucRTcRcp2 matches 1 run scoreboard players set @s sucRTcRcp -1
execute if score @s sucRTcRcp matches -1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:air
execute if score @s sucRTcRcp matches -1 positioned ~ ~-1 ~ run function galaxy:block/set_block/hi-tech_crafting_table

execute if score @s sucRTcRcp matches -1 as @a[distance=..16,predicate=!galaxy:advancement/reached-hi-tech_crafting_table] run function galaxy:advancement/hi-tech_crafting_table
