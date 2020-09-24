data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend value {id:"minecraft:gold_ingot",Count:4b}
data modify storage galaxy:get item prepend value {id:"minecraft:glass_pane",Count:2b}
data modify storage galaxy:get item prepend value {id:"minecraft:emerald",Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:sea_lantern",Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:terracotta",Count:2b}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
