data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend value {id:"minecraft:crying_obsidian",Count:2b}
data modify storage galaxy:get item prepend value {id:"minecraft:purpur_pillar",Count:4b}
data modify storage galaxy:get item prepend value {id:"minecraft:prismarine_shard",Count:8b}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
