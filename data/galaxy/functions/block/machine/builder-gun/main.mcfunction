# machine protection
function galaxy:block/protection-strict

# block destroy
execute unless predicate galaxy:block/builder-gun run function galaxy:block/machine/builder-gun/destroy

# gui function
execute if predicate galaxy:block/barrel-open run function galaxy:gui/builder-gun/main
