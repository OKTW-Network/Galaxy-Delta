execute store result score #base percent run data get storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{laser_core:{}}}}}].CustomData.galaxy.tag.laser_core.Alteration.projectile.damage 1
execute store result score #modifier percent run data get storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{casing_gun:{}}}}}].CustomData.galaxy.tag.casing_gun.Alteration.projectile.damage_modifier 1
function math:percent/main
execute if data storage galaxy:temp +block.assembly_table.result.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.projectile.damage_modifier run function galaxy:block/assembly_table/blueprint-gun/result/projectile_damage-extra

scoreboard players set #1 calcu_temp 1
scoreboard players operation #base percent > #1 calcu_temp
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.projectile.damage int 1 run scoreboard players get #base percent
