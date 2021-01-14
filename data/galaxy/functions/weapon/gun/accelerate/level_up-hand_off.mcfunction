scoreboard players operation @s FhGunAclrateLvl += @s FhGunAclrate
scoreboard players set #1 calcu_temp 95
scoreboard players operation @s FhGunAclrateLvl < #1 calcu_temp

execute store result score #1 calcu_temp run scoreboard players get @s FhGunDelay
scoreboard players operation #1 calcu_temp *= @s FhGunAclrateLvl
scoreboard players operation #1 calcu_temp /= #100 num
scoreboard players operation @s FhGunDelay -= #1 calcu_temp
scoreboard players operation @s FhGunDelay > #1 num

execute store result score #1 calcu_temp run scoreboard players get @s FhGunDelay
execute store result score @s FhGunAclrateTim run scoreboard players add #1 calcu_temp 10
