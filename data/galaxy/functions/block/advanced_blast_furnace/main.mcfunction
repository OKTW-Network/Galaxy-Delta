# block destroy
execute unless predicate galaxy:block/advanced_blast_furnace run tag @s add galaxy._STOP
execute unless predicate galaxy:block/advanced_blast_furnace run function galaxy:block/advanced_blast_furnace/destroy

# machine protection
execute unless entity @s[tag=galaxy._STOP] run function galaxy:block/protection/main

# block working
execute unless entity @s[tag=galaxy._STOP] run function galaxy:block/advanced_blast_furnace/work/main

# gui function
execute unless entity @s[tag=galaxy._STOP] if predicate minecraft:block_states/open run function galaxy:gui/advanced_blast_furnace/main
