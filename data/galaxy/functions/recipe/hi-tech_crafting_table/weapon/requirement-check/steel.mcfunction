tag @s add galaxy._success.hi-tech_crafting_table.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:stick 0
execute unless score #1 calcu_temp matches 2.. run tag @s remove galaxy._success.hi-tech_crafting_table.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:command_block{CustomData:{galaxy:{Type:"item",id:"steel_ingot"}}} 0
execute unless score #1 calcu_temp matches 3.. run tag @s remove galaxy._success.hi-tech_crafting_table.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:gold_nugget 0
execute unless score #1 calcu_temp matches 4.. run tag @s remove galaxy._success.hi-tech_crafting_table.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:stripped_dark_oak_log 0
execute unless score #1 calcu_temp matches 1.. run tag @s remove galaxy._success.hi-tech_crafting_table.recipeRequirementCheck
