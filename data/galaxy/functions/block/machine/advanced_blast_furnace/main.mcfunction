# machine protection
function galaxy:block/protection-restricted

# block destroy
execute unless predicate galaxy:block/advanced_blast_furnace run function galaxy:block/machine/advanced_blast_furnace/destroy

# block working
function galaxy:block/machine/advanced_blast_furnace/work/main

# gui function
execute if predicate galaxy:block/barrel-open run function galaxy:gui/advanced_blast_furnace/main
