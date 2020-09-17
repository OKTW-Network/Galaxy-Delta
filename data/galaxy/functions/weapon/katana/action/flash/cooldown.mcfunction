scoreboard players operation #1 calcu_temp = #katana_act_flash_cd_max Config
scoreboard players operation #2 calcu_temp = @s actFlashDist
scoreboard players operation #2 calcu_temp *= #10 num
scoreboard players operation #2 calcu_temp /= #katana_act_flash_distance_limit Config
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
scoreboard players operation #1 calcu_temp /= #1000 num

scoreboard players operation @s cdActFlash = #1 calcu_temp
