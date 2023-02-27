execute unless predicate galaxy:block/assembly_table run tag @s add galaxy._STOP
execute unless predicate galaxy:block/assembly_table run function galaxy:block/assembly_table/destroy/main

execute unless entity @s[tag=galaxy._STOP] run function galaxy:block/protection/main

execute unless entity @s[tag=galaxy._STOP] if predicate minecraft:block_states/open run function galaxy:block/assembly_table/functional/main
