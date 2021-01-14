scoreboard players operation @s MhGunAclrateLvl += @s MhGunAclrate
scoreboard players set #1 calcu_temp 95
scoreboard players operation @s MhGunAclrateLvl < #1 calcu_temp

execute store result score #1 calcu_temp run scoreboard players get @s MhGunDelay
scoreboard players operation #1 calcu_temp *= @s MhGunAclrateLvl
scoreboard players operation #1 calcu_temp /= #100 num
scoreboard players operation @s MhGunDelay -= #1 calcu_temp
scoreboard players operation @s MhGunDelay > #1 num

execute store result score #1 calcu_temp run scoreboard players get @s MhGunDelay
execute store result score @s MhGunAclrateTim run scoreboard players add #1 calcu_temp 10
