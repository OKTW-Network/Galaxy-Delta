execute at @s if predicate galaxy:block/step_on-elevator run tag @s add elevatorSneak

execute at @s as @e[tag=elevator,distance=..2] at @s run function galaxy:block/functional/elevator/request_manager

tag @a[tag=elevatorSneak] remove elevatorSneak
