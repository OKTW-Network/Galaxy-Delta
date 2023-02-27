scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 calcu_temp run clear @s minecraft:crying_obsidian 0
execute unless score #1 calcu_temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s minecraft:purpur_pillar 0
execute unless score #1 calcu_temp matches 4.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s minecraft:prismarine_shard 0
execute unless score #1 calcu_temp matches 8.. run scoreboard players set #recipe.craftingStatus galaxy -1
