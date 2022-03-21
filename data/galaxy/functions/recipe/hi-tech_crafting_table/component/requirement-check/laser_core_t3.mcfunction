tag @s add galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:enchanted_golden_apple 0
execute unless score #1 calcu_temp matches 2.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:glass_pane 0
execute unless score #1 calcu_temp matches 2.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s #minecraft:ender_eye 0
execute unless score #1 calcu_temp matches 1.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:beacon 0
execute unless score #1 calcu_temp matches 1.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s #minecraft:terracotta 0
execute unless score #1 calcu_temp matches 2.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck
