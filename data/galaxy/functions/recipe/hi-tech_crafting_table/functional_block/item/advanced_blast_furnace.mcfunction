data modify storage galaxy:get item set value []
function galaxy:block/get/advanced_blast_furnace
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
data modify storage galaxy:get item append value {id:"minecraft:blast_furnace",Count:1b}
data modify storage galaxy:get item append value {id:"minecraft:smooth_stone",Count:2b}
data modify storage galaxy:get item append value {id:"minecraft:obsidian",Count:4b}
data modify storage galaxy:get item append value {id:"minecraft:iron_block",Count:2b}

data modify storage galaxy:get recipe[-1].require set from storage galaxy:get item
