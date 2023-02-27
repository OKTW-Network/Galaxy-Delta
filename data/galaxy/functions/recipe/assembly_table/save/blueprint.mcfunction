function galaxy:recipe/assembly_table/save/delete-blueprint
data modify entity @s HandItems[0].tag.CustomData.galaxy.data.assembly.blueprint set from storage galaxy:temp +recipe.assembly_table.save.blueprint

data remove storage galaxy:temp +recipe.assembly_table.save.blueprint
