data modify storage galaxy:get item set value []
function galaxy:tool/get/structure_empower
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
data modify storage galaxy:get item append value {id:"minecraft:blaze_rod",Count:4b}
data modify storage galaxy:get item append value {id:"minecraft:gold_ingot",Count:2b}
data modify storage galaxy:get item append value {id:"minecraft:glass_pane",Count:1b}

data modify storage galaxy:get recipe[-1].require set from storage galaxy:get item
