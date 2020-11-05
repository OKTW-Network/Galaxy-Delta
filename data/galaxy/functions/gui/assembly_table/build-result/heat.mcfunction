function math:percent-cleanup
execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{laser_core:1}}].component.alteration.heat 1
# execute store result score #modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{laser_core:1}}].component.alteration.heat_modifier 1
# function math:percent
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}].component.alteration.heat_modifier run function galaxy:gui/assembly_table/build-result/heat-extra

execute store result block ~ ~ ~ Items[{Slot:13b}].tag.gun.heat int 1 run scoreboard players get #base percent
