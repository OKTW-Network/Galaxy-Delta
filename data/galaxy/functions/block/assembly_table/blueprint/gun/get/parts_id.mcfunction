data remove storage galaxy:temp +block.assembly_table.get.parts_id

execute if predicate galaxy:block/assembly_table/blueprint/gun/have-sight run data modify storage galaxy:temp +block.assembly_table.get.parts_id.sight set from block ~ ~ ~ Items[{Slot:1b}].tag.CustomData.galaxy.id
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-upgrade run data modify storage galaxy:temp +block.assembly_table.get.parts_id.upgrade set from block ~ ~ ~ Items[{Slot:7b}].tag.CustomData.galaxy.id
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-gun_barrel run data modify storage galaxy:temp +block.assembly_table.get.parts_id.gun_barrel set from block ~ ~ ~ Items[{Slot:9b}].tag.CustomData.galaxy.id
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-gun_casing run data modify storage galaxy:temp +block.assembly_table.get.parts_id.gun_casing set from block ~ ~ ~ Items[{Slot:10b}].tag.CustomData.galaxy.id
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-laser_core run data modify storage galaxy:temp +block.assembly_table.get.parts_id.laser_core set from block ~ ~ ~ Items[{Slot:11b}].tag.CustomData.galaxy.id
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-cooling_system run data modify storage galaxy:temp +block.assembly_table.get.parts_id.cooling_system set from block ~ ~ ~ Items[{Slot:19b}].tag.CustomData.galaxy.id
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-handle run data modify storage galaxy:temp +block.assembly_table.get.parts_id.handle set from block ~ ~ ~ Items[{Slot:20b}].tag.CustomData.galaxy.id
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-cosmetic run data modify storage galaxy:temp +block.assembly_table.get.parts_id.cosmetic set from block ~ ~ ~ Items[{Slot:24b}].tag.CustomData.galaxy.id
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-color_lens run data modify storage galaxy:temp +block.assembly_table.get.parts_id.color_lens set from block ~ ~ ~ Items[{Slot:26b}].tag.CustomData.galaxy.id
