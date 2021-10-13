scoreboard players set #1 calcu_temp 0
execute if entity @s[tag=galaxy.gun.changed] run scoreboard players set #1 calcu_temp 1
execute if entity @s[predicate=!galaxy:weapon/hand_main-gun_type2] run scoreboard players set #1 calcu_temp 1
execute if entity @s[scores={MhGunOverheat=1}] run scoreboard players set #1 calcu_temp 1
execute if score #1 calcu_temp matches 1 run function galaxy:weapon/gun/charge/reset
