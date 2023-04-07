scoreboard players set #1 calcu_temp 0
execute if score #1 calcu_temp matches 0 if block ~ ~ ~ #global:overwritable run scoreboard players set #1 calcu_temp 1
execute if score #1 calcu_temp matches 1 align xyz if entity @e[tag=galaxy.block,dx=0,dy=0,dz=0] run scoreboard players set #1 calcu_temp 0
execute if score #1 calcu_temp matches 0 run tag @s add galaxy._tag.blockPlaceFailed
