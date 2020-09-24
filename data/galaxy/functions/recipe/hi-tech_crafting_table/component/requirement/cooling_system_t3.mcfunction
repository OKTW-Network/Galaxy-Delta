data modify storage galaxy:get item set value []
data modify storage galaxy:get item prepend value {id:"minecraft:heavy_weighted_pressure_plate",Count:4b}
data modify storage galaxy:get item prepend value {id:"minecraft:iron_nugget",Count:10b}
data modify storage galaxy:get item prepend value {id:"minecraft:packed_ice",Count:4b}
data modify storage galaxy:get item prepend value {id:"minecraft:sponge",Count:1b}

data modify storage galaxy:recipe HTct.requirement prepend from storage galaxy:get item
