tag @s[predicate=galaxy:block/step_on_elevator] add galaxy._task.elevator.goDown

execute as @s[tag=galaxy._task.elevator.goDown] at @s run function galaxy:block/elevator/request_manager

tag @s[tag=galaxy._task.elevator.goDown] remove galaxy._task.elevator.goDown
