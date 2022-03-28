function galaxy:hitbox/tag/target
execute as @e[tag=galaxy._tag.hitboxPossibleEntity] run function galaxy:hitbox/check/action-flash
tag @e[tag=galaxy._tag.hitboxPossibleEntity] remove galaxy._tag.hitboxPossibleEntity
