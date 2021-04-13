scoreboard players operation @s MhGunAclrateLvl += @s MhGunAclrate
scoreboard players operation @s MhGunAclrateLvl < #100 num

execute store result score #2 calcu_temp run scoreboard players operation #1 calcu_temp = @s gunCharge
scoreboard players operation #1 calcu_temp *= @s MhGunAclrateLvl
scoreboard players operation #1 calcu_temp /= #100 num
scoreboard players operation @s gunCharge += #1 calcu_temp
scoreboard players operation @s gunCharge < #100 num

scoreboard players operation #3 calcu_temp = @s gunChargeHeat
scoreboard players operation #3 calcu_temp *= #1000 num
scoreboard players operation #3 calcu_temp /= #2 calcu_temp
scoreboard players operation #2 calcu_temp -= @s gunCharge
scoreboard players operation #2 calcu_temp *= #-1 num
execute store result score #4 calcu_temp run scoreboard players operation #3 calcu_temp *= #2 calcu_temp
scoreboard players operation #3 calcu_temp /= #1000 num
scoreboard players operation #4 calcu_temp %= #1000 num
execute if score #4 calcu_temp matches 1.. run scoreboard players add #3 calcu_temp 1
scoreboard players operation @s gunChargeHeat += #3 calcu_temp

scoreboard players set @s MhGunAclrateTim 10
