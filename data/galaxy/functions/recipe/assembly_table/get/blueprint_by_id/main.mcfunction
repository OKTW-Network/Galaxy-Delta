data remove storage galaxy:temp +recipe.assembly_table.get.blueprint_by_id.result
data modify storage galaxy:temp +recipe.assembly_table.get.blueprint_by_id._blueprint set from storage galaxy:recipe assembly_table.blueprint
function galaxy:recipe/assembly_table/get/blueprint_by_id/_recursive
data modify storage galaxy:temp +recipe.assembly_table.get.blueprint_by_id.result set from storage galaxy:temp +recipe.assembly_table.get.blueprint_by_id._blueprint[0]

data remove storage galaxy:temp +recipe.assembly_table.get.blueprint_by_id.blueprintID
data remove storage galaxy:temp +recipe.assembly_table.get.blueprint_by_id._blueprint
