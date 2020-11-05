function math:percent-cleanup
execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.projectile.offset 1
execute store result score #modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}].component.alteration.projectile.aim_offset_modifier 1
function math:percent
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{sight:1}}].component.alteration.projectile.aim_offset_modifier run function galaxy:gui/assembly_table/build-result/projectile_aim_offset-extra

execute store result block ~ ~ ~ Items[{Slot:13b}].tag.gun.projectile.aim_offset int 1 run scoreboard players get #base percent
