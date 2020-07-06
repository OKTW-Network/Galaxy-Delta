summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["builder-gun","init"]}
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.builder-gun"}'} replace
summon minecraft:armor_stand ~ ~1 ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["builder-gun_fake_block","init"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10400,fakeBlock:1}}]}
execute store result score @s rotation0 run data get entity @s Rotation[0]
execute if score @s rotation0 matches 45 run scoreboard players set @s rotation0 0
execute if score @s rotation0 matches -45 run scoreboard players set @s rotation0 0
execute if score @s rotation0 matches 135 run scoreboard players set @s rotation0 180
execute if score @s rotation0 matches -135 run scoreboard players set @s rotation0 180
execute if score @s rotation0 matches 0 at @s run data merge entity @e[tag=builder-gun_fake_block,tag=init,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if score @s rotation0 matches 90 at @s run data merge entity @e[tag=builder-gun_fake_block,tag=init,limit=1] {Pose:{Head:[0f,90f,0f]}}
execute if score @s rotation0 matches -90 at @s run data merge entity @e[tag=builder-gun_fake_block,tag=init,limit=1] {Pose:{Head:[0f,-90f,0f]}}
execute if score @s rotation0 matches 180 at @s run data merge entity @e[tag=builder-gun_fake_block,tag=init,limit=1] {Pose:{Head:[0f,180f,0f]}}
execute if score @s rotation0 matches -180 at @s run data merge entity @e[tag=builder-gun_fake_block,tag=init,limit=1] {Pose:{Head:[0f,-180f,0f]}}
tag @e[tag=builder-gun_fake_block,tag=init] remove init
execute as @e[tag=builder-gun,tag=init] run function galaxy:gui/builder-gun/update
tag @e[tag=builder-gun,tag=init] remove init
kill @s