execute if entity @s[tag=galaxy._tag.wrenchFirstTimeUse] run tag @s add galaxy._task.wrench.setFacing
execute if entity @s[tag=!galaxy._tag.wrenchFirstTimeUse] run tag @s add galaxy._task.wrench.rotateFacing

execute if entity @s[tag=galaxy._task.wrench.setFacing] run function galaxy:tool/wrench/block/all_facing/set_facing
execute if entity @s[tag=galaxy._task.wrench.rotateFacing] run function galaxy:tool/wrench/block/all_facing/rotate_facing

tag @s remove galaxy._task.wrench.doAllFacing
