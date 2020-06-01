function galaxy:damage/tag/main
tag @e[tag=possibleVictim] add actStunPossibleVictim
tag @e[tag=possibleVictim] remove possibleVictim

execute as @e[tag=actStunPossibleVictim] run function galaxy:damage/hitbox/action-stun
