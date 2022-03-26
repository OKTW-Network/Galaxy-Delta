execute if predicate minecraft:block_states/type-top run scoreboard players set #1 calcu_temp 0
execute if predicate minecraft:block_states/type-bottom run scoreboard players set #1 calcu_temp 1

scoreboard players operation @s galaxy.tool.wrench.doType = #1 calcu_temp

function galaxy:tool/wrench/block/slab/set_block/main
