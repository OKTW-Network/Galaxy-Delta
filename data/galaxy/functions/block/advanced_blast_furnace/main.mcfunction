# machine protection
function galaxy:block/protection-strict

# block destroy
execute unless predicate galaxy:block/advanced_blast_furnace run function galaxy:block/advanced_blast_furnace/destroy

# block working
function galaxy:block/advanced_blast_furnace/work/main

# block states
function galaxy:block/advanced_blast_furnace/states/main

# gui function
execute if predicate minecraft:block_states/open run function galaxy:gui/advanced_blast_furnace/main
