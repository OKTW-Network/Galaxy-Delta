data modify storage galaxy:get item set value []
function galaxy:tool/get/crowbar
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
data modify storage galaxy:get item append value {id:"minecraft:iron_ingot",Count:4b}
data modify storage galaxy:get item append value {id:"minecraft:stick",Count:2b}

data modify storage galaxy:get recipe[-1].require set from storage galaxy:get item
