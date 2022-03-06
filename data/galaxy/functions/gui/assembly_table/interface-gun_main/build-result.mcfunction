data modify storage galaxy:temp +block.assembly_table.result.parts set value []

data modify storage galaxy:temp +block.assembly_table.result.parts append from block ~ ~ ~ Items[{Slot:9b}].tag
data modify storage galaxy:temp +block.assembly_table.result.parts append from block ~ ~ ~ Items[{Slot:10b}].tag
data modify storage galaxy:temp +block.assembly_table.result.parts append from block ~ ~ ~ Items[{Slot:11b}].tag
data modify storage galaxy:temp +block.assembly_table.result.parts append from block ~ ~ ~ Items[{Slot:19b}].tag
data modify storage galaxy:temp +block.assembly_table.result.parts append from block ~ ~ ~ Items[{Slot:20b}].tag
execute if data block ~ ~ ~ Items[{Slot:1b}].tag.CustomData.galaxy.tag.sight run data modify storage galaxy:temp +block.assembly_table.result.parts append from block ~ ~ ~ Items[{Slot:1b}].tag
execute if data block ~ ~ ~ Items[{Slot:7b}].tag.CustomData.galaxy.tag.special run data modify storage galaxy:temp +block.assembly_table.result.parts append from block ~ ~ ~ Items[{Slot:7b}].tag
execute if data block ~ ~ ~ Items[{Slot:24b}].tag.CustomData.galaxy.tag.cosmetic run data modify storage galaxy:temp +block.assembly_table.result.parts append from block ~ ~ ~ Items[{Slot:24b}].tag
execute if data block ~ ~ ~ Items[{Slot:26b}].tag.CustomData.galaxy.tag.color_lens run data modify storage galaxy:temp +block.assembly_table.result.parts append from block ~ ~ ~ Items[{Slot:26b}].tag
function galaxy:block/assembly_table/blueprint-gun/result/main

function galaxy:gui/assembly_table/interface-gun_main/data_save-parts
function galaxy:gui/assembly_table/interface-gun_main/data_save-result
