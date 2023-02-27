scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 calcu_temp run clear @s minecraft:iron_ingot 0
execute unless score #1 calcu_temp matches 8.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s minecraft:ender_pearl 0
execute unless score #1 calcu_temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1
