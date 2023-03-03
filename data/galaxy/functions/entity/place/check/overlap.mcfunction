function cu:hitbox/reset_tag
execute align xyz run tag @e[tag=galaxy._tag.noOverlap,dx=0,dy=0,dz=0] add cu._tag.hitboxElect
tag @s remove cu._tag.hitboxElect
execute if entity @e[tag=cu._tag.hitboxElect] run tag @s add galaxy._tag.entityPlaceFailed
