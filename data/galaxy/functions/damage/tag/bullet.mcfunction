tag @s add galaxy.damage.source

summon marker ~ ~ ~ {Tags:["galaxy.damage.bullet.selector"]}
execute as @e[tag=galaxy.damage.bullet.selector] at @s positioned ~-1.125 ~-1.125 ~-1.125 run tag @e[dx=0.25,dy=0.25,dz=0.25] add galaxy.damage.bullet.in_first_box
execute as @e[tag=galaxy.damage.bullet.selector] at @s positioned ~-0.125 ~-0.125 ~-0.125 run tag @e[dx=0.25,dy=0.25,dz=0.25,tag=galaxy.damage.bullet.in_first_box] add galaxy.damage.target
kill @e[tag=galaxy.damage.bullet.selector]
tag @e[tag=galaxy.damage.bullet.in_first_box] remove galaxy.damage.bullet.in_first_box
execute if entity @e[tag=galaxy.damage.target] run function galaxy:damage/tag/filter/target
execute as @e[tag=galaxy.damage.target] run function galaxy:damage/tag/filter/source-didnt_damage_this
execute if entity @e[tag=galaxy.damage.target] run function galaxy:damage/tag/filter/nearest

execute store success score @s sucBulletHit if entity @e[tag=galaxy.damage.target]

tag @e[tag=galaxy.damage.source] remove galaxy.damage.source
