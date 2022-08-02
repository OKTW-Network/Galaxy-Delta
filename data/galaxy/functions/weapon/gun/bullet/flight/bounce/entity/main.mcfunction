function galaxy:weapon/gun/bullet/flight/trace/hitbox

execute if entity @e[tag=galaxy._tag.hitboxSelected] facing entity @e[tag=galaxy._tag.hitboxSelected,limit=1] eyes run tp ~ ~ ~

scoreboard players operation #gun.bullet.weaken galaxy = @s galaxy.projectile.bounce
execute if entity @e[tag=galaxy._tag.hitboxSelected] if score #gun.bullet.weaken galaxy matches 1..99 run function galaxy:weapon/gun/bullet/weaken

execute unless entity @e[tag=galaxy._tag.hitboxSelected] run function galaxy:weapon/gun/bullet/flight/bounce/entity/random_rotation

tag @s add galaxy._tag.ignoreHitEntity
