scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 calcu_temp run clear @s minecraft:gold_ingot 0
execute unless score #1 calcu_temp matches 6.. run scoreboard players set #recipe.craftingStatus galaxy -1
