function galaxy:hitbox/tag/target
tag @e[tag=possibleEntity] add actFlashPossibleVictim
tag @e[tag=possibleEntity] remove possibleEntity

execute as @e[tag=actFlashPossibleVictim] run function galaxy:hitbox/check/action-flash
