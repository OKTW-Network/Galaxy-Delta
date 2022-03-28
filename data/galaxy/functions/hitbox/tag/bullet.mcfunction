function galaxy:hitbox/tag/target-ignore_hurt_time
tag @e[tag=galaxy._tag.hitboxPossibleEntity] add bulletPossibleVictim
tag @e[tag=galaxy._tag.hitboxPossibleEntity] remove galaxy._tag.hitboxPossibleEntity

execute as @e[tag=bulletPossibleVictim] run function galaxy:hitbox/check/bullet
