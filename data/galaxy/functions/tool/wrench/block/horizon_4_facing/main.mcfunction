execute if entity @s[tag=wrenchFirstUse] if predicate galaxy:entity/item_frame/vertical run tag @s add wrenchH4FFacing
execute if entity @s[tag=wrenchFirstUse] if predicate galaxy:entity/item_frame/horizontal run tag @s add wrenchH4FRotate
execute if entity @s[tag=!wrenchFirstUse] run tag @s add wrenchH4FRotate

execute if entity @s[tag=wrenchH4FFacing] run function galaxy:tool/wrench/block/horizon_4_facing/facing
execute if entity @s[tag=wrenchH4FRotate] run function galaxy:tool/wrench/block/horizon_4_facing/rotate
