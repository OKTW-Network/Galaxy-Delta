execute if data block ~ ~ ~ Items[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:1b,tag:{CustomData:{galaxy:{tag:{sight:{}}}}}}] run tag @s add dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:7b,tag:{CustomData:{galaxy:{tag:{special:{}}}}}}] run tag @s add dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:9b}] unless data block ~ ~ ~ Items[{Slot:9b,tag:{CustomData:{galaxy:{tag:{barrel:{}}}}}}] run tag @s add dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:10b}] unless data block ~ ~ ~ Items[{Slot:10b,tag:{CustomData:{galaxy:{tag:{casing_gun:{}}}}}}] run tag @s add dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:11b}] unless data block ~ ~ ~ Items[{Slot:11b,tag:{CustomData:{galaxy:{tag:{laser_core:{}}}}}}] run tag @s add dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:19b}] unless data block ~ ~ ~ Items[{Slot:19b,tag:{CustomData:{galaxy:{tag:{cooling_system:{}}}}}}] run tag @s add dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:20b}] unless data block ~ ~ ~ Items[{Slot:20b,tag:{CustomData:{galaxy:{tag:{handle_gun:{}}}}}}] run tag @s add dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:24b}] unless data block ~ ~ ~ Items[{Slot:24b,tag:{CustomData:{galaxy:{tag:{cosmetic:{}}}}}}] run tag @s add dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:26b}] unless data block ~ ~ ~ Items[{Slot:26b,tag:{CustomData:{galaxy:{tag:{color_lens:{}}}}}}] run tag @s add dropUnallowed

execute if data block ~ ~ ~ Items[{Slot:13b}] unless data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy{id:"gun"} run tag @s add dropUnallowed
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.SuperAssembled run tag @s add dropUnallowed
