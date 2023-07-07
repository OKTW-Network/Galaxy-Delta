data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:laser_core_t1",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:component/get/laser_core_t1
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:iron_ingot",Count:4b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:glass_pane",Count:2b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:diamond",Count:1b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:redstone_lamp",Count:1b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:terracotta",Count:2b,tag:{display:{Lore:['{"translate":"recipe.requirement.accept_any_type","color":"dark_gray","italic":false}']}}}
