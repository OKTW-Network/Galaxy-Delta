data modify storage galaxy:temp +tool.wrench.set_block.data set from block ~ ~ ~
execute unless predicate minecraft:block_states/lit if score #tool.wrench.set_block.state.facing galaxy matches 0 run setblock ~ ~ ~ minecraft:blast_furnace[facing=north,lit=false]
execute unless predicate minecraft:block_states/lit if score #tool.wrench.set_block.state.facing galaxy matches 1 run setblock ~ ~ ~ minecraft:blast_furnace[facing=east,lit=false]
execute unless predicate minecraft:block_states/lit if score #tool.wrench.set_block.state.facing galaxy matches 2 run setblock ~ ~ ~ minecraft:blast_furnace[facing=south,lit=false]
execute unless predicate minecraft:block_states/lit if score #tool.wrench.set_block.state.facing galaxy matches 3 run setblock ~ ~ ~ minecraft:blast_furnace[facing=west,lit=false]
execute if predicate minecraft:block_states/lit if score #tool.wrench.set_block.state.facing galaxy matches 0 run setblock ~ ~ ~ minecraft:blast_furnace[facing=north,lit=true]
execute if predicate minecraft:block_states/lit if score #tool.wrench.set_block.state.facing galaxy matches 1 run setblock ~ ~ ~ minecraft:blast_furnace[facing=east,lit=true]
execute if predicate minecraft:block_states/lit if score #tool.wrench.set_block.state.facing galaxy matches 2 run setblock ~ ~ ~ minecraft:blast_furnace[facing=south,lit=true]
execute if predicate minecraft:block_states/lit if score #tool.wrench.set_block.state.facing galaxy matches 3 run setblock ~ ~ ~ minecraft:blast_furnace[facing=west,lit=true]
data modify block ~ ~ ~ {} merge from storage galaxy:temp +tool.wrench.set_block.data
