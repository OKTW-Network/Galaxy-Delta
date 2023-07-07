execute if score #gun.bullet.summon.remainingBullet galaxy = #gun.bullet.summon.totalBullet galaxy run function galaxy:weapon/gun/bullet/summon/accuracy/setup_anchor/main

data modify entity @e[tag=galaxy.projectile.bullet,tag=galaxy._preparing,limit=1] Rotation set from storage galaxy:temp +weapon.gun.bullet.summon.accuracy.rotation[0]
data remove storage galaxy:temp +weapon.gun.bullet.summon.accuracy.rotation[0]
