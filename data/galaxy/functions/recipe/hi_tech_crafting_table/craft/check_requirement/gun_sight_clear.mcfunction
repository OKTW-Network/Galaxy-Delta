scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 temp run clear @s minecraft:heavy_weighted_pressure_plate 0
execute unless score #1 temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:glass 0
execute unless score #1 temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1
