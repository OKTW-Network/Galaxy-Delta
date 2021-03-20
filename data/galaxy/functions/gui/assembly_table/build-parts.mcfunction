replaceitem block ~ ~ ~ container.9 minecraft:stone_sword
replaceitem block ~ ~ ~ container.10 minecraft:stone_sword
replaceitem block ~ ~ ~ container.11 minecraft:stone_sword
replaceitem block ~ ~ ~ container.19 minecraft:stone_sword
replaceitem block ~ ~ ~ container.20 minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{sight:{}}}}}] run replaceitem block ~ ~ ~ container.1 minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{addon:{}}}}}] run replaceitem block ~ ~ ~ container.7 minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{cosmetic:{}}}}}] run replaceitem block ~ ~ ~ container.24 minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{color_lens:{}}}}}] run replaceitem block ~ ~ ~ container.26 minecraft:stone_sword

data modify block ~ ~ ~ Items[{Slot:9b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}]
data modify block ~ ~ ~ Items[{Slot:10b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{casing_gun:{}}}}}]
data modify block ~ ~ ~ Items[{Slot:11b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{laser_core:{}}}}}]
data modify block ~ ~ ~ Items[{Slot:19b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{cooling_system:{}}}}}]
data modify block ~ ~ ~ Items[{Slot:20b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{handle_gun:{}}}}}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{sight:{}}}}}] run data modify block ~ ~ ~ Items[{Slot:1b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{sight:{}}}}}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{addon:{}}}}}] run data modify block ~ ~ ~ Items[{Slot:7b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{addon:{}}}}}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{cosmetic:{}}}}}] run data modify block ~ ~ ~ Items[{Slot:24b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{cosmetic:{}}}}}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{color_lens:{}}}}}] run data modify block ~ ~ ~ Items[{Slot:26b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{color_lens:{}}}}}]

function galaxy:gui/assembly_table/data_save-parts
function galaxy:gui/assembly_table/data_save-result
