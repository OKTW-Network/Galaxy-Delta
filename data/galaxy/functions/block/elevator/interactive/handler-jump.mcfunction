tag @s add galaxy._tag.ThisElevatorUser

execute align xyz positioned ~ ~-1 ~ as @e[tag=galaxy.block.elevator,dx=0,dy=0,dz=0] at @s if predicate galaxy:block/valid_elevator run tag @a[tag=galaxy._tag.ThisElevatorUser] add galaxy._task.elevator.goUp

execute if entity @s[tag=galaxy._task.elevator.goUp] align xyz positioned ~ ~-1 ~ run function galaxy:block/elevator/interactive/request_manager

tag @s[tag=galaxy._task.elevator.goUp] remove galaxy._task.elevator.goUp

tag @s remove galaxy._tag.ThisElevatorUser
