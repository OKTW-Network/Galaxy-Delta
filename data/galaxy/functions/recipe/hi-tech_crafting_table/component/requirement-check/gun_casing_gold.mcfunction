tag @s add galaxy._success.hi-tech_crafting_table.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:gold_ingot 0
execute unless score #1 calcu_temp matches 6.. run tag @s remove galaxy._success.hi-tech_crafting_table.recipeRequirementCheck
