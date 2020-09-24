data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend value {id:"minecraft:obsidian",Count:6b}
data modify storage galaxy:get item prepend value {id:"minecraft:iron_block",Count:2b}
data modify storage galaxy:get item prepend value {id:"minecraft:blast_furnace",Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:smooth_stone",Count:1b}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
