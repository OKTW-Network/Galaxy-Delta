data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:cooling_system_t1",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:component/get/cooling_system_t1
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:heavy_weighted_pressure_plate",Count:4b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:iron_nugget",Count:10b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:potion",tag:{Potion:"minecraft:water"},Count:1b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:potion",tag:{Potion:"minecraft:water"},Count:1b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:oak_leaves",Count:1b,tag:{display:{Lore:['{"translate":"recipe.requirement.accept_any_type","color":"dark_gray","italic":false}']}}}
