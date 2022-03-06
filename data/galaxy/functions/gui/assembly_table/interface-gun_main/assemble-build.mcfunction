# Parts to result
tag @s[tag=!lockAssemble,predicate=galaxy:gui/assembly_table/check-gun_require,predicate=!galaxy:gui/assembly_table/check-gun_result] add setResult
execute if entity @s[tag=setResult] run function galaxy:gui/assembly_table/interface-gun_main/build-result
execute if entity @s[tag=setResult] run tag @s add lockAssemble
tag @s[tag=setResult] remove setResult

# Result to parts
tag @s[tag=!lockAssemble,predicate=galaxy:gui/assembly_table/check-gun_result,predicate=!galaxy:gui/assembly_table/check-gun_require] add setParts
execute if entity @s[tag=setParts] if predicate galaxy:gui/check_slot-assembly_table_parts run function galaxy:gui/assembly_table/interface-gun_main/drop-incomplete_parts
execute if entity @s[tag=setParts] run function galaxy:gui/assembly_table/interface-gun_main/build-parts
execute if entity @s[tag=setParts] run tag @s add lockAssemble
tag @s[tag=setParts] remove setParts

function galaxy:gui/assembly_table/interface-gun_main/build-background_hardware
function galaxy:gui/assembly_table/interface-gun_main/build-background_misc
