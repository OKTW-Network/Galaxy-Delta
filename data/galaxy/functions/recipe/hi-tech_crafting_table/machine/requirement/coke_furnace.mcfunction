data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend value {id:"minecraft:clay_ball",Count:12b}
data modify storage galaxy:get item prepend value {id:"minecraft:sand",Count:8b}
data modify storage galaxy:get item prepend value {id:"minecraft:furnace",Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:smooth_stone",Count:1b}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
