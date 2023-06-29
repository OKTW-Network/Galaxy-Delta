function cu:hitbox/reset_tag
execute positioned ^ ^ ^0.5 positioned ~-0.75 ~-0.75 ~-0.75 run tag @e[dx=1.5,dy=1.5,dz=1.5] add galaxy._tag.hitboxCandidate
execute positioned ^ ^ ^0.5 positioned ~-1.75 ~-1.75 ~-1.75 run tag @e[dx=1.5,dy=1.5,dz=1.5,tag=galaxy._tag.hitboxCandidate] add cu._tag.hitboxElect
tag @s remove cu._tag.hitboxElect
function cu:hitbox/filter/marker_and_display
tag @e[tag=cu._tag.hitboxElect] add galaxy._tag.TheseKatanaActionVictim
