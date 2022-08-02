function galaxy:weapon/gun/bullet/flight/trace/hitbox

execute if entity @e[tag=galaxy._tag.hitboxSelected] facing entity @e[tag=galaxy._tag.hitboxSelected,limit=1] eyes run tp ~ ~ ~

scoreboard players remove @s galaxy.projectile.trace 1

scoreboard players set @s galaxy.projectile.traceCooldown 2
