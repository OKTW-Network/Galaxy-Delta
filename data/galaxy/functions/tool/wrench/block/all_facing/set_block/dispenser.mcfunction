data modify storage galaxy:temp +tool.wrench.set_block.data set from block ~ ~ ~
execute unless predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 0 run setblock ~ ~ ~ minecraft:dispenser[facing=north,triggered=false]
execute unless predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 1 run setblock ~ ~ ~ minecraft:dispenser[facing=east,triggered=false]
execute unless predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 2 run setblock ~ ~ ~ minecraft:dispenser[facing=south,triggered=false]
execute unless predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 3 run setblock ~ ~ ~ minecraft:dispenser[facing=west,triggered=false]
execute unless predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 4 run setblock ~ ~ ~ minecraft:dispenser[facing=up,triggered=false]
execute unless predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 5 run setblock ~ ~ ~ minecraft:dispenser[facing=down,triggered=false]
execute if predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 0 run setblock ~ ~ ~ minecraft:dispenser[facing=north,triggered=true]
execute if predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 1 run setblock ~ ~ ~ minecraft:dispenser[facing=east,triggered=true]
execute if predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 2 run setblock ~ ~ ~ minecraft:dispenser[facing=south,triggered=true]
execute if predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 3 run setblock ~ ~ ~ minecraft:dispenser[facing=west,triggered=true]
execute if predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 4 run setblock ~ ~ ~ minecraft:dispenser[facing=up,triggered=true]
execute if predicate minecraft:block_states/triggered if score #tool.wrench.set_block.state.facing galaxy matches 5 run setblock ~ ~ ~ minecraft:dispenser[facing=down,triggered=true]
data modify block ~ ~ ~ {} merge from storage galaxy:temp +tool.wrench.set_block.data
