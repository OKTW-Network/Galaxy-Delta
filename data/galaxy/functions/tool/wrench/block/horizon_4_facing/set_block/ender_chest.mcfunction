execute unless predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 0 run setblock ~ ~ ~ ender_chest[facing=south,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 1 run setblock ~ ~ ~ ender_chest[facing=west,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 2 run setblock ~ ~ ~ ender_chest[facing=north,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 3 run setblock ~ ~ ~ ender_chest[facing=east,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 0 run setblock ~ ~ ~ ender_chest[facing=south,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 1 run setblock ~ ~ ~ ender_chest[facing=west,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 2 run setblock ~ ~ ~ ender_chest[facing=north,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 3 run setblock ~ ~ ~ ender_chest[facing=east,waterlogged=false]
