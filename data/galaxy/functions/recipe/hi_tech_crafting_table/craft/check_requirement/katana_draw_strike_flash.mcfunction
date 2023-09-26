scoreboard players set #recipe.craftingStatus galaxy 1

execute store result score #1 temp run clear @s minecraft:book 0
execute unless score #1 temp matches 1.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:echo_shard 0
execute unless score #1 temp matches 2.. run scoreboard players set #recipe.craftingStatus galaxy -1

execute store result score #1 temp run clear @s minecraft:ender_pearl 0
execute unless score #1 temp matches 4.. run scoreboard players set #recipe.craftingStatus galaxy -1
