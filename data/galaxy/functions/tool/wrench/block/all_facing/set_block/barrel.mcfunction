data modify storage galaxy:temp +tool.wrench.set_block.data set from block ~ ~ ~
execute unless predicate minecraft:block_states/open if score #tool.wrench.set_block.state.facing galaxy matches 0 run setblock ~ ~ ~ barrel[facing=north,open=false]
execute unless predicate minecraft:block_states/open if score #tool.wrench.set_block.state.facing galaxy matches 1 run setblock ~ ~ ~ barrel[facing=east,open=false]
execute unless predicate minecraft:block_states/open if score #tool.wrench.set_block.state.facing galaxy matches 2 run setblock ~ ~ ~ barrel[facing=south,open=false]
execute unless predicate minecraft:block_states/open if score #tool.wrench.set_block.state.facing galaxy matches 3 run setblock ~ ~ ~ barrel[facing=west,open=false]
execute unless predicate minecraft:block_states/open if score #tool.wrench.set_block.state.facing galaxy matches 4 run setblock ~ ~ ~ barrel[facing=up,open=false]
execute unless predicate minecraft:block_states/open if score #tool.wrench.set_block.state.facing galaxy matches 5 run setblock ~ ~ ~ barrel[facing=down,open=false]
execute if predicate minecraft:block_states/open if score #tool.wrench.set_block.state.facing galaxy matches 0 run setblock ~ ~ ~ barrel[facing=north,open=true]
execute if predicate minecraft:block_states/open if score #tool.wrench.set_block.state.facing galaxy matches 1 run setblock ~ ~ ~ barrel[facing=east,open=true]
execute if predicate minecraft:block_states/open if score #tool.wrench.set_block.state.facing galaxy matches 2 run setblock ~ ~ ~ barrel[facing=south,open=true]
execute if predicate minecraft:block_states/open if score #tool.wrench.set_block.state.facing galaxy matches 3 run setblock ~ ~ ~ barrel[facing=west,open=true]
execute if predicate minecraft:block_states/open if score #tool.wrench.set_block.state.facing galaxy matches 4 run setblock ~ ~ ~ barrel[facing=up,open=true]
execute if predicate minecraft:block_states/open if score #tool.wrench.set_block.state.facing galaxy matches 5 run setblock ~ ~ ~ barrel[facing=down,open=true]
data modify block ~ ~ ~ {} merge from storage galaxy:temp +tool.wrench.set_block.data
