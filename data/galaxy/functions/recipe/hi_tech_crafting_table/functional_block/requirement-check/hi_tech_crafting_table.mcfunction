scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 calcu_temp run clear @s minecraft:redstone 0
execute unless score #1 calcu_temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s minecraft:lapis_lazuli 0
execute unless score #1 calcu_temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s minecraft:diamond 0
execute unless score #1 calcu_temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s minecraft:iron_ingot 0
execute unless score #1 calcu_temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s minecraft:crafting_table 0
execute unless score #1 calcu_temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s minecraft:obsidian 0
execute unless score #1 calcu_temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1
