execute at @s if predicate galaxy:block/step_on-elevator run tag @s add elevatorJump

execute as @e[tag=elevator] at @s run function galaxy:block/functional/elevator/request_manager

tag @a[tag=elevatorJump] remove elevatorJump
