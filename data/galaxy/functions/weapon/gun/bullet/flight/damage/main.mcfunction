function cu:hitbox/reset_tag
execute positioned ~-0.125 ~-0.125 ~-0.125 run tag @e[dx=0,dy=0,dz=0] add cu._tag.hitboxCandidate
execute positioned ~-0.875 ~-0.875 ~-0.875 run tag @e[dx=0,dy=0,dz=0,tag=cu._tag.hitboxCandidate] add cu._tag.hitboxElect
tag @s remove cu._tag.hitboxElect
tag @a[tag=galaxy._tag.ThisProjectileOwner] remove cu._tag.hitboxElect
data modify storage cu:temp +hitbox.filter.sourcePastVictim set from entity @s data.galaxy.projectile.pastVictim
function cu:hitbox/filter/elect_is_source_past_victim/main
execute if entity @e[tag=cu._tag.hitboxElect] run tag @s add galaxy._success.gun.bullet.hitEntity
tag @e[tag=cu._tag.hitboxElect] add galaxy._tag.gun.bulletVictim

scoreboard players operation #weapon.gun.bullet.damage galaxy = @s galaxy.projectile.damage
scoreboard players operation #weapon.gun.bullet.penetrate galaxy = @s galaxy.projectile.penetrate
scoreboard players set #weapon.gun.bullet.killCount galaxy 0
data modify storage galaxy:temp +weapon.gun.bullet.victim set value []
execute as @e[tag=galaxy._tag.gun.bulletVictim] run function galaxy:weapon/gun/bullet/flight/damage/victim/main
scoreboard players operation @s galaxy.projectile.killCount += #weapon.gun.bullet.killCount galaxy
data modify entity @s data.galaxy.projectile.pastVictim append from storage galaxy:temp +weapon.gun.bullet.victim[]

tag @e[tag=galaxy._tag.gun.bulletVictim] remove galaxy._tag.gun.bulletVictim
