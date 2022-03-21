data modify storage galaxy:get item set value []
function galaxy:weapon/katana/get/steel
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:stick",Count:2b}

data modify storage galaxy:get item set value []
function galaxy:material/get/steel_ingot
data modify storage galaxy:get item[0] merge value {Count:3b}
data modify storage galaxy:get recipe[-1].require append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:gold_nugget",Count:4b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:stripped_dark_oak_log",Count:1b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "weapon.galaxy.katana.steel"
