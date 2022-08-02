execute if data block ~ ~ ~ Items[{Slot:1b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-sight run tag @s add galaxy._task.assembly_table.dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:7b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-upgrade run tag @s add galaxy._task.assembly_table.dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:9b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-gun_barrel run tag @s add galaxy._task.assembly_table.dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:10b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-gun_casing run tag @s add galaxy._task.assembly_table.dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:11b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-laser_core run tag @s add galaxy._task.assembly_table.dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:19b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-cooling_system run tag @s add galaxy._task.assembly_table.dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:20b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-handle run tag @s add galaxy._task.assembly_table.dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:24b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-cosmetic run tag @s add galaxy._task.assembly_table.dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:26b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-color_lens run tag @s add galaxy._task.assembly_table.dropUnallowed

execute if data block ~ ~ ~ Items[{Slot:13b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-result run tag @s add galaxy._task.assembly_table.dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.SuperAssembled run tag @s add galaxy._task.assembly_table.dropUnallowed
