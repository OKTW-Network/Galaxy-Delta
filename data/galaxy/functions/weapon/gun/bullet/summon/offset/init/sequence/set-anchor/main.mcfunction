execute store result score @s gunBulletArrA run scoreboard players get @s gunBulletTotal
scoreboard players operation @e[tag=galaxy.bullet,tag=init] bulletArrange = @s gunBulletArrXY

function galaxy:weapon/gun/bullet/summon/offset/init/sequence/set-anchor/summon
