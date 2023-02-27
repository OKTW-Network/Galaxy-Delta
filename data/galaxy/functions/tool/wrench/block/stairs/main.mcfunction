execute if entity @s[tag=galaxy._tag.isWrenchFirstUse] if predicate minecraft:entity_properties/item_frame/vertical run tag @s add galaxy._tag.wrenchStairsFacing
execute if entity @s[tag=galaxy._tag.isWrenchFirstUse] if predicate minecraft:entity_properties/item_frame/horizontal run tag @s add galaxy._tag.wrenchStairsRotate
execute if entity @s[tag=!galaxy._tag.isWrenchFirstUse] run tag @s add galaxy._tag.wrenchStairsRotate

execute if entity @s[tag=galaxy._tag.wrenchStairsFacing] run function galaxy:tool/wrench/block/stairs/facing
execute if entity @s[tag=galaxy._tag.wrenchStairsRotate] run function galaxy:tool/wrench/block/stairs/rotate
