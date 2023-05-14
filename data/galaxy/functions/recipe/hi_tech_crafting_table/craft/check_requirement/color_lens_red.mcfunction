scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 temp run clear @s #global:terracotta 0
execute unless score #1 temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:red_stained_glass 0
execute unless score #1 temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1
