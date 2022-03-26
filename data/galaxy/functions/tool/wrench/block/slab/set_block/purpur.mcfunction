execute unless predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doType matches 0 run setblock ~ ~ ~ minecraft:purpur_slab[type=bottom,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doType matches 0 run setblock ~ ~ ~ minecraft:purpur_slab[type=bottom,waterlogged=true]
execute unless predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doType matches 1 run setblock ~ ~ ~ minecraft:purpur_slab[type=top,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doType matches 1 run setblock ~ ~ ~ minecraft:purpur_slab[type=top,waterlogged=true]
