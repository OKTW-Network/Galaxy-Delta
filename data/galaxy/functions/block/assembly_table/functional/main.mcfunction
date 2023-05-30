function galaxy:block/assembly_table/functional/result/check/main
execute if data entity @s data.galaxy.assembly_table.blueprint run function galaxy:block/assembly_table/functional/parts/check
# tag @s[tag=galaxy._tag.assembly_table.resultChanged,tag=galaxy._tag.assembly_table.partsChanged] add galaxy._tag.assembly_table.changesConflict
tag @s[tag=galaxy._tag.assembly_table.resultChanged,tag=galaxy._tag.assembly_table.partsChanged] remove galaxy._tag.assembly_table.partsChanged
execute if entity @s[tag=!galaxy._tag.assembly_table.resultChanged] unless data entity @s data.galaxy.assembly_table.blueprint run function galaxy:block/assembly_table/functional/home

function galaxy:gui/assembly_table/cover
# execute if entity @s[tag=galaxy._tag.assembly_table.changesConflict] run function galaxy:block/assembly_table/functional/changes_conflict
execute if entity @s[tag=galaxy._tag.assembly_table.resultChanged] if score #block.assembly_table.lastResultSlotStatus galaxy matches 0 if score #block.assembly_table.parts galaxy matches 1.. run function galaxy:block/assembly_table/functional/parts/pop

execute if entity @s[tag=galaxy._task.assembly_table.switchToHome] run function galaxy:block/assembly_table/functional/switch_to_home
execute if entity @s[tag=galaxy._task.assembly_table.changeBlueprintFromBlueprintPage] run function galaxy:block/assembly_table/functional/change_blueprint_from_gui
execute if entity @s[tag=galaxy._task.assembly_table.changeBlueprintFromResult] run function galaxy:block/assembly_table/functional/change_blueprint_from_result
execute if entity @s[tag=galaxy._tag.assembly_table.resultChanged] run function galaxy:block/assembly_table/functional/result/main
execute if entity @s[tag=galaxy._tag.assembly_table.partsChanged] run function galaxy:block/assembly_table/functional/parts/main

function galaxy:gui/assembly_table/main

# tag @s[tag=galaxy._tag.assembly_table.changesConflict] remove galaxy._tag.assembly_table.changesConflict
tag @s[tag=galaxy._tag.assembly_table.resultChanged] remove galaxy._tag.assembly_table.resultChanged
tag @s[tag=galaxy._tag.assembly_table.partsChanged] remove galaxy._tag.assembly_table.partsChanged
tag @s[tag=galaxy._tag.assembly_table.blueprintPageChanged] remove galaxy._tag.assembly_table.blueprintPageChanged
