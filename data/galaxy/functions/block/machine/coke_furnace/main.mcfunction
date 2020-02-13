# machine protection
function galaxy:block/protection-restricted

# block destroy
execute unless predicate galaxy:block/coke_furnace run function galaxy:block/machine/coke_furnace/destroy

# block working
function galaxy:block/machine/coke_furnace/work/main

# gui function
execute if predicate galaxy:block/barrel-open run function galaxy:gui/coke_furnace/main
