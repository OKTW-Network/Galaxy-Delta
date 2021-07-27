data modify entity @e[tag=galaxy.bullet,tag=init,limit=1] Rotation set from entity @s Rotation

execute if score @s gunBulletArrange matches 0 if score @e[tag=galaxy.bullet,tag=init,limit=1] bulletOffset matches 1.. run function galaxy:weapon/gun/bullet/summon/offset/normal
execute if score @s gunBulletArrange matches 1..2 if score @e[tag=galaxy.bullet,tag=init,limit=1] bulletOffset matches 1.. run function galaxy:weapon/gun/bullet/summon/offset/special/main
