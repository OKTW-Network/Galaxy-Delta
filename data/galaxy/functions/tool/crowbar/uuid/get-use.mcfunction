scoreboard players reset @s UseCrowbarUUID0
scoreboard players reset @s UseCrowbarUUID1
scoreboard players reset @s UseCrowbarUUID2
scoreboard players reset @s UseCrowbarUUID3
execute if entity @s[tag=holdCrowbarMh] run scoreboard players operation @s UseCrowbarUUID0 = @s MhCrowbarUUID0
execute if entity @s[tag=holdCrowbarMh] run scoreboard players operation @s UseCrowbarUUID1 = @s MhCrowbarUUID1
execute if entity @s[tag=holdCrowbarMh] run scoreboard players operation @s UseCrowbarUUID2 = @s MhCrowbarUUID2
execute if entity @s[tag=holdCrowbarMh] run scoreboard players operation @s UseCrowbarUUID3 = @s MhCrowbarUUID3
execute if entity @s[tag=!holdCrowbarMh,tag=holdCrowbarFh] run scoreboard players operation @s UseCrowbarUUID0 = @s FhCrowbarUUID0
execute if entity @s[tag=!holdCrowbarMh,tag=holdCrowbarFh] run scoreboard players operation @s UseCrowbarUUID1 = @s FhCrowbarUUID1
execute if entity @s[tag=!holdCrowbarMh,tag=holdCrowbarFh] run scoreboard players operation @s UseCrowbarUUID2 = @s FhCrowbarUUID2
execute if entity @s[tag=!holdCrowbarMh,tag=holdCrowbarFh] run scoreboard players operation @s UseCrowbarUUID3 = @s FhCrowbarUUID3

tag @s remove useCrowbarMh
tag @s remove useCrowbarFh
execute if entity @s[tag=holdCrowbarMh] run tag @s add useCrowbarMh
execute if entity @s[tag=!holdCrowbarMh,tag=holdCrowbarFh] run tag @s add useCrowbarFh
