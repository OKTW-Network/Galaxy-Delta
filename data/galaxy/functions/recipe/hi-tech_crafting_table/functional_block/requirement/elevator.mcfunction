data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend value {id:"minecraft:iron_ingot",Count:8b}
data modify storage galaxy:get item prepend value {id:"minecraft:ender_pearl",Count:1b}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
