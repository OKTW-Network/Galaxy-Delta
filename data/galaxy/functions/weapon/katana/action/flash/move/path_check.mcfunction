scoreboard players set #1 calcu_temp 0
execute if predicate galaxy:weapon/katana/flash_path_check run scoreboard players add #1 calcu_temp 1
execute positioned ~0.35 ~ ~0.35 if predicate galaxy:weapon/katana/flash_path_check run scoreboard players add #1 calcu_temp 1
execute positioned ~-0.35 ~ ~0.35 if predicate galaxy:weapon/katana/flash_path_check run scoreboard players add #1 calcu_temp 1
execute positioned ~-0.35 ~ ~-0.35 if predicate galaxy:weapon/katana/flash_path_check run scoreboard players add #1 calcu_temp 1
execute positioned ~0.35 ~ ~-0.35 if predicate galaxy:weapon/katana/flash_path_check run scoreboard players add #1 calcu_temp 1
execute if score #1 calcu_temp matches 5 run tag @s add galaxy._success.weapon.katana.slash.pathPassed
