execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.type galaxy matches 0 run setblock ~ ~ ~ minecraft:crimson_slab[type=bottom,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.type galaxy matches 0 run setblock ~ ~ ~ minecraft:crimson_slab[type=bottom,waterlogged=true]
execute unless predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.type galaxy matches 1 run setblock ~ ~ ~ minecraft:crimson_slab[type=top,waterlogged=false]
execute if predicate minecraft:block_states/watterlogged if score #tool.wrench.set_block.state.type galaxy matches 1 run setblock ~ ~ ~ minecraft:crimson_slab[type=top,waterlogged=true]
