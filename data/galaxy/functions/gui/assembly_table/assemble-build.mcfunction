# Parts to result
tag @s[tag=!lockAssemble,predicate=galaxy:gui/check-assembly_table_require,predicate=!galaxy:gui/check-assembly_table_result] add setResult
execute if entity @s[tag=setResult] run function galaxy:gui/assembly_table/build-result/main
execute if entity @s[tag=setResult] run tag @s add lockAssemble
tag @s[tag=setResult] remove setResult

# Result to parts
tag @s[tag=!lockAssemble,predicate=galaxy:gui/check-assembly_table_result,predicate=!galaxy:gui/check-assembly_table_require] add setParts
execute if entity @s[tag=setParts] if predicate galaxy:gui/check_slot-assembly_table_parts run function galaxy:gui/assembly_table/drop-incomplete_parts
execute if entity @s[tag=setParts] run function galaxy:gui/assembly_table/build-parts
execute if entity @s[tag=setParts] run tag @s add lockAssemble
tag @s[tag=setParts] remove setParts

function galaxy:gui/assembly_table/build-background_hardware
function galaxy:gui/assembly_table/build-background_misc
