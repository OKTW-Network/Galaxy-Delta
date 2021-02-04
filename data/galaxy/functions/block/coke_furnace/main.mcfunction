# machine protection
function galaxy:block/protection/main

# block destroy
execute unless predicate galaxy:block/coke_furnace run function galaxy:block/coke_furnace/destroy

# block working
function galaxy:block/coke_furnace/work/main

# gui function
execute if predicate minecraft:block_states/open run function galaxy:gui/coke_furnace/main
