data modify storage galaxy:get item set value []
function galaxy:recipe/hi-tech_crafting_table/functional_block/get-item
execute store result storage galaxy:recipe HTct.categories.functional_block.recipeTotal int 1 store result score #1 calcu_temp store result score #2 calcu_temp run data get storage galaxy:recipe HTct.items
scoreboard players operation #1 calcu_temp /= #15 num
execute store result storage galaxy:recipe HTct.categories.functional_block.recipeInFinalPage int 1 run scoreboard players operation #2 calcu_temp %= #15 num
execute if score #2 calcu_temp matches 1.. store result storage galaxy:recipe HTct.categories.functional_block.pageTotal int 1 run scoreboard players add #1 calcu_temp 1

function galaxy:recipe/hi-tech_crafting_table/functional_block/get-requirement

execute store result score #2 calcu_temp store result score #3 calcu_temp run scoreboard players set #1 calcu_temp 15
execute unless data storage galaxy:recipe {GUI:{HTct:{categories:{functional_block:{recipeInFinalPage:0}}}}} store result score #1 calcu_temp store result score #2 calcu_temp store result score #3 calcu_temp run data get storage galaxy:recipe HTct.categories.functional_block.recipeInFinalPage
data modify storage galaxy:recipe HTct.categories.functional_block.list set value []
function galaxy:recipe/hi-tech_crafting_table/functional_block/build-list

data modify storage galaxy:get item set value []
function galaxy:block/functional/get/elevator
data modify storage galaxy:recipe HTct.categories.functional_block.icon set from storage galaxy:get item[0]
data modify storage galaxy:recipe HTct.categories.functional_block.icon.tag merge value {display:{Name:'{"translate":"gui.htct.functional_block","italic":false}'},guiItem:1}
data remove storage galaxy:recipe HTct.categories.functional_block.icon.tag.display.Lore
# data modify storage galaxy:recipe HTct.categories.functional_block.icon set value {id:"minecraft:golden_hoe",Count:1b,tag:{display:{Name:'{"translate":"gui.htct.functional_block","italic":false}'},HideFlags:63,CustomModelData:30103,guiItem:1}}
