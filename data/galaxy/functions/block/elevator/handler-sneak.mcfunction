tag @s[predicate=galaxy:block/step_on_elevator] add galaxy._tag.elevatorSneak

execute as @s[tag=galaxy._tag.elevatorSneak] at @s run function galaxy:block/elevator/request_manager

tag @s[tag=galaxy._tag.elevatorSneak] remove galaxy._tag.elevatorSneak
