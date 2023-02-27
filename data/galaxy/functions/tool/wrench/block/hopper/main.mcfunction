execute if entity @s[tag=galaxy._tag.isWrenchFirstUse] unless predicate minecraft:entity_properties/item_frame/facing-up run tag @s add galaxy._tag.wrenchHopperFacing
execute if entity @s[tag=galaxy._tag.isWrenchFirstUse] if predicate minecraft:entity_properties/item_frame/facing-up run tag @s add galaxy._tag.wrenchHopperRotate
execute if entity @s[tag=!galaxy._tag.isWrenchFirstUse] run tag @s add galaxy._tag.wrenchHopperRotate

execute if entity @s[tag=galaxy._tag.wrenchHopperFacing] run function galaxy:tool/wrench/block/hopper/facing
execute if entity @s[tag=galaxy._tag.wrenchHopperRotate] run function galaxy:tool/wrench/block/hopper/rotate
