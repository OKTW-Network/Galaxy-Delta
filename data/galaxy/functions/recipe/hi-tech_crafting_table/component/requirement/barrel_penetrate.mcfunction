data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend value {id:"minecraft:terracotta",Count:2b}
data modify storage galaxy:get item prepend value {id:"minecraft:quartz_pillar",Count:2b}
data modify storage galaxy:get item prepend value {id:"minecraft:flint",Count:4b}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
