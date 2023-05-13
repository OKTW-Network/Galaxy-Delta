data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:gun_barrel_sniper_rifle",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:component/get/gun_barrel_sniper_rifle
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:crying_obsidian",Count:2b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:purpur_pillar",Count:4b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:prismarine_shard",Count:8b}
