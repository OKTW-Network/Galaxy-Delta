execute if score @s gunBulletSummon = @s gunBulletTotal run function galaxy:weapon/gun/bullet/summon/offset/init/sequence/main

data modify entity @e[tag=galaxy.bullet,tag=init,limit=1] Rotation set from storage galaxy:temp +weapon.gun.bullet.summon.offset.listRotation[0]
data remove storage galaxy:temp +weapon.gun.bullet.summon.offset.listRotation[0]
