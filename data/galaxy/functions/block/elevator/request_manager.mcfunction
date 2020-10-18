execute store result score #1 calcu_temp run data get entity @s Pos[0]
execute store result score #2 calcu_temp run data get entity @s Pos[1]
execute store result score #3 calcu_temp run data get entity @s Pos[2]
scoreboard players add #2 calcu_temp 1
execute positioned ~ ~1 ~ as @a[predicate=galaxy:block/step_on-elevator,distance=..0.7] run function galaxy:block/elevator/check_position

tag @a[tag=elevatorJump,tag=sucElevatorPos,tag=!reqElevatorGoUp] add reqElevatorGoUp
tag @a[tag=reqElevatorGoUp] remove elevatorJump

tag @a[tag=elevatorSneak,tag=sucElevatorPos,tag=!reqElevatorGoDown] add reqElevatorGoDown
tag @a[tag=reqElevatorGoDown] remove elevatorSneak

tag @a[tag=sucElevatorPos] remove sucElevatorPos

execute if entity @a[tag=reqElevatorGoUp] run function galaxy:block/elevator/go-up
execute if entity @a[tag=reqElevatorGoDown] run function galaxy:block/elevator/go-down
