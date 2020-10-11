execute unless score @s MhGunOverheat matches 1 if score @s MhGunTemper >= @s MhGunTemperMax run function galaxy:weapon/gun/temperature/overheat-start-hand_main
execute if entity @s[scores={MhGunCoolDly=-1}] run scoreboard players operation @s MhGunTemper -= @s MhGunCooling
execute if entity @s[scores={MhGunTemper=..-1}] run scoreboard players set @s MhGunTemper 0
execute if entity @s[scores={MhGunTemper=0,MhGunOverheat=1}] run scoreboard players set @s MhGunOverheat 0
scoreboard players remove @s[scores={MhGunCoolDly=0..}] MhGunCoolDly 1
