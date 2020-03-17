tag @e[type=#minecraft:hostile,distance=..4] add bulletPossibleVictim
# tag @e[type=#minecraft:hostile,type=#minecraft:neutral,distance=..4] add bulletPossibleVictim
# tag @e[type=#minecraft:animal,type=#minecraft:neutral,distance=..4] add bulletPossibleVictim
# tag @e[type=#minecraft:animal,type=#minecraft:peaceful,distance=..4] add bulletPossibleVictim

execute as @e[tag=bulletPossibleVictim] run function galaxy:damage/hitbox/bullet
