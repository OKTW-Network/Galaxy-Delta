execute if entity @s[tag=galaxy.scannerAct.Up] at @s run tp @s ~ ~1 ~
execute if entity @s[tag=galaxy.scannerAct.Down] at @s run tp @s ~ ~-1 ~

scoreboard players remove #elevator.find_target.stepLimit galaxy.block 1

execute at @s run tag @e[tag=galaxy.customBlock,tag=galaxy.elevator,distance=..0.05] add galaxy.ScanElevator
execute as @e[tag=galaxy.ScanElevator,tag=!ThisUsingElevator] at @s if block ~ ~1 ~ #minecraft:passable run tag @s add galaxy.TargetElevator
tag @e[tag=galaxy.ScanElevator] remove galaxy.ScanElevator

execute if entity @e[tag=galaxy.TargetElevator] run tag @s add galaxy.scannerAct.Kill
execute unless score #elevator.find_target.stepLimit galaxy.block matches 1.. run tag @s add galaxy.scannerAct.Kill
execute unless entity @s run tag @s add galaxy.scannerAct.Kill
execute if entity @s[tag=galaxy.scannerAct.Kill] run kill @s

execute unless entity @s[tag=galaxy.scannerAct.Kill] run function galaxy:block/elevator/find_target
