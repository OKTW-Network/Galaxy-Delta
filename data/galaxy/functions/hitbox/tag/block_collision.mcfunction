tag @e[type=#minecraft:mob,distance=..4] add blockCollisionPossibleEntity
tag @e[type=minecraft:armor_stand,nbt=!{Marker:1b},distance=..2] add blockCollisionPossibleEntity
tag @e[type=minecraft:player,distance=..2] add blockCollisionPossibleEntity

execute as @e[tag=blockCollisionPossibleEntity] run function galaxy:hitbox/check/block_collision
