scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 temp run clear @s minecraft:heavy_weighted_pressure_plate 0
execute unless score #1 temp matches 4.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:iron_nugget 0
execute unless score #1 temp matches 10.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:blue_ice 0
execute unless score #1 temp matches 6.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:sponge 0
execute unless score #1 temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1
