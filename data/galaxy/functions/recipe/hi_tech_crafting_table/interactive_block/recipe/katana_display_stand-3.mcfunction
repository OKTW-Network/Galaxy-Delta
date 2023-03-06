data modify storage galaxy:get item set value []
function galaxy:entity/get/katana_display_stand-3
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:dark_oak_slab",Count:3b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "interactive_block.galaxy.katana_display_stand-3"
