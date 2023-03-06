execute align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,Invulnerable:1b,Small:1b,Invisible:1b,Silent:1b,ShowArms:1b,DisabledSlots:4079166,Rotation:[0.0f,-90.0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:303000,CustomData:{galaxy:{Type:"enitity",convertToItem:{}}}}}],Tags:["galaxy.entity","galaxy.entity.empower_lens","galaxy._tag.noOverlap","galaxy._tag.entity.attachment","galaxy._tag.entity.attachment.dropHeadConvertible","galaxy._tag.summon.init"]}

data modify storage galaxy:get item set value []
function galaxy:tool/get/empower_lens
data modify entity @e[tag=galaxy._tag.summon.init,limit=1] ArmorItems[3].tag.CustomData.galaxy.convertToItem set from storage galaxy:get item[0]

tag @e[tag=galaxy._tag.summon.init] remove galaxy._tag.summon.init
