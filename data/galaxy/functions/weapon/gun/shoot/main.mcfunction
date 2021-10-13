execute if score @s reqGunFire matches 10..11 run scoreboard players add @s gunSwitch 1
execute if score @s gunSwitch matches 2.. run scoreboard players set @s gunSwitch 0

execute unless score @s reqGunFire matches 11 run function galaxy:weapon/gun/get_data-hand_main
execute if score @s reqGunFire matches 11 run function galaxy:weapon/gun/get_data-hand_off

scoreboard players set @s gunBulletArrange 0
execute if score @s reqGunFire matches 30 run scoreboard players set @s gunBulletArrange 1
execute if score @s reqGunFire matches 31 run scoreboard players set @s gunBulletArrange 2

execute unless score @s reqGunFire matches 11 unless score @s reqGunFire matches 20 unless score @s MhGunAclrate matches 0 run function galaxy:weapon/gun/accelerate/level_up-hand_main
execute if score @s reqGunFire matches 11 unless score @s FhGunAclrate matches 0 run function galaxy:weapon/gun/accelerate/level_up-hand_off
execute if score @s reqGunFire matches 20 run function galaxy:weapon/gun/accelerate/level_up-hand_main-charge

execute unless score @s reqGunFire matches 10..11 run scoreboard players operation @s gunDelay = @s MhGunDelay
execute if score @s reqGunFire matches 10..11 if score @s MhGunDelay >= @s FhGunDelay run scoreboard players operation @s gunDelay = @s MhGunDelay
execute if score @s reqGunFire matches 10..11 if score @s MhGunDelay < @s FhGunDelay run scoreboard players operation @s gunDelay = @s FhGunDelay

execute unless score @s reqGunFire matches 11 run function galaxy:weapon/gun/temperature/heat-hand_main
execute if score @s reqGunFire matches 11 run function galaxy:weapon/gun/temperature/heat-hand_off

execute if score @s reqGunFire matches 20 run function galaxy:weapon/gun/charge/reset-soft

scoreboard players set @s gunBulletTotal 1
execute if score @s gunExtraBullet matches 1.. run scoreboard players operation @s gunBulletTotal += @s gunExtraBullet
scoreboard players operation @s gunBulletSummon = @s gunBulletTotal

execute at @s run function galaxy:weapon/gun/bullet/summon/main

execute at @s run function galaxy:weapon/gun/sound/shoot/main
