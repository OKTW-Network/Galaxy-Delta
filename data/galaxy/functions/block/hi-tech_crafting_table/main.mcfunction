# machine protection
function galaxy:block/protection-strict

# block destroy
execute unless predicate galaxy:block/hi-tech_crafting_table run function galaxy:block/hi-tech_crafting_table/destroy

# gui function
execute if predicate minecraft:block_states/open run function galaxy:gui/hi-tech_crafting_table/main
