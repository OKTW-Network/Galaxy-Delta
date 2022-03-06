execute store result score #base percent run data get storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{laser_core:{}}}}}].CustomData.galaxy.tag.laser_core.Alteration.heat 1
# execute store result score #modifier percent run data get storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{laser_core:{}}}}}].CustomData.galaxy.tag.laser_core.Alteration.heat_modifier 1
# function math:percent/main
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.heat_modifier run function galaxy:block/assembly_table/blueprint-gun/result/heat-extra

execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.heat int 1 run scoreboard players get #base percent
