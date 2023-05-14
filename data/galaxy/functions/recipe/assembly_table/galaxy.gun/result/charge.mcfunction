execute store result score #percent.base math run data get entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"gun_barrel"}}}}}}].CustomData.galaxy.tag.barrel.Alteration.charge 1
execute store result score #percent.modifier math run data get storage galaxy:temp +recipe.assembly_table.get.parts[{CustomData:{galaxy:{tag:{handle_gun:{}}}}}].CustomData.galaxy.tag.handle_gun.Alteration.charge_modifier 1
function math:percent/main

scoreboard players set #1 temp 1
scoreboard players set #2 temp 100
scoreboard players operation #percent.result math > #1 temp
scoreboard players operation #percent.result math < #2 temp
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.charge int 1 run scoreboard players get #percent.result math
