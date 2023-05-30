function galaxy:block/assembly_table/functional/data/delete-parts

function galaxy:block/assembly_table/functional/parts/get
data modify entity @s data.galaxy.assembly_table.parts set from storage galaxy:temp +block.assembly_table.parts
data modify entity @s data.galaxy.assembly_table.partSlotComplete set from storage galaxy:temp +block.assembly_table.partSlotComplete
