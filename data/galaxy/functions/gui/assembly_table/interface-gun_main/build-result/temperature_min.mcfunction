execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{laser_core:{}}}}}].CustomData.galaxy.tag.laser_core.Alteration.temperature_min 1
execute store result score #modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{casing_gun:{}}}}}].CustomData.galaxy.tag.casing_gun.Alteration.temperature_min_modifier 1
function math:percent/main
execute store result score #modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{cooling_system:{}}}}}].CustomData.galaxy.tag.cooling_system.Alteration.temperature_min_modifier 1
function math:percent/main
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.temperature_min int 1 run scoreboard players get #result percent
