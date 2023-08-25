data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:gun_casing_steel",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:component/get/gun_casing_steel
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:get item set value []
function galaxy:material/get/steel_ingot
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append from storage galaxy:get item[0]
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement[-1] merge value {Count:4b}
