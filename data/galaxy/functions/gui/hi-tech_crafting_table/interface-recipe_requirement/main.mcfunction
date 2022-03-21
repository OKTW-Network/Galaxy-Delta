# cover
function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/build-cover
tag @s[tag=setCover] remove setCover

# result
execute unless data block ~ ~ ~ Items[{Slot:16b}] run tag @s add setResult
execute if entity @s[tag=setResult] run function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/check-request
execute if entity @s[tag=setResult] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setResult] run function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/build-result
tag @s[tag=setResult] remove setResult

# require list button
function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/check-require_button
execute if entity @s[tag=setRequireButton] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setRequireButton] run function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/build-require_button
tag @s[tag=setRequireButton] remove setRequireButton

# require list page
function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/check-require_page
execute if entity @s[tag=setRequirePage] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setRequirePage] run function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/delete-require_page
execute if entity @s[tag=setRequirePage] run function galaxy:gui/hi-tech_crafting_table/interface-recipe_requirement/build-require_page
tag @s[tag=setRequirePage] remove setRequirePage

# button return
execute if entity @s[tag=setButtonReturn] run item replace block ~ ~ ~ container.18 with minecraft:golden_hoe{display:{Name:'{"translate":"gui.back","italic":false}'},HideFlags:63,CustomModelData:10120,CustomData:{galaxy:{id:"gui_item"}}}
tag @s[tag=setButtonReturn] remove setButtonReturn

# mode switch, return
execute unless data block ~ ~ ~ Items[{Slot:18b}] run tag @s add switchToInterface.main
execute if entity @s[tag=switchToInterface.main] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=switchToInterface.main] run function galaxy:gui/hi-tech_crafting_table/switch_to_interface
