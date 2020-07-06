# main-hand
execute if entity @s[scores={MhGunHeat=1..,MhGunOverheat=0}] run scoreboard players operation @s MhGunTemper += @s MhGunHeat
execute if score @s MhGunTemper >= @s MhGunTemperMax run scoreboard players set @s MhGunOverheat 1
execute if entity @s[scores={MhGunOverheat=1,MhGunOverheatSFX=0}] at @s run function galaxy:weapon/gun/sound-overheat
execute if entity @s[scores={MhGunOverheat=1,MhGunOverheatSFX=0}] run scoreboard players set @s MhGunOverheatSFX 1
execute if entity @s[scores={MhGunTemper=1..,MhGunCoolDly=-1}] run scoreboard players operation @s MhGunTemper -= @s MhGunCooling
execute if entity @s[scores={MhGunTemper=..-1}] run scoreboard players set @s MhGunTemper 0
execute if entity @s[scores={MhGunTemper=0,MhGunOverheat=1}] run scoreboard players set @s MhGunOverheat 0
execute if entity @s[scores={MhGunOverheat=0,MhGunOverheatSFX=1}] run scoreboard players set @s MhGunOverheatSFX 0
execute if entity @s[scores={MhGunHeat=1..}] run scoreboard players set @s MhGunHeat 0

# off-hand
execute if entity @s[scores={FhGunHeat=1..,FhGunOverheat=0}] run scoreboard players operation @s FhGunTemper += @s FhGunHeat
execute if score @s FhGunTemper >= @s FhGunTemperMax run scoreboard players set @s FhGunOverheat 1
execute if entity @s[scores={FhGunOverheat=1,FhGunOverheatSFX=0}] at @s run function galaxy:weapon/gun/sound-overheat
execute if entity @s[scores={FhGunOverheat=1,FhGunOverheatSFX=0}] run scoreboard players set @s FhGunOverheatSFX 1
execute if entity @s[scores={FhGunTemper=1..,FhGunCoolDly=-1}] run scoreboard players operation @s FhGunTemper -= @s FhGunCooling
execute if entity @s[scores={FhGunTemper=..-1}] run scoreboard players set @s FhGunTemper 0
execute if entity @s[scores={FhGunTemper=0,FhGunOverheat=1}] run scoreboard players set @s FhGunOverheat 0
execute if entity @s[scores={FhGunOverheat=0,FhGunOverheatSFX=1}] run scoreboard players set @s FhGunOverheatSFX 0
execute if entity @s[scores={FhGunHeat=1..}] run scoreboard players set @s FhGunHeat 0
