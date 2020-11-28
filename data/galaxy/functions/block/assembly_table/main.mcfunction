# machine protection
function galaxy:block/protection-strict

# block destroy
execute unless predicate galaxy:block/assembly_table run function galaxy:block/assembly_table/destroy

# gui function
execute if predicate minecraft:block_states/open run function galaxy:gui/assembly_table/main
