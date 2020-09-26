function math:percent-cleanup
execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{casing_gun:1}}].component.alteration.projectile.speed 1
# execute store result score #modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{casing_gun:1}}].component.alteration.projectile.speed_modifier 1
# function math:percent
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}].component.alteration.projectile.speed_modifier run function galaxy:gui/builder-gun/build-result/projectile_speed-extra

execute store result block ~ ~ ~ Items[{Slot:13b}].tag.gun.projectile.speed int 1 run scoreboard players get #base percent
