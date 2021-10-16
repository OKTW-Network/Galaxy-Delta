scoreboard players operation @s gunBulletArrX = @s gunBulletArrXY
scoreboard players operation @s gunBulletArrY = @s gunBulletArrXY

function galaxy:weapon/gun/bullet/summon/offset/init/sequence/set-anchor/move-z
execute if score @s gunBulletArrange matches 1 run function galaxy:weapon/gun/bullet/summon/offset/init/sequence/set-anchor/move-x
execute if score @s gunBulletArrange matches 2 run function galaxy:weapon/gun/bullet/summon/offset/init/sequence/set-anchor/move-y
