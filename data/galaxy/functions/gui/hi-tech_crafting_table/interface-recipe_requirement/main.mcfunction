# cover
function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/check-cover
execute if entity @s[tag=galaxy._task.GUI.buildCover] run function galaxy:gui/remove_player_gui_item
execute if entity @s[tag=galaxy._task.GUI.buildCover] run function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/build-cover
tag @s[tag=galaxy._task.GUI.buildCover] remove galaxy._task.GUI.buildCover

# result
execute unless data block ~ ~ ~ Items[{Slot:16b}] run tag @s add galaxy._task.assembly_table.buildResult
execute if entity @s[tag=galaxy._task.assembly_table.buildResult] run function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/check-request
execute if entity @s[tag=galaxy._task.assembly_table.buildResult] run function galaxy:gui/remove_player_gui_item
execute if entity @s[tag=galaxy._task.assembly_table.buildResult] run function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/build-result
tag @s[tag=galaxy._task.assembly_table.buildResult] remove galaxy._task.assembly_table.buildResult

# require list button
function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/check-require_button
execute if entity @s[tag=setRequireButton] run function galaxy:gui/remove_player_gui_item
execute if entity @s[tag=setRequireButton] run function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/build-require_button
tag @s[tag=setRequireButton] remove setRequireButton

# require list page
function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/check-require_page
execute if entity @s[tag=setRequirePage] run function galaxy:gui/remove_player_gui_item
execute if entity @s[tag=setRequirePage] run function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/delete-require_page
execute if entity @s[tag=setRequirePage] run function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/build-require_page
tag @s[tag=setRequirePage] remove setRequirePage

# button return
execute if entity @s[tag=setButtonReturn] run item replace block ~ ~ ~ container.18 with minecraft:golden_hoe{display:{Name:'{"translate":"gui.back","italic":false}'},HideFlags:63,CustomModelData:10120,CustomData:{galaxy:{Type:"gui"}}}
tag @s[tag=setButtonReturn] remove setButtonReturn

# mode switch, return
execute unless data block ~ ~ ~ Items[{Slot:18b}] run tag @s add switchToInterface.main
execute if entity @s[tag=switchToInterface.main] run function galaxy:gui/remove_player_gui_item
execute if entity @s[tag=switchToInterface.main] run function galaxy:gui/hi-tech_crafting_table/switch_to_interface
