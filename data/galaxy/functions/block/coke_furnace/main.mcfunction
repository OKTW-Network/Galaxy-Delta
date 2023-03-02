execute unless predicate galaxy:block/coke_furnace run tag @s add galaxy._STOP
execute unless predicate galaxy:block/coke_furnace run function galaxy:block/coke_furnace/destroy

execute unless entity @s[tag=galaxy._STOP] run function galaxy:block/protection/main

execute unless entity @s[tag=galaxy._STOP] run function galaxy:block/coke_furnace/work/main

execute unless entity @s[tag=galaxy._STOP] if predicate minecraft:block_states/open run function galaxy:gui/coke_furnace/main
