function cu:hitbox/reset_tag
execute positioned ~-4 ~-4 ~-4 run tag @e[dx=7,dy=7,dz=7] add cu._tag.hitboxElect
function cu:hitbox/filter/self_and_special
data modify storage cu:temp +hitbox.filter.sourcePastVictim set from entity @s data.galaxy.pastVictim
execute as @e[tag=cu._tag.hitboxElect] run function cu:hitbox/filter/elect_is_source_past_victim
execute if entity @e[tag=cu._tag.hitboxElect] run function cu:hitbox/filter/nearest
tag @e[tag=cu._tag.hitboxElect] add galaxy._tag.gunBulletTraceTarget

execute if entity @e[tag=galaxy._tag.gunBulletTraceTarget] facing entity @e[tag=galaxy._tag.gunBulletTraceTarget,limit=1] eyes run tp ~ ~ ~
execute if entity @e[tag=galaxy._tag.gunBulletTraceTarget] run scoreboard players remove @s galaxy.projectile.trace 1
execute if entity @e[tag=galaxy._tag.gunBulletTraceTarget] run scoreboard players set @s galaxy.projectile.traceCooldown 2

tag @e[tag=galaxy._tag.gunBulletTraceTarget] remove galaxy._tag.gunBulletTraceTarget
