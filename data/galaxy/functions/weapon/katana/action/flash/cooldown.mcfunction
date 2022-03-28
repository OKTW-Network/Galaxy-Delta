scoreboard players operation #1 calcu_temp = #galaxy$katana_act_flash_cd_max Config
scoreboard players operation #2 calcu_temp = @s galaxy.weapon.katana.action.flash.moved
scoreboard players operation #2 calcu_temp *= #10 num
scoreboard players operation #2 calcu_temp /= @s galaxy.weapon.katana.action.flash.distance
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
scoreboard players operation #1 calcu_temp /= #1000 num

scoreboard players operation @s galaxy.weapon.katana.action.flash.cooldown = #1 calcu_temp
scoreboard players operation @s galaxy.weapon.katana.action.flash.cooldownMax = #1 calcu_temp
