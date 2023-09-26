data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:katana_draw_strike_flash",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:component/get/katana_draw_strike_flash
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:book",Count:1b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:echo_shard",Count:2b}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:ender_pearl",Count:4b}
