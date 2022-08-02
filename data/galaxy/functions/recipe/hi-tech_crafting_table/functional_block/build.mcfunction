data modify storage galaxy:recipe HTct.category append value {}

function galaxy:recipe/hi-tech_crafting_table/functional_block/get-recipe
data modify storage galaxy:temp +recipe.build.input set from storage galaxy:get recipe
function galaxy:recipe/hi-tech_crafting_table/build-category

data modify storage galaxy:recipe HTct.category[-1].HTctCategoryID set value "functional_block"

data modify storage galaxy:get item set value []
function galaxy:block/get/hi-tech_crafting_table
data modify storage galaxy:recipe HTct.category[-1].icon set from storage galaxy:get item[0]
data modify storage galaxy:temp +recipe.build.resultTag set value {}
execute if data storage galaxy:recipe HTct.category[-1].icon.tag.CustomModelData run data modify storage galaxy:temp +recipe.build.resultTag.CustomModelData set from storage galaxy:recipe HTct.category[-1].icon.tag.CustomModelData
data modify storage galaxy:recipe HTct.category[-1].icon.tag set from storage galaxy:temp +recipe.build.resultTag
data modify storage galaxy:recipe HTct.category[-1].icon.tag merge value {display:{Name:'{"translate":"gui.htct.functional_block","italic":false}'},HideFlags:63,CustomData:{galaxy:{Type:"gui"}}}
data remove storage galaxy:recipe HTct.category[-1].icon.tag.display.Lore
# data modify storage galaxy:recipe HTct.category[-1].icon set value {id:"minecraft:golden_hoe",Count:1b,tag:{display:{Name:'{"translate":"gui.htct.functional_block","italic":false}'},HideFlags:63,CustomModelData:30102,CustomData:{galaxy:{Type:"gui"}}}}
