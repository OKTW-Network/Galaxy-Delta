function galaxy:recipe/assembly_table/check_changes/result/main
execute if data entity @s data.galaxy.assembly_table.blueprint run function galaxy:recipe/assembly_table/check_changes/parts/main

tag @s[tag=galaxy._tag.assembly_table.resultChanged,tag=galaxy._tag.assembly_table.partsChanged] add galaxy._tag.assembly_table.changesConflict
tag @s[tag=galaxy._tag.assembly_table.changesConflict] remove galaxy._tag.assembly_table.partsChanged
