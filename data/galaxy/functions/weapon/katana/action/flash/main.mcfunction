function galaxy:weapon/katana/action/swap_put

execute if score #calculation_temp1 numeric matches 1 run scoreboard players set @s disActFlash 0
execute if score #calculation_temp1 numeric matches 1 run scoreboard players operation @s lmtActFlash = #katana_act_flash_distance_limit Config
execute if score #calculation_temp1 numeric matches 1 run scoreboard players operation @s lmtActFlash *= #static_2 numeric
execute if score #calculation_temp1 numeric matches 1 at @s run function galaxy:weapon/katana/action/flash/move

execute if score #calculation_temp1 numeric matches 1 run function galaxy:weapon/katana/action/flash/cooldown_calculate
