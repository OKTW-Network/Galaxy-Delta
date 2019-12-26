scoreboard players operation #calculation_temp1 numeric = @s disActFlash
scoreboard players operation #calculation_temp1 numeric *= #static_100 numeric
scoreboard players operation #calculation_temp1 numeric /= #katana_act_flash_distance_limit Config
scoreboard players operation #calculation_temp2 numeric = #katana_act_flash_cd_max Config
scoreboard players operation #calculation_temp2 numeric *= #calculation_temp1 numeric
scoreboard players operation #calculation_temp2 numeric /= #static_1000 numeric
execute if score @s disActFlash matches 0 run scoreboard players set @s reqActFlash 0
execute if score @s disActFlash matches 1.. run scoreboard players operation @s cdActFlash = #calculation_temp2 numeric
