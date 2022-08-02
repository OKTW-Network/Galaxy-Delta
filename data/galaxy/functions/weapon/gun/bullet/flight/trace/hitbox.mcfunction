tag @s add galaxy._tag.ThisHitboxSource

function galaxy:hitbox/remove_selected_tag
execute positioned ~-4 ~-4 ~-4 run tag @e[dx=8,dy=8,dz=8] add galaxy._tag.hitboxCandidate
execute positioned ~-5 ~-5 ~-5 run tag @e[dx=8,dy=8,dz=8,tag=galaxy._tag.hitboxCandidate] add galaxy._tag.hitboxSelected
tag @s remove galaxy._tag.hitboxSelected
tag @a remove galaxy._tag.hitboxSelected
execute as @e[tag=galaxy._tag.hitboxSelected] run function galaxy:hitbox/tag/filter/source-didnt_damage_this
execute if entity @e[tag=galaxy._tag.hitboxSelected] run function galaxy:hitbox/tag/filter/nearest

tag @s remove galaxy._tag.ThisHitboxSource
