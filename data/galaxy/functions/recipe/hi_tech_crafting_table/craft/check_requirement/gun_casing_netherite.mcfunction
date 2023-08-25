scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 temp run clear @s minecraft:netherite_ingot 0
execute unless score #1 temp matches 4.. run scoreboard players set #recipe.craftingStatus galaxy -1
