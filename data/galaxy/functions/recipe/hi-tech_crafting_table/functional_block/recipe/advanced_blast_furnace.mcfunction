data modify storage galaxy:get item set value []
function galaxy:block/get/advanced_blast_furnace
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:blast_furnace",Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:smooth_stone",Count:2b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:obsidian",Count:4b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:iron_block",Count:2b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "functional_block.galaxy.advanced_blast_furnace"
