scoreboard players operation #1 calcu_temp = @s FhGunCooling
scoreboard players operation #2 calcu_temp = @s FhGunCoolingTim
scoreboard players operation #2 calcu_temp -= @s FhGunCoolingDly
scoreboard players operation #2 calcu_temp *= #100 num
execute if score #2 calcu_temp matches 1.. run scoreboard players operation #2 calcu_temp /= @s FhGunCoolingDly
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
scoreboard players operation #1 calcu_temp /= #100 num
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
scoreboard players operation #1 calcu_temp /= #100 num

scoreboard players operation @s FhGunTemper -= #1 calcu_temp
