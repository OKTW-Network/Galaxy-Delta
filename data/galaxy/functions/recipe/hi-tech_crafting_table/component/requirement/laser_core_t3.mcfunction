data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend value {id:"minecraft:enchanted_golden_apple",Count:2b}
data modify storage galaxy:get item prepend value {id:"minecraft:glass_pane",Count:2b}
data modify storage galaxy:get item prepend value {id:"minecraft:ender_eye",Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:beacon",Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:terracotta",Count:2b}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
