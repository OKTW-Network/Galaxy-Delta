execute store result score #percent.base math run data get storage galaxy:temp +block.assembly_table.get.parts.gun_barrel.tag.CustomData.galaxy.tag.component.Alteration.gun.aim_zoom 1
scoreboard players set #1 calcu_temp 0
execute if data storage galaxy:temp +block.assembly_table.get.parts.sight store result score #1 calcu_temp run data get storage galaxy:temp +block.assembly_table.get.parts.sight.tag.CustomData.galaxy.tag.component.Alteration.gun.aim_zoom_modifier 1
execute store result score #percent.modifier math run scoreboard players operation #1 calcu_temp > #0 num
execute if score #1 calcu_temp matches 1.. run function math:percent/main
scoreboard players operation #percent.result math < #7 num
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.aim_zoom int 1 run scoreboard players operation #percent.result math > #1 num