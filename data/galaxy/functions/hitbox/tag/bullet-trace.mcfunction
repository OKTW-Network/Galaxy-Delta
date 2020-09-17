function galaxy:hitbox/tag/target
tag @e[tag=possibleEntity,sort=nearest,limit=1] add bulletTraceTarget
tag @e[tag=possibleEntity] remove possibleEntity
