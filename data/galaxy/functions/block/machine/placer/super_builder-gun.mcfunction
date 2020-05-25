summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["super_builder-gun","init"]}
setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.super_builder-gun"}'} replace
summon minecraft:armor_stand ~ ~1 ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["super_builder-gun_fake_block","init"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10400,fakeBlock:1,advancedBlastFurnace:1}}]}
execute store result score @s rotation0 run data get entity @s Rotation[0]
execute if score @s rotation0 matches 45 run scoreboard players set @s rotation0 0
execute if score @s rotation0 matches -45 run scoreboard players set @s rotation0 0
execute if score @s rotation0 matches 135 run scoreboard players set @s rotation0 180
execute if score @s rotation0 matches -135 run scoreboard players set @s rotation0 180
execute if score @s rotation0 matches 0 at @s run data merge entity @e[tag=super_builder-gun_fake_block,tag=init,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if score @s rotation0 matches 90 at @s run data merge entity @e[tag=super_builder-gun_fake_block,tag=init,limit=1] {Pose:{Head:[0f,90f,0f]}}
execute if score @s rotation0 matches -90 at @s run data merge entity @e[tag=super_builder-gun_fake_block,tag=init,limit=1] {Pose:{Head:[0f,-90f,0f]}}
execute if score @s rotation0 matches 180 at @s run data merge entity @e[tag=super_builder-gun_fake_block,tag=init,limit=1] {Pose:{Head:[0f,180f,0f]}}
execute if score @s rotation0 matches -180 at @s run data merge entity @e[tag=super_builder-gun_fake_block,tag=init,limit=1] {Pose:{Head:[0f,-180f,0f]}}
scoreboard players set @e[tag=super_builder-gun,tag=init] guiMode 0
scoreboard players set @e[tag=super_builder-gun,tag=init] sbldAttribute 0
scoreboard players set @e[tag=super_builder-gun,tag=init] sbldAtbValue 0
execute as @e[tag=super_builder-gun,tag=init] run function galaxy:recipe/super_builder-gun/get-option_default
execute as @e[tag=super_builder-gun,tag=init] run function galaxy:gui/super_builder-gun/update
execute as @e[tag=super_builder-gun,tag=init] run tag @s remove init
kill @s
