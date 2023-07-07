data modify storage galaxy:temp +tool.wrench.set_block.data set from block ~ ~ ~
execute unless predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 0 run setblock ~ ~ ~ minecraft:dropper[facing=north,triggered=false]
execute unless predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 1 run setblock ~ ~ ~ minecraft:dropper[facing=east,triggered=false]
execute unless predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 2 run setblock ~ ~ ~ minecraft:dropper[facing=south,triggered=false]
execute unless predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 3 run setblock ~ ~ ~ minecraft:dropper[facing=west,triggered=false]
execute unless predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 4 run setblock ~ ~ ~ minecraft:dropper[facing=up,triggered=false]
execute unless predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 5 run setblock ~ ~ ~ minecraft:dropper[facing=down,triggered=false]
execute if predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 0 run setblock ~ ~ ~ minecraft:dropper[facing=north,triggered=true]
execute if predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 1 run setblock ~ ~ ~ minecraft:dropper[facing=east,triggered=true]
execute if predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 2 run setblock ~ ~ ~ minecraft:dropper[facing=south,triggered=true]
execute if predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 3 run setblock ~ ~ ~ minecraft:dropper[facing=west,triggered=true]
execute if predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 4 run setblock ~ ~ ~ minecraft:dropper[facing=up,triggered=true]
execute if predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 5 run setblock ~ ~ ~ minecraft:dropper[facing=down,triggered=true]
data modify block ~ ~ ~ {} merge from storage galaxy:temp +tool.wrench.set_block.data
