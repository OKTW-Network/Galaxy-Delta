execute unless score @s FhGunOverheat matches 1 if score @s FhGunTemper >= @s FhGunTemperMax run function galaxy:weapon/gun/temperature/overheat-start-hand_off
execute if entity @s[scores={FhGunCoolingTim=1..}] run function galaxy:weapon/gun/temperature/cooling-progressive-hand_off
execute if entity @s[scores={FhGunCoolingTim=0}] run scoreboard players operation @s FhGunTemper -= @s FhGunCooling
execute if score @s FhGunTemper <= @s FhGunTemperMin run scoreboard players operation @s FhGunTemper = @s FhGunTemperMin
execute if entity @s[scores={FhGunTemper=..-1}] run scoreboard players set @s FhGunTemper 0
execute if entity @s[scores={FhGunOverheat=1}] if score @s FhGunTemper = @s FhGunTemperMin run scoreboard players set @s FhGunOverheat 0
execute if entity @s[scores={FhGunCoolingTim=1..}] if score @s FhGunTemper = @s FhGunTemperMin run scoreboard players set @s FhGunCoolingTim 0
scoreboard players remove @s[scores={FhGunCoolingTim=1..}] FhGunCoolingTim 1
