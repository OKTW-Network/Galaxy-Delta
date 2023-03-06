tag @e[tag=galaxy.block,distance=..0.05] add galaxy._tag.ThisWrenchCustomBlockTarget

execute if entity @s[tag=galaxy._tag.isWrenchFirstUse] if predicate minecraft:entity_properties/item_frame/vertical run tag @s add wrenchCustomBlockH4FFacing
execute if entity @s[tag=galaxy._tag.isWrenchFirstUse] if predicate minecraft:entity_properties/item_frame/horizontal run tag @s add wrenchCustomBlockH4FRotate
execute if entity @s[tag=!galaxy._tag.isWrenchFirstUse] run tag @s add wrenchCustomBlockH4FRotate

execute if entity @s[tag=wrenchCustomBlockH4FFacing] run function galaxy:tool/wrench/block/custom_block-horizon_4_facing/facing
execute if entity @s[tag=wrenchCustomBlockH4FRotate] run function galaxy:tool/wrench/block/custom_block-horizon_4_facing/rotate

tag @e[tag=galaxy._tag.ThisWrenchCustomBlockTarget] remove galaxy._tag.ThisWrenchCustomBlockTarget
