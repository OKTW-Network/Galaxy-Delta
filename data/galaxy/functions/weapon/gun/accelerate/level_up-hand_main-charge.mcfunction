scoreboard players add @s MhGunAclrateLvl 50
scoreboard players set #1 calcu_temp 300
scoreboard players operation @s MhGunAclrateLvl < #1 calcu_temp

scoreboard players operation #1 calcu_temp = @s MhGunCharge
scoreboard players operation #1 calcu_temp *= @s MhGunAclrateLvl
scoreboard players operation #1 calcu_temp /= #100 num
scoreboard players operation @s MhGunCharge += #1 calcu_temp

execute store result score #2 calcu_temp run scoreboard players set #1 calcu_temp 100
scoreboard players operation #1 calcu_temp /= @s MhGunCharge
scoreboard players operation #2 calcu_temp %= @s MhGunCharge
execute if score #2 calcu_temp matches 1.. run scoreboard players add #1 calcu_temp 1
execute store result score @s MhGunAclrateTim run scoreboard players add #1 calcu_temp 10
