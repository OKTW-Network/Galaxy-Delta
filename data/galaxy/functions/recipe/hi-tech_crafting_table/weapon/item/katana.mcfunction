data modify storage galaxy:get item set value []
function galaxy:weapon/katana/get/katana
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
data modify storage galaxy:get item append value {id:"minecraft:stick",Count:2b}

function galaxy:material/get/steel_ingot
data modify storage cu:item simplify.item set from storage galaxy:get item[0]
function cu:item/simplify
data modify storage galaxy:get item[0] set from storage cu:item simplify.item
data modify storage galaxy:get item[0].tag merge value {HideFlags:63}
data modify storage galaxy:get item[0] merge value {Count:3b}

data modify storage galaxy:get item append value {id:"minecraft:gold_nugget",Count:2b}
data modify storage galaxy:get item append value {id:"minecraft:stripped_dark_oak_log",Count:2b}

data modify storage galaxy:get recipe[-1].require set from storage galaxy:get item
