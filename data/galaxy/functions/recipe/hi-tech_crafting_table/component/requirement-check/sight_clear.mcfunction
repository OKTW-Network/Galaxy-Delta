tag @s add galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:heavy_weighted_pressure_plate 0
execute unless score #1 calcu_temp matches 2.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:glass 0
execute unless score #1 calcu_temp matches 2.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck
