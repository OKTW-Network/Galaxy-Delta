execute unless predicate galaxy:block/chest-type-single run tag @s add wrenchChestSeparate
execute if predicate galaxy:block/chest-type-single if predicate galaxy:entity/item_frame/vertical run tag @s add wrenchChestFacing
execute if predicate galaxy:block/chest-type-single if predicate galaxy:entity/item_frame/horizontal run tag @s add wrenchChestRotate

execute if entity @s[tag=wrenchChestSeparate] run function galaxy:tool/wrench/chest/separate
execute if entity @s[tag=wrenchChestFacing] run function galaxy:tool/wrench/chest/facing
execute if entity @s[tag=wrenchChestRotate] run function galaxy:tool/wrench/chest/rotate
