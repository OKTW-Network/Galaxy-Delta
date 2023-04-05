scoreboard players operation #1 calcu_temp = @e[tag=galaxy._tag.ThisWrenchCustomBlockTarget] galaxy.block.states.facing

scoreboard players add #1 calcu_temp 1
execute if score #1 calcu_temp matches 4.. run scoreboard players remove #1 calcu_temp 4

scoreboard players add @e[tag=galaxy._tag.ThisWrenchAnchor] galaxy.tool.wrench.rotateSuccess 1

scoreboard players operation @e[tag=galaxy._tag.ThisWrenchCustomBlockTarget] galaxy.block.states.facing = #1 calcu_temp

execute as @e[tag=galaxy._tag.ThisWrenchCustomBlockTarget] at @s run function galaxy:tool/wrench/block/galaxy_block/horizontal_facing/update_facing

tag @s remove galaxy._task.wrench.rotateFacing
