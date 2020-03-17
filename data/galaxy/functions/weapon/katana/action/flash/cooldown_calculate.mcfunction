scoreboard players operation #calculation_temp3 numeric = @s disActFlash
scoreboard players operation #calculation_temp3 numeric *= #static_10 numeric
scoreboard players operation #calculation_temp3 numeric /= #katana_act_flash_distance_limit Config
scoreboard players operation #calculation_temp2 numeric = #katana_act_flash_cd_max Config
scoreboard players operation #calculation_temp2 numeric *= #calculation_temp3 numeric
scoreboard players operation #calculation_temp2 numeric /= #static_1000 numeric
