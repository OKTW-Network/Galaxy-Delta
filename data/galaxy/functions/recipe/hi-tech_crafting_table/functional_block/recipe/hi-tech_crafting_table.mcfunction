data modify storage galaxy:get item set value []
function galaxy:block/get/hi-tech_crafting_table
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:crafting_table",Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:redstone",Count:2b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:lapis_lazuli",Count:2b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:diamond",Count:1b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:iron_ingot",Count:2b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:obsidian",Count:1b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "functional_block.galaxy.hi-tech_crafting_table"
