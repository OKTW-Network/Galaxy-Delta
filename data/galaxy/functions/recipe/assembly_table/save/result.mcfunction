function galaxy:recipe/assembly_table/save/delete-result

function galaxy:recipe/assembly_table/get/result
data modify entity @s data.galaxy.assembly_table.result set from storage galaxy:temp +recipe.assembly_table.get.result
