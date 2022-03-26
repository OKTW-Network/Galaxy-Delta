data modify storage galaxy:temp block set from block ~ ~ ~

execute unless predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 0 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=south,lit=false,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 1 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=west,lit=false,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 2 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=north,lit=false,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 3 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=east,lit=false,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 0 if predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=south,lit=true,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 1 if predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=west,lit=true,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 2 if predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=north,lit=true,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 3 if predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=east,lit=true,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 0 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=south,lit=false,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 1 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=west,lit=false,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 2 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=north,lit=false,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 3 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=east,lit=false,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 0 if predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=south,lit=true,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 1 if predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=west,lit=true,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 2 if predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=north,lit=true,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score @s galaxy.tool.wrench.doFacing matches 3 if predicate minecraft:block_states/lit run setblock ~ ~ ~ campfire[facing=east,lit=true,waterlogged=false]

data modify block ~ ~ ~ {} merge from storage galaxy:temp block
