execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,Invulnerable:1b,Small:1b,Invisible:1b,Silent:1b,ShowArms:1b,DisabledSlots:4079166,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:201002}}],Tags:["galaxy.entity","galaxy.entity.katana_display_stand","galaxy._tag.noOverlap","galaxy._tag.summon.init"]}

execute if data storage galaxy:temp +entity.summon.rotation run data modify entity @e[tag=galaxy._tag.summon.init,limit=1] Rotation set from storage galaxy:temp +entity.summon.rotation
data remove storage galaxy:temp +entity.summon.rotation

scoreboard players set @e[tag=galaxy._tag.summon.init] galaxy.entity.katana_display_stand.type 3
scoreboard players set @e[tag=galaxy._tag.summon.init] galaxy.entity.states.katana_display_stand.style 1
tag @e[tag=galaxy._tag.summon.init] remove galaxy._tag.summon.init
