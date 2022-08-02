execute store result score #percent.base math run data get storage galaxy:temp +block.assembly_table.get.parts.gun_barrel.CustomData.galaxy.tag.barrel.Alteration.charge 1
execute store result score #percent.modifier math run data get storage galaxy:temp +block.assembly_table.get.parts[{CustomData:{galaxy:{tag:{handle_gun:{}}}}}].CustomData.galaxy.tag.handle_gun.Alteration.charge_modifier 1
function math:percent/main

scoreboard players set #1 calcu_temp 1
scoreboard players set #2 calcu_temp 100
scoreboard players operation #percent.result math > #1 calcu_temp
scoreboard players operation #percent.result math < #2 calcu_temp
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.charge int 1 run scoreboard players get #percent.result math
