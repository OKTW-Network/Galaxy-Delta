tag @s[predicate=galaxy:block/step_on_elevator] add galaxy._task.elevator.goUp

execute as @s[tag=galaxy._task.elevator.goUp] at @s run function galaxy:block/elevator/request_manager

tag @s[tag=galaxy._task.elevator.goUp] remove galaxy._task.elevator.goUp
