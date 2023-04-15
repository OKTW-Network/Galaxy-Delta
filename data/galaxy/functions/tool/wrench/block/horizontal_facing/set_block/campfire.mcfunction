data modify storage galaxy:temp block set from block ~ ~ ~
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 0 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=north,lit=false,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 1 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=east,lit=false,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 2 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=south,lit=false,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 3 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=west,lit=false,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 0 if predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=north,lit=true,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 1 if predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=east,lit=true,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 2 if predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=south,lit=true,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 3 if predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=west,lit=true,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 0 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=north,lit=false,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 1 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=east,lit=false,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 2 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=south,lit=false,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 3 unless predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=west,lit=false,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 0 if predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=north,lit=true,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 1 if predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=east,lit=true,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 2 if predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=south,lit=true,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 3 if predicate minecraft:block_states/lit run setblock ~ ~ ~ minecraft:campfire[facing=west,lit=true,waterlogged=false]
data modify block ~ ~ ~ {} merge from storage galaxy:temp block