scoreboard players operation #block.assembly_table.modeSwitch galaxy = @s galaxy.block.assembly_table.mode

function galaxy:block/assembly_table/functional/result/check/main
execute if score @s galaxy.block.assembly_table.mode matches 1 run function galaxy:block/assembly_table/functional/parts/check
# tag @s[tag=galaxy._tag.assembly_table.resultChanged,tag=galaxy._tag.assembly_table.partsChanged] add galaxy._tag.assembly_table.changesConflict
tag @s[tag=galaxy._tag.assembly_table.resultChanged,tag=galaxy._tag.assembly_table.partsChanged] remove galaxy._tag.assembly_table.partsChanged

execute if score @s galaxy.block.assembly_table.mode = #block.assembly_table.modeSwitch galaxy if entity @s[tag=!galaxy._tag.assembly_table.resultChanged] if score @s galaxy.block.assembly_table.mode matches 0 run function galaxy:block/assembly_table/functional/mode_0
execute if score @s galaxy.block.assembly_table.mode = #block.assembly_table.modeSwitch galaxy if entity @s[tag=!galaxy._tag.assembly_table.resultChanged] if score @s galaxy.block.assembly_table.mode matches 2 run function galaxy:block/assembly_table/functional/mode_2

execute unless score @s galaxy.block.assembly_table.mode = #block.assembly_table.modeSwitch galaxy run function galaxy:block/assembly_table/functional/mode_switch/main

function galaxy:gui/assembly_table/strict_slot
# execute if entity @s[tag=galaxy._tag.assembly_table.changesConflict] run function galaxy:block/assembly_table/functional/changes_conflict

execute if entity @s[tag=galaxy._task.assembly_table.changeBlueprintFromResult] run function galaxy:block/assembly_table/functional/change_blueprint_from_result

execute if entity @s[tag=galaxy._tag.assembly_table.resultChanged] run function galaxy:block/assembly_table/functional/result/main
execute if entity @s[tag=galaxy._tag.assembly_table.partsChanged] run function galaxy:block/assembly_table/functional/parts/main

function galaxy:gui/assembly_table/main

# tag @s[tag=galaxy._tag.assembly_table.changesConflict] remove galaxy._tag.assembly_table.changesConflict
tag @s[tag=galaxy._tag.assembly_table.resultChanged] remove galaxy._tag.assembly_table.resultChanged
tag @s[tag=galaxy._tag.assembly_table.partsChanged] remove galaxy._tag.assembly_table.partsChanged
