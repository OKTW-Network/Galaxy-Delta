replaceitem block ~ ~ ~ container.9 minecraft:stone_sword
replaceitem block ~ ~ ~ container.10 minecraft:stone_sword
replaceitem block ~ ~ ~ container.11 minecraft:stone_sword
replaceitem block ~ ~ ~ container.19 minecraft:stone_sword
replaceitem block ~ ~ ~ container.20 minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{sight:1}}] run replaceitem block ~ ~ ~ container.1 minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{addon:1}}] run replaceitem block ~ ~ ~ container.7 minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cosmetic:1}}] run replaceitem block ~ ~ ~ container.24 minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{color_lens:1}}] run replaceitem block ~ ~ ~ container.26 minecraft:stone_sword

data modify block ~ ~ ~ Items[{Slot:9b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}]
data modify block ~ ~ ~ Items[{Slot:10b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{casing_gun:1}}]
data modify block ~ ~ ~ Items[{Slot:11b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{laser_core:1}}]
data modify block ~ ~ ~ Items[{Slot:19b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cooling_system:1}}]
data modify block ~ ~ ~ Items[{Slot:20b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{handle:1}}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{sight:1}}] run data modify block ~ ~ ~ Items[{Slot:1b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{sight:1}}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{addon:1}}] run data modify block ~ ~ ~ Items[{Slot:7b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{addon:1}}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cosmetic:1}}] run data modify block ~ ~ ~ Items[{Slot:24b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cosmetic:1}}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{color_lens:1}}] run data modify block ~ ~ ~ Items[{Slot:26b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{color_lens:1}}]

function galaxy:gui/assembly_table/data_save-parts
function galaxy:gui/assembly_table/data_save-result
