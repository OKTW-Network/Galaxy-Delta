tp @s ^ ^ ^0.005
scoreboard players set #1 calcu_temp 0
execute at @s if block ~ ~ ~ #minecraft:passable run scoreboard players set #1 calcu_temp 1
execute at @s if block ~ ~ ~ #minecraft:transparent run scoreboard players set #1 calcu_temp 1
execute if score #1 calcu_temp matches 0 run data modify storage galaxy:temp position set from entity @s Pos
execute if score #1 calcu_temp matches 0 at @s run tp @s ^ ^ ^-0.005
execute if score #1 calcu_temp matches 1 at @s run function galaxy:weapon/gun/bullet/bounce/block/move_carefully
