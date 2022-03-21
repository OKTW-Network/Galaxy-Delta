tag @s add galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:ender_eye 0
execute unless score #1 calcu_temp matches 1.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:string 0
execute unless score #1 calcu_temp matches 1.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:tripwire_hook 0
execute unless score #1 calcu_temp matches 1.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck
