scoreboard players operation #1 calcu_temp = @s galaxy.gun.cooling.offHand
scoreboard players operation #2 calcu_temp = @s galaxy.gun.coolingDelay.offHand
scoreboard players operation #2 calcu_temp -= @s galaxy.gun.coolingTimer.offHand
scoreboard players operation #2 calcu_temp *= #100 num
execute if score #2 calcu_temp matches 1.. run scoreboard players operation #2 calcu_temp /= @s galaxy.gun.coolingDelay.offHand
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
scoreboard players operation #1 calcu_temp /= #100 num
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
scoreboard players operation #1 calcu_temp /= #100 num

scoreboard players operation @s galaxy.gun.temperature.offHand -= #1 calcu_temp
