data modify storage galaxy:get item set value []
function galaxy:weapon/katana/get/katana
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
data modify storage galaxy:get item append value {id:"minecraft:stick",Count:2b}

function galaxy:material/get/steel_ingot
data modify storage galaxy:get item[0] merge value {Count:3b}
data modify storage galaxy:get item append from storage galaxy:get item[0]
data remove storage galaxy:get item[0]

data modify storage galaxy:get item append value {id:"minecraft:gold_nugget",Count:4b}
data modify storage galaxy:get item append value {id:"minecraft:stripped_dark_oak_log",Count:1b}

data modify storage galaxy:get recipe[-1].require set from storage galaxy:get item
