# machine protection
function galaxy:block/protection-strict

# block destroy
execute unless predicate galaxy:block/super_builder-gun run function galaxy:block/machine/super_builder-gun/destroy

# gui function
execute if predicate galaxy:block/barrel-open run function galaxy:gui/super_builder-gun/main
