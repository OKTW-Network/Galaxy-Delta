tag @s add galaxy._tag.coke_furnace.validIO
execute unless data block ~ ~ ~ Items[{Slot:11b,id:"minecraft:coal"}] run tag @s remove galaxy._tag.coke_furnace.validIO
execute if entity @s[tag=galaxy._tag.coke_furnace.validIO] if data block ~ ~ ~ Items[{Slot:15b}] unless data block ~ ~ ~ Items[{Slot:15b,id:"minecraft:command_block",tag:{CustomData:{galaxy:{Type:"item",id:"coke"}}}}] run tag @s remove galaxy._tag.coke_furnace.validIO
execute if entity @s[tag=galaxy._tag.coke_furnace.validIO] if data block ~ ~ ~ Items[{Slot:15b}] run function galaxy:recipe/coke_furnace/check_io/result_count
