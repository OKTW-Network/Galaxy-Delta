function galaxy:block/elevator/jump_inhibition

execute unless predicate galaxy:block/elevator run function galaxy:block/elevator/destroy

execute if predicate minecraft:block_states/open run function galaxy:block/elevator/replace
