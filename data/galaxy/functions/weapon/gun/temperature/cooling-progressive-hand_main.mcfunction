scoreboard players operation #1 calcu_temp = @s MhGunCooling
scoreboard players operation #2 calcu_temp = @s MhGunCoolingDly
scoreboard players operation #2 calcu_temp -= @s MhGunCoolingTim
scoreboard players operation #2 calcu_temp *= #100 num
execute if score #2 calcu_temp matches 1.. run scoreboard players operation #2 calcu_temp /= @s MhGunCoolingDly
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
scoreboard players operation #1 calcu_temp /= #100 num
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
scoreboard players operation #1 calcu_temp /= #100 num

scoreboard players operation @s MhGunTemper -= #1 calcu_temp
