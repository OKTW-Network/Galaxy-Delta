function galaxy:recipe/assembly_table/get/parts_slot/main
data modify storage galaxy:temp +recipe.assembly_table.get.parts.result set from storage galaxy:temp +recipe.assembly_table.get.parts_slot.result
data remove storage galaxy:temp +recipe.assembly_table.get.parts.result[{tag:{CustomData:{galaxy:{Type:"gui",id:"assembly_table.parts_placeholder"}}}}]
