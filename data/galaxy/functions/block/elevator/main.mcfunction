function galaxy:block/elevator/jump_inhibition

execute unless predicate galaxy:block/elevator run function galaxy:block/elevator/destroy

execute if predicate galaxy:block/barrel-open run function galaxy:block/elevator/replace
