execute at @s anchored eyes run summon minecraft:marker ^ ^ ^0.5 {Tags:["galaxy.projectile.bullet","galaxy._preparing"]}
execute as @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing] at @s unless block ~ ~ ~ #galaxy:gun_bullet_passable run kill @s
data modify entity @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing,limit=1] Rotation set from entity @s Rotation

execute unless score @s galaxy.gun.requestShoot matches 101 run function galaxy:weapon/gun/bullet/summon/get_data-main_hand
execute if score @s galaxy.gun.requestShoot matches 101 run function galaxy:weapon/gun/bullet/summon/get_data-off_hand

data modify entity @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing,limit=1] data.galaxy.projectile.owner set from entity @s UUID
scoreboard players set @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing,limit=1] galaxy.projectile.killCount 0
scoreboard players set @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing,limit=1] galaxy.projectile.traceCooldown 12

execute if score #gun.bullet.summon.accuracy galaxy matches ..999 run function galaxy:weapon/gun/bullet/summon/accuracy/main

execute as @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing,scores={galaxy.projectile.color=17},limit=1] run function galaxy:weapon/gun/bullet/summon/rainbow

tag @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing] remove galaxy._preparing

scoreboard players remove #gun.bullet.summon.remainingBullet galaxy 1
execute if score #gun.bullet.summon.remainingBullet galaxy matches 1.. at @s run function galaxy:weapon/gun/bullet/summon/main
