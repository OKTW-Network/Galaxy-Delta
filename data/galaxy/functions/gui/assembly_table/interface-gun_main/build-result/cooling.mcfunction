execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{cooling_system:{}}}}}].CustomData.galaxy.tag.cooling_system.Alteration.cooling 1

execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{casing_gun:{}}}}}].CustomData.galaxy.tag.casing_gun.Alteration.cooling_modifier run function galaxy:gui/assembly_table/interface-gun_main/build-result/cooling-extra

execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.cooling int 1 run scoreboard players get #base percent
