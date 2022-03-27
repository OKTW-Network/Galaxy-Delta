tag @s[predicate=galaxy:block/step_on_elevator] add galaxy._tag.elevatorJump

execute as @s[tag=galaxy._tag.elevatorJump] at @s run function galaxy:block/elevator/request_manager

tag @s[tag=galaxy._tag.elevatorJump] remove galaxy._tag.elevatorJump
