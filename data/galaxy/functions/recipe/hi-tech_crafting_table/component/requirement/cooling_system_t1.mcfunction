data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend value {id:"minecraft:heavy_weighted_pressure_plate",Count:4b}
data modify storage galaxy:get item prepend value {id:"minecraft:iron_nugget",Count:10b}
data modify storage galaxy:get item prepend value {id:"minecraft:potion",tag:{Potion:"minecraft:water"},Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:potion",tag:{Potion:"minecraft:water"},Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:oak_leaves",tag:{display:{Lore:['{"translate":"tooltip.any_type","color":"dark_gray","italic":false}']}},Count:1b}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
