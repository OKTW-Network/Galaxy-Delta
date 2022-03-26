execute if entity @s[tag=galaxy._tag.isWrenchFirstUse] run tag @s add galaxy._tag.wrenchA6FFacing
execute if entity @s[tag=!galaxy._tag.isWrenchFirstUse] run tag @s add galaxy._tag.wrenchA6FRotate

execute if entity @s[tag=galaxy._tag.wrenchA6FFacing] run function galaxy:tool/wrench/block/all_6_facing/facing
execute if entity @s[tag=galaxy._tag.wrenchA6FRotate] run function galaxy:tool/wrench/block/all_6_facing/rotate
