data modify storage cu:value different.input1 set from entity @s data.galaxy.assembly_table.blueprint.id
data modify storage cu:value different.input2 set from storage galaxy:temp +block.assembly_table.resultAssemblyInfo.blueprintID
function cu:value/different
execute if score #value.different.result cu matches 1 run tag @s add galaxy._task.assembly_table.changeBlueprintFromResult
