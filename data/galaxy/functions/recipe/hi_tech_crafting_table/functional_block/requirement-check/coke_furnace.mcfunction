scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 calcu_temp run clear @s minecraft:clay 0
execute unless score #1 calcu_temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s minecraft:sand 0
execute unless score #1 calcu_temp matches 6.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s minecraft:furnace 0
execute unless score #1 calcu_temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 calcu_temp run clear @s minecraft:smooth_stone 0
execute unless score #1 calcu_temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1
