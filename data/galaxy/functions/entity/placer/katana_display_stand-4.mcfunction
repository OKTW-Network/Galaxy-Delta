summon minecraft:armor_stand ^ ^ ^-0.37 {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Silent:1b,ShowArms:1b,DisabledSlots:4079166,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:201003}}],Tags:["galaxy.customEntity","galaxy.katana_display_stand","galaxy._tag.noOverlap","galaxy._tag.attachment","galaxy._tag.attachment.dropMainhand","galaxy._tag.attachment.dropSelf","init"]}

data modify entity @e[tag=galaxy.customEntity,tag=galaxy.katana_display_stand,tag=init,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[tag=galaxy.customEntity,tag=galaxy.katana_display_stand,tag=init] at @s run tp ~ ~ ~

scoreboard players set @e[tag=galaxy.customEntity,tag=galaxy.katana_display_stand,tag=init] galaxy.entity.katana_display_stand.type 4
scoreboard players set @e[tag=galaxy.customEntity,tag=galaxy.katana_display_stand,tag=init] galaxy.entity.states.katana_display_stand.style 1
tag @e[tag=galaxy.customEntity,tag=galaxy.katana_display_stand,tag=init] remove init

tag @s add placeCanceled
