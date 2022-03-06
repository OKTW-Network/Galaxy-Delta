item replace block ~ ~ ~ container.9 with minecraft:stone_sword
item replace block ~ ~ ~ container.10 with minecraft:stone_sword
item replace block ~ ~ ~ container.11 with minecraft:stone_sword
item replace block ~ ~ ~ container.19 with minecraft:stone_sword
item replace block ~ ~ ~ container.20 with minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{sight:{}}}}}] run item replace block ~ ~ ~ container.1 with minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{special:{}}}}}] run item replace block ~ ~ ~ container.7 with minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{cosmetic:{}}}}}] run item replace block ~ ~ ~ container.24 with minecraft:stone_sword
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{color_lens:{}}}}}] run item replace block ~ ~ ~ container.26 with minecraft:stone_sword

data modify block ~ ~ ~ Items[{Slot:9b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}]
data modify block ~ ~ ~ Items[{Slot:10b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{casing_gun:{}}}}}]
data modify block ~ ~ ~ Items[{Slot:11b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{laser_core:{}}}}}]
data modify block ~ ~ ~ Items[{Slot:19b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{cooling_system:{}}}}}]
data modify block ~ ~ ~ Items[{Slot:20b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{handle_gun:{}}}}}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{sight:{}}}}}] run data modify block ~ ~ ~ Items[{Slot:1b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{sight:{}}}}}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{special:{}}}}}] run data modify block ~ ~ ~ Items[{Slot:7b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{special:{}}}}}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{cosmetic:{}}}}}] run data modify block ~ ~ ~ Items[{Slot:24b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{cosmetic:{}}}}}]
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{color_lens:{}}}}}] run data modify block ~ ~ ~ Items[{Slot:26b}].tag set from block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{color_lens:{}}}}}]
