data modify storage galaxy:get item set value []
function galaxy:block/functional/get/katana_display_stand-3
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
data modify storage galaxy:get item append value {id:"minecraft:dark_oak_slab",Count:3b}

data modify storage galaxy:get recipe[-1].require set from storage galaxy:get item

