execute if data storage galaxy:temp +recipe.assembly_table.check_changes.invalidParts run data modify storage galaxy:temp +block.pop_item.input set from storage galaxy:temp +recipe.assembly_table.check_changes.invalidParts
execute if data storage galaxy:temp +recipe.assembly_table.check_changes.invalidParts run function galaxy:block/pop_item/on_top

item replace block ~ ~ ~ container.13 with minecraft:air
function galaxy:recipe/assembly_table/save/delete-result
tag @s add galaxy._tag.assembly_table.resultEmpty
function galaxy:recipe/assembly_table/save/parts
execute if entity @s[tag=galaxy._task.assembly_table.assembleResult] run function galaxy:recipe/assembly_table/assemble_result
execute if entity @s[tag=galaxy._task.assembly_table.assembleResult] if predicate galaxy:recipe/assembly_table/result/is-not_placeholder run tag @s remove galaxy._tag.assembly_table.resultEmpty
