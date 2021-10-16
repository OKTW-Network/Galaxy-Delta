execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{cooling_system:{}}}}}].CustomData.galaxy.tag.cooling_system.Alteration.cooling_delay 1

execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{casing_gun:{}}}}}].CustomData.galaxy.tag.casing_gun.Alteration.cooling_delay_modifier run function galaxy:gui/assembly_table/interface-gun_main/build-result/cooling_delay-extra

execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.cooling_delay int 1 run scoreboard players get #base percent
