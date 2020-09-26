function math:percent-cleanup
execute store result score #base percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{casing_gun:1}}].component.alteration.delay 1
execute store result score #modifier percent run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{handle:1}}].component.alteration.delay_modifier 1
function math:percent
execute if data block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}].component.alteration.delay_modifier run function galaxy:gui/builder-gun/build-result/delay-extra

scoreboard players set #1 calcu_temp 3
scoreboard players operation #base percent > #1 calcu_temp
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.gun.delay int 1 run scoreboard players get #base percent
