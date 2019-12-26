# main-hand
execute as @s[scores={MhPistolHeat=1..,MhPistolOverheat=0}] run scoreboard players operation @s MhPistolTemper += @s MhPistolHeat
execute if score @s MhPistolTemper >= @s MhPistolMaxTemp run scoreboard players set @s MhPistolOverheat 1
execute as @s[scores={MhPistolTemper=1..,MhPistolCoolDly=-1}] run scoreboard players operation @s MhPistolTemper -= @s MhPistolCooling
execute as @s[scores={MhPistolTemper=..-1}] run scoreboard players set @s MhPistolTemper 0
execute as @s[scores={MhPistolTemper=0,MhPistolOverheat=1}] run scoreboard players set @s MhPistolOverheat 0
execute as @s[scores={MhPistolHeat=1..}] run scoreboard players set @s MhPistolHeat 0

# off-hand
execute as @s[scores={FhPistolHeat=1..,FhPistolOverheat=0}] run scoreboard players operation @s FhPistolTemper += @s FhPistolHeat
execute if score @s FhPistolTemper >= @s FhPistolMaxTemp run scoreboard players set @s FhPistolOverheat 1
execute as @s[scores={FhPistolTemper=1..,FhPistolCoolDly=-1}] run scoreboard players operation @s FhPistolTemper -= @s FhPistolCooling
execute as @s[scores={FhPistolTemper=..-1}] run scoreboard players set @s FhPistolTemper 0
execute as @s[scores={FhPistolTemper=0,FhPistolOverheat=1}] run scoreboard players set @s FhPistolOverheat 0
execute as @s[scores={FhPistolHeat=1..}] run scoreboard players set @s FhPistolHeat 0
