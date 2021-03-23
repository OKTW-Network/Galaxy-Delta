scoreboard players operation #1 calcu_temp = #katana_act_flash_cd_max Config
scoreboard players operation #2 calcu_temp = @s ktnFlashMoved
scoreboard players operation #2 calcu_temp *= #10 num
scoreboard players operation #2 calcu_temp /= @s ktnFlashDist
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
scoreboard players operation #1 calcu_temp /= #1000 num

scoreboard players operation @s ktnFlashCd = #1 calcu_temp
scoreboard players operation @s ktnFlashCdMax = #1 calcu_temp
