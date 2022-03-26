execute unless predicate minecraft:block_states/type-single run tag @s add galaxy._tag.wrenchChestSeparate
execute if predicate minecraft:block_states/type-single if predicate galaxy:entity/item_frame/vertical run tag @s add galaxy._tag.wrenchChestCombine
execute if predicate minecraft:block_states/type-single if entity @s[tag=galaxy._tag.isWrenchFirstUse] if predicate galaxy:entity/item_frame/vertical run tag @s add galaxy._tag.wrenchChestFacing
execute if predicate minecraft:block_states/type-single if entity @s[tag=galaxy._tag.isWrenchFirstUse] if predicate galaxy:entity/item_frame/horizontal run tag @s add galaxy._tag.wrenchChestRotate
execute if predicate minecraft:block_states/type-single if entity @s[tag=!galaxy._tag.isWrenchFirstUse] run tag @s add galaxy._tag.wrenchChestRotate

execute if entity @s[tag=galaxy._tag.wrenchChestSeparate] run function galaxy:tool/wrench/block/chest/separate
execute if entity @s[tag=galaxy._tag.wrenchChestCombine] run function galaxy:tool/wrench/block/chest/combine
execute if entity @s[tag=galaxy._tag.wrenchChestFacing,tag=!galaxy._tag.wrenchChestCombineSuccess] run function galaxy:tool/wrench/block/chest/facing
execute if entity @s[tag=galaxy._tag.wrenchChestRotate,tag=!galaxy._tag.wrenchChestCombineSuccess] run function galaxy:tool/wrench/block/chest/rotate
