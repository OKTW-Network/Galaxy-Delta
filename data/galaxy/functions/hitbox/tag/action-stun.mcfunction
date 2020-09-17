function galaxy:hitbox/tag/target
tag @e[tag=possibleEntity] add actStunPossibleVictim
tag @e[tag=possibleEntity] remove possibleEntity

execute as @e[tag=actStunPossibleVictim] run function galaxy:hitbox/check/action-stun
