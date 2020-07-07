replaceitem block ~ ~ ~ container.9 minecraft:stone_sword
replaceitem block ~ ~ ~ container.10 minecraft:stone_sword
replaceitem block ~ ~ ~ container.11 minecraft:stone_sword
replaceitem block ~ ~ ~ container.19 minecraft:stone_sword
replaceitem block ~ ~ ~ container.20 minecraft:stone_sword

data modify block ~ ~ ~ Items[{Slot:9b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.parts[{barrel:1}]
data modify block ~ ~ ~ Items[{Slot:10b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.parts[{casing_gun:1}]
data modify block ~ ~ ~ Items[{Slot:11b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.parts[{laser_core:1}]
data modify block ~ ~ ~ Items[{Slot:19b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.parts[{cooling_system:1}]
data modify block ~ ~ ~ Items[{Slot:20b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.parts[{handle:1}]

function galaxy:gui/builder-gun/data_save-parts
function galaxy:gui/builder-gun/data_save-result
