execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 0 if score #tool.wrench.set_block.state.half galaxy matches 0 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=north,half=bottom,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 1 if score #tool.wrench.set_block.state.half galaxy matches 0 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=east,half=bottom,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 2 if score #tool.wrench.set_block.state.half galaxy matches 0 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=south,half=bottom,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 3 if score #tool.wrench.set_block.state.half galaxy matches 0 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=west,half=bottom,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 0 if score #tool.wrench.set_block.state.half galaxy matches 0 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=north,half=bottom,waterlogged=true]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 1 if score #tool.wrench.set_block.state.half galaxy matches 0 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=east,half=bottom,waterlogged=true]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 2 if score #tool.wrench.set_block.state.half galaxy matches 0 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=south,half=bottom,waterlogged=true]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 3 if score #tool.wrench.set_block.state.half galaxy matches 0 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=west,half=bottom,waterlogged=true]

execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 0 if score #tool.wrench.set_block.state.half galaxy matches 1 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=north,half=top,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 1 if score #tool.wrench.set_block.state.half galaxy matches 1 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=east,half=top,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 2 if score #tool.wrench.set_block.state.half galaxy matches 1 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=south,half=top,waterlogged=false]
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 3 if score #tool.wrench.set_block.state.half galaxy matches 1 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=west,half=top,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 0 if score #tool.wrench.set_block.state.half galaxy matches 1 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=north,half=top,waterlogged=true]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 1 if score #tool.wrench.set_block.state.half galaxy matches 1 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=east,half=top,waterlogged=true]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 2 if score #tool.wrench.set_block.state.half galaxy matches 1 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=south,half=top,waterlogged=true]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.facing galaxy matches 3 if score #tool.wrench.set_block.state.half galaxy matches 1 run setblock ~ ~ ~ minecraft:sandstone_stairs[facing=west,half=top,waterlogged=true]
