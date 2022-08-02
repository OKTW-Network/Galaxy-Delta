tag @s add galaxy._tag.ThisHitboxSource
function galaxy:hitbox/remove_selected_tag
execute positioned ~-0.75 ~-0.75 ~-0.75 run tag @e[dx=1.5,dy=1.5,dz=1.5] add galaxy._tag.hitboxCandidate
execute positioned ~-1.75 ~-1.75 ~-1.75 run tag @e[dx=1.5,dy=1.5,dz=1.5,tag=galaxy._tag.hitboxCandidate] add galaxy._tag.hitboxSelected
tag @s remove galaxy._tag.hitboxSelected
tag @a remove galaxy._tag.hitboxSelected
tag @s remove galaxy._tag.ThisHitboxSource

execute if entity @e[tag=galaxy._tag.hitboxSelected] run tag @s add galaxy._success.weapon.katana.stun.hitEntity

scoreboard players operation #stun.duration galaxy.statusEffect = #katana.action.stun.duration galaxy
execute as @e[tag=galaxy._tag.hitboxSelected] run function galaxy:status_effect/stun/set

function galaxy:damage/default_value
scoreboard players operation #damage1000 galaxy.damage = #katana.action.stun.damage galaxy
scoreboard players operation #damage1000 galaxy.damage *= #1000 num
scoreboard players set #ignoreArmor galaxy.damage 1
scoreboard players set #ignoreResistanceEffect galaxy.damage 1
scoreboard players set #ignoreUniqueResistance galaxy.damage 1
scoreboard players set #ignoreHurtCD galaxy.damage 1
scoreboard players set #hurtTime galaxy.damage 0

execute as @e[tag=galaxy._tag.hitboxSelected] run function galaxy:damage/main

# scoreboard players operation @s galaxy.projectile.killCount = #killCount galaxy.damage
