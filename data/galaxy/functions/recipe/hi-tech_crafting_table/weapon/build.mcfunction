data modify storage galaxy:recipe HTct.category append value {}

data modify storage galaxy:get item set value []
function galaxy:recipe/hi-tech_crafting_table/weapon/get-item
data modify storage galaxy:temp recipe set from storage galaxy:get recipe
function galaxy:recipe/hi-tech_crafting_table/build-category

data modify storage galaxy:get item set value []
function galaxy:weapon/energy_saber/get/plasum
data modify storage galaxy:recipe HTct.category[-1].icon set from storage galaxy:get item[0]
data modify storage galaxy:temp itemTag set value {}
execute if data storage galaxy:recipe HTct.category[-1].icon.tag.CustomModelData run data modify storage galaxy:temp itemTag.CustomModelData set from storage galaxy:recipe HTct.category[-1].icon.tag.CustomModelData
data modify storage galaxy:recipe HTct.category[-1].icon.tag set from storage galaxy:temp itemTag
data modify storage galaxy:recipe HTct.category[-1].icon.tag merge value {display:{Name:'{"translate":"gui.htct.weapon","italic":false}'},HideFlags:63,guiItem:1}
data remove storage galaxy:recipe HTct.category[-1].icon.tag.display.Lore
# data modify storage galaxy:recipe HTct.category[-1].icon set value {id:"minecraft:golden_hoe",Count:1b,tag:{display:{Name:'{"translate":"gui.htct.weapon","italic":false}'},HideFlags:63,CustomModelData:30104,guiItem:1}}
