tag @s add flighting

execute at @s run tp @s ^ ^ ^0.25

execute store result score @s posX run data get entity @s Pos[0] 10
execute store result score @s posY run data get entity @s Pos[1] 10
execute store result score @s posZ run data get entity @s Pos[2] 10

scoreboard players set @s sucBulletMove 0
execute if block ~ ~ ~ #minecraft:passable run scoreboard players set @s sucBulletMove 1
execute if block ~ ~ ~ #minecraft:transparent run scoreboard players set @s sucBulletMove 1
execute if score @s sucBulletMove matches 1 run scoreboard players remove @s bulletMoveRem 1
execute if score @s sucBulletMove matches 1 run scoreboard players remove @s bulletDistRem 1
execute if score @s sucBulletMove matches 1 run scoreboard players add @s bulletDistance 1
execute if score @s sucBulletMove matches 1 if score @s bulletTraceCD matches 1.. run scoreboard players remove @s bulletTraceCD 1
execute if score @s sucBulletMove matches 0 if score @s bulletPenetrate matches 1.. run function galaxy:weapon/gun/bullet/penetrate/block
execute if score @s sucBulletMove matches 0 if score @s bulletBounce matches 1.. at @s run function galaxy:weapon/gun/bullet/bounce/block/main
execute unless score @s sucBulletMove matches 0 unless score @s bulletTraceCD matches 1.. if score @s bulletTrace matches 1.. at @s run function galaxy:weapon/gun/bullet/trace/main

scoreboard players set @s sucBulletHit 0
scoreboard players set @s sucBulletKill 0
execute if score @s sucBulletMove matches 1 at @s run function galaxy:damage/tag/target
execute if entity @e[tag=galaxy.damage.possible_target] at @s run function galaxy:damage/tag/bullet
execute if score @s sucBulletHit matches 1 run function galaxy:damage/bullet
execute if score @s sucBulletHit matches 1 if score @s bulletPenetrate matches 1.. run function galaxy:weapon/gun/bullet/penetrate/entity
execute if score @s sucBulletHit matches 1 if score @s bulletBounce matches 1.. at @s run function galaxy:weapon/gun/bullet/bounce/entity/main

execute if score @s sucBulletMove matches 1 at @s run function galaxy:weapon/gun/bullet/particle

execute unless entity @e[tag=galaxy.bullet,tag=flighting] run tag @s add pathfindEnd
execute if score @s bulletDistRem matches ..0 run tag @s add pathfindEnd
execute if score @s sucBulletMove matches 0 run tag @s add pathfindEnd
execute if score @s sucBulletHit matches 1 run tag @s add pathfindEnd

execute if entity @s[tag=pathfindEnd] run kill @s

tag @s remove flighting

execute if entity @s[tag=!pathfindEnd,scores={bulletMoveRem=1..}] at @s run function galaxy:weapon/gun/bullet/flight
