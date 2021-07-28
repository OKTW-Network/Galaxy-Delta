tag @s add galaxy.hitbox.source

summon marker ~ ~ ~ {Tags:["galaxy.hitbox.bullet.trace.selector"]}
execute as @e[tag=galaxy.hitbox.bullet.trace.selector] at @s positioned ~-5 ~-5 ~-5 run tag @e[dx=8,dy=8,dz=8] add galaxy.hitbox.bullet.trace.in_first_box
execute as @e[tag=galaxy.hitbox.bullet.trace.selector] at @s positioned ~-4 ~-4 ~-4 run tag @e[dx=8,dy=8,dz=8,tag=galaxy.hitbox.bullet.trace.in_first_box] add galaxy.hitbox.target
kill @e[tag=galaxy.hitbox.bullet.trace.selector]
tag @e[tag=galaxy.hitbox.bullet.trace.in_first_box] remove galaxy.hitbox.bullet.trace.in_first_box
execute if entity @e[tag=galaxy.hitbox.target] run function galaxy:hitbox/tag/filter/target
execute as @e[tag=galaxy.hitbox.target] run function galaxy:hitbox/tag/filter/source-didnt_damage_this
execute if entity @e[tag=galaxy.hitbox.target] run function galaxy:hitbox/tag/filter/nearest

tag @e[tag=galaxy.hitbox.source] remove galaxy.hitbox.source
