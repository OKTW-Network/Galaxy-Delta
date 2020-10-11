data modify storage galaxy:get item set value []
function galaxy:component/get/laser_core_t3
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
data modify storage galaxy:get item append value {id:"minecraft:enchanted_golden_apple",Count:2b}
data modify storage galaxy:get item append value {id:"minecraft:glass_pane",Count:2b}
data modify storage galaxy:get item append value {id:"minecraft:ender_eye",Count:1b}
data modify storage galaxy:get item append value {id:"minecraft:beacon",Count:1b}
data modify storage galaxy:get item append value {id:"minecraft:terracotta",Count:2b}

data modify storage galaxy:get recipe[-1].require set from storage galaxy:get item
