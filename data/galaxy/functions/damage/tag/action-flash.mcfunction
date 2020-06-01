function galaxy:damage/tag/main
tag @e[tag=possibleVictim] add actFlashPossibleVictim
tag @e[tag=possibleVictim] remove possibleVictim

execute as @e[tag=actFlashPossibleVictim] run function galaxy:damage/hitbox/action-flash
