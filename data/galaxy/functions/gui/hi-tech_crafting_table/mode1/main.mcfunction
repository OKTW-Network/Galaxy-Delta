# cover
function galaxy:gui/hi-tech_crafting_table/mode1/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/hi-tech_crafting_table/mode1/build-cover
tag @s[tag=setCover] remove setCover

# get recipe
execute if entity @s[tag=getRecipe] run function galaxy:gui/hi-tech_crafting_table/mode1/get-recipe
tag @s[tag=getRecipe] remove getRecipe

# result
execute unless data block ~ ~ ~ Items[{Slot:16b}] run tag @s add setResult
execute if entity @s[tag=setResult] run function galaxy:gui/hi-tech_crafting_table/mode1/check-request
execute if entity @s[tag=setResult] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setResult] run function galaxy:gui/hi-tech_crafting_table/mode1/build-result
tag @s[tag=setResult] remove setResult

# require list button
function galaxy:gui/hi-tech_crafting_table/mode1/check-require_button
execute if entity @s[tag=setRequireButton] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setRequireButton] run function galaxy:gui/hi-tech_crafting_table/mode1/build-require_button
tag @s[tag=setRequireButton] remove setRequireButton

# require list page
function galaxy:gui/hi-tech_crafting_table/mode1/check-require_page
execute if entity @s[tag=setRequirePage] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setRequirePage] run function galaxy:gui/hi-tech_crafting_table/mode1/delete-require_page
execute if entity @s[tag=setRequirePage] run function galaxy:gui/hi-tech_crafting_table/mode1/build-require_page
tag @s[tag=setRequirePage] remove setRequirePage

# button return
execute if entity @s[tag=setButtonReturn] run replaceitem block ~ ~ ~ container.18 minecraft:golden_hoe{display:{Name:'{"translate":"gui.back","italic":false}'},HideFlags:63,CustomModelData:10120,guiItem:1}
tag @s[tag=setButtonReturn] remove setButtonReturn

# mode switch, return
execute unless data block ~ ~ ~ Items[{Slot:18b}] run tag @s add switchToMode0
execute if entity @s[tag=switchToMode0] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=switchToMode0] run function galaxy:gui/hi-tech_crafting_table/switch_mode
