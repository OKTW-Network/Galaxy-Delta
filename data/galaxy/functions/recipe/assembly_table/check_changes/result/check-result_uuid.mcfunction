data modify storage cu:value different.input1 set from entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.result.tag.CustomData.galaxy.tag.assemblyInfo.UUID
function galaxy:recipe/assembly_table/get/result_uuid
data modify storage cu:value different.input2 set from storage galaxy:temp +recipe.assembly_table.get.result_uuid
function cu:value/different
execute if score #value.different.result cu matches 1 run tag @s add galaxy._tag.assembly_table.resultChanged
