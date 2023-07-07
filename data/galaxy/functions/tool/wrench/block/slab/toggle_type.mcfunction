execute if predicate minecraft:block_states/type-top run scoreboard players set #tool.wrench.set_block.state.type galaxy 0
execute if predicate minecraft:block_states/type-bottom run scoreboard players set #tool.wrench.set_block.state.type galaxy 1

function galaxy:tool/wrench/block/slab/set_block/main

tag @s remove galaxy._task.wrench.toggleSlabType
