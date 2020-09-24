data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend value {id:"minecraft:redstone",Count:2b}
data modify storage galaxy:get item prepend value {id:"minecraft:lapis_lazuli",Count:2b}
data modify storage galaxy:get item prepend value {id:"minecraft:diamond",Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:iron_ingot",Count:2b}
data modify storage galaxy:get item prepend value {id:"minecraft:crafting_table",Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:obsidian",Count:1b}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
