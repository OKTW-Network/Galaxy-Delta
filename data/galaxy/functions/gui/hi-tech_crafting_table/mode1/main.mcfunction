# cover
function galaxy:gui/hi-tech_crafting_table/mode1/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/hi-tech_crafting_table/mode1/build-cover
tag @s[tag=setCover] remove setCover

# result
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run tag @s add setResult
execute if entity @s[tag=setResult] run function galaxy:gui/hi-tech_crafting_table/mode1/check-request
execute if entity @s[tag=setResult] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setResult] run function galaxy:recipe/hi-tech_crafting_table/build-recipe_result
tag @s[tag=setResult] remove setResult

# requirement
function galaxy:gui/hi-tech_crafting_table/mode1/check-require
execute if entity @s[tag=setRequire] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setRequire] run function galaxy:gui/hi-tech_crafting_table/mode1/delete-recipe_require
execute if entity @s[tag=setRequire] run function galaxy:gui/hi-tech_crafting_table/mode1/build-require
tag @s[tag=setRequire] remove setRequire

# button return
execute if entity @s[tag=setButtonReturn] run replaceitem block ~ ~ ~ container.18 minecraft:golden_hoe{display:{Name:'{"translate":"gui.back","italic":false}'},HideFlags:63,CustomModelData:10120,guiItem:1}
tag @s[tag=setButtonReturn] remove setButtonReturn

# mode switch
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:18b}]} run tag @s add switchToMode0
execute if entity @s[tag=switchToMode0] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=switchToMode0] run function galaxy:gui/hi-tech_crafting_table/switch_mode



