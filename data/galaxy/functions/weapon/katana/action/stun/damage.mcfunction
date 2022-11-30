function cu:hitbox/reset_tag
execute positioned ~-0.75 ~-0.75 ~-0.75 run tag @e[dx=1.5,dy=1.5,dz=1.5] add galaxy._tag.hitboxCandidate
execute positioned ~-1.75 ~-1.75 ~-1.75 run tag @e[dx=1.5,dy=1.5,dz=1.5,tag=galaxy._tag.hitboxCandidate] add cu._tag.hitboxElect
function cu:hitbox/filter/self_and_special
execute if entity @e[tag=cu._tag.hitboxElect] run tag @s add galaxy._success.weapon.katana.stun.hitEntity
tag @e[tag=cu._tag.hitboxElect] add galaxy._tag.katanaStunVictim

scoreboard players operation #stun.duration galaxy.statusEffect = #katana.action.stun.duration galaxy
execute as @e[tag=galaxy._tag.katanaStunVictim] run function galaxy:status_effect/stun/set

function cu:entity/damage/setup_input/default_value
scoreboard players operation #damage.source.damageValue1000 galaxy = #katana.action.stun.damage galaxy
scoreboard players operation #damage.source.damageValue1000 galaxy *= #1000 num
scoreboard players set #damage.source.ignoreArmor galaxy 1
scoreboard players set #damage.source.ignoreResistanceEffect galaxy 1
scoreboard players set #damage.source.ignoreUniqueResistance galaxy 1
scoreboard players set #damage.source.ignoreHurtCoolDown galaxy 1
scoreboard players set #damage.source.hurtTime galaxy 0
execute as @e[tag=galaxy._tag.katanaStunVictim] run function cu:entity/damage/main
