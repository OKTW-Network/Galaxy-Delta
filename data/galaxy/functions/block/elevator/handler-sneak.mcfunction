tag @s[predicate=galaxy:block/step_on-elevator] add galaxy.elevator.action.sneak

execute as @s[tag=galaxy.elevator.action.sneak] at @s run function galaxy:block/elevator/request_manager

tag @s[tag=galaxy.elevator.action.sneak] remove galaxy.elevator.action.sneak
