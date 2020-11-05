function math:percent-cleanup
execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cooling_system:1}}].component.alteration.cooling_delay 1
# execute store result score #modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{cooling_system:1}}].component.alteration.cooling_delay_modifier 1
# function math:percent
# execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}].component.alteration.cooling_delay_modifier run function galaxy:gui/assembly_table/build-result/cooling_delay-extra

execute store result block ~ ~ ~ Items[{Slot:13b}].tag.gun.cooling_delay int 1 run scoreboard players get #base percent
