scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 calcu_temp run clear @s minecraft:dark_oak_slab 0
execute unless score #1 calcu_temp matches 3.. run scoreboard players set #recipe.craftingStatus galaxy -1