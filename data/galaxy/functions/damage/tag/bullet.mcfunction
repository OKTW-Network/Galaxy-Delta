function galaxy:damage/tag/main
tag @s[tag=possibleVictim] add bulletPossibleVictim
tag @s[tag=possibleVictim] remove possibleVictim

execute as @e[tag=bulletPossibleVictim] run function galaxy:damage/hitbox/bullet
