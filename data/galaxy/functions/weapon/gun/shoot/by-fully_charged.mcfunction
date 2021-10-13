scoreboard players set @s reqGunFire 21

function galaxy:weapon/gun/get_data-hand_main

execute if score @s MhGunAclrate matches 1.. run function galaxy:weapon/gun/accelerate/level_up-hand_main-charge

scoreboard players operation @s gunDelay = @s MhGunDelay

function galaxy:weapon/gun/temperature/heat-hand_main

function galaxy:weapon/gun/charge/reset-soft

scoreboard players set @s gunBulletTotal 1
execute if score @s gunExtraBullet matches 1.. run scoreboard players operation @s gunBulletTotal += @s gunExtraBullet
scoreboard players operation @s gunBulletSummon = @s gunBulletTotal

execute at @s run function galaxy:weapon/gun/bullet/summon/main

execute at @s run function galaxy:weapon/gun/sound/shoot/main

scoreboard players set @s reqGunFire 0
