scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 calcu_temp run clear @s minecraft:heavy_weighted_pressure_plate 0
execute unless score #1 calcu_temp matches 4.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s minecraft:iron_nugget 0
execute unless score #1 calcu_temp matches 10.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s minecraft:packed_ice 0
execute unless score #1 calcu_temp matches 4.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s #global:wool 0
execute unless score #1 calcu_temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1
