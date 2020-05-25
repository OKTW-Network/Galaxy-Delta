function galaxy:damage/tag/main
tag @s[tag=possibleVictim] add actStunPossibleVictim
tag @s[tag=possibleVictim] remove possibleVictim

execute as @e[tag=actStunPossibleVictim] run function galaxy:damage/hitbox/action-stun
