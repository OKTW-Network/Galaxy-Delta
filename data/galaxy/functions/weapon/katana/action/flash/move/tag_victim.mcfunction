tag @s add galaxy._tag.ThisHitboxSource
function galaxy:hitbox/remove_selected_tag
execute positioned ~-0.125 ~-0.125 ~-0.125 run tag @e[dx=0,dy=0,dz=0] add galaxy._tag.hitboxCandidate
execute positioned ~-0.875 ~-0.875 ~-0.875 run tag @e[dx=0,dy=0,dz=0,tag=galaxy._tag.hitboxCandidate] add galaxy._tag.hitboxSelected
tag @s remove galaxy._tag.hitboxSelected
tag @a remove galaxy._tag.hitboxSelected
tag @s remove galaxy._tag.ThisHitboxSource

tag @e[tag=galaxy._tag.hitboxSelected] add galaxy._tag.katanaFlashVictim
