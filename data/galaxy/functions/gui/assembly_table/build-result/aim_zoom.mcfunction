function math:percent/clear
execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.aim_zoom 1
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{sight:{}}}}}].CustomData.galaxy.tag.sight.Alteration.aim_zoom_modifier run function galaxy:gui/assembly_table/build-result/aim_zoom-extra

scoreboard players set #1 calcu_temp 7
scoreboard players set #2 calcu_temp 0
scoreboard players operation #base percent < #1 calcu_temp
scoreboard players operation #base percent > #2 calcu_temp
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.aim_zoom int 1 run scoreboard players get #base percent
