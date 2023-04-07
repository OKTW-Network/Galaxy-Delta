function galaxy:recipe/assembly_table/save/delete-blueprint
data modify entity @s data.galaxy.assembly_table.blueprint set from storage galaxy:temp +recipe.assembly_table.save.blueprint

data remove storage galaxy:temp +recipe.assembly_table.save.blueprint
