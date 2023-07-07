data modify entity @s data.galaxy.wrench.originBlockStates.facing set value -1
execute if predicate minecraft:block_states/facing-north run data modify entity @s data.galaxy.wrench.originBlockStates.facing set value 0
execute if predicate minecraft:block_states/facing-east run data modify entity @s data.galaxy.wrench.originBlockStates.facing set value 1
execute if predicate minecraft:block_states/facing-south run data modify entity @s data.galaxy.wrench.originBlockStates.facing set value 2
execute if predicate minecraft:block_states/facing-west run data modify entity @s data.galaxy.wrench.originBlockStates.facing set value 3
execute if predicate minecraft:block_states/facing-up run data modify entity @s data.galaxy.wrench.originBlockStates.facing set value 4
execute if predicate minecraft:block_states/facing-down run data modify entity @s data.galaxy.wrench.originBlockStates.facing set value 5
execute if score @e[tag=galaxy.block,distance=..0.05,limit=1] galaxy.block.states.facing matches -2147483648..2147483647 store result entity @s data.galaxy.wrench.originBlockStates.facing int 1 run scoreboard players get @e[tag=galaxy.block,distance=..0.05,limit=1] galaxy.block.states.facing
