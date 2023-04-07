function galaxy:recipe/assembly_table/check_changes/main
execute if entity @s[tag=!galaxy._tag.assembly_table.resultChanged] unless data entity @s data.galaxy.assembly_table.blueprint unless predicate galaxy:gui/assembly_table/home/blueprint_icon/overall run tag @s add galaxy._task.assembly_table.changeBlueprintFromGui

function galaxy:gui/assembly_table/cover
# execute if entity @s[tag=galaxy._tag.assembly_table.changesConflict] run function galaxy:block/assembly_table/functional/reset_io/main
execute if entity @s[tag=galaxy._task.assembly_table.changeBlueprintFromResult] run function galaxy:block/assembly_table/functional/change_blueprint_from_result
execute if entity @s[tag=galaxy._task.assembly_table.changeBlueprintFromGui] run function galaxy:block/assembly_table/functional/change_blueprint_from_gui
execute if entity @s[tag=galaxy._task.assembly_table.switchToHome] run function galaxy:block/assembly_table/functional/switch_to_home
execute if entity @s[tag=galaxy._tag.assembly_table.partsChanged] run function galaxy:block/assembly_table/functional/parts_changed
execute if entity @s[tag=galaxy._tag.assembly_table.resultChanged] run function galaxy:block/assembly_table/functional/result_changed

function galaxy:gui/assembly_table/main

tag @s[tag=galaxy._task.assembly_table.changeBlueprintFromResult] remove galaxy._task.assembly_table.changeBlueprintFromResult
tag @s[tag=galaxy._task.assembly_table.changeBlueprintFromGui] remove galaxy._task.assembly_table.changeBlueprintFromGui
tag @s[tag=galaxy._task.assembly_table.switchToHome] remove galaxy._task.assembly_table.switchToHome
tag @s[tag=galaxy._task.assembly_table.assembleResult] remove galaxy._task.assembly_table.assembleResult

function galaxy:recipe/assembly_table/check_changes/reset
