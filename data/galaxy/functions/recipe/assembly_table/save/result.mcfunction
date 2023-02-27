function galaxy:recipe/assembly_table/save/delete-result

function galaxy:recipe/assembly_table/get/result
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.result set from storage galaxy:temp +recipe.assembly_table.get.result
