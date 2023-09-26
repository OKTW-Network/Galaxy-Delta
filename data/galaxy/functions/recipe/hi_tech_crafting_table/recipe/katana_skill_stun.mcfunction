data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:katana_skill_stun",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:component/get/katana_skill_stun
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:book",Count:1b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:amethyst_shard",Count:2b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:iron_block",Count:2b}
