data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend value {id:"minecraft:ender_eye",Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:comparator",Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:tripwire_hook",Count:1b}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
