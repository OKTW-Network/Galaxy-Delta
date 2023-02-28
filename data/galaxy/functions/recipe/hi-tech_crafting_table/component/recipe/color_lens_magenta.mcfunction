data modify storage galaxy:get item set value []
function galaxy:component/get/color_lens_magenta
data modify storage galaxy:get recipe append from storage galaxy:get item[0]

data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:terracotta",tag:{display:{Lore:['{"translate":"text.any_type","color":"dark_gray","italic":false}']}},Count:2b}
data modify storage galaxy:get recipe[-1].require append value {id:"minecraft:magenta_stained_glass",Count:1b}

data modify storage galaxy:get recipe[-1].HTctRecipeID set value "component.galaxy.color_lens_magenta"
