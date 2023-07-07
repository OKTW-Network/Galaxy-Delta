data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:empower_lens",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:tool/get/empower_lens
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:blaze_rod",Count:4b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:gold_ingot",Count:2b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:glass_pane",Count:1b}
