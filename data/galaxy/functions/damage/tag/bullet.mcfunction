function galaxy:damage/tag/main
tag @e[tag=possibleVictim] add bulletPossibleVictim
tag @e[tag=possibleVictim] remove possibleVictim

execute as @e[tag=bulletPossibleVictim] run function galaxy:damage/hitbox/bullet
