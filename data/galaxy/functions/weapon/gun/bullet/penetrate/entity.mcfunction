scoreboard players operation @s bulletWeaken = @s bulletPenetrate
execute if score @s bulletWeaken matches 1..99 run function galaxy:weapon/gun/bullet/weaken

scoreboard players set @s sucBulletHit -1
