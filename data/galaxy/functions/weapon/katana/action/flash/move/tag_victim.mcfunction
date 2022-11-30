tag @s add galaxy._tag.ThisHitboxSource
function cu:hitbox/reset_tag
execute positioned ~-0.125 ~-0.125 ~-0.125 run tag @e[dx=0,dy=0,dz=0] add galaxy._tag.hitboxCandidate
execute positioned ~-0.875 ~-0.875 ~-0.875 run tag @e[dx=0,dy=0,dz=0,tag=galaxy._tag.hitboxCandidate] add cu._tag.hitboxElect
function cu:hitbox/filter/self_and_special
data modify storage cu:temp +hitbox.filter.sourcePastVictim set value []
data modify storage cu:temp +hitbox.filter.sourcePastVictim set from entity @s data.galaxy.pastVictim
execute as @e[tag=cu._tag.hitboxElect] run function cu:hitbox/filter/elect_is_source_past_victim
execute as @e[tag=cu._tag.hitboxElect] run data modify entity @e[tag=galaxy._tag.ThisHitboxSource,limit=1] data.galaxy.pastVictim append from entity @s UUID
tag @e[tag=cu._tag.hitboxElect] add galaxy._tag.katanaFlashVictim
tag @s remove galaxy._tag.ThisHitboxSource
