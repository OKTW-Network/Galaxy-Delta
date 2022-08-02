scoreboard players operation #1 calcu_temp = @s galaxy.gun.flexibility.mainHand
scoreboard players operation #1 calcu_temp -= #1000 num
scoreboard players operation #1 calcu_temp *= #-1 num
scoreboard players set #2 calcu_temp 600
execute store result score @s galaxy.gun.unstableMove.mainHand run scoreboard players operation #1 calcu_temp < #2 calcu_temp
