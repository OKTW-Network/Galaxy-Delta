execute if predicate minecraft:block_states/facing-north run scoreboard players set #1 calcu_temp 0
execute if predicate minecraft:block_states/facing-east run scoreboard players set #1 calcu_temp 1
execute if predicate minecraft:block_states/facing-south run scoreboard players set #1 calcu_temp 2
execute if predicate minecraft:block_states/facing-west run scoreboard players set #1 calcu_temp 3

scoreboard players operation #tool.wrench.set_block.state.facing galaxy = #1 calcu_temp

function galaxy:tool/wrench/block/chest/set_block/single

tag @s remove galaxy._task.wrench.chestSeparate
