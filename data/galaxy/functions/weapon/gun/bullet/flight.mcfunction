tag @s add flighting

execute at @s run tp @s ^ ^ ^0.25

execute store result score @s posX run data get entity @s Pos[0] 10
execute store result score @s posY run data get entity @s Pos[1] 10
execute store result score @s posZ run data get entity @s Pos[2] 10

scoreboard players set @s sucBulletMove 0
scoreboard players set @s sucBulletHit 0

execute store success score @s sucBulletMove run execute if block ~ ~ ~ #minecraft:passable
execute if score @s sucBulletMove matches 1 run scoreboard players remove @s bulletMoveRem 1
execute if score @s sucBulletMove matches 1 run scoreboard players remove @s bulletDistRem 1
execute if score @s sucBulletMove matches 1 run particle minecraft:dust 0.054901960784313725 0.7725490196078432 0.9019607843137255 0.5 ~ ~ ~ 0.01 0.01 0.01 0 2

execute if score @s sucBulletMove matches 1 run function galaxy:damage/tag/bullet
execute if score @s sucBulletHit matches 1 run function galaxy:damage/bullet
execute if score @s sucBulletHit matches 1 if score @s bulletPntraAtenu matches 1..99 run function galaxy:weapon/gun/bullet/penetrate_attenuation
execute if score @s sucBulletHit matches 1 if score @s bulletPntraAtenu matches 0..99 run scoreboard players set @s sucBulletHit 0

execute if score @s bulletDistRem matches ..0 run tag @s add pathfindEnd
execute if score @s sucBulletMove matches 0 run tag @s add pathfindEnd
execute if score @s sucBulletHit matches 1 run tag @s add pathfindEnd

execute if entity @s[tag=pathfindEnd] run kill @s

tag @s remove flighting

# recursive
execute if entity @s[tag=!pathfindEnd,scores={bulletMoveRem=1..}] at @s run function galaxy:weapon/gun/bullet/flight
