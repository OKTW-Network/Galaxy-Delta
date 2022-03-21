tag @s add galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:terracotta 0
execute unless score #1 calcu_temp matches 2.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:smooth_quartz 0
execute unless score #1 calcu_temp matches 2.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck
