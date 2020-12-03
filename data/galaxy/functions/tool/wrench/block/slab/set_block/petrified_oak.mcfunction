execute unless predicate minecraft:block_states/watterlogged if score @s wrenchDoType matches 0 run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=bottom,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s wrenchDoType matches 0 run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=bottom,waterlogged=true]
execute unless predicate minecraft:block_states/watterlogged if score @s wrenchDoType matches 1 run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=top,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s wrenchDoType matches 1 run setblock ~ ~ ~ minecraft:petrified_oak_slab[type=top,waterlogged=true]
