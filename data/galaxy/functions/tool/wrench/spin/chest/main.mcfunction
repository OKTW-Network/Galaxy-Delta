execute unless predicate minecraft:block_states/type-single run tag @s add wrenchChestSeparate
execute if predicate minecraft:block_states/type-single if predicate galaxy:entity/item_frame/vertical run tag @s add wrenchChestCombine
execute if predicate minecraft:block_states/type-single if entity @s[tag=wrenchFirstUse] if predicate galaxy:entity/item_frame/vertical run tag @s add wrenchChestFacing
execute if predicate minecraft:block_states/type-single if entity @s[tag=wrenchFirstUse] if predicate galaxy:entity/item_frame/horizontal run tag @s add wrenchChestRotate
execute if predicate minecraft:block_states/type-single if entity @s[tag=!wrenchFirstUse] run tag @s add wrenchChestRotate

execute if entity @s[tag=wrenchChestSeparate] run function galaxy:tool/wrench/spin/chest/separate
execute if entity @s[tag=wrenchChestCombine] run function galaxy:tool/wrench/spin/chest/combine
execute if entity @s[tag=wrenchChestFacing,tag=!wrenchChestCombineSuccess] run function galaxy:tool/wrench/spin/chest/facing
execute if entity @s[tag=wrenchChestRotate,tag=!wrenchChestCombineSuccess] run function galaxy:tool/wrench/spin/chest/rotate
