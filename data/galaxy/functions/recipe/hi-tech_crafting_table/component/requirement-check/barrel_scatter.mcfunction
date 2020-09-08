execute store result score #1 calcu_temp run clear @s minecraft:crying_obsidian 0
execute unless score #1 calcu_temp matches 2.. run scoreboard players set #2 calcu_temp 1

execute unless score #2 calcu_temp matches 1 store result score #1 calcu_temp run clear @s minecraft:purpur_block 0
execute unless score #1 calcu_temp matches 4.. run scoreboard players set #2 calcu_temp 1

execute unless score #2 calcu_temp matches 1 store result score #1 calcu_temp run clear @s minecraft:prismarine_crystals 0
execute unless score #2 calcu_temp matches 1 if score #1 calcu_temp matches 8.. run tag @s add sucHTctRcp
