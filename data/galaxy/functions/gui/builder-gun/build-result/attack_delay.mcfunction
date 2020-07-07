function math:percent-cleanup
execute store result score #percent_base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.parts[{casing_gun:1}].alteration.delay 1
execute store result score #percent_modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.parts[{handle:1}].alteration.delay_modifier 1
function math:percent
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{barrel:1}].alteration.delay_modifier run function galaxy:gui/builder-gun/build-result/attack_delay-extra

scoreboard players set #calculation_temp1 numeric 3
scoreboard players operation #percent_base percent > #calculation_temp1 numeric
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.delay int 1 run scoreboard players get #percent_base percent
