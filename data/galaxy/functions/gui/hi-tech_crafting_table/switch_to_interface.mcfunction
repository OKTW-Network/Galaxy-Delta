execute if entity @s[tag=switchToInterface.main] run scoreboard players set @s galaxy.GUI.interface 0
execute if entity @s[tag=switchToInterface.recipe_requirement] run scoreboard players set @s galaxy.GUI.interface 1
tag @s[tag=switchToInterface.main] remove switchToInterface.main
tag @s[tag=switchToInterface.recipe_requirement] remove switchToInterface.recipe_requirement
function galaxy:gui/hi-tech_crafting_table/update
