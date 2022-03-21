data modify storage galaxy:get item set value []
function galaxy:block/get/assembly_table
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
function galaxy:material/get/steel_ingot
data modify storage galaxy:get item[0] merge value {Count:14b}
data modify storage galaxy:get recipe[-1].require append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:dark_oak_planks",Count:6b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:iron_block",Count:2b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "functional_block.galaxy.assembly_table"
