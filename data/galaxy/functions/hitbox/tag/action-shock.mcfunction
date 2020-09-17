function galaxy:hitbox/tag/target
tag @e[tag=possibleEntity] add actShockPossibleVictim
tag @e[tag=possibleEntity] remove possibleEntity

execute as @e[tag=actShockPossibleVictim] run function galaxy:hitbox/check/action-shock
