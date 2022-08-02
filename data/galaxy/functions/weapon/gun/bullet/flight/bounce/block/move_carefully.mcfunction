scoreboard players set #1 calcu_temp 1
# execute unless block ^ ^ ^0.005 #global:passable unless block ^ ^ ^0.005 #global:transparent run scoreboard players set #1 calcu_temp 0
execute unless block ^ ^ ^0.005 #global:passable run scoreboard players set #1 calcu_temp 0
execute if score #1 calcu_temp matches 1 run tp @s ^ ^ ^0.005
execute if score #1 calcu_temp matches 1 at @s run function galaxy:weapon/gun/bullet/flight/bounce/block/move_carefully
