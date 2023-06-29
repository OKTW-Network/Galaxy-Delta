scoreboard players set #entity.place.check.overlap galaxy 0
function cu:entity/hitbox/reset_tag
execute align xyz run tag @e[tag=galaxy.entity,dx=0,dy=0,dz=0] add cu._tag.hitboxElect
tag @s remove cu._tag.hitboxElect
function cu:entity/hitbox/filter/marker_and_display
execute as @e[tag=cu._tag.hitboxElect] if score @s galaxy.entity.tileX = #entity.place.tileX galaxy if score @s galaxy.entity.tileY = #entity.place.tileY galaxy if score @s galaxy.entity.tileZ = #entity.place.tileZ galaxy run tag @s add galaxy._tag.entity.place.overlapCandidate
execute as @e[tag=galaxy._tag.entity.place.overlapCandidate] if score @s galaxy.entity.facing matches 8 run scoreboard players set #entity.place.check.overlap galaxy 1
execute if score #entity.place.check.overlap galaxy matches 0 as @e[tag=galaxy._tag.entity.place.overlapCandidate] if score @s galaxy.entity.facing = #entity.place.facing galaxy run scoreboard players set #entity.place.check.overlap galaxy 1
execute if score #entity.place.check.overlap galaxy matches 1 run tag @s add galaxy._tag.entityPlaceFailed
tag @e[tag=galaxy._tag.entity.place.overlapCandidate] remove galaxy._tag.entity.place.overlapCandidate
