execute unless score @s MhGunOverheat matches 1 if score @s MhGunTemper >= @s MhGunTemperMax run function galaxy:weapon/gun/temperature/overheat-start-hand_main
execute if entity @s[scores={MhGunCoolingTim=1..}] run function galaxy:weapon/gun/temperature/cooling-progressive-hand_main
execute if entity @s[scores={MhGunCoolingTim=0}] run scoreboard players operation @s MhGunTemper -= @s MhGunCooling
execute if score @s MhGunTemper <= @s MhGunTemperMin run scoreboard players operation @s MhGunTemper = @s MhGunTemperMin
execute if entity @s[scores={MhGunTemper=..-1}] run scoreboard players set @s MhGunTemper 0
execute if entity @s[scores={MhGunOverheat=1}] if score @s MhGunTemper = @s MhGunTemperMin run scoreboard players set @s MhGunOverheat 0
execute if entity @s[scores={MhGunCoolingTim=1..}] if score @s MhGunTemper = @s MhGunTemperMin run scoreboard players set @s MhGunCoolingTim 0
scoreboard players remove @s[scores={MhGunCoolingTim=1..}] MhGunCoolingTim 1
