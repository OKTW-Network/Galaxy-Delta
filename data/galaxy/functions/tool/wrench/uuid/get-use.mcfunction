scoreboard players reset @s UseWrenchUUID0
scoreboard players reset @s UseWrenchUUID1
scoreboard players reset @s UseWrenchUUID2
scoreboard players reset @s UseWrenchUUID3
execute if entity @s[tag=holdWrenchMh] run scoreboard players operation @s UseWrenchUUID0 = @s MhWrenchUUID0
execute if entity @s[tag=holdWrenchMh] run scoreboard players operation @s UseWrenchUUID1 = @s MhWrenchUUID1
execute if entity @s[tag=holdWrenchMh] run scoreboard players operation @s UseWrenchUUID2 = @s MhWrenchUUID2
execute if entity @s[tag=holdWrenchMh] run scoreboard players operation @s UseWrenchUUID3 = @s MhWrenchUUID3
execute if entity @s[tag=!holdWrenchMh,tag=holdWrenchFh] run scoreboard players operation @s UseWrenchUUID0 = @s FhWrenchUUID0
execute if entity @s[tag=!holdWrenchMh,tag=holdWrenchFh] run scoreboard players operation @s UseWrenchUUID1 = @s FhWrenchUUID1
execute if entity @s[tag=!holdWrenchMh,tag=holdWrenchFh] run scoreboard players operation @s UseWrenchUUID2 = @s FhWrenchUUID2
execute if entity @s[tag=!holdWrenchMh,tag=holdWrenchFh] run scoreboard players operation @s UseWrenchUUID3 = @s FhWrenchUUID3

tag @s remove useWrenchMh
tag @s remove useWrenchFh
execute if entity @s[tag=holdWrenchMh] run tag @s add useWrenchMh
execute if entity @s[tag=!holdWrenchMh,tag=holdWrenchFh] run tag @s add useWrenchFh
