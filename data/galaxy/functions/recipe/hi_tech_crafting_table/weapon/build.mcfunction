data modify storage galaxy:recipe hi_tech_crafting_table.category append value {}

function galaxy:recipe/hi_tech_crafting_table/weapon/get-recipe
data modify storage galaxy:temp +recipe.build.input set from storage galaxy:get recipe
function galaxy:recipe/hi_tech_crafting_table/build-category

data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].HTctCategoryID set value "weapon"

data modify storage galaxy:get item set value []
function galaxy:weapon/get/plasum
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].icon set from storage galaxy:get item[0]
data modify storage galaxy:temp +recipe.build.resultTag set value {}
execute if data storage galaxy:recipe hi_tech_crafting_table.category[-1].icon.tag.CustomModelData run data modify storage galaxy:temp +recipe.build.resultTag.CustomModelData set from storage galaxy:recipe hi_tech_crafting_table.category[-1].icon.tag.CustomModelData
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].icon.tag set from storage galaxy:temp +recipe.build.resultTag
data modify storage galaxy:recipe hi_tech_crafting_table.category[-1].icon.tag merge value {display:{Name:'{"translate":"gui.galaxy.hi_tech_crafting_table.category.weapon","italic":false}'},HideFlags:127,CustomData:{galaxy:{Type:"gui"}}}
data remove storage galaxy:recipe hi_tech_crafting_table.category[-1].icon.tag.display.Lore
