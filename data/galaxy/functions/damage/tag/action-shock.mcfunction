function galaxy:damage/tag/main
tag @e[tag=possibleVictim] add actShockPossibleVictim
tag @e[tag=possibleVictim] remove possibleVictim

execute as @e[tag=actShockPossibleVictim] run function galaxy:damage/hitbox/action-shock
