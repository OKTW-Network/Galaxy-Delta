function math:percent-cleanup
execute store result score #percent_base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.parts[{casing_gun:1}].alteration.temperMax 1
# execute store result score #percent_modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.parts[{casing_gun:1}].alteration.temperMax_modifier 1
# function math:percent
# execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{barrel:1}].alteration.temperMax_modifier run function galaxy:gui/builder-gun/build-result/temperature_max-extra

execute store result block ~ ~ ~ Items[{Slot:13b}].tag.temperMax int 1 run scoreboard players get #percent_base percent
