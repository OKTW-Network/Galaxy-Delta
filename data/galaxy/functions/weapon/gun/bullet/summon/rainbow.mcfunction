tag @e[tag=bullet,tag=init,limit=1] add colorRainbow
scoreboard players set #precision random 3
scoreboard players set #allowNegative random 0
function math:random/generate
execute store result score #2 calcu_temp run data get storage math:random result
scoreboard players set #1 calcu_temp 7
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
scoreboard players operation #1 calcu_temp /= #1000 num
execute store result score @e[tag=bullet,tag=init,limit=1] bulletColor run scoreboard players add #1 calcu_temp 1
