data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:reinforced_blast_furnace",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:block/get/reinforced_blast_furnace
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:blast_furnace",Count:1b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:smooth_stone",Count:2b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:obsidian",Count:4b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:iron_block",Count:2b}
