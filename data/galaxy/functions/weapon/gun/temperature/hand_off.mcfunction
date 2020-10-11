execute unless score @s FhGunOverheat matches 1 if score @s FhGunTemper >= @s FhGunTemperMax run function galaxy:weapon/gun/temperature/overheat-start-hand_off
execute if entity @s[scores={FhGunCoolDly=-1}] run scoreboard players operation @s FhGunTemper -= @s FhGunCooling
execute if entity @s[scores={FhGunTemper=..-1}] run scoreboard players set @s FhGunTemper 0
execute if entity @s[scores={FhGunTemper=0,FhGunOverheat=1}] run scoreboard players set @s FhGunOverheat 0
scoreboard players remove @s[scores={FhGunCoolDly=0..}] FhGunCoolDly 1
