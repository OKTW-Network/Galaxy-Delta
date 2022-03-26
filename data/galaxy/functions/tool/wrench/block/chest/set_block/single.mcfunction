data modify storage galaxy:temp block set from block ~ ~ ~

setblock ~ ~ ~ minecraft:air replace

execute unless predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score @s galaxy.tool.wrench.doFacing matches 0 run setblock ~ ~ ~ minecraft:chest[type=single,facing=south,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score @s galaxy.tool.wrench.doFacing matches 1 run setblock ~ ~ ~ minecraft:chest[type=single,facing=west,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score @s galaxy.tool.wrench.doFacing matches 2 run setblock ~ ~ ~ minecraft:chest[type=single,facing=north,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score @s galaxy.tool.wrench.doFacing matches 3 run setblock ~ ~ ~ minecraft:chest[type=single,facing=east,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score @s galaxy.tool.wrench.doFacing matches 0 run setblock ~ ~ ~ minecraft:chest[type=single,facing=south,waterlogged=true]
execute if predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score @s galaxy.tool.wrench.doFacing matches 1 run setblock ~ ~ ~ minecraft:chest[type=single,facing=west,waterlogged=true]
execute if predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score @s galaxy.tool.wrench.doFacing matches 2 run setblock ~ ~ ~ minecraft:chest[type=single,facing=north,waterlogged=true]
execute if predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:chest"} if score @s galaxy.tool.wrench.doFacing matches 3 run setblock ~ ~ ~ minecraft:chest[type=single,facing=east,waterlogged=true]

execute unless predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score @s galaxy.tool.wrench.doFacing matches 0 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=south,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score @s galaxy.tool.wrench.doFacing matches 1 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=west,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score @s galaxy.tool.wrench.doFacing matches 2 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=north,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score @s galaxy.tool.wrench.doFacing matches 3 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=east,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score @s galaxy.tool.wrench.doFacing matches 0 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=south,waterlogged=true]
execute if predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score @s galaxy.tool.wrench.doFacing matches 1 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=west,waterlogged=true]
execute if predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score @s galaxy.tool.wrench.doFacing matches 2 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=north,waterlogged=true]
execute if predicate minecraft:block_states/watterlogged if data storage galaxy:temp block{id:"minecraft:trapped_chest"} if score @s galaxy.tool.wrench.doFacing matches 3 run setblock ~ ~ ~ minecraft:trapped_chest[type=single,facing=east,waterlogged=true]

data modify block ~ ~ ~ {} merge from storage galaxy:temp block
