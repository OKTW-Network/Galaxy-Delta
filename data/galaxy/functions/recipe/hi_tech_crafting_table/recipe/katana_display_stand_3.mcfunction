data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:katana_display_stand_3",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:entity/get/katana_display_stand_3
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:dark_oak_slab",Count:3b}
