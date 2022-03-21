tag @s add galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:crying_obsidian 0
execute unless score #1 calcu_temp matches 2.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:purpur_block 0
execute unless score #1 calcu_temp matches 4.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:prismarine_crystals 0
execute unless score #1 calcu_temp matches 8.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck
