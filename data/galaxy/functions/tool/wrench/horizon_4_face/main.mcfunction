execute if predicate galaxy:entity/item_frame/vertical run tag @s add wrenchH4FFacing
execute if predicate galaxy:entity/item_frame/horizontal run tag @s add wrenchH4FRotate

execute if entity @s[tag=wrenchH4FFacing] run function galaxy:tool/wrench/horizon_4_face/facing
execute if entity @s[tag=wrenchH4FRotate] run function galaxy:tool/wrench/horizon_4_face/rotate
