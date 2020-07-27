effect clear @a[predicate=!galaxy:block/step_on-elevator,tag=stepOnElevator] jump_boost
tag @a[predicate=!galaxy:block/step_on-elevator,tag=stepOnElevator] remove stepOnElevator

effect clear @a[predicate=galaxy:block/step_on-elevator,tag=!stepOnElevator] jump_boost
effect give @a[predicate=galaxy:block/step_on-elevator,tag=!stepOnElevator] jump_boost 1000000 252 true
tag @a[predicate=galaxy:block/step_on-elevator,tag=!stepOnElevator] add stepOnElevator
