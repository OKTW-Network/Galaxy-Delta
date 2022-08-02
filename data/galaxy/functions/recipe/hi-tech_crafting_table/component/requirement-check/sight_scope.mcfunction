tag @s add galaxy._success.hi-tech_crafting_table.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:heavy_weighted_pressure_plate 0
execute unless score #1 calcu_temp matches 4.. run tag @s remove galaxy._success.hi-tech_crafting_table.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:glass 0
execute unless score #1 calcu_temp matches 2.. run tag @s remove galaxy._success.hi-tech_crafting_table.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:hopper 0
execute unless score #1 calcu_temp matches 1.. run tag @s remove galaxy._success.hi-tech_crafting_table.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:heart_of_the_sea 0
execute unless score #1 calcu_temp matches 1.. run tag @s remove galaxy._success.hi-tech_crafting_table.recipeRequirementCheck
