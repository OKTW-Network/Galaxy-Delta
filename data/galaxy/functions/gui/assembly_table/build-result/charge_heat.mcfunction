execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.heat 1
execute store result score #modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.charge_heat 1
function math:percent/main

execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.charge_heat int 1 run scoreboard players get #base percent
