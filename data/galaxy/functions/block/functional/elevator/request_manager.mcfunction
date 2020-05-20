execute store result score #calculation_temp1 numeric run data get entity @s Pos[0]
execute store result score #calculation_temp2 numeric run data get entity @s Pos[1]
execute store result score #calculation_temp3 numeric run data get entity @s Pos[2]
scoreboard players add #calculation_temp2 numeric 1
execute positioned ~ ~1 ~ as @a[predicate=galaxy:block/step_on-elevator,distance=..0.7] run function galaxy:block/functional/elevator/check_position

tag @a[tag=elevatorJump,tag=sucElevatorPos,tag=!reqElevatorGoUp] add reqElevatorGoUp
tag @a[tag=reqElevatorGoUp] remove elevatorJump

tag @a[predicate=minecraft:sneaking,tag=!elevatorCD,tag=sucElevatorPos,tag=!reqElevatorGoDown] add reqElevatorGoDown
tag @a[tag=reqElevatorGoDown] add elevatorCD
tag @a[predicate=!galaxy:block/step_on-elevator,predicate=minecraft:sneaking,tag=!elevatorCD] add elevatorCD
tag @a[predicate=!minecraft:sneaking,tag=elevatorCD] remove elevatorCD

tag @a[tag=sucElevatorPos] remove sucElevatorPos

execute if entity @a[tag=reqElevatorGoUp] run function galaxy:block/functional/elevator/go-up
execute if entity @a[tag=reqElevatorGoDown] run function galaxy:block/functional/elevator/go-down
