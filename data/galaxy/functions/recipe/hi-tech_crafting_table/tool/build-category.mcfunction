data modify storage galaxy:get item set value []
function galaxy:recipe/hi-tech_crafting_table/tool/get-item
execute store result storage galaxy:recipe HTct.categories.tool.recipeTotal int 1 store result score #1 calcu_temp store result score #2 calcu_temp run data get storage galaxy:recipe HTct.items
scoreboard players operation #1 calcu_temp /= #15 num
execute store result storage galaxy:recipe HTct.categories.tool.recipeInFinalPage int 1 run scoreboard players operation #2 calcu_temp %= #15 num
execute if score #2 calcu_temp matches 1.. store result storage galaxy:recipe HTct.categories.tool.pageTotal int 1 run scoreboard players add #1 calcu_temp 1

function galaxy:recipe/hi-tech_crafting_table/tool/get-requirement

execute store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 15
execute unless data storage galaxy:recipe {GUI:{HTct:{categories:{tool:{recipeInFinalPage:0}}}}} store result score #1 calcu_temp store result score #2 calcu_temp store result score #3 calcu_temp run data get storage galaxy:recipe HTct.categories.tool.recipeInFinalPage
data modify storage galaxy:recipe HTct.categories.tool.list set value []
function galaxy:recipe/hi-tech_crafting_table/tool/build-list

data modify storage galaxy:get item set value []
function galaxy:tool/get/wrench
data modify storage galaxy:recipe HTct.categories.tool.icon set from storage galaxy:get item[0]
data modify storage galaxy:recipe HTct.categories.tool.icon.tag merge value {display:{Name:'{"translate":"gui.htct.tool","italic":false}'},guiItem:1}
data remove storage galaxy:recipe HTct.categories.tool.icon.tag.display.Lore
# data modify storage galaxy:recipe HTct.categories.tool.icon set value {id:"minecraft:golden_hoe",Count:1b,tag:{display:{Name:'{"translate":"gui.htct.tool","italic":false}'},HideFlags:63,CustomModelData:30105,guiItem:1}}
