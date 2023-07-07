scoreboard players operation #1 temp = @e[tag=galaxy._tag.ThisWrenchGalaxyBlockTarget] galaxy.block.states.facing

scoreboard players add #1 temp 1
execute if score #1 temp matches 4.. run scoreboard players remove #1 temp 4

scoreboard players add @e[tag=galaxy._tag.ThisWrenchAnchor] galaxy.tool.wrench.rotateSuccess 1

scoreboard players operation @e[tag=galaxy._tag.ThisWrenchGalaxyBlockTarget] galaxy.block.states.facing = #1 temp

execute as @e[tag=galaxy._tag.ThisWrenchGalaxyBlockTarget] at @s run function galaxy:tool/wrench/block/galaxy_block/update_block_states

tag @s remove galaxy._task.wrench.rotateFacing
