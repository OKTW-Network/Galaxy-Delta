data modify storage cu:value object.find_match.source set from storage galaxy:recipe assembly_table.blueprint
data modify storage cu:value object.find_match.input set value {id:""}
data modify storage cu:value object.find_match.input.id set from storage galaxy:temp +block.assembly_table.resultAssemblyInfo.blueprintID
scoreboard players set #value.object.find_match.method cu 1
function cu:value/object/find_match/main
data modify storage galaxy:temp +block.assembly_table.data.save_blueprint set from storage cu:value object.find_match.result[0]
function galaxy:block/assembly_table/functional/data/save-blueprint

tag @s add galaxy._task.gui.refresh

tag @s remove galaxy._task.assembly_table.changeBlueprintFromResult
