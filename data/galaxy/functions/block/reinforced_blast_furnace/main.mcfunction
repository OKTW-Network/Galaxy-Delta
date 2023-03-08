execute unless predicate galaxy:block/reinforced_blast_furnace run tag @s add galaxy._STOP
execute unless predicate galaxy:block/reinforced_blast_furnace run function galaxy:block/reinforced_blast_furnace/destroy

execute if entity @s[tag=!galaxy._STOP] run function galaxy:block/protection/main

execute if entity @s[tag=!galaxy._STOP] run function galaxy:block/reinforced_blast_furnace/functional/main

execute if entity @s[tag=!galaxy._STOP] if predicate minecraft:block_states/open run function galaxy:gui/reinforced_blast_furnace/main
