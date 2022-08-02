data modify entity @s HandItems[0].tag.CustomData.galaxy.data.assemble set value {}

function galaxy:block/assembly_table/blueprint/gun/get/parts
execute if data storage galaxy:temp +block.assembly_table.get.parts run data modify entity @s HandItems[0].tag.CustomData.galaxy.data.assemble.parts set from storage galaxy:temp +block.assembly_table.get.parts
function galaxy:block/assembly_table/blueprint/gun/get/parts_id
execute if data storage galaxy:temp +block.assembly_table.get.parts_id run data modify entity @s HandItems[0].tag.CustomData.galaxy.data.assemble.parts_id set from storage galaxy:temp +block.assembly_table.get.parts_id

function galaxy:block/assembly_table/blueprint/gun/get/result
execute if data storage galaxy:temp +block.assembly_table.get.result run data modify entity @s HandItems[0].tag.CustomData.galaxy.data.assemble.result set from storage galaxy:temp +block.assembly_table.get.result
function galaxy:block/assembly_table/blueprint/gun/get/result_uuid
execute if data storage galaxy:temp +block.assembly_table.get.result_uuid run data modify entity @s HandItems[0].tag.CustomData.galaxy.data.assemble.result_uuid set from storage galaxy:temp +block.assembly_table.get.result_uuid
