summon minecraft:armor_stand ^ ^ ^-0.37 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Silent:1b,ShowArms:1b,DisabledSlots:4079166,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:20103}}],Tags:["customEntity","galaxy.katana_display_stand","type-4","noOverlap","attachment","dropMainhand","dropSelf","init"],Team:"GalaxyCustomE"}

data modify entity @e[tag=customEntity,tag=galaxy.katana_display_stand,tag=type-4,tag=init,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[tag=customEntity,tag=galaxy.katana_display_stand,tag=type-4,tag=init] at @s run tp ~ ~ ~

scoreboard players set @e[tag=customEntity,tag=galaxy.katana_display_stand,tag=type-4,tag=init] kdsType 4
scoreboard players set @e[tag=customEntity,tag=galaxy.katana_display_stand,tag=type-4,tag=init] kdsStatus 1
tag @e[tag=customEntity,tag=galaxy.katana_display_stand,tag=type-4,tag=init] remove init

tag @s add placeCanceled
