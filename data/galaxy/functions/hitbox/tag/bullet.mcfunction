function galaxy:hitbox/tag/target-ignore_hurt_time
tag @e[tag=possibleEntity] add bulletPossibleVictim
tag @e[tag=possibleEntity] remove possibleEntity

execute as @e[tag=bulletPossibleVictim] run function galaxy:hitbox/check/bullet
