scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 temp run clear @s minecraft:stick 0
execute unless score #1 temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:command_block{CustomData:{galaxy:{Type:"item",id:"steel_ingot"}}} 0
execute unless score #1 temp matches 3.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:gold_nugget 0
execute unless score #1 temp matches 4.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:stripped_dark_oak_log 0
execute unless score #1 temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1
