# main-hand
execute if entity @s[scores={MhGunHeat=1..,MhGunOverheat=0}] run scoreboard players operation @s MhGunTemper += @s MhGunHeat
execute unless score @s MhGunOverheat matches 1 if score @s MhGunTemper >= @s MhGunTemperMax run function galaxy:weapon/gun/overheat-start-hand_main
execute if entity @s[scores={MhGunTemper=1..,MhGunCoolDly=-1}] run scoreboard players operation @s MhGunTemper -= @s MhGunCooling
execute if entity @s[scores={MhGunTemper=..-1}] run scoreboard players set @s MhGunTemper 0
execute if entity @s[scores={MhGunTemper=0,MhGunOverheat=1}] run scoreboard players set @s MhGunOverheat 0
execute if entity @s[scores={MhGunHeat=1..}] run scoreboard players set @s MhGunHeat 0

# off-hand
execute if entity @s[scores={FhGunHeat=1..,FhGunOverheat=0}] run scoreboard players operation @s FhGunTemper += @s FhGunHeat
execute unless score @s FhGunOverheat matches 1 if score @s FhGunTemper >= @s FhGunTemperMax run function galaxy:weapon/gun/overheat-start-hand_off
execute if entity @s[scores={FhGunTemper=1..,FhGunCoolDly=-1}] run scoreboard players operation @s FhGunTemper -= @s FhGunCooling
execute if entity @s[scores={FhGunTemper=..-1}] run scoreboard players set @s FhGunTemper 0
execute if entity @s[scores={FhGunTemper=0,FhGunOverheat=1}] run scoreboard players set @s FhGunOverheat 0
execute if entity @s[scores={FhGunHeat=1..}] run scoreboard players set @s FhGunHeat 0
