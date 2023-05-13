data modify storage galaxy:recipe hi_tech_crafting_table.recipe append value {id:"galaxy:color_lens_red",icon:{},requirement:[]}

data modify storage galaxy:get item set value []
function galaxy:component/get/color_lens_red
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].icon set from storage galaxy:get item[0]

data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:terracotta",Count:2b,tag:{display:{Lore:['{"translate":"recipe.requirement.accept_any_type","color":"dark_gray","italic":false}']}}}
data modify storage galaxy:recipe hi_tech_crafting_table.recipe[-1].requirement append value {id:"minecraft:red_stained_glass",Count:1b}
