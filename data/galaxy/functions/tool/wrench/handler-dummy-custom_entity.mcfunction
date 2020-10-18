tag @s add ThisCustomEntity
tag @a[tag=triggerInteractEntity] add triggerWrench

data modify storage galaxy:temp wrenchUUID set from entity @e[tag=ThisCustomEntity,limit=1] HandItems[0].tag.wrench.UUID

execute as @e[tag=ThisCustomEntity,tag=wrenchKatanaDisplayStand] at @s run function galaxy:tool/wrench/custom_entity/katana_display_stand/main
execute as @e[tag=ThisCustomEntity,tag=wrenchEmpowerLens] at @s run function galaxy:tool/wrench/custom_entity/empower_lens/main

data modify storage galaxy:get item set value []
function galaxy:tool/get/wrench-uuid_less
data modify storage cu:replaceitem item set from storage galaxy:get item[0]
data modify storage cu:replaceitem item.tag.wrench.UUID set from storage galaxy:temp wrenchUUID
data modify storage cu:replaceitem item.tag.EntityTag.Item.tag.customUUID set from storage galaxy:temp wrenchUUID
execute as @a[tag=triggerWrench] run function cu:replaceitem/hand_main

execute if data entity @s HandItems[0].tag.wrench run replaceitem entity @s weapon.mainhand minecraft:air

tag @a[tag=triggerWrench] remove triggerWrench
tag @s remove ThisCustomEntity
