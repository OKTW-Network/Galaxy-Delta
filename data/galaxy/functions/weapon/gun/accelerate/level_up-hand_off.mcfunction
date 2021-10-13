scoreboard players operation @s FhGunAclrateLvl += @s FhGunAclrate
scoreboard players set #1 calcu_temp 75
scoreboard players operation @s FhGunAclrateLvl < #1 calcu_temp

scoreboard players operation #1 calcu_temp = @s FhGunDelay
scoreboard players operation #1 calcu_temp *= @s FhGunAclrateLvl
scoreboard players operation #1 calcu_temp /= #100 num
scoreboard players operation @s FhGunDelay -= #1 calcu_temp
scoreboard players operation @s FhGunDelay > #1 num

scoreboard players operation #1 calcu_temp = @s FhGunDelay
execute store result score @s FhGunAclrateTim run scoreboard players add #1 calcu_temp 10
