tag @s[predicate=galaxy:block/step_on-elevator] add galaxy.elevator.action.jump

execute as @s[tag=galaxy.elevator.action.jump] at @s run function galaxy:block/elevator/request_manager

tag @s[tag=galaxy.elevator.action.jump] remove galaxy.elevator.action.jump
