function math:percent-cleanup
execute store result score #percent_base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.parts[{laser_core:1}].projectile.damage 1
execute store result score #percent_modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.parts[{casing_gun:1}].projectile.damage_modifier 1
function math:percent
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{barrel:1}].projectile.damage_modifier run function galaxy:gui/builder-gun/build-result/projectile_damage-extra

execute store result block ~ ~ ~ Items[{Slot:13b}].tag.projectile.damage int 1 run scoreboard players get #percent_base percent
