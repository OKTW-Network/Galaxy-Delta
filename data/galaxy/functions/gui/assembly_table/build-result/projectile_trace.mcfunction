execute store result score #1 calcu_temp run data get block ~ ~ ~ Items[{Slot:13b}].tag.gun.parts[{component:{barrel:1}}].component.alteration.projectile.trace 1

scoreboard players set #2 calcu_temp 80
scoreboard players operation #1 calcu_temp < #2 calcu_temp
execute store result block ~ ~ ~ Items[{Slot:13b}].tag.gun.projectile.trace int 1 run scoreboard players get #1 calcu_temp
