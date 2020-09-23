data modify storage galaxy:get item prepend value {id:"minecraft:iron_sword",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:tool/get/tag/wrench
data modify storage galaxy:get item[0].tag set from storage galaxy:get itemTag[0]
