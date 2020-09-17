function galaxy:hitbox/tag/target
tag @e[tag=possibleEntity] add bulletPossibleVictim
tag @e[tag=possibleEntity] remove possibleEntity

execute as @e[tag=bulletPossibleVictim] run function galaxy:hitbox/check/bullet
