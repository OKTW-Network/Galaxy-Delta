execute store result score #base percent run data get storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.charge 1
execute store result score #modifier percent run data get storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{handle_gun:{}}}}}].CustomData.galaxy.tag.handle_gun.Alteration.charge_modifier 1
function math:percent/main

scoreboard players set #1 calcu_temp 1
scoreboard players set #2 calcu_temp 100
scoreboard players operation #result percent > #1 calcu_temp
scoreboard players operation #result percent < #2 calcu_temp
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.charge int 1 run scoreboard players get #result percent
