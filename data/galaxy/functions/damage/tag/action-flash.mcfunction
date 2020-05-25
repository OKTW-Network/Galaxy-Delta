function galaxy:damage/tag/main
tag @s[tag=possibleVictim] add actFlashPossibleVictim
tag @s[tag=possibleVictim] remove possibleVictim

execute as @e[tag=actFlashPossibleVictim] run function galaxy:damage/hitbox/action-flash
