execute if entity @s[tag=switchToInterface.recipe_list] run scoreboard players set @s guiInterface 0
execute if entity @s[tag=switchToInterface.recipe_require] run scoreboard players set @s guiInterface 1
tag @s[tag=switchToInterface.recipe_list] remove switchToInterface.recipe_list
tag @s[tag=switchToInterface.recipe_require] remove switchToInterface.recipe_require
function galaxy:gui/hi-tech_crafting_table/update
