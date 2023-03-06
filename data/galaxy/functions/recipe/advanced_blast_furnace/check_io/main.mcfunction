tag @s add galaxy._tag.advanced_blast_furnace.validIO
execute unless data block ~ ~ ~ Items[{Slot:2b,id:"minecraft:iron_ingot"}] run tag @s remove galaxy._tag.advanced_blast_furnace.validIO
execute if entity @s[tag=galaxy._tag.advanced_blast_furnace.validIO] if data block ~ ~ ~ Items[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b,id:"minecraft:command_block",tag:{CustomData:{galaxy:{Type:"item",id:"steel_ingot"}}}}] run tag @s remove galaxy._tag.advanced_blast_furnace.validIO
execute if entity @s[tag=galaxy._tag.advanced_blast_furnace.validIO] if data block ~ ~ ~ Items[{Slot:15b}] run function galaxy:recipe/advanced_blast_furnace/check_io/result_count
