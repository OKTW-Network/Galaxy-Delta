function cu:hitbox/reset_tag
execute positioned ~-0.125 ~-0.125 ~-0.125 run tag @e[dx=0,dy=0,dz=0] add galaxy._tag.hitboxCandidate
execute positioned ~-0.875 ~-0.875 ~-0.875 run tag @e[dx=0,dy=0,dz=0,tag=galaxy._tag.hitboxCandidate] add cu._tag.hitboxElect
tag @s remove cu._tag.hitboxElect
function cu:hitbox/filter/marker_and_display
tag @e[tag=cu._tag.hitboxElect] add galaxy._tag.TheseKatanaActionVictim
