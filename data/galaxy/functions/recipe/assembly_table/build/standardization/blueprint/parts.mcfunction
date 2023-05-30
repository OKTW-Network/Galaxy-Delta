data modify storage galaxy:temp +recipe.assembly_table.build.standardization.blueprint[0].parts[0].tag.CustomData.galaxy.tag.assemblyPartSlotRequired set from storage galaxy:temp +recipe.assembly_table.build.standardization.blueprint[0].parts[0].galaxyAssembly.required

data modify storage galaxy:recipe assembly_table.blueprint[-1].parts append from storage galaxy:temp +recipe.assembly_table.build.standardization.blueprint[0].parts[0]
data remove storage galaxy:temp +recipe.assembly_table.build.standardization.blueprint[0].parts[0]
execute if data storage galaxy:temp +recipe.assembly_table.build.standardization.blueprint[0].parts[0] run function galaxy:recipe/assembly_table/build/standardization/blueprint/parts
