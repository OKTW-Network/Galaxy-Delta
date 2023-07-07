scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 temp run clear @s minecraft:enchanted_golden_apple 0
execute unless score #1 temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:glass_pane 0
execute unless score #1 temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:ender_eye 0
execute unless score #1 temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:beacon 0
execute unless score #1 temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s #global:terracotta 0
execute unless score #1 temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1
