execute unless predicate minecraft:block_states/type-single run tag @s add galaxy._task.wrench.chestSeparate
execute if predicate minecraft:block_states/type-single if predicate minecraft:entity_properties/item_frame/vertical run tag @s add galaxy._task.wrench.chestCombine
execute if predicate minecraft:block_states/type-single if entity @s[tag=galaxy._tag.wrenchFirstTimeUse] if predicate minecraft:entity_properties/item_frame/vertical run tag @s add galaxy._task.wrench.setFacing
execute if predicate minecraft:block_states/type-single if entity @s[tag=galaxy._tag.wrenchFirstTimeUse] if predicate minecraft:entity_properties/item_frame/horizontal run tag @s add galaxy._task.wrench.rotateFacing
execute if predicate minecraft:block_states/type-single if entity @s[tag=!galaxy._tag.wrenchFirstTimeUse] run tag @s add galaxy._task.wrench.rotateFacing

execute if entity @s[tag=galaxy._task.wrench.chestSeparate] run function galaxy:tool/wrench/block/chest/separate
execute if entity @s[tag=galaxy._task.wrench.chestCombine] run function galaxy:tool/wrench/block/chest/combine
execute if entity @s[tag=galaxy._task.wrench.setFacing,tag=!galaxy._tag.wrenchChestCombineSuccess] run function galaxy:tool/wrench/block/chest/set_facing
execute if entity @s[tag=galaxy._task.wrench.rotateFacing,tag=!galaxy._tag.wrenchChestCombineSuccess] run function galaxy:tool/wrench/block/chest/rotate_facing

tag @s remove galaxy._task.wrench.doChest
