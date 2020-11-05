# machine protection
function galaxy:block/protection-strict

# block destroy
execute unless predicate galaxy:block/super_assembler run function galaxy:block/super_assembler/destroy

# gui function
execute if predicate galaxy:block/barrel-open run function galaxy:gui/assembly_table/super/main
