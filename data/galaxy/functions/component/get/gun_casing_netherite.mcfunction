data modify storage galaxy:get item append value {id:"minecraft:stone_sword",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:component/get/tag/gun_casing_netherite
data modify storage galaxy:get item[0].tag set from storage galaxy:get itemTag[0]
