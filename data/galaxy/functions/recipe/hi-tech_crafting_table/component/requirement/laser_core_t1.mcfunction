data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend value {id:"minecraft:iron_ingot",Count:4b}
data modify storage galaxy:get item prepend value {id:"minecraft:glass_pane",Count:2b}
data modify storage galaxy:get item prepend value {id:"minecraft:diamond",Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:redstone_lamp",Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:terracotta",Count:2b}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
