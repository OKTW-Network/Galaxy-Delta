execute align xyz positioned ~0.5 ~ ~0.5 positioned ^ ^ ^-0.37 run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Silent:1b,ShowArms:1b,DisabledSlots:4079166,Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:201003,CustomData:{galaxy:{Type:"enitity",convertToItem:{}}}}}],Tags:["galaxy.customEntity","galaxy.katana_display_stand","galaxy._tag.noOverlap","galaxy._tag.entity.attachment","galaxy._tag.entity.attachment.dropMainhandItem","galaxy._tag.entity.attachment.dropHeadConvertible","galaxy._tag.summon.init"]}

execute if data storage galaxy:temp +entity.summon.rotation run data modify entity @e[tag=galaxy._tag.summon.init,limit=1] Rotation set from storage galaxy:temp +entity.summon.rotation
data remove storage galaxy:temp +entity.summon.rotation
#workaround update entity rotation
execute as @e[tag=galaxy._tag.summon.init] at @s run tp ~ ~ ~

data modify storage galaxy:get item set value []
function galaxy:entity/get/katana_display_stand-2
data modify entity @e[tag=galaxy._tag.summon.init,limit=1] ArmorItems[3].tag.CustomData.galaxy.convertToItem set from storage galaxy:get item[0]

scoreboard players set @e[tag=galaxy._tag.summon.init] galaxy.entity.katana_display_stand.type 4
scoreboard players set @e[tag=galaxy._tag.summon.init] galaxy.entity.states.katana_display_stand.style 1
tag @e[tag=galaxy._tag.summon.init] remove galaxy._tag.summon.init
