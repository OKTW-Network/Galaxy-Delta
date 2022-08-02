tag @s add galaxy._success.hi-tech_crafting_table.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:crying_obsidian 0
execute unless score #1 calcu_temp matches 2.. run tag @s remove galaxy._success.hi-tech_crafting_table.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:purpur_pillar 0
execute unless score #1 calcu_temp matches 4.. run tag @s remove galaxy._success.hi-tech_crafting_table.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:prismarine_shard 0
execute unless score #1 calcu_temp matches 8.. run tag @s remove galaxy._success.hi-tech_crafting_table.recipeRequirementCheck
