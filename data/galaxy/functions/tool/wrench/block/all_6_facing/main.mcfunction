execute if entity @s[tag=wrenchFirstUse] run tag @s add wrenchA6FFacing
execute if entity @s[tag=!wrenchFirstUse] run tag @s add wrenchA6FRotate

execute if entity @s[tag=wrenchA6FFacing] run function galaxy:tool/wrench/block/all_6_facing/facing
execute if entity @s[tag=wrenchA6FRotate] run function galaxy:tool/wrench/block/all_6_facing/rotate
