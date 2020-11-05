function math:percent-cleanup
execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cooling_system:1}}].component.alteration.cooling 1
# execute store result score #modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cooling_system:1}}].component.alteration.cooling_modifier 1
# function math:percent
# execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}].component.alteration.cooling_modifier run function galaxy:gui/assembly_table/build-result/cooling-extra

execute store result block ~ ~ ~ Items[{Slot:13b}].tag.gun.cooling int 1 run scoreboard players get #base percent
