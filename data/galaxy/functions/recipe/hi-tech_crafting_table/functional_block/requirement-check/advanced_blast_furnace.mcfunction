execute store result score #1 calcu_temp run clear @s minecraft:obsidian 0
execute unless score #1 calcu_temp matches 4.. run scoreboard players set #2 calcu_temp 1

execute unless score #2 calcu_temp matches 1 store result score #1 calcu_temp run clear @s minecraft:iron_block 0
execute unless score #1 calcu_temp matches 2.. run scoreboard players set #2 calcu_temp 1

execute unless score #2 calcu_temp matches 1 store result score #1 calcu_temp run clear @s minecraft:blast_furnace 0
execute unless score #1 calcu_temp matches 1.. run scoreboard players set #2 calcu_temp 1

execute unless score #2 calcu_temp matches 1 store result score #1 calcu_temp run clear @s minecraft:smooth_stone 0
execute unless score #2 calcu_temp matches 1 if score #1 calcu_temp matches 2.. run tag @s add galaxy.success.HTct.recipeRequirementCheck
