data modify storage galaxy:temp +GUI.item set value []

execute if data block ~ ~ ~ Items[{Slot:1b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-sight run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:1b}]
execute if data block ~ ~ ~ Items[{Slot:7b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-upgrade run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:7b}]
execute if data block ~ ~ ~ Items[{Slot:9b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-gun_barrel run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:9b}]
execute if data block ~ ~ ~ Items[{Slot:10b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-gun_casing run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:10b}]
execute if data block ~ ~ ~ Items[{Slot:11b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-laser_core run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:11b}]
execute if data block ~ ~ ~ Items[{Slot:19b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-cooling_system run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:19b}]
execute if data block ~ ~ ~ Items[{Slot:20b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-handle run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:20b}]
execute if data block ~ ~ ~ Items[{Slot:24b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-cosmetic run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:24b}]
execute if data block ~ ~ ~ Items[{Slot:26b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-color_lens run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:26b}]

execute if data block ~ ~ ~ Items[{Slot:13b}] unless predicate galaxy:block/assembly_table/blueprint/gun/have-result run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:13b}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.SuperAssembled run data modify storage galaxy:temp +GUI.item append from block ~ ~ ~ Items[{Slot:13b}]

execute if data storage galaxy:temp +GUI.item[0] run function galaxy:gui/delete-slot
execute if data storage galaxy:temp +GUI.item[0] run playsound minecraft:entity.item.pickup block @a ~ ~1 ~ 1 0.6
execute if data storage galaxy:temp +GUI.item[0] run data modify storage cu:item input set from storage galaxy:temp +GUI.item
execute if data storage galaxy:temp +GUI.item[0] run data modify storage cu:item pickupDelay set value 0s
execute if data storage galaxy:temp +GUI.item[0] positioned ~ ~1 ~ run function cu:item/summon

tag @s remove galaxy._task.assembly_table.dropUnallowed
