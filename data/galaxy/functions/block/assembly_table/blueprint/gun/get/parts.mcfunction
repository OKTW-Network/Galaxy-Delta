data remove storage galaxy:temp +block.assembly_table.get.parts

execute if predicate galaxy:block/assembly_table/blueprint/gun/have-sight run data modify storage galaxy:temp +block.assembly_table.get.parts.sight set from block ~ ~ ~ Items[{Slot:1b}]
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-upgrade run data modify storage galaxy:temp +block.assembly_table.get.parts.upgrade set from block ~ ~ ~ Items[{Slot:7b}]
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-gun_barrel run data modify storage galaxy:temp +block.assembly_table.get.parts.gun_barrel set from block ~ ~ ~ Items[{Slot:9b}]
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-gun_casing run data modify storage galaxy:temp +block.assembly_table.get.parts.gun_casing set from block ~ ~ ~ Items[{Slot:10b}]
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-laser_core run data modify storage galaxy:temp +block.assembly_table.get.parts.laser_core set from block ~ ~ ~ Items[{Slot:11b}]
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-cooling_system run data modify storage galaxy:temp +block.assembly_table.get.parts.cooling_system set from block ~ ~ ~ Items[{Slot:19b}]
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-handle run data modify storage galaxy:temp +block.assembly_table.get.parts.handle set from block ~ ~ ~ Items[{Slot:20b}]
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-cosmetic run data modify storage galaxy:temp +block.assembly_table.get.parts.cosmetic set from block ~ ~ ~ Items[{Slot:24b}]
execute if predicate galaxy:block/assembly_table/blueprint/gun/have-color_lens run data modify storage galaxy:temp +block.assembly_table.get.parts.color_lens set from block ~ ~ ~ Items[{Slot:26b}]
