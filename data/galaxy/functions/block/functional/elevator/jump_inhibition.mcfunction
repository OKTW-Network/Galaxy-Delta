effect clear @a[predicate=!galaxy:block/step_on-elevator,tag=stepElevatorBefore] jump_boost
tag @a[predicate=!galaxy:block/step_on-elevator,tag=stepElevatorBefore] remove stepElevatorBefore

effect clear @a[predicate=galaxy:block/step_on-elevator,tag=!stepElevatorBefore] jump_boost
effect give @a[predicate=galaxy:block/step_on-elevator,tag=!stepElevatorBefore] jump_boost 1000000 252 true
tag @a[predicate=galaxy:block/step_on-elevator,tag=!stepElevatorBefore] add stepElevatorBefore
