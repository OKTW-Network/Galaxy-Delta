execute at @s if predicate galaxy:block/step_on-elevator run tag @s add elevatorSneak

execute at @s as @e[tag=customBlock,tag=gaalxy-elevator,distance=..2] at @s run function galaxy:block/elevator/request_manager

tag @a[tag=elevatorSneak] remove elevatorSneak
