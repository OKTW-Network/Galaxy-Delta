tag @s add galaxy._success.hi-tech_crafting_table.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:dark_oak_slab 0
execute unless score #1 calcu_temp matches 3.. run tag @s remove galaxy._success.hi-tech_crafting_table.recipeRequirementCheck
