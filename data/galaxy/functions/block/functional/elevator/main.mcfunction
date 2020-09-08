function galaxy:block/functional/elevator/jump_inhibition

execute unless predicate galaxy:block/elevator run function galaxy:block/functional/elevator/destroy

execute if predicate galaxy:block/barrel-open run function galaxy:block/functional/elevator/replace
