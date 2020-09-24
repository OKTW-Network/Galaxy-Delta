data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend value {id:"minecraft:heavy_weighted_pressure_plate",Count:4b}
data modify storage galaxy:get item prepend value {id:"minecraft:glass",Count:2b}
data modify storage galaxy:get item prepend value {id:"minecraft:hopper",Count:1b}
data modify storage galaxy:get item prepend value {id:"minecraft:heart_of_the_sea",Count:1b}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
