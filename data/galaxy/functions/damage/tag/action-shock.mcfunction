function galaxy:damage/tag/main
tag @s[tag=possibleVictim] add actShockPossibleVictim
tag @s[tag=possibleVictim] remove possibleVictim

execute as @e[tag=actShockPossibleVictim] run function galaxy:damage/hitbox/action-shock
