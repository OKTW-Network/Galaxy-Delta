scoreboard players set #2 calcu_temp 10000
execute store result score #3 calcu_temp run scoreboard players get @s statusBlockDisp
scoreboard players operation #2 calcu_temp *= @s styleKatana
scoreboard players operation #1 calcu_temp += #2 calcu_temp
scoreboard players operation #3 calcu_temp -= #1 num
scoreboard players operation #1 calcu_temp += #3 calcu_temp
