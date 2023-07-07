data modify storage galaxy:get item append value {id:"minecraft:item_frame",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:block/get/tag/hi_tech_crafting_table
data modify storage galaxy:get item[0].tag set from storage galaxy:get itemTag[0]
