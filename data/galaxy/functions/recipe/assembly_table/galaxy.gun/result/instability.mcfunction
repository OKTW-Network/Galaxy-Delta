execute store result score #percent.base math run data get entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"gun_barrel"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.instability 1
scoreboard players set #1 temp 100
execute store result score #2 temp run data get entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"gun_casing"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.instability_modifier 1
scoreboard players operation #1 temp += #2 temp
execute store result score #2 temp run data get entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"handle"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.instability_modifier 1
scoreboard players operation #1 temp += #2 temp
execute store result score #percent.modifier math run scoreboard players operation #1 temp > #0 num
function math:percent/main
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.instability int 1 run scoreboard players get #percent.result math
