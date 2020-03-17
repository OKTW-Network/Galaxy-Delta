function galaxy:weapon/katana/action/swap_put

execute if score #calculation_temp1 numeric matches 1 run scoreboard players set @s disActFlash 0
execute if score #calculation_temp1 numeric matches 1 run scoreboard players operation #calculation_temp2 numeric = #katana_act_flash_distance_limit Config
execute if score #calculation_temp1 numeric matches 1 run scoreboard players operation #calculation_temp2 numeric *= #static_4 numeric
execute if score #calculation_temp1 numeric matches 1 run tag @s add actFalshMove
execute if score #calculation_temp1 numeric matches 1 at @s run function galaxy:weapon/katana/action/flash/move-init
execute if score #calculation_temp1 numeric matches 1 run tag @s remove actFalshMove

execute if score #calculation_temp1 numeric matches 1 run function galaxy:weapon/katana/action/flash/cooldown_calculate
execute if score #calculation_temp1 numeric matches 1 if score @s disActFlash matches 1.. run scoreboard players operation @s cdActFlash = #calculation_temp2 numeric
