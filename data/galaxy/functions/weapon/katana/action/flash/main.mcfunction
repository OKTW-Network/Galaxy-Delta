function galaxy:weapon/katana/meta/detector/check-action-swap_put

execute if score #1 calcu_temp matches 1 run scoreboard players set @s disActFlash 0
execute if score #1 calcu_temp matches 1 run scoreboard players operation #2 calcu_temp = #katana_act_flash_distance_limit Config
execute if score #1 calcu_temp matches 1 run scoreboard players operation #2 calcu_temp *= #4 num
execute if score #1 calcu_temp matches 1 run tag @s add actFalshMove
execute if score #1 calcu_temp matches 1 at @s run function galaxy:weapon/katana/action/flash/move-init
execute if score #1 calcu_temp matches 1 run tag @s remove actFalshMove

function galaxy:weapon/katana/action/swap_put/consequence

execute if score #1 calcu_temp matches 1 run function galaxy:weapon/katana/action/flash/cooldown_calculate
execute if score #1 calcu_temp matches 1 if score @s disActFlash matches 1.. run scoreboard players operation @s cdActFlash = #2 calcu_temp
