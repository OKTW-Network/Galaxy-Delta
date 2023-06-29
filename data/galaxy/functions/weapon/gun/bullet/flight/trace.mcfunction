function cu:hitbox/reset_tag
execute positioned ~-4 ~-4 ~-4 run tag @e[dx=7,dy=7,dz=7] add cu._tag.hitboxElect
tag @s remove cu._tag.hitboxElect
tag @a[tag=galaxy._tag.ThisProjectileOwner] remove cu._tag.hitboxElect
function cu:hitbox/filter/marker_and_display
data modify storage cu:temp +hitbox.filter.sourcePastVictim set from entity @s data.galaxy.projectile.pastVictim
function cu:hitbox/filter/elect_is_source_past_victim/main
execute if entity @e[tag=cu._tag.hitboxElect] run function cu:hitbox/filter/nearest
tag @e[tag=cu._tag.hitboxElect] add galaxy._tag.gun.bulletTraceTarget

execute if entity @e[tag=galaxy._tag.gun.bulletTraceTarget] facing entity @e[tag=galaxy._tag.gun.bulletTraceTarget,limit=1] eyes run tp ~ ~ ~
execute if entity @e[tag=galaxy._tag.gun.bulletTraceTarget] run scoreboard players remove @s galaxy.projectile.trace 1
execute if entity @e[tag=galaxy._tag.gun.bulletTraceTarget] run scoreboard players set @s galaxy.projectile.traceCooldown 2

tag @e[tag=galaxy._tag.gun.bulletTraceTarget] remove galaxy._tag.gun.bulletTraceTarget
