function math:percent-cleanup
execute store result score #percent_base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.projectile.offset 1
execute store result score #percent_modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.parts[{barrel:1}].alteration.projectile.aim_offset_modifier 1
function math:percent
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.parts[{sight:1}].alteration.projectile.aim_offset_modifier run function galaxy:gui/builder-gun/build-result/projectile_aim_offset-extra

execute store result block ~ ~ ~ Items[{Slot:13b}].tag.projectile.aim_offset int 1 run scoreboard players get #percent_base percent
