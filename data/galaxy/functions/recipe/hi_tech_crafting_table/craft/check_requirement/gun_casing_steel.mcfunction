scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 temp run clear @s minecraft:command_block{CustomData:{galaxy:{Type:"item",id:"steel_ingot"}}} 0
execute unless score #1 temp matches 6.. run scoreboard players set #recipe.craftingStatus galaxy -1
