scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 temp run clear @s minecraft:gold_ingot 0
execute unless score #1 temp matches 4.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:glass_pane 0
execute unless score #1 temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:emerald 0
execute unless score #1 temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:sea_lantern 0
execute unless score #1 temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s #global:terracotta 0
execute unless score #1 temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1
