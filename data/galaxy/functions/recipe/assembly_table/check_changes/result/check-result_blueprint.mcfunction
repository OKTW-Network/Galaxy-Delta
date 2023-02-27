data modify storage cu:value different.input1 set from entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.blueprint.id
function galaxy:recipe/assembly_table/get/result_blueprint_id
data modify storage cu:value different.input2 set from storage galaxy:temp +recipe.assembly_table.get.blueprint_id.result
function cu:value/different
execute if score #value.different.result cu matches 1 run tag @s add galaxy._task.assembly_table.changeBlueprintFromResult
