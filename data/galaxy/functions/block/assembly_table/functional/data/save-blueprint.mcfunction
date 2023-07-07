function galaxy:block/assembly_table/functional/data/delete-blueprint
data modify entity @s data.galaxy.assembly_table.blueprint set from storage galaxy:temp +block.assembly_table.data.save_blueprint

data remove storage galaxy:temp +block.assembly_table.data.save_blueprint
