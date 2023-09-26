data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:katana_blade_wood",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:component/get/katana_blade_wood
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:oak_log",Count:5b,tag:{display:{Lore:['{"translate":"recipe.requirement.accept_any_type","color":"dark_gray","italic":false}']}}}
