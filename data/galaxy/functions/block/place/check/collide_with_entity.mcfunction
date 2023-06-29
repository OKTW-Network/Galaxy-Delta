function cu:entity/hitbox/reset_tag
execute align xyz run tag @e[dx=0,dy=0,dz=0] add cu._tag.hitboxElect
tag @s remove cu._tag.hitboxElect
tag @e[type=#galaxy:block/place_collide_exception] remove cu._tag.hitboxElect
execute if entity @e[tag=cu._tag.hitboxElect] run tag @s add galaxy._tag.blockPlaceFailed
