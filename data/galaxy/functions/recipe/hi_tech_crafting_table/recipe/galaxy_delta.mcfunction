data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:galaxy_delta",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:book/get/galaxy_delta
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:book",Count:1b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:redstone",Count:2b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:lapis_lazuli",Count:2b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:diamond",Count:1b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:iron_ingot",Count:2b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:obsidian",Count:1b}
