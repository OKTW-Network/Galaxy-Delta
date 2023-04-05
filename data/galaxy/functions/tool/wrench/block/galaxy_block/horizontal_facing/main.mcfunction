tag @e[tag=galaxy.block,distance=..0.05] add galaxy._tag.ThisWrenchCustomBlockTarget

execute if entity @s[tag=galaxy._tag.wrenchFirstTimeUse] if predicate minecraft:entity_properties/item_frame/vertical run tag @s add galaxy._task.wrench.setFacing
execute if entity @s[tag=galaxy._tag.wrenchFirstTimeUse] if predicate minecraft:entity_properties/item_frame/horizontal run tag @s add galaxy._task.wrench.rotateFacing
tag @s[tag=!galaxy._tag.wrenchFirstTimeUse] add galaxy._task.wrench.rotateFacing

execute if entity @s[tag=galaxy._task.wrench.setFacing] run function galaxy:tool/wrench/block/galaxy_block/horizontal_facing/set_facing
execute if entity @s[tag=galaxy._task.wrench.rotateFacing] run function galaxy:tool/wrench/block/galaxy_block/horizontal_facing/rotate_facing

tag @e[tag=galaxy._tag.ThisWrenchCustomBlockTarget] remove galaxy._tag.ThisWrenchCustomBlockTarget

tag @s remove galaxy._task.wrench.doGalaxyBlockHorizontalFacing
