execute if score #3 calcu_temp matches -1 run tp ^ ^ ^-0.02
execute if score #3 calcu_temp matches 1 run tp ^ ^ ^0.02

scoreboard players remove #1 calcu_temp 1

execute if score #1 calcu_temp matches 1.. at @s run function galaxy:weapon/gun/bullet/summon/offset/special/set-anchor/move-z_2