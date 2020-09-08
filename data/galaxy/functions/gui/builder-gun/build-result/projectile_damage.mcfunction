function math:percent-cleanup
execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.parts[{laser_core:1}].alteration.projectile.damage 1
execute store result score #modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.parts[{casing_gun:1}].alteration.projectile.damage_modifier 1
function math:percent
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{barrel:1}].alteration.projectile.damage_modifier run function galaxy:gui/builder-gun/build-result/projectile_damage-extra

scoreboard players set #1 calcu_temp 1
scoreboard players operation #base percent > #1 calcu_temp
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.projectile.damage int 1 run scoreboard players get #base percent
