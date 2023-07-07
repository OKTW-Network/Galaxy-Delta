data modify storage galaxy:get item append value {id:"minecraft:item_frame",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:tool/get/tag/crowbar
data modify storage galaxy:get item[0].tag set from storage galaxy:get itemTag[0]
