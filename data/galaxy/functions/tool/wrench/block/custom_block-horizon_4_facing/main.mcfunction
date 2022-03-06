tag @e[tag=galaxy.customBlock,distance=..0.05] add ThisWrenchCustomBlockTarget
execute positioned ~ ~1 ~ run tag @e[tag=galaxy.customFakeBlock,distance=..0.05] add ThisWrenchCustomBlockTargetFakeBlock

execute if entity @s[tag=wrenchFirstUse] if predicate galaxy:entity/item_frame/vertical run tag @s add wrenchCustomBlockH4FFacing
execute if entity @s[tag=wrenchFirstUse] if predicate galaxy:entity/item_frame/horizontal run tag @s add wrenchCustomBlockH4FRotate
execute if entity @s[tag=!wrenchFirstUse] run tag @s add wrenchCustomBlockH4FRotate

execute if entity @s[tag=wrenchCustomBlockH4FFacing] run function galaxy:tool/wrench/block/custom_block-horizon_4_facing/facing
execute if entity @s[tag=wrenchCustomBlockH4FRotate] run function galaxy:tool/wrench/block/custom_block-horizon_4_facing/rotate

tag @e[tag=ThisWrenchCustomBlockTargetFakeBlock] remove ThisWrenchCustomBlockTargetFakeBlock
tag @e[tag=ThisWrenchCustomBlockTarget] remove ThisWrenchCustomBlockTarget
