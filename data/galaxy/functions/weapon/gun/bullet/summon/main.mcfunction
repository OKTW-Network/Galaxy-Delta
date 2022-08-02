execute at @s anchored eyes run summon minecraft:marker ^ ^ ^0.5 {Tags:["galaxy.projectile.bullet","galaxy._preparing"]}
execute as @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing] at @s unless block ~ ~ ~ #global:passable unless block ~ ~ ~ #global:transparent run kill @s
data modify entity @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing,limit=1] Rotation set from entity @s Rotation

execute unless score @s galaxy.gun.requestShoot matches 101 run function galaxy:weapon/gun/bullet/summon/get_data-hand_main
execute if score @s galaxy.gun.requestShoot matches 101 run function galaxy:weapon/gun/bullet/summon/get_data-hand_off

scoreboard players set @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing,limit=1] galaxy.projectile.killCount 0
scoreboard players set @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing,limit=1] galaxy.projectile.traceCooldown 12

execute if score #gun.bullet.summon.accuracy galaxy matches ..999 run function galaxy:weapon/gun/bullet/summon/accuracy/main

execute if score @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing,limit=1] galaxy.projectile.color matches 17 run function galaxy:weapon/gun/bullet/summon/rainbow

tag @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing] remove galaxy._preparing

scoreboard players remove #gun.bullet.summon.remainingBullet galaxy 1
execute if score #gun.bullet.summon.remainingBullet galaxy matches 1.. at @s run function galaxy:weapon/gun/bullet/summon/main
