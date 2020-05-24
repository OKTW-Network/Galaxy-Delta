# main-hand
execute as @s[scores={MhGunHeat=1..,MhGunOverheat=0}] run scoreboard players operation @s MhGunTemper += @s MhGunHeat
execute if score @s MhGunTemper >= @s MhGunTemperMax run scoreboard players set @s MhGunOverheat 1
execute as @s[scores={MhGunOverheat=0},tag=playsoundMhOverheat] run tag @s remove playsoundMhOverheat
execute as @s[scores={MhGunOverheat=1},tag=!playsoundMhOverheat] at @s run function galaxy:weapon/gun/sound-overheat
execute as @s[scores={MhGunOverheat=1},tag=!playsoundMhOverheat] run tag @s add playsoundMhOverheat
execute as @s[scores={MhGunTemper=1..,MhGunCoolDly=-1}] run scoreboard players operation @s MhGunTemper -= @s MhGunCooling
execute as @s[scores={MhGunTemper=..-1}] run scoreboard players set @s MhGunTemper 0
execute as @s[scores={MhGunTemper=0,MhGunOverheat=1}] run scoreboard players set @s MhGunOverheat 0
execute as @s[scores={MhGunHeat=1..}] run scoreboard players set @s MhGunHeat 0

# off-hand
execute as @s[scores={FhGunHeat=1..,FhGunOverheat=0}] run scoreboard players operation @s FhGunTemper += @s FhGunHeat
execute if score @s FhGunTemper >= @s FhGunTemperMax run scoreboard players set @s FhGunOverheat 1
execute as @s[scores={FhGunOverheat=0},tag=playsoundFhOverheat] run tag @s remove playsoundFhOverheat
execute as @s[scores={FhGunOverheat=1},tag=!playsoundFhOverheat] at @s run function galaxy:weapon/gun/sound-overheat
execute as @s[scores={FhGunOverheat=1},tag=!playsoundFhOverheat] run tag @s add playsoundFhOverheat
execute as @s[scores={FhGunTemper=1..,FhGunCoolDly=-1}] run scoreboard players operation @s FhGunTemper -= @s FhGunCooling
execute as @s[scores={FhGunTemper=..-1}] run scoreboard players set @s FhGunTemper 0
execute as @s[scores={FhGunTemper=0,FhGunOverheat=1}] run scoreboard players set @s FhGunOverheat 0
execute as @s[scores={FhGunHeat=1..}] run scoreboard players set @s FhGunHeat 0
