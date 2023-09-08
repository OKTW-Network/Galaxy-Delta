execute unless predicate galaxy:block/coke_furnace run tag @s add galaxy._task.block.destruct
tag @s[tag=galaxy._task.block.destruct] add galaxy._STOP
execute if entity @s[tag=galaxy._task.block.destruct] run function galaxy:block/coke_furnace/destruct
tag @s[tag=galaxy._task.block.destruct] remove galaxy._task.block.destruct

execute if entity @s[tag=galaxy._STOP] run function galaxy:block/kill

execute if entity @s[tag=!galaxy._STOP] run function galaxy:block/protection/main

execute if entity @s[tag=!galaxy._STOP] run function galaxy:block/coke_furnace/functional/main

scoreboard players set #1 temp 0
execute if entity @s[tag=!galaxy._STOP] if predicate minecraft:block_states/open run scoreboard players set #1 temp 1
execute if entity @s[tag=!galaxy._STOP] unless predicate minecraft:block_states/open if entity @s[tag=galaxy._task.block.fulfilUpdateChain] run scoreboard players set #1 temp 2
execute if score #1 temp matches 1 run tag @s add galaxy._task.block.fulfilUpdateChain
execute if score #1 temp matches 2 run tag @s remove galaxy._task.block.fulfilUpdateChain
execute if score #1 temp matches 1.. run function galaxy:gui/coke_furnace/main
