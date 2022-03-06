execute store result score #base percent run data get storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{cooling_system:{}}}}}].CustomData.galaxy.tag.cooling_system.Alteration.cooling_delay 1

execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{casing_gun:{}}}}}].CustomData.galaxy.tag.casing_gun.Alteration.cooling_delay_modifier run function galaxy:block/assembly_table/blueprint-gun/result/cooling_delay-extra

execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.cooling_delay int 1 run scoreboard players get #base percent
