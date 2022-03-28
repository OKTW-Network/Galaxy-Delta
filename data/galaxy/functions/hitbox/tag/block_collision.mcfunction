tag @e[type=#minecraft:mob,distance=..4] add galaxy._tag.blockCollisionPossibleEntity
tag @e[type=minecraft:armor_stand,nbt=!{Marker:1b},distance=..2] add galaxy._tag.blockCollisionPossibleEntity
tag @e[type=minecraft:player,distance=..2] add galaxy._tag.blockCollisionPossibleEntity

execute as @e[tag=galaxy._tag.blockCollisionPossibleEntity] run function galaxy:hitbox/check/block_collision

tag @e[tag=galaxy._tag.blockCollisionPossibleEntity] remove galaxy._tag.blockCollisionPossibleEntity
