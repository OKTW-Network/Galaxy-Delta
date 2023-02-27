execute if entity @s[tag=galaxy._tag.assembly_table.resultEmpty] run function galaxy:recipe/assembly_table/check_changes/result/check-empty
execute if entity @s[tag=!galaxy._tag.assembly_table.resultEmpty] run function galaxy:recipe/assembly_table/check_changes/result/check-not_empty
execute if entity @s[tag=!galaxy._tag.assembly_table.resultEmpty,tag=!galaxy._tag.assembly_table.resultChanged,tag=!galaxy._tag.assembly_table.resultInvalid] run function galaxy:recipe/assembly_table/check_changes/result/check-result_uuid
execute if entity @s[tag=galaxy._tag.assembly_table.resultChanged,tag=!galaxy._tag.assembly_table.resultInvalid] run function galaxy:recipe/assembly_table/check_changes/result/check-result_blueprint
