function galaxy:gui/delete-all_slots

tag @s add galaxy._task.GUI.update
tag @s add galaxy._task.GUI.buildCover

execute if score @s galaxy.GUI.interface matches 0 run tag @s add getAttribute
execute if score @s galaxy.GUI.interface matches 0 run tag @s add setAttributeButton
execute if score @s galaxy.GUI.interface matches 0 run tag @s add setAttribute
execute if score @s galaxy.GUI.interface matches 0 run tag @s add galaxy._task.assembly_table.buildResult

execute if score @s galaxy.GUI.interface matches 1 run tag @s add galaxy._task.assembly_table.removeResult
execute if score @s galaxy.GUI.interface matches 1 run tag @s add setValueButton
execute if score @s galaxy.GUI.interface matches 1 run tag @s add setValue
execute if score @s galaxy.GUI.interface matches 1 run tag @s add setButtonReturn
