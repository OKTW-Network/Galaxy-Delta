data modify storage cu:value different.input1 set from storage galaxy:temp +recipe.assembly_table.get.blueprint._blueprint[0].id
data modify storage cu:value different.input2 set from storage galaxy:temp +recipe.assembly_table.get.blueprint.blueprintID
function cu:value/different
execute if score #value.different.result cu matches 0 run data remove storage galaxy:temp +recipe.assembly_table.get.blueprint.blueprint[0]
execute if score #value.different.result cu matches 0 run function galaxy:recipe/assembly_table/get/blueprint_by_id/_recursive
