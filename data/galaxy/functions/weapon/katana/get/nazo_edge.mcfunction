data modify storage galaxy:get item prepend value {id:"minecraft:netherite_sword",Count:1b}
data modify storage galaxy:get itemTag set value []
function galaxy:weapon/katana/get/tag/nazo_edge
data modify storage galaxy:get item[0].tag set from storage galaxy:get itemTag[0]
