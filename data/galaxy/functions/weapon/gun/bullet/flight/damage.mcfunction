tag @s add galaxy._tag.ThisHitboxSource
function galaxy:hitbox/remove_selected_tag
execute positioned ~-0.125 ~-0.125 ~-0.125 run tag @e[dx=0,dy=0,dz=0] add galaxy._tag.hitboxCandidate
execute positioned ~-0.875 ~-0.875 ~-0.875 run tag @e[dx=0,dy=0,dz=0,tag=galaxy._tag.hitboxCandidate] add galaxy._tag.hitboxSelected
tag @s remove galaxy._tag.hitboxSelected
tag @a remove galaxy._tag.hitboxSelected
execute as @e[tag=galaxy._tag.hitboxSelected] run function galaxy:hitbox/tag/filter/source-didnt_damage_this
tag @s remove galaxy._tag.ThisHitboxSource

execute if entity @e[tag=galaxy._tag.hitboxSelected] run tag @s add galaxy._success.gun.bullet.hitEntity

function galaxy:damage/default_value
scoreboard players operation #damage1000 galaxy.damage = @s galaxy.projectile.damage
scoreboard players operation #damage1000 galaxy.damage *= #1000 num
scoreboard players set #ignoreArmor galaxy.damage 1
scoreboard players set #ignoreResistanceEffect galaxy.damage 1
scoreboard players set #ignoreUniqueResistance galaxy.damage 1
scoreboard players set #ignoreHurtCD galaxy.damage 1
scoreboard players set #hurtTime galaxy.damage 0
scoreboard players operation #killCount galaxy.damage = @s galaxy.projectile.killCount
data modify storage galaxy:temp +damage.entityDamaged set from entity @s data.galaxy.entityDamaged

execute as @e[tag=galaxy._tag.hitboxSelected] run function galaxy:damage/main

scoreboard players operation @s galaxy.projectile.killCount = #killCount galaxy.damage
data modify entity @s data.galaxy.entityDamaged set from storage galaxy:temp +damage.entityDamaged
