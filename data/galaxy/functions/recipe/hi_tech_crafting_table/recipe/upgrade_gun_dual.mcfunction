data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:upgrade_gun_dual",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:component/get/upgrade_gun_dual
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:ender_eye",Count:1b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:string",Count:1b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:tripwire_hook",Count:1b}
