data modify storage galaxy:get item append value {id:"minecraft:command_block",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:material/get/tag/steel_ingot
data modify storage galaxy:get item[0].tag set from storage galaxy:get itemTag[0]
