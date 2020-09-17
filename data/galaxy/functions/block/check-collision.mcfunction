summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["collisionCheck"],Particle:"block air",Radius:0.5f,WaitTime:2147483647}
execute as @e[tag=collisionCheck] run function galaxy:hitbox/store-hitbox
scoreboard players remove @e[tag=collisionCheck] hitboxX1 5
scoreboard players add @e[tag=collisionCheck] hitboxX2 5
scoreboard players remove @e[tag=collisionCheck] hitboxZ1 5
scoreboard players add @e[tag=collisionCheck] hitboxZ2 5
scoreboard players add @e[tag=collisionCheck] hitboxY2 10

execute as @e[tag=collisionCheck] at @s run function galaxy:hitbox/tag/block_collision

execute if entity @e[tag=blockCollision] run tag @s add placeFailed

tag @e[tag=blockCollision] remove blockCollision

kill @e[tag=collisionCheck]
