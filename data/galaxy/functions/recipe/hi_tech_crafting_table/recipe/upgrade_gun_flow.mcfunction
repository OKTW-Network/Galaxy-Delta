data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:upgrade_gun_flow",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:component/get/upgrade_gun_flow
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:iron_trapdoor",Count:1b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:stick",Count:1b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:comparator",Count:1b}
