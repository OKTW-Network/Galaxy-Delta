execute if entity @s[tag=galaxy._tag.isWrenchFirstUse] if predicate galaxy:entity/item_frame/vertical run tag @s add galaxy._tag.wrenchH4FFacing
execute if entity @s[tag=galaxy._tag.isWrenchFirstUse] if predicate galaxy:entity/item_frame/horizontal run tag @s add galaxy._tag.wrenchH4FRotate
execute if entity @s[tag=!galaxy._tag.isWrenchFirstUse] run tag @s add galaxy._tag.wrenchH4FRotate

execute if entity @s[tag=galaxy._tag.wrenchH4FFacing] run function galaxy:tool/wrench/block/horizon_4_facing/facing
execute if entity @s[tag=galaxy._tag.wrenchH4FRotate] run function galaxy:tool/wrench/block/horizon_4_facing/rotate
