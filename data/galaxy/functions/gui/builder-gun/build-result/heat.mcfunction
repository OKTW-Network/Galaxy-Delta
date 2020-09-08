function math:percent-cleanup
execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.parts[{laser_core:1}].alteration.heat 1
# execute store result score #modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.parts[{laser_core:1}].alteration.heat_modifier 1
# function math:percent
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{barrel:1}].alteration.heat_modifier run function galaxy:gui/builder-gun/build-result/heat-extra

execute store result block ~ ~ ~ Items[{Slot:13b}].tag.heat int 1 run scoreboard players get #base percent
