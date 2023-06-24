scoreboard players operation #1 temp = @s galaxy.gun.cooling.mainHand
scoreboard players operation #2 temp = @s galaxy.gun.coolingDelay.mainHand
scoreboard players operation #2 temp -= @s galaxy.gun.coolingTimer.mainHand
scoreboard players operation #2 temp *= #100 num
execute if score #2 temp matches 1.. run scoreboard players operation #2 temp /= @s galaxy.gun.coolingDelay.mainHand
scoreboard players operation #1 temp *= #2 temp
scoreboard players operation #1 temp /= #100 num
scoreboard players operation #1 temp *= #2 temp
scoreboard players operation #1 temp /= #100 num

scoreboard players operation @s galaxy.gun.temperature.mainHand -= #1 temp
