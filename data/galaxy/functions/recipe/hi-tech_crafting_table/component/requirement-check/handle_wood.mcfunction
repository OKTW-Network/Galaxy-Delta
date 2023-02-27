scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 calcu_temp run clear @s minecraft:iron_ingot 0
execute unless score #1 calcu_temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s minecraft:stick 0
execute unless score #1 calcu_temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s #minecraft:logs 0
execute unless score #1 calcu_temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1
