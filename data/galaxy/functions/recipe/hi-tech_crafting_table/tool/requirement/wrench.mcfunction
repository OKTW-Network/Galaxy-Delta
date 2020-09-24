data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend value {id:"minecraft:iron_ingot",Count:3b}
data modify storage galaxy:get item prepend value {id:"minecraft:stick",Count:1b}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
