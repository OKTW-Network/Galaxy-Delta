tag @e[type=#minecraft:hostile,distance=..8.5] add actShockPossibleVictim
# tag @e[type=#minecraft:hostile,type=#minecraft:neutral,distance=..8.5] add actShockPossibleVictim
# tag @e[type=#minecraft:animal,type=#minecraft:neutral,distance=..8.5] add actShockPossibleVictim
# tag @e[type=#minecraft:animal,type=#minecraft:peaceful,distance=..8.5] add actShockPossibleVictim

execute as @e[tag=actShockPossibleVictim] run function galaxy:damage/hitbox/action-shock
