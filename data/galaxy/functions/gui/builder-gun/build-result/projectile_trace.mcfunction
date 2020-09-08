execute store result score #1 calcu_temp run data get block ~ ~ ~ Items[{Slot:13b}].tag.parts[{barrel:1}].alteration.projectile.trace 1

scoreboard players set #2 calcu_temp 225
scoreboard players operation #1 calcu_temp < #2 calcu_temp
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.projectile.trace int 1 run scoreboard players get #1 calcu_temp
