execute store result score #percent.base math run data get entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"gun_barrel"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.aim_zoom 1
scoreboard players set #1 temp 0
execute if data entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"sight"}}}}}}] store result score #1 temp run data get entity @s data.galaxy.assembly_table.parts[{tag:{CustomData:{galaxy:{tag:{component:{Type:"sight"}}}}}}].tag.CustomData.galaxy.tag.component.Alteration.gun.aim_zoom_modifier 1
execute store result score #percent.modifier math run scoreboard players operation #1 temp > #0 num
execute if score #1 temp matches 1.. run function math:percent/main
scoreboard players operation #percent.result math < #7 num
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.aim_zoom int 1 run scoreboard players operation #percent.result math > #1 num
