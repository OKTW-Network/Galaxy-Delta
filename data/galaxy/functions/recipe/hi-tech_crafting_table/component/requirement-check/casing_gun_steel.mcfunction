tag @s add galaxy.success.HTct.recipeRequirementCheck

execute store result score #1 calcu_temp run clear @s minecraft:command_block{CustomData:{galaxy:{Type:"item",id:"steel_ingot"}}} 0
execute unless score #1 calcu_temp matches 6.. run tag @s remove galaxy.success.HTct.recipeRequirementCheck
