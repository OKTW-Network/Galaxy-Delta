function math:percent-cleanup
execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{casing_gun:1}}].component.alteration.projectile.distance 1
# execute store result score #modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{casing_gun:1}}].component.alteration.projectile.distance_modifier 1
# function math:percent
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}].component.alteration.projectile.distance_modifier run function galaxy:gui/builder-gun/build-result/projectile_distance-extra

scoreboard players set #1 calcu_temp 80
scoreboard players operation #base percent < #1 calcu_temp
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.gun.projectile.distance int 1 run scoreboard players get #base percent
