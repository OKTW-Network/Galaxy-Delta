execute at @s if predicate galaxy:block/step_on-elevator run tag @s add elevatorJump

execute at @s as @e[tag=galaxy.customBlock,tag=galaxy.elevator,distance=..2] at @s run function galaxy:block/elevator/request_manager

tag @a[tag=elevatorJump] remove elevatorJump
