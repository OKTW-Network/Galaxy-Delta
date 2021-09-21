execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{casing_gun:{}}}}}].CustomData.galaxy.tag.casing_gun.Alteration.projectile.distance 1
# execute store result score #modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{casing_gun:{}}}}}].CustomData.galaxy.tag.casing_gun.Alteration.projectile.distance_modifier 1
# function math:percent/main
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.parts[{CustomData:{galaxy:{tag:{barrel:{}}}}}].CustomData.galaxy.tag.barrel.Alteration.projectile.distance_modifier run function galaxy:gui/assembly_table/interface-gun_main/build-result/projectile_distance-extra

scoreboard players set #1 calcu_temp 80
scoreboard players operation #base percent < #1 calcu_temp
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.CustomData.galaxy.tag.projectile.distance int 1 run scoreboard players get #base percent
