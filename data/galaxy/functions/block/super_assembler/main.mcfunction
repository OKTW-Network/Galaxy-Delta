# machine protection
function galaxy:block/protection/main

# block destroy
execute unless predicate galaxy:block/super_assembler run function galaxy:block/super_assembler/destroy

# gui function
execute if predicate minecraft:block_states/open run function galaxy:gui/super_assembler/main
