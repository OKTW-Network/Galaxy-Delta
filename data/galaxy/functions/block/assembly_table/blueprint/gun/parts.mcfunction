item replace block ~ ~ ~ container.9 with minecraft:stone_sword
item replace block ~ ~ ~ container.10 with minecraft:stone_sword
item replace block ~ ~ ~ container.11 with minecraft:stone_sword
item replace block ~ ~ ~ container.19 with minecraft:stone_sword
item replace block ~ ~ ~ container.20 with minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.sight run item replace block ~ ~ ~ container.1 with minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.upgrade run item replace block ~ ~ ~ container.7 with minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.cosmetic run item replace block ~ ~ ~ container.24 with minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.color_lens run item replace block ~ ~ ~ container.26 with minecraft:stone_sword

data modify block ~ ~ ~ Items[{Slot:9b}] set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.gun_barrel
data modify block ~ ~ ~ Items[{Slot:10b}] set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.gun_casing
data modify block ~ ~ ~ Items[{Slot:11b}] set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.laser_core
data modify block ~ ~ ~ Items[{Slot:19b}] set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.cooling_system
data modify block ~ ~ ~ Items[{Slot:20b}] set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.handle
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.sight run data modify block ~ ~ ~ Items[{Slot:1b}] set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.sight
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.special run data modify block ~ ~ ~ Items[{Slot:7b}] set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.upgrade
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.cosmetic run data modify block ~ ~ ~ Items[{Slot:24b}] set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.cosmetic
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.color_lens run data modify block ~ ~ ~ Items[{Slot:26b}] set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts.color_lens

function galaxy:block/assembly_table/blueprint/gun/save
