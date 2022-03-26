summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.collisionCheck"]}
execute as @e[tag=galaxy.dummy.collisionCheck] run function galaxy:hitbox/store-hitbox
scoreboard players remove @e[tag=galaxy.dummy.collisionCheck] hitboxXMax 5
scoreboard players add @e[tag=galaxy.dummy.collisionCheck] hitboxXMin 5
scoreboard players remove @e[tag=galaxy.dummy.collisionCheck] hitboxZMax 5
scoreboard players add @e[tag=galaxy.dummy.collisionCheck] hitboxZMin 5
scoreboard players add @e[tag=galaxy.dummy.collisionCheck] hitboxYMax 10

execute as @e[tag=galaxy.dummy.collisionCheck] at @s run function galaxy:hitbox/tag/block_collision

execute if entity @e[tag=galaxy._tag.blockCollision] run tag @s add galaxy._tag.placeFailed

tag @e[tag=galaxy._tag.blockCollision] remove galaxy._tag.blockCollision

kill @e[tag=galaxy.dummy.collisionCheck]
