function math:percent-cleanup
execute store result score #percent_base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.parts[{barrel:1}].alteration.aim_zoom 1
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{sight:1}].alteration.aim_zoom_modifier run function galaxy:gui/builder-gun/build-result/aim_zoom-extra

scoreboard players set #calculation_temp1 numeric 7
scoreboard players set #calculation_temp2 numeric 0
scoreboard players operation #percent_base percent < #calculation_temp1 numeric
scoreboard players operation #percent_base percent > #calculation_temp2 numeric
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.aim_zoom int 1 run scoreboard players get #percent_base percent
