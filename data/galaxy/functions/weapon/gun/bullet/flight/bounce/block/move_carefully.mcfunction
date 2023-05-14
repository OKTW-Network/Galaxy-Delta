scoreboard players set #1 temp 1
# execute unless block ^ ^ ^0.005 #galaxy:gun_bullet_passable run scoreboard players set #1 temp 0
execute unless block ^ ^ ^0.005 #galaxy:gun_bullet_passable run scoreboard players set #1 temp 0
execute if score #1 temp matches 1 run tp @s ^ ^ ^0.005
execute if score #1 temp matches 1 at @s run function galaxy:weapon/gun/bullet/flight/bounce/block/move_carefully
