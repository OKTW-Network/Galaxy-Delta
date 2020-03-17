tag @e[type=#minecraft:hostile,distance=..4] add actFlashPossibleVictim
# tag @e[type=#minecraft:hostile,type=#minecraft:neutral,distance=..4] add actFlashPossibleVictim
# tag @e[type=#minecraft:animal,type=#minecraft:neutral,distance=..4] add actFlashPossibleVictim
# tag @e[type=#minecraft:animal,type=#minecraft:peaceful,distance=..4] add actFlashPossibleVictim

execute as @e[tag=actFlashPossibleVictim] run function galaxy:damage/hitbox/action-flash
